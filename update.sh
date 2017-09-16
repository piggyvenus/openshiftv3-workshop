#!/bin/bash

git add .
git commit -am "$(curl -s http://whatthecommit.com/index.txt 2>&1)"
git push
oc delete all --all -n labs
oc new-app --name=workshop samueltauil/workshopper -e CONTENT_URL_PREFIX="https://raw.githubusercontent.com/piggyvenus/openshiftv3-workshop/master" -e WORKSHOPS_URLS="https://raw.githubusercontent.com/piggyvenus/openshiftv3-workshop/master/_module_groups.yml"
