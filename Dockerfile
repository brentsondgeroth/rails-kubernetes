FROM ruby:2.5.3
RUN apt-get update -qq && apt-get install -y nodejs postgresql-client

ENV RAILS_ROOT /var/www/
RUN mkdir -p $RAILS_ROOT
WORKDIR $RAILS_ROOT

COPY Gemfile ./
COPY Gemfile.lock ./
RUN bundle install
COPY . .

# Add a script to be executed every time the container starts.
COPY docker-entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/docker-entrypoint.sh
ENTRYPOINT ["docker-entrypoint.sh"]
EXPOSE 3000

# Start the main process.
CMD ["rails", "server", "-b", "0.0.0.0"]
