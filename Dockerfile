FROM ruby:3.2.2
RUN apt update
RUN apt install -y \
  build-essential \
  libpq-dev \
  nodejs \
  postgresql-client \
  yarn
WORKDIR /product-register
COPY Gemfile Gemfile.lock /product-register/
RUN bundle install