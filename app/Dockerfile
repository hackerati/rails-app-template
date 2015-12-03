FROM phusion/passenger-full

# throw errors if Gemfile has been modified since Gemfile.lock
RUN bundle config --global frozen 1

RUN mkdir -p /home/app/rails_app
WORKDIR /home/app/rails_app
COPY Gemfile /home/app/rails_app
COPY Gemfile.lock /home/app/rails_app
RUN bundle install

RUN rm /etc/nginx/sites-enabled/default
ADD ./rails_app.conf /etc/nginx/sites-enabled/rails_app.conf
ADD rails_env.conf /etc/nginx/main.d/rails_env.conf

# Enable nginx and passenger
RUN rm -f /etc/service/nginx/down

RUN apt-get update && apt-get install -y postgresql-client

