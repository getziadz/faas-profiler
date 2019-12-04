#!/bin/bash

wsk action create sentiment sentiment.py --docker immortalfaas/sentiment --web raw -i
