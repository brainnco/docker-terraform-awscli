FROM python:3.8.7-alpine3.12

RUN pip3 install awscli --upgrade && \
  aws --version

RUN wget https://releases.hashicorp.com/terraform/0.14.5/terraform_0.14.5_linux_amd64.zip && \
  unzip terraform_0.14.5_linux_amd64.zip && \
  rm terraform_0.14.5_linux_amd64.zip && \
  mv terraform /usr/bin/terraform && \
  terraform -version

RUN apk --no-cache add jq
