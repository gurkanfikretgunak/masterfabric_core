#!/bin/bash
# Update iOS and Android app icons from assets/app_icon_1024x1024.png
# Uses macOS built-in sips - no packages required
# Run from project root: ./example/scripts/update_app_icon.sh

set -e
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
EXAMPLE_DIR="$(cd "$SCRIPT_DIR/.." && pwd)"
SRC="$EXAMPLE_DIR/assets/app_icon_1024x1024.png"

if [ ! -f "$SRC" ]; then
  echo "Error: Source icon not found at $SRC"
  exit 1
fi

IOS_DIR="$EXAMPLE_DIR/ios/Runner/Assets.xcassets/AppIcon.appiconset"
ANDROID_RES="$EXAMPLE_DIR/android/app/src/main/res"

resize() {
  local size=$1
  local out=$2
  sips -z "$size" "$size" "$SRC" --out "$out"
}

echo "Updating iOS icons..."
resize 20   "$IOS_DIR/Icon-App-20x20@1x.png"
resize 40   "$IOS_DIR/Icon-App-20x20@2x.png"
resize 60   "$IOS_DIR/Icon-App-20x20@3x.png"
resize 29   "$IOS_DIR/Icon-App-29x29@1x.png"
resize 58   "$IOS_DIR/Icon-App-29x29@2x.png"
resize 87   "$IOS_DIR/Icon-App-29x29@3x.png"
resize 40   "$IOS_DIR/Icon-App-40x40@1x.png"
resize 80   "$IOS_DIR/Icon-App-40x40@2x.png"
resize 120  "$IOS_DIR/Icon-App-40x40@3x.png"
resize 50   "$IOS_DIR/Icon-App-50x50@1x.png"
resize 100  "$IOS_DIR/Icon-App-50x50@2x.png"
resize 57   "$IOS_DIR/Icon-App-57x57@1x.png"
resize 114  "$IOS_DIR/Icon-App-57x57@2x.png"
resize 120  "$IOS_DIR/Icon-App-60x60@2x.png"
resize 180  "$IOS_DIR/Icon-App-60x60@3x.png"
resize 72   "$IOS_DIR/Icon-App-72x72@1x.png"
resize 144  "$IOS_DIR/Icon-App-72x72@2x.png"
resize 76   "$IOS_DIR/Icon-App-76x76@1x.png"
resize 152  "$IOS_DIR/Icon-App-76x76@2x.png"
resize 167  "$IOS_DIR/Icon-App-83.5x83.5@2x.png"
resize 1024 "$IOS_DIR/Icon-App-1024x1024@1x.png"

echo "Updating Android mipmap icons..."
resize 48   "$ANDROID_RES/mipmap-mdpi/ic_launcher.png"
resize 72   "$ANDROID_RES/mipmap-hdpi/ic_launcher.png"
resize 96   "$ANDROID_RES/mipmap-xhdpi/ic_launcher.png"
resize 144  "$ANDROID_RES/mipmap-xxhdpi/ic_launcher.png"
resize 192  "$ANDROID_RES/mipmap-xxxhdpi/ic_launcher.png"

echo "Updating Android adaptive icon foreground..."
mkdir -p "$ANDROID_RES/drawable-mdpi" "$ANDROID_RES/drawable-hdpi" "$ANDROID_RES/drawable-xhdpi" "$ANDROID_RES/drawable-xxhdpi" "$ANDROID_RES/drawable-xxxhdpi"
resize 48   "$ANDROID_RES/drawable-mdpi/ic_launcher_foreground.png"
resize 72   "$ANDROID_RES/drawable-hdpi/ic_launcher_foreground.png"
resize 96   "$ANDROID_RES/drawable-xhdpi/ic_launcher_foreground.png"
resize 144  "$ANDROID_RES/drawable-xxhdpi/ic_launcher_foreground.png"
resize 192  "$ANDROID_RES/drawable-xxxhdpi/ic_launcher_foreground.png"

echo "Done. App icons updated."
