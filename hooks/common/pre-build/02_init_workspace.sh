#!/usr/bin/env bash
set -euo pipefail

: "${MEND_SCA_SCAN_DIR:?MEND_SCA_SCAN_DIR must be set by the Controller}"

marker="${MEND_SCA_SCAN_DIR}/.mend-hooks-marker"
echo "[common/pre-build] writing marker: ${marker}"
{
  echo "scan_ctx=${MEND_SCA_SCAN_CTX:-}"
  echo "commit=${MEND_SCA_COMMIT_ID:-}"
  echo "branch=${MEND_SCA_BRANCH_NAME:-}"
  date -u +"started_at=%Y-%m-%dT%H:%M:%SZ"
} > "${marker}"