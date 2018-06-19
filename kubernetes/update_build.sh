#! /bin/bash
#################################################################################
#     File Name           :     update_build.sh
#     Created By          :     jonesax
#     Creation Date       :     [2017-09-27 12:10]
#     Last Modified       :     [2017-09-27 12:48]
#     Description         :
#################################################################################

environment=$1
version=$2

if [ -z $environment ]; then
  echo "Missing environment"
  exit 1
fi
if [ -z $version ]; then
  echo "Missing version"
  exit 1
fi

sed -i "s/v-master-bleedingedge/$version/g" ./environments/$environment.yaml
