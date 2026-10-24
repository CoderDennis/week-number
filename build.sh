#!/bin/sh
# Build WeekNumber.app with the Swift toolchain (Command Line Tools are enough).
# Usage: ./build.sh [--install]
set -eu
cd "$(dirname "$0")"

swift build -c release

app=build/WeekNumber.app
rm -rf "$app"
mkdir -p "$app/Contents/MacOS"
cp "$(swift build -c release --show-bin-path)/WeekNumber" "$app/Contents/MacOS/"
cp Resources/Info.plist "$app/Contents/"
codesign --sign - --force "$app"
echo "Built $app"

if [ "${1:-}" = "--install" ]; then
    mkdir -p ~/Applications
    pkill -x WeekNumber || true
    rm -rf ~/Applications/WeekNumber.app
    cp -R "$app" ~/Applications/
    echo "Installed ~/Applications/WeekNumber.app"
fi
