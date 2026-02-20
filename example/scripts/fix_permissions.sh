#!/bin/bash
# Fix file permissions for Flutter build
# Run with: sudo ./example/scripts/fix_permissions.sh

set -e
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
EXAMPLE_DIR="$(cd "$SCRIPT_DIR/.." && pwd)"
cd "$EXAMPLE_DIR"

echo "=== Fixing file permissions ==="

# Remove extended attributes
echo "Removing extended attributes..."
xattr -cr .

# Fix build directory permissions
echo "Fixing build directory permissions..."
sudo rm -rf build .dart_tool 2>/dev/null || true
chmod -R u+rwX . 2>/dev/null || true

# Fix Flutter SDK gradle permissions
echo "Fixing Flutter SDK gradle permissions..."
if [ -f "android/local.properties" ]; then
  FLUTTER_SDK=$(grep "flutter.sdk" android/local.properties | cut -d'=' -f2)
  if [ -n "$FLUTTER_SDK" ]; then
    sudo rm -rf "$FLUTTER_SDK/packages/flutter_tools/gradle/.gradle" \
                "$FLUTTER_SDK/packages/flutter_tools/gradle/.kotlin" \
                "$FLUTTER_SDK/packages/flutter_tools/gradle/build" 2>/dev/null || true
    chmod -R u+rwX "$FLUTTER_SDK/packages/flutter_tools/gradle" 2>/dev/null || true
  fi
fi

echo ""
echo "✅ Permissions fixed. Now try: flutter run -d sdk"
echo ""
