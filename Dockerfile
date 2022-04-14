FROM amazon/aws-cli:latest

RUN yum update -y \
    && yum install -y gzip
RUN amazon-linux-extras install postgresql13

WORKDIR /scripts
COPY backup.sh .
ENTRYPOINT [ "/scripts/backup.sh" ]