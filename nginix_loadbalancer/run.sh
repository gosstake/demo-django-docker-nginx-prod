#!/bin/bash -e
sudo docker run --rm --name nginx --link app_1:app_1 --link app_2:app_2 -p 8000:80 -t lbd/nginx