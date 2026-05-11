#!/usr/bin/env bash
set -euo pipefail

echo "[common/post-build] PSB preparation complete"
echo "  project=${MEND_SCA_ORG_NAME:-?}/${MEND_SCA_APP_NAME:-?}/${MEND_SCA_PROJ_NAME:-?}"
echo "  repo=${MEND_SCA_REPO_OWNER:-?}/${MEND_SCA_REPO_NAME:-?}@${MEND_SCA_COMMIT_ID:-?}"
date -u +"  finished_at=%Y-%m-%dT%H:%M:%SZ"