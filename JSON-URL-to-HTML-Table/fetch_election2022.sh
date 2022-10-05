#!/bin/bash
cd ~/json
wget --no-check-certificate --http-user=user --http-password=password https://download.2022dl.nat.gov.tw/test/running.json
# conversion from running.json to votes.json
# sync votes.json to cloud for web with CORS allowed. serve locally with httpd.
