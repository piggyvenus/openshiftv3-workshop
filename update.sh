#!/bin/bash

git add .
git commit -am "$(curl -s http://whatthecommit.com/index.txt 2>&1)"
git push
oc delete all --all -n labs
oc new-app --name=lab samueltauil/workshopper -e CONTENT_URL_PREFIX="https://raw.githubusercontent.com/piggyvenus/openshiftv3-workshop/master" -e WORKSHOPS_URLS="https://raw.githubusercontent.com/piggyvenus/openshiftv3-workshop/master/_module_groups.yml"
oc new-app --name=workshop samueltauil/workshopper -e CONTENT_URL_PREFIX="https://raw.githubusercontent.com/piggyvenus/openshiftv3-workshop/v3.7" -e WORKSHOPS_URLS="https://raw.githubusercontent.com/piggyvenus/openshiftv3-workshop/v3.7/_module_groups.yml"
oc new-app --name=workshop samueltauil/workshopper -e CONTENT_URL_PREFIX="https://raw.githubusercontent.com/RedHatWorkshops/openshiftv3-workshop/3.7" -e WORKSHOPS_URLS="https://raw.githubusercontent.com/RedHatWorkshops/openshiftv3-workshop/3.7/_module_groups.yml"
oc new-app --name=lab samueltauil/workshopper -e CONTENT_URL_PREFIX="https://raw.githubusercontent.com/piggyvenus/openshiftv3-workshop/3.9" -e WORKSHOPS_URLS="https://raw.githubusercontent.com/piggyvenus/openshiftv3-workshop/3.9/_module_groups.yml"

