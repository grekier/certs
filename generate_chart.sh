#!/bin/bash

set -e
set -x

echo "Starting..."

CHARTS_PATH="charts"

mkdir -p "${CHARTS_PATH}"

helm package certsg

mv -f certsg-*.tgz "${CHARTS_PATH}"/

helm repo index "${CHARTS_PATH}" --url "https://grekier.github.io/certs/${CHARTS_PATH}"

echo "Done."
