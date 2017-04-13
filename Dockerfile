FROM ubuntu:xenial

RUN apt-get update
RUN apt-get install build-essential ruby-full -y
RUN gem install bundler

# Install whatever is in your Gemfile
WORKDIR /tmp
ADD Gemfile /tmp/
ADD Gemfile.lock /tmp/
RUN bundle install

WORKDIR /src

EXPOSE 4000

CMD ["sh", "-c", "bundle exec jekyll serve --port 4000 --host 0.0.0.0"]