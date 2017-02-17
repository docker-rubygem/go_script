FROM ruby:2.4

MAINTAINER thinkbot@outlook.de

ENV VERSION=0.1.9

RUN gem install go_script --version ${VERSION} --no-format-exec

WORKDIR /tmp

ENTRYPOINT ["go-script-template"]
CMD ["--help"]
