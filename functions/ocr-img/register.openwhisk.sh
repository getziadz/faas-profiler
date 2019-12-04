#!/bin/bash

wsk action create ocr-img handler.js --docker immortalfaas/nodejs-tesseract --web raw -i
