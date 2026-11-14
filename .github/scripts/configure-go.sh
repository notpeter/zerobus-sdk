#!/usr/bin/env bash
# Point Go at the internal JFrog module proxy.
# Expects JFROG_ACCESS_TOKEN in the environment.
set -euo pipefail

echo "GOPROXY=https://databricks.jfrog.io/artifactory/api/go/db-golang,direct" >> "$GITHUB_ENV"
echo "GONOSUMDB=*" >> "$GITHUB_ENV"
cat > ~/.netrc << EOF_NETRC
machine databricks.jfrog.io
login gha-service-account
password ${JFROG_ACCESS_TOKEN}
EOF_NETRC
chmod 600 ~/.netrc
echo "Go configured to use JFrog registry"
