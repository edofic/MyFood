import datetime
import email
import os
import requests
import sys

from syslog import syslog

from myfood.config import AUTH_SENDER, POST_URL, URL_PREFIX, PUT_NAME_URL


def payloads_from_file(fp):
  msg = email.message_from_file(fp)
  return {m.get_filename(): m.get_payload(decode=True)
          for m in msg.walk()
          if m.get_filename() and
          "pdf" in m.get_content_type()}


def main():
  sender = os.environ.get("SENDER", None)
  if sender != AUTH_SENDER:
    syslog("ignoring message from {}".format(sender))
    return

  payloads = payloads_from_file(sys.stdin)
  if len(payloads) > 1:
    syslog("WARNING: multiple pdf payloads")

  payloads = {
      (fn if fn.lower().endswith("pdf")
       else datetime.datetime.now().isoformat() + ".pdf"): content
      for fn, content in payloads.iteritems()
  }
  syslog("Uploading {}".format(payloads.keys()))
  res = requests.post(POST_URL, files=payloads)
  syslog("Response {} {}".format(res.status_code, res.text))

  syslog("Setting latest")
  if len(payloads) == 0:
    syslog("WARNING: no payloads")
  else:
    res = requests.put(PUT_NAME_URL,
                       data='"{}{}"'.format(URL_PREFIX, payloads.keys()[0]))
    syslog("Response {} {}".format(res.status_code, res.text))
