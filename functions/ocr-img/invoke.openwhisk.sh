#!/bin/bash

curl -X POST -H "Content-Type: image/jpeg" --data-binary @./pitontable.jpg https://localhost/api/v1/web/guest/default/ocr-img -k -v > output.txt

