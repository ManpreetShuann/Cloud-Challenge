#!/bin/sh
echo "{"
if [ -z "$1" ]
  then
    for custom_key in $(curl -s "http://metadata.google.internal/computeMetadata/v1/instance/attributes/" -H "Metadata-Flavor: Google")
    do
    custom_value=$(curl -s "http://metadata.google.internal/computeMetadata/v1/instance/attributes/${custom_key}" -H "Metadata-Flavor: Google")
    echo " \"${custom_key}\": \"${custom_value}\""
  done
else
  custom_key=$1
  custom_value=$(curl -s "http://metadata.google.internal/computeMetadata/v1/instance/attributes/${custom_key}" -H "Metadata-Flavor: Google")
  echo " \"${custom_key}\": \"${custom_value}\""
fi
echo "}"
