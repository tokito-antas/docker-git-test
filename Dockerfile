FROM ruby:3.2.2

WORKDIR /sample_app

COPY Gemfile /sample_app/Gemfile
COPY Gemfile.lock /sample_app/Gemfile.lock

RUN bundle install

CMD ["rails", "server", "-b", "0.0.0.0"]