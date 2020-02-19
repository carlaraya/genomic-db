FROM ruby:2.7.0-alpine

RUN apk update && apk add build-base nodejs postgresql-dev tzdata yarn

RUN mkdir /project
WORKDIR /project

COPY package.json yarn.lock postcss.config.js babel.config.js ./
RUN yarn install


COPY Gemfile Gemfile.lock ./
RUN gem install bundler
RUN bundle install


COPY . .

CMD ["bundle", "exec", "rails", "server", "-b", "0.0.0.0"]
