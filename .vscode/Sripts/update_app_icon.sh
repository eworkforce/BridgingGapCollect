#!/bin/bash

# Activate the conda environment
eval "$(conda shell.bash hook)"
conda activate odkc

# Create drawable directories if they don't exist
mkdir -p collect/collect_app/src/main/res/drawable
mkdir -p collect/collect_app/src/main/res/drawable-mdpi
mkdir -p collect/collect_app/src/main/res/drawable-hdpi
mkdir -p collect/collect_app/src/main/res/drawable-xhdpi
mkdir -p collect/collect_app/src/main/res/drawable-xxhdpi
mkdir -p collect/collect_app/src/main/res/drawable-xxxhdpi

# Copy the icon.jpg to the drawable directories
echo "Copying app icon to drawable directories..."
cp assets/logos/alt/icon.jpg collect/collect_app/src/main/res/drawable/app_icon.jpg
cp assets/logos/alt/icon.jpg collect/collect_app/src/main/res/drawable-mdpi/app_icon.jpg
cp assets/logos/alt/icon.jpg collect/collect_app/src/main/res/drawable-hdpi/app_icon.jpg
cp assets/logos/alt/icon.jpg collect/collect_app/src/main/res/drawable-xhdpi/app_icon.jpg
cp assets/logos/alt/icon.jpg collect/collect_app/src/main/res/drawable-xxhdpi/app_icon.jpg
cp assets/logos/alt/icon.jpg collect/collect_app/src/main/res/drawable-xxxhdpi/app_icon.jpg

# Remove any existing app_icon.xml to avoid conflicts
rm -f collect/collect_app/src/main/res/drawable/app_icon.xml

# Clean the build
echo "Cleaning the build..."
cd collect && ./gradlew clean

echo "App icon update completed!"
echo "Now you can build the app with './gradlew assembleDebug'"
