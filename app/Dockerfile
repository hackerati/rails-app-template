FROM rails:4.2.4

# throw errors if Gemfile has been modified since Gemfile.lock
RUN bundle config --global frozen 1

WORKDIR /src/app
COPY Gemfile /src/app/
COPY Gemfile.lock /src/app/
RUN bundle install

RUN apt-get update && apt-get install -y nodejs --no-install-recommends && rm -rf /var/lib/apt/lists/*
RUN apt-get update && apt-get install -y mysql-client postgresql-client sqlite3 --no-install-recommends && rm -rf /var/lib/apt/lists/*

CMD ["rails", "server", "-b", "0.0.0.0"]
