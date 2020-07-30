#!/bin/bash
URL="https://api.apify.com/v2/key-value-stores/${APIFY_DEFAULT_KEY_VALUE_STORE_ID}/records/${APIFY_INPUT_KEY}"
curl -L -H "Accept: application/json" "$URL" -o /usr/src/input.json --compressed
cat /usr/src/input.json
SOURCE=$(php -r 'echo json_decode(file_get_contents("/usr/src/input.json"), true)["source"];')
VERSION_ID=$(php -r 'echo json_decode(file_get_contents("/usr/src/input.json"), true)["version_id"];')
echo "source: $SOURCE"
echo "version_id: $VERSION_ID"
exakat init -p tmpprj -R "$SOURCE" -v
exakat project -p tmpprj -v
cat /usr/src/exakat/projects/tmpprj/exakat.json
