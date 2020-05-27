#!/bin/sh

if [ $# -gt 1 ] ; then
docker build -t cert-nginx:$1 -t cert-nginx:latest .
else
docker build -t cert-nginx:latest .
fi