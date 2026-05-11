#!/usr/bin/env bash
set -euo pipefail

settings_dir="${HOME}/.m2"
settings="${settings_dir}/settings.xml"
mkdir -p "${settings_dir}"

echo "[maven/pre-build] writing ${settings}"
cat > "${settings}" <<'EOF'
<?xml version="1.0" encoding="UTF-8"?>
<settings xmlns="http://maven.apache.org/SETTINGS/1.0.0">
  <servers>
    <server>
      <id>internal-releases</id>
      <username>${env.MVN_INTERNAL_USER}</username>
      <password>${env.MVN_INTERNAL_TOKEN}</password>
    </server>
  </servers>
  <mirrors>
    <mirror>
      <id>internal-releases</id>
      <mirrorOf>central</mirrorOf>
      <url>https://maven.internal.example.com/releases</url>
    </mirror>
  </mirrors>
</settings>
EOF