#!/bin/bash

if [[ `which npm` == '' ]]; then
    echo "[ERROR] Please install 'npm' before trying to register the 'img-resize' function"
    exit 1
fi

npm install node-zip jimp --save

zip -r action.zip ./*.js ./*.json ./node_modules/

wsk action create img-resize --kind nodejs:8 action.zip --web raw -i

