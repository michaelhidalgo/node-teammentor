#!/bin/bash

#set -o errexit # Exit on error
echo 'Removing cache files'
rm -R .tmCache

echo 'Creating instrumented node files'
echo '    for CoffeeScript'
coffeeCoverage --path relative ./src ./_coverage/src
coffeeCoverage --path relative ./test ./_coverage/test

echo 'Running Tests locally with (html-file-cov)'
mocha -R html-file-cov ./_coverage/test  --recursive

echo 'Removing instrumented node files'
rm -R _coverage
rm -R src-cov
mv coverage.html .tmCache/coverage.html

echo 'Opening browser with coverage.html'

open .tmCache/coverage.html