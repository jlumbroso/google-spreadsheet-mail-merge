# Google Spreadsheet Mail Merge

This is a template for a simple Python script that takes **a list of emails and names** from a Google Spreadsheet and sends **a personalized email** to each person using SendGrid.

This project relies entirely on APIs that have **free tiers** 🤑, and can be run either locally or in a GitHub Codespace.

## 🚠 Overview

## 🧰 Setup

🪪 Before proceeding, [**register** a GitHub account](https://github.com/join) if you don't already have one.

### 1. ✨ Create your own repository

You first need to create your own copy of this "Google Spreadsheet Mail Merge" repository, so that you can configure the API keys, but also so you adapt the script to your needs.

You can **instantiate** this template repository [by clicking the green "Use this template" button above](https://docs.github.com/en/repositories/creating-and-managing-repositories/creating-a-repository-from-a-template#creating-a-repository-from-a-template).

### 2. 🔐 Obtain Google Spreadsheet API access

Although Google Spreadsheet API is free to use for basic usage, Google requires you to have an account setup: [Create a project](https://docs.gspread.org/en/latest/oauth2.html#enable-api-access-for-a-project) and enable API access, then [obtain service account credentials](https://docs.gspread.org/en/latest/oauth2.html#for-bots-using-service-account).

Save the `service_accounts.json` file locally in the root of this project (because the filename is in `.gitignore`, it will not be committed to the repository).

To be able to operate this project from GitHub Codespaces: [Create an encrypted GitHub Codespaces secret](https://docs.github.com/en/codespaces/managing-your-codespaces/managing-encrypted-secrets-for-your-codespaces) `SERVICE_ACCOUNT_JSON` with the the contents of the `service_accounts.json` file.

_Note: If you do not want to use Google Spreadsheets, you could also read the data from a CSV file._

### 3. 📧 Get a Twilio SendGrid account

Next you need to get a SendGrid account to send emails. You can [sign up for a free SendGrid account](https://signup.sendgrid.com/).

Once you have an account, you can [obtain a SendGrid API key](https://app.sendgrid.com/settings/api_keys) (read more on [how to get started with the SendGrid API](https://docs.sendgrid.com/for-developers/sending-email/api-getting-started)).

Create a `.env` file at the root of this project and add the following line:

```bash
SENDGRID_API_KEY=...
```

Additionally, [create an encrypted GitHub Codespaces secret](https://docs.github.com/en/codespaces/managing-your-codespaces/managing-encrypted-secrets-for-your-codespaces) `SENDGRID_API_KEY` with the SendGrid API key.

_Note: SendGrid is a market leader, and is a great, cost-effective choice for sending emails. However, if you want to use a different email provider, you can easily replace the SendGrid code with code for your provider._

### 4. 🚀 Launch the Codespace and code!

Now you can [launch a GitHub Codespace](https://docs.github.com/en/codespaces/developing-in-codespaces/creating-a-codespace-for-a-repository#creating-a-codespace-for-a-repository) for your repository and start coding — almost everything is automated.

When opening the Jupyter notebook (currently `notebook.ipynb`, but you might create other notebooks), you will need to [select the appropriate Jupyter kernel](https://code.visualstudio.com/docs/datascience/jupyter-notebooks#_create-or-open-a-jupyter-notebook) in VS Code.

On GitHub Codespaces, this kernel will be called `google-spreadsheet-mail-merge`.

If you are developing locally, you first need to install the Python dependencies and create your own Jupyter kernel. You can do so using `pipenv`:

```bash
pipenv sync --dev
pipenv run python -m ipykernel install --name='google-spreadsheet-mail-merge' --display-name='google-spreadsheet-mail-merge'
```

## 🙋 Frequently Asked Questions

## ⚖️ License

This template is licensed under [The Unlicense](https://unlicense.org/). This means I have no liability, but you can do absolutely what you want with this, or any part of this, for whatever purposes, you don't have to credit me, this project, or anything.

If you are thankful for this template, please ⭐️ star it on GitHub.

If you would like to contribute to this template, please open an issue (to suggest an improvement) or a pull request (to contribute code), and include the following disclaimer:

```text
I dedicate any and all copyright interest in this software to the public domain. I make this dedication for the benefit of the public at large and to the detriment of my heirs and successors. I intend this dedication to be an overt act of relinquishment in perpetuity of all present and future rights to this software under copyright law.
```

## 🙏 Acknowledgements
