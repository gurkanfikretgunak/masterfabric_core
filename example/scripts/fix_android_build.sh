#!/bin/bash
# Fix Android Gradle build: "Cannot snapshot output property" / "Could not read workspace metadata"
# Run from project root: ./example/scripts/fix_android_build.sh

set -e
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
EXAMPLE_DIR="$(cd "$SCRIPT_DIR/.." && pwd)"
cd "$EXAMPLE_DIR"

echo "=== Fixing Android Gradle build ==="

# 1. Clean everything
echo "Cleaning build artifacts..."
flutter clean
rm -rf android/.gradle android/app/.gradle android/build android/app/build 2>/dev/null || true

# 2. Clear Gradle cache (this requires proper permissions)
echo "Clearing Gradle cache..."
rm -rf ~/.gradle/caches 2>/dev/null || {
    echo "⚠️  Could not clear Gradle cache - may need to run from Terminal.app with Full Disk Access"
}

# 3. Remove extended attributes (fixes permission issues)
echo "Removing extended attributes..."
xattr -cr android/ 2>/dev/null || true

# 4. Ensure directories are writable
echo "Setting permissions..."
chmod -R u+rwX android/ 2>/dev/null || true
mkdir -p ~/.gradle/caches
chmod -R u+rwX ~/.gradle/caches 2>/dev/null || true

# 5. Get dependencies
echo "Getting dependencies..."
flutter pub get

# 6. Try building
echo ""
echo "=== Attempting build ==="
flutter build apk --debug || {
    echo ""
    echo "❌ Build failed. Try running from Terminal.app instead:"
    echo "   1. Open Terminal.app (not Cursor)"
    echo "   2. cd $EXAMPLE_DIR"
    echo "   3. flutter run -d sdk"
    echo ""
    echo "If it still fails, grant Full Disk Access to Terminal:"
    echo "   System Settings > Privacy & Security > Full Disk Access"
    exit 1
}

echo ""
echo "✅ Build successful!"
echo ""
