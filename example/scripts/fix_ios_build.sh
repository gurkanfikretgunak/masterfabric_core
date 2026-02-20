#!/bin/bash
# Fix iOS simulator build: codesign "Operation not permitted" / "failed to open a file"
# Run from project root: ./example/scripts/fix_ios_build.sh

set -e
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
EXAMPLE_DIR="$(cd "$SCRIPT_DIR/.." && pwd)"
cd "$EXAMPLE_DIR"

echo "=== Fixing iOS build permissions ==="

# 1. Clean build artifacts
echo "Cleaning..."
flutter clean
rm -rf build ios/Pods ios/.symlinks ios/Flutter/Flutter.framework 2>/dev/null || true

# 2. Remove extended attributes (fixes "resource fork/detritus" and many codesign issues)
# Common when project is in iCloud Drive, OneDrive, or cloud-synced folders
echo "Removing extended attributes..."
xattr -cr .

# 3. Ensure build directory will be writable
mkdir -p build
chmod -R u+rwX build 2>/dev/null || true

# 4. Get dependencies
echo "Getting dependencies..."
flutter pub get

# 5. Reinstall pods
echo "Reinstalling pods..."
cd ios && pod install && cd ..

echo ""
echo "=== Done. Now run: flutter run ==="
echo ""
echo "If it still fails:"
echo "  1. Run this from macOS Terminal.app (not Cursor) - IDE terminals can have restricted permissions"
echo "  2. Grant Full Disk Access to Terminal: System Settings > Privacy & Security > Full Disk Access"
echo "  3. Move project out of iCloud: cp -r . ~/Developer/masterfabric_core && cd ~/Developer/masterfabric_core/example"
echo ""
