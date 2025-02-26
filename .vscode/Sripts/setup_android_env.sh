#!/bin/bash

set -e  # Exit on error

# Setup Android SDK paths
export ANDROID_HOME="$HOME/Android/Sdk"
export ANDROID_SDK_ROOT="$ANDROID_HOME"
export PATH="$PATH:$ANDROID_HOME/cmdline-tools/latest/bin:$ANDROID_HOME/platform-tools"

# Create necessary directories
echo "Creating Android SDK directories..."
mkdir -p "$ANDROID_HOME/cmdline-tools"

# Download and install command-line tools if not present
if [ ! -f "$ANDROID_HOME/cmdline-tools/latest/bin/sdkmanager" ]; then
    echo "Downloading Android command-line tools..."
    CMDLINE_TOOLS_URL="https://dl.google.com/android/repository/commandlinetools-linux-9477386_latest.zip"
    wget -q "$CMDLINE_TOOLS_URL" -O cmdline-tools.zip
    
    echo "Extracting command-line tools..."
    unzip -q cmdline-tools.zip
    mv cmdline-tools "$ANDROID_HOME/cmdline-tools/latest"
    rm cmdline-tools.zip
fi

# Accept licenses
echo "Accepting Android SDK licenses..."
yes | sdkmanager --licenses

# Install required SDK components
echo "Installing Android SDK components..."
sdkmanager --verbose \
    "platform-tools" \
    "platforms;android-34" \
    "platforms;android-21" \
    "build-tools;34.0.0" \
    "system-images;android-34;google_apis;x86_64"

# Verify installation
echo "Verifying installation..."
sdkmanager --list_installed

echo "Setup complete!"
echo "Please add the following to your ~/.bashrc or ~/.zshrc:"
echo 'export ANDROID_HOME="$HOME/Android/Sdk"'
echo 'export ANDROID_SDK_ROOT="$ANDROID_HOME"'
echo 'export PATH="$PATH:$ANDROID_HOME/cmdline-tools/latest/bin:$ANDROID_HOME/platform-tools"'
