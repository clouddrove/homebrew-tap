#!/bin/bash

VERSION="v0.1.0"
FORMULA_FILE="Formula/smurf.rb"

echo "Updating SHA256 for $VERSION..."

# Update macOS Intel SHA
MAC_AMD64_SHA=$(curl -sL https://github.com/clouddrove/smurf/releases/download/$VERSION/smurf-$VERSION-darwin-amd64.tar.gz | shasum -a 256 | cut -d' ' -f1)
sed -i '' "s|sha256 \".*\"  # macOS Intel|sha256 \"$MAC_AMD64_SHA\"  # macOS Intel|" "$FORMULA_FILE"

# Update macOS ARM SHA  
MAC_ARM64_SHA=$(curl -sL https://github.com/clouddrove/smurf/releases/download/$VERSION/smurf-$VERSION-darwin-arm64.tar.gz | shasum -a 256 | cut -d' ' -f1)
sed -i '' "s|sha256 \".*\"  # macOS ARM|sha256 \"$MAC_ARM64_SHA\"  # macOS ARM|" "$FORMULA_FILE"

# Update Linux AMD64 SHA
LINUX_AMD64_SHA=$(curl -sL https://github.com/clouddrove/smurf/releases/download/$VERSION/smurf-$VERSION-linux-amd64.tar.gz | shasum -a 256 | cut -d' ' -f1)
sed -i '' "s|sha256 \".*\"  # Linux Intel|sha256 \"$LINUX_AMD64_SHA\"  # Linux Intel|" "$FORMULA_FILE"

# Update Linux ARM64 SHA
LINUX_ARM64_SHA=$(curl -sL https://github.com/clouddrove/smurf/releases/download/$VERSION/smurf-$VERSION-linux-arm64.tar.gz | shasum -a 256 | cut -d' ' -f1)
sed -i '' "s|sha256 \".*\"  # Linux ARM|sha256 \"$LINUX_ARM64_SHA\"  # Linux ARM|" "$FORMULA_FILE"

echo "✅ Updated all SHA256 hashes!"