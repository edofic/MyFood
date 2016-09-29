#!/usr/bin/env node
"use strict";

const Q = require('q');
const https = require('https');
const AWS = require('aws-sdk');

const config = require("./config.js");

AWS.config.update(config.AWS);

const SES = new AWS.SES();

function format(data) {
  let text = '';
  for (let name in data) {
    text += name.trim() + ": " + data[name].trim() + "\n";
  }
  return text;
}

function format_order(data) {
  let text = config.TEMPLATE.HEADER;
  let lines = []
  for (let name in data) {
    lines.push("- " + data[name].trim() + " (" + name.trim() + ")");
  }
  lines.sort((a,b) => a.toLowerCase().localeCompare(b.toLowerCase()));
  text += lines.join("\n");
  text += config.TEMPLATE.FOOTER;
  return text;
}

function fetch_data(date) {
  console.log("fetching data", date);
  const p = Q.defer();
  https.get(config.FIREBASE + "/days/" + date + ".json", function (res) {
    let body = '';
    res.on('data', function(chunk){
      body += chunk;
    });
    res.on('end', function(){
      const response = JSON.parse(body);
      if (response) {
        p.resolve(response);
      } else {
        console.log("no orders");
        p.reject("no data");
      }
    });
    res.on('error', function(err) {
      p.reject(err);
    });
  });
  return p.promise;
}

function send_mail(to, subj, text) {
  console.log("sending email", to, subj);
  const p = Q.defer();
  const params = {
    Destination: {
      ToAddresses: [to],
      BccAddresses: [config.AWS.sourceEmail]
    },
    Source: config.AWS.sourceEmail,
    Message: {
      Subject: {
        Data: subj
      },
      Body: {
        Text: {
          Data: text
        }
      }
    }
  };
  SES.sendEmail(params, function (err, data) {
    if (err) {
      p.reject(err);
      console.log("email err", to, subj, err);
      return;
    }
    p.resolve();
    console.log("sent email", to, subj);
  });
  return p.promise;
}

function send_all() {
  const date = new Date().toISOString().slice(0,10);
  return fetch_data(date).then(function (data) {
    console.log("got data");
    return Q.all([
        send_mail(config.EMAILS.ORDER, config.TEMPLATE.SUBJECT + date , format_order(data)),
        send_mail(config.EMAILS.ARCHIVE, config.TEMPLATE.SUBJECT + date , format(data)),
    ]);
  });
}

if (require.main == module) {
  send_all();
}
