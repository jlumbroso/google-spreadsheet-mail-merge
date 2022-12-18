# Google Spreadsheet Mail Merge

This is a simple Python script that takes **a list of emails and names** from a Google Spreadsheet and sends **a personalized email** to each person using SendGrid. This project relies entirely on APIs that have free tiers, and can be run either locally or in a GitHub Codespace.

## Setup

1. **Get Google Spreadsheet API acccess.**

   Although Google Spreadsheet API is free to use for basic usage, Google requires you to have an account setup: [Create a project](https://docs.gspread.org/en/latest/oauth2.html#enable-api-access-for-a-project) and enable API access, then [obtain service account credentials](https://docs.gspread.org/en/latest/oauth2.html#for-bots-using-service-account).

   Save the `service_accounts.json` file locally in the root of this project (because the filename is in `.gitignore`, it will not be committed to the repository).

   To be able to operate this project from GitHub Codespaces: [Create an encrypted GitHub Codespaces secret](https://docs.github.com/en/codespaces/managing-your-codespaces/managing-encrypted-secrets-for-your-codespaces) `SERVICE_ACCOUNT_JSON` with the the contents of the `service_accounts.json` file.

   _Note: If you do not want to use Google Spreadsheets, you could also read the data from a CSV file._

2. **Get a Twilio SendGrid account.**

   Next you need to get a SendGrid account to send emails. You can [sign up for a free SendGrid account](https://signup.sendgrid.com/).

   Once you have an account, you can [obtain a SendGrid API key](https://app.sendgrid.com/settings/api_keys) (read more on [how to get started with the SendGrid API](https://docs.sendgrid.com/for-developers/sending-email/api-getting-started)).

   Create a `.env` file at the root of this project and add the following line:

   ```bash
   SENDGRID_API_KEY=...
   ```

   Additionally, [create an encrypted GitHub Codespaces secret](https://docs.github.com/en/codespaces/managing-your-codespaces/managing-encrypted-secrets-for-your-codespaces) `SENDGRID_API_KEY` with the SendGrid API key.

   _Note: SendGrid is a market leader, and is a great, cost-effective choice for sending emails. However, if you want to use a different email provider, you can easily replace the SendGrid code with code for your provider._
