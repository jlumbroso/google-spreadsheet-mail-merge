# [Choice] Python version (use -bullseye variants on local arm64/Apple Silicon): 3, 3.10, 3.9, 3.8, 3.7, 3.6, 3-bullseye, 3.10-bullseye, 3.9-bullseye, 3.8-bullseye, 3.7-bullseye, 3.6-bullseye, 3-buster, 3.10-buster, 3.9-buster, 3.8-buster, 3.7-buster, 3.6-buster
ARG VARIANT=3.10
FROM mcr.microsoft.com/vscode/devcontainers/python:${VARIANT}

# Install pipenv in case it is not present
RUN pip3 install --upgrade pip

RUN apt-get install tree

USER root
RUN cd && echo $(pwd) && ls -a
RUN cd && mkdir $(basename $GITHUB_REPOSITORY)
WORKDIR /root/$(basename $GITHUB_REPOSITORY)
COPY Pipfile .
COPY Pipfile.lock .
RUN echo $(pwd) && ls -a

# Install packages from Pipfile.lock using pipenv
RUN pipenv sync --dev

# Create Jupyter kernel using virtual environment from pipenv
RUN pipenv run python -m ipykernel install --name=`basename $(pipenv --venv)` --display-name=`basename $(pipenv --venv)`

# Create the service account credentials file from the environment
# variable provided as a secret
RUN echo "$SERVICE_ACCOUNT_JSON" > service_account.json
