#!/usr/bin/env bash
set -euo pipefail

echo "[common/pre-build] 01_log_scan_context.sh starting"
echo "  MEND_SCA_SCAN_CTX  = ${MEND_SCA_SCAN_CTX:-<unset>}"
echo "  MEND_SCA_SCAN_DIR  = ${MEND_SCA_SCAN_DIR:-<unset>}"
echo "  MEND_SCA_ORG_NAME  = ${MEND_SCA_ORG_NAME:-<unset>}"
echo "  MEND_SCA_APP_NAME  = ${MEND_SCA_APP_NAME:-<unset>}"
echo "  MEND_SCA_PROJ_NAME = ${MEND_SCA_PROJ_NAME:-<unset>}"
echo "  MEND_SCA_REPO_OWNER= ${MEND_SCA_REPO_OWNER:-<unset>}"
echo "  MEND_SCA_REPO_NAME = ${MEND_SCA_REPO_NAME:-<unset>}"
echo "  MEND_SCA_BRANCH_NAME=${MEND_SCA_BRANCH_NAME:-<unset>}"
echo "  MEND_SCA_COMMIT_ID = ${MEND_SCA_COMMIT_ID:-<unset>}"
echo "[common/pre-build] 01_log_scan_context.sh done"