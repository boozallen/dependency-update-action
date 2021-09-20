#!/bin/sh

cd /home/dependabot/dependabot-script || exit 2

if [ "$BATCH_SIZE" = "1" ]; then
  bundle exec ruby ./generic-update-script.rb
else
  bundle exec ruby ./batch-update-script.rb
fi
