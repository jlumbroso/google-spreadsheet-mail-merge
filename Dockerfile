# [Choice] Python version (use -bullseye variants on local arm64/Apple Silicon): 3, 3.10, 3.9, 3.8, 3.7, 3.6, 3-bullseye, 3.10-bullseye, 3.9-bullseye, 3.8-bullseye, 3.7-bullseye, 3.6-bullseye, 3-buster, 3.10-buster, 3.9-buster, 3.8-buster, 3.7-buster, 3.6-buster
ARG VARIANT=3.10
FROM mcr.microsoft.com/vscode/devcontainers/python:${VARIANT}

# Upgrade to latest version of pip
RUN pip3 install --upgrade pip

# Install pipenv in case it is not already installed
RUN pip3 install --upgrade pipenv

# Retrieve Pipfile and Pipfile.lock from cloned repo (which is right
# next to this Dockerfile) and generate requirements.txt
COPY Pipfile /tmp/pip-tmp/
COPY Pipfile.lock /tmp/pip-tmp/
RUN cd /tmp/pip-tmp/ && pipenv requirements --dev > requirements.txt

# Install requirements.txt
RUN pip3 --disable-pip-version-check --no-cache-dir install -r /tmp/pip-tmp/requirements.txt \
    && rm -rf /tmp/pip-tmp

# Create Jupyter kernel using virtual environment from pipenv
RUN python3 -m ipykernel install --name='google-spreadsheet-mail-merge' --display-name='google-spreadsheet-mail-merge'