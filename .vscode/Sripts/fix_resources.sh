#!/bin/bash

# Activate the conda environment
eval "$(conda shell.bash hook)"
conda activate odkc

echo "Removing conflicting resource files..."
rm -f collect/collect_app/src/main/res/drawable/splash_image.jpg
rm -f collect/collect_app/src/main/res/drawable/splash_image.xml

echo "Cleaning the build..."
cd collect && ./gradlew clean

echo "Resource cleanup completed!"
echo "Now you can build the app with './gradlew assembleDebug'"
