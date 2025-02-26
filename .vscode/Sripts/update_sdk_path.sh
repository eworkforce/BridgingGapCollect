#!/bin/zsh

# Update Android SDK path in zshrc
sed -i 's|export ANDROID_HOME=.*|export ANDROID_HOME="$HOME/Android/Sdk"|' ~/.zshrc
sed -i 's|export ANDROID_SDK_ROOT=.*|export ANDROID_SDK_ROOT="$HOME/Android/Sdk"|' ~/.zshrc

# Source the updated zshrc
source ~/.zshrc

echo "Environment variables have been updated!"
echo "ANDROID_HOME=$ANDROID_HOME"
echo "ANDROID_SDK_ROOT=$ANDROID_SDK_ROOT"
