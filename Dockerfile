FROM ruby:3.2.2
RUN rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true
RUN apt-get -o Debug::pkgProblemResolver=yes update
RUN apt-get -o Debug::pkgProblemResolver=yes install -y \
  build-essential \
  libpq-dev \
  nodejs \
  postgresql-client \
  yarn
WORKDIR /product-register
COPY Gemfile Gemfile.lock /product-register/
RUN bundle install