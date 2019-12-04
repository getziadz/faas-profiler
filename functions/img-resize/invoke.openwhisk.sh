#!/bin/bash

curl -X POST -H "Content-Type: image/jpeg" --data-binary @./libertybell.jpg https://localhost/api/v1/web/guest/default/img-resize -k -v > output.zip
