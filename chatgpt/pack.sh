#!/bin/sh
# Builds the ZIP the ChatGPT plugin portal (https://platform.openai.com/plugins) takes:
# plugin.json and mcp.json at the archive root, nothing else.
set -eu
cd "$(dirname "$0")"
version=$(sed -n 's/.*"version": *"\([^"]*\)".*/\1/p' plugin.json)
out="../dist/airbuild-chatgpt-plugin-$version.zip"
mkdir -p ../dist
rm -f "$out"
zip -q -X "$out" plugin.json mcp.json
echo "$out"
