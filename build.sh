#!/bin/bash
set -e
chmod 600 id_rsa
rm -rf netlify-pies-website-framework-with-functions/
ssh-agent bash -c 'ssh-add id_rsa; git clone --depth 1 git@github.com:boldprogressives/netlify-pies-website-framework-with-functions.git' 
rm -rf netlify-pies-website-framework-with-functions/.git
cp -r netlify-pies-website-framework-with-functions/* ./
rm -rf netlify-pies-website-framework-with-functions/
netlify-lambda build functions
rm -rf public && mkdir public 
unzip bundle.zip -d public
