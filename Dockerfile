FROM ruby:2.4.0
RUN apt-get update -qq && \
    apt-get install -y build-essential --no-install-recommends libpq-dev nodejs && \
    mkdir /myapp
WORKDIR /myapp
ADD Gemfile /myapp/Gemfile
ADD Gemfile.lock /myapp/Gemfile.lock
RUN gem install bundler &&bundle install
ADD . /myapp
