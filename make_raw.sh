#!/bin/bash

for x in *-dashboard.json; do
  cat ${x} | jq -r '.dashboard' | sed -e 's/\${DS_PROMETHEUS}/Prometheus/g' > ./raw/${x}
done

