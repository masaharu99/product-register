FROM ruby:3.2.2
RUN apt-get update
RUN apt-get install -y \
  build-essential \
  libpq-dev \
  nodejs \
  postgresql-client \
  yarn
WORKDIR /product-register
COPY Gemfile Gemfile.lock /product-register/
RUN bundle lock --add-platform x86_64-linux
RUN cat Gemfile.lock
RUN bundle install