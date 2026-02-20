#!/bin/bash
# Fix file permissions for Flutter build
# Run with: sudo ./fix_permissions.sh

set -e
cd "$(dirname "$0")"

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
FLUTTER_SDK=$(grep "flutter.sdk" android/local.properties | cut -d'=' -f2)
if [ -n "$FLUTTER_SDK" ]; then
    sudo rm -rf "$FLUTTER_SDK/packages/flutter_tools/gradle/.gradle" \
                "$FLUTTER_SDK/packages/flutter_tools/gradle/.kotlin" \
                "$FLUTTER_SDK/packages/flutter_tools/gradle/build" 2>/dev/null || true
    chmod -R u+rwX "$FLUTTER_SDK/packages/flutter_tools/gradle" 2>/dev/null || true
fi

echo ""
echo "✅ Permissions fixed. Now try: flutter run -d sdk"
echo ""
