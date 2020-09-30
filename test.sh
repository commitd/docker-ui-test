#!/bin/bash

echo "Node version $(docker run --rm committed/ui-test node --version)"
echo "Yarn version $(docker run --rm committed/ui-test yarn --version)"
docker run --rm committed/ui-test google-chrome --version
docker run --rm committed/ui-test gauge --version
echo "*** Sample test run ***"
docker run --rm committed/ui-test yarn test

