# Base Image
FROM alpine/git
RUN apk update && apk add make
#RUN git clone https://github.com/awslabs/git-secrets.git && \
#   cd git-secrets

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
