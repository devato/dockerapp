#!/bin/bash
# Interpreter identifier

# Exit on fail
set -e

# Wait for PostgreSQL
until curl $DB_HOST:5432 2>&1 | grep '52'; do
  echo 'Waiting for PostgreSQL...'
  sleep 1
done
echo "PostgreSQL is up and running"

bundle check || bundle install --binstubs="$BUNDLE_BIN"
# Ensure all gems installed. Add binstubs to bin which has been added to PATH in Dockerfile.

# Setup db and/or run migrations
bundle exec rake db:migrate 2>/dev/null || bundle exec rake db:setup

# Start guard in the BG
bundle exec guard -i -p &

exec "$@"
# Finally call command issued to the docker service
