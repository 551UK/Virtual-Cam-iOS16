#!/bin/sh
set -eu

VERSION="2.5.35-roothide"
OUT="${1:-com.551uk.virtualcam_${VERSION}_iphoneos-arm64e.deb}"

dpkg-deb --root-owner-group -Zxz -z9 -b RootHide "$OUT"
echo "Built $OUT"
