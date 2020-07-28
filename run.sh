#!/bin/bash
url="https://api.apify.com/v2/key-value-stores/${APIFY_DEFAULT_KEY_VALUE_STORE_ID}/records/${APIFY_INPUT_KEY}"
echo "$url"
exakat init -p tmpprj -R https://github.com/sebastianbergmann/php-timer.git
exakat project -p tmpprj