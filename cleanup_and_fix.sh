#!/bin/bash

# Stop any running Gradle daemons to release file locks
echo "Stopping Gradle daemons..."
pkill -f 'java.*gradle' || echo "No Gradle daemons running."

# Get current user and group
CURRENT_USER=$(whoami)
CURRENT_GROUP=$(id -gn)

echo "Fixing permissions..."
echo "You may be asked for your password to run sudo commands."

# Fix ownership of the current directory (project root)
echo "Fixing ownership of current directory..."
sudo chown -R "$CURRENT_USER:$CURRENT_GROUP" .

# Fix ownership of ~/.gradle if it exists
if [ -d "$HOME/.gradle" ]; then
    echo "Fixing ownership of ~/.gradle..."
    sudo chown -R "$CURRENT_USER:$CURRENT_GROUP" "$HOME/.gradle"
fi

# Fix ownership of ~/.dart-tool if it exists
if [ -d "$HOME/.dart-tool" ]; then
    echo "Fixing ownership of ~/.dart-tool..."
    sudo chown -R "$CURRENT_USER:$CURRENT_GROUP" "$HOME/.dart-tool"
fi

# Clean the example project
if [ -d "example" ]; then
    echo "Cleaning example project..."
    cd example
    flutter clean
    
    if [ -d "android/.gradle" ]; then
        echo "Removing example/android/.gradle..."
        rm -rf android/.gradle
    fi
    cd ..
else
    echo "No 'example' directory found."
fi

echo "---------------------------------------------------------"
echo "Cleanup complete!"
echo "Please try running your build again WITHOUT using 'sudo'."
echo "---------------------------------------------------------"
