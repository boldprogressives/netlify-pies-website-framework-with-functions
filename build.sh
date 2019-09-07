#!/bin/bash
set -e
mkdir -p ~/.ssh/
cp id_rsa ~/.ssh/id_rsa && chmod 600 ~/.ssh/id_rsa
git clone --depth 1 git@github.com:boldprogressives/netlify-pies-website-framework-with-functions.git .
netlify-lambda build functions
rm -rf public && mkdir public 
unzip bundle.zip -d public
