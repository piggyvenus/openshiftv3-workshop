#!/bin/bash

git add .
git commit -m "cosmetic"
git push
oc delete all --all -n labs
oc new-app samueltauil/workshopper -e CONTENT_URL_PREFIX="https://raw.githubusercontent.com/samueltauil/openshiftv3-workshop/master" -e WORKSHOPS_URLS="https://raw.githubusercontent.com/samueltauil/openshiftv3-workshop/master/_module_groups.yml"
