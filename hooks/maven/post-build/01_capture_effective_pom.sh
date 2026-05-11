#!/usr/bin/env bash
set -euo pipefail

: "${MEND_SCA_SCAN_DIR:?MEND_SCA_SCAN_DIR must be set by the Controller}"

cd "${MEND_SCA_SCAN_DIR}"
if [[ -f pom.xml ]] && command -v mvn >/dev/null 2>&1; then
  out="${MEND_SCA_SCAN_DIR}/effective-pom.xml"
  echo "[maven/post-build] capturing effective POM -> ${out}"
  mvn -B -q help:effective-pom -Doutput="${out}" || {
    echo "[maven/post-build] WARN: effective-pom failed (exit $?)"
  }
else
  echo "[maven/post-build] skip: no pom.xml or mvn not on PATH"
fi