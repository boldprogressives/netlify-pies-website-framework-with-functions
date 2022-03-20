#!/bin/bash
set -e
rm -rf netlify-pies-website-framework-with-functions/
git clone --depth 1 https://github.com/boldprogressives/netlify-pies-website-framework-with-functions
rm -rf netlify-pies-website-framework-with-functions/.git
cp -r netlify-pies-website-framework-with-functions/* ./
rm -rf netlify-pies-website-framework-with-functions
netlify-lambda build functions
rm -rf public && mkdir public 
unzip -o bundle.zip -d public
