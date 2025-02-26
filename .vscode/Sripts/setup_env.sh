#!/bin/zsh

# Check if .zshrc exists, create if it doesn't
touch ~/.zshrc

# Add Android SDK environment variables if they don't exist
grep -q 'ANDROID_HOME=' ~/.zshrc || echo 'export ANDROID_HOME="/usr/lib/android-sdk"' >> ~/.zshrc
grep -q 'ANDROID_SDK_ROOT=' ~/.zshrc || echo 'export ANDROID_SDK_ROOT="/usr/lib/android-sdk"' >> ~/.zshrc
grep -q 'PATH.*android-sdk' ~/.zshrc || echo 'export PATH="$PATH:$ANDROID_SDK_ROOT/platform-tools:$ANDROID_SDK_ROOT/cmdline-tools/latest/bin"' >> ~/.zshrc

# Source the updated zshrc
source ~/.zshrc 2>/dev/null || true

echo "Environment variables have been set up!"
echo "Please run 'source ~/.zshrc' or restart your terminal to apply the changes."

# Print current environment settings
echo "\nCurrent environment settings:"
echo "ANDROID_HOME=$ANDROID_HOME"
echo "ANDROID_SDK_ROOT=$ANDROID_SDK_ROOT"
echo "PATH includes Android SDK: $(echo $PATH | grep -q android-sdk && echo 'Yes' || echo 'No')"
