import email
import os
import sys
import requests


def payloads_from_file(fp):
  msg = email.message_from_file(fp)
  return {m.get_filename(): m.get_payload(decode=True)
          for m in msg.walk()
          if m.get_filename() and
          "pdf" in m.get_filename()}


def main():
  from myfood.config import AUTH_SENDER, POST_URL, URL_PREFIX, PUT_NAME_URL

  sender = os.environ.get("SENDER", None)
  if sender != AUTH_SENDER:
    print "ignoring message form", sender
    return

  payloads = payloads_from_file(sys.stdin)
  if len(payloads) > 1:
    print "WARNING: multiple pdf payloads"

  print "Uploading", payloads.keys()
  res = requests.post(POST_URL, files=payloads)
  print res.status_code, res.text

  print "Setting latest"
  if len(payloads) == 0:
    print "WARNING: no payloads"
  else:
    res = requests.put(PUT_NAME_URL,
                       data='"{}{}"'.format(URL_PREFIX, payloads.keys()[0]))
    print res.status_code, res.text
