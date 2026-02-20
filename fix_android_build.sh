#!/bin/bash

# Define Java Home from Flutter Doctor output
export JAVA_HOME="/Applications/Android Studio.app/Contents/jbr/Contents/Home"
export PATH="$JAVA_HOME/bin:$PATH"

echo "=== Fixing Android Build Environment ==="
echo "Using Java at: $JAVA_HOME"

# Stop Gradle Daemons
echo "Stopping Gradle daemons..."
pkill -f 'java.*gradle' || echo "No Gradle daemons running."

# Clean Flutter project
echo "Cleaning Flutter project..."
cd example
flutter clean
flutter pub get

# Remove local Gradle cache in project
rm -rf android/.gradle

echo "=== Attempting Build with Stable Versions ==="
# Try to build directly
flutter run
