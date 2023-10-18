#!/bin/bash -eux

bundle exec jekyll build --config _config.yml,_config.developement.yml

#timeout 10 ./start.sh &
bundle exec htmlproofer _site \
    --no-enforce-https --ignore-status-codes 999
    # --no-enforce-https for localhost testing
    # --ignore-status-codes 999 for linkedin custom code

echo "Use https://pagespeed.web.dev/ as well."
