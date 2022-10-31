#!/bin/bash
# linux - "/usr/bin/ld: cannot find -lz" - Stack Overflow
# https://stackoverflow.com/questions/3373995/usr-bin-ld-cannot-find-lz
sudo apt install cpanminus
sudo apt install libssl-dev gcc zlib1g-dev
cpanm install Net::SSLeay
