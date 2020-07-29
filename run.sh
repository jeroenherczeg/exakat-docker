#!/bin/bash
URL="https://api.apify.com/v2/key-value-stores/${APIFY_DEFAULT_KEY_VALUE_STORE_ID}/records/${APIFY_INPUT_KEY}"
SOURCE=$(curl -s "$URL" | php -r '$response = json_decode(file_get_contents("php://stdin"), true);echo $response["source"];')
VERSION_ID=$(curl -s "$URL" | php -r '$response = json_decode(file_get_contents("php://stdin"), true);echo $response["version_id"];')
echo "$VERSION_ID"
exakat init -p tmpprj -R $SOURCE -v
exakat project -p tmpprj -v
cat /usr/src/exakat/projects/tmpprj/exakat.json
