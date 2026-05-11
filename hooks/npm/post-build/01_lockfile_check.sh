#!/usr/bin/env bash
set -euo pipefail

: "${MEND_SCA_SCAN_DIR:?MEND_SCA_SCAN_DIR must be set by the Controller}"

lock="${MEND_SCA_SCAN_DIR}/package-lock.json"
if [[ -f "${lock}" ]]; then
  echo "[npm/post-build] package-lock.json present ($(wc -c < "${lock}") bytes)"
else
  echo "[npm/post-build] WARN: no package-lock.json after build"
fi