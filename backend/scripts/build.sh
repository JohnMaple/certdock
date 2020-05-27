#!/bin/sh

if [ $# -gt 1 ] ; then
    docker build -t cert-backend:$1 -t cert-backend:latest .
else
    docker build -t cert-backend:latest .
fi