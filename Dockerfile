FROM ruby:2.7.2

RUN gem install bundler

WORKDIR /app
COPY ./Gemfile /app
COPY ./Gemfile.lock /app
RUN bundle install

COPY . /app

ENV RACK_ENV "production"
CMD puma -C config/puma.rb
EXPOSE 3000

# Puma's metrics
EXPOSE 9393
