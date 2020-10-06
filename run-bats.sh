#!/bin/bash

cd /tests
bats /tests > tests-results.tap
/app/node_modules/tap-junit/bin/tap-junit -i tests-results.tap -s $1 > tests-results.xml
