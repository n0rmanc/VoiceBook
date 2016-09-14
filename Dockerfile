FROM ruby:2.3
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
RUN mkdir /voicebook
WORKDIR /voicebook
ADD Gemfile /voicebook/Gemfile
ADD Gemfile.lock /voicebook/Gemfile.lock
RUN bundle install
ADD . /voicebook
