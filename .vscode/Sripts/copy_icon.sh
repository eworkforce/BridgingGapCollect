#!/bin/bash

# Activate the conda environment
eval "$(conda shell.bash hook)"
conda activate odkc

# Create drawable directory if it doesn't exist
mkdir -p collect/collect_app/src/main/res/drawable

# Copy the icon.jpg to the drawable directory
echo "Copying icon.jpg to drawable directory..."
cp assets/logos/alt/icon.jpg collect/collect_app/src/main/res/drawable/icon.jpg

# Clean the build
echo "Cleaning the build..."
cd collect && ./gradlew clean

echo "Icon copy completed!"
echo "Now you can build the app with './gradlew assembleDebug'"
