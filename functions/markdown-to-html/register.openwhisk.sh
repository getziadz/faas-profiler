#!/bin/bash

wsk action create markdown2html markdown2html.py --docker immortalfaas/markdown-to-html --web raw -i
