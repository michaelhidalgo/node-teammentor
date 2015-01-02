#!/bin/bash

#set -o errexit # Exit on error
echo 'Removing cache files'
rm -R .tmCache

echo 'Creating instrumented node files'
echo '    for CoffeeScript'
coffeeCoverage --path relative ./src ./.coverage/src
coffeeCoverage --path relative ./test ./.coverage/test

echo 'Running Tests locally with (html-file-cov)'
mocha -R mocha-lcov-reporter .coverage/test --recursive | sed 's,SF:,SF:src/,;/test/s,src,test,' | ./node_modules/coveralls/bin/coveralls.js

echo 'Removing instrumented node files'
rm -R .coverage

echo 'Opening browser with coverage.html'

#open https://coveralls.io/r/TeamMentor/node-teammentor