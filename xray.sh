#!/bin/sh
if [ ! -f UUID ]; then
  UUID="a1389eb6-d02f-48e1-b63d-23d182aaa833"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

