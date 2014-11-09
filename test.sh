#! /bin/sh

echo Test the registry:

curl http://localhost:5000/_ping -f

echo Test proxying via Nginx:

curl http://localhost:5080/_ping -f

echo Test username/password via Nginx:

curl http://localhost:5080/v1/users/ -f --basic --user registry:registry

echo Test SSL:

curl https://localhost:5443/_ping -f --key nginx/client.key --cert nginx/client.crt

echo Test username/password over SSL:

curl https://localhost:5443/v1/users/ -f --key nginx/client.key --cert nginx/client.crt --basic --user registry:registry
