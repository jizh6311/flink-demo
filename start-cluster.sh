#!/bin/bash
versionString=$(ls /usr/local/Cellar/apache-flink)
versions=($(echo "$versionString" | tr '\s' '\n'))
numberOfVersions="${#versions[@]}"
if [[ $numberOfVersions -eq 1 ]]
then
  echo "Start Flink version ${versions[0]}"
  /usr/local/Cellar/apache-flink/${versions[0]}/libexec/bin/start-cluster.sh
else
  echo -n "You have multiple Flink versions. Please select:"
  select version in ${versions[@]}
  do
    echo "Start Flink version $version"
    /usr/local/Cellar/apache-flink/${version}/libexec/bin/start-cluster.sh
    break
  done
fi
