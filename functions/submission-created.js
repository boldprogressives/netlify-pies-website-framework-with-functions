var postmark = require("postmark");
var Handlebars = require("handlebars");

import credentialsConfig from "../functions-config/credentials.js";
import emailConfig from "../functions-config/emails.js";

var client = new postmark.Client(credentialsConfig.postmarkApiToken);

exports.handler = function(event, context, callback) {

  const emails = [
    {
      "From": "The Team <campaignservices@boldprogressives.org>",
      "To": "ethan@boldprogressives.org", 
      "Subject": "New form submission", 
      "TextBody": JSON.stringify(event)
    }
  ];
  client.sendEmailBatch(emails);
}
