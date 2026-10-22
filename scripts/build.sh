#!/usr/bin/env bash
set -euo pipefail
npm install
npx sushi .
mkdir -p input-cache
[ -f input-cache/publisher.jar ] || curl -L https://github.com/HL7/fhir-ig-publisher/releases/latest/download/publisher.jar -o input-cache/publisher.jar
java -Xmx4g -jar input-cache/publisher.jar -ig ig.ini
