#!/bin/bash

# Create drawable directories
mkdir -p collect/collect_app/src/main/res/drawable
mkdir -p collect/collect_app/src/main/res/drawable-mdpi
mkdir -p collect/collect_app/src/main/res/drawable-hdpi
mkdir -p collect/collect_app/src/main/res/drawable-xhdpi
mkdir -p collect/collect_app/src/main/res/drawable-xxhdpi
mkdir -p collect/collect_app/src/main/res/drawable-xxxhdpi

# Copy logo to drawable directories
cp assets/logos/bg_icon.png collect/collect_app/src/main/res/drawable/bg_icon.png
cp assets/logos/bg_icon.png collect/collect_app/src/main/res/drawable-mdpi/bg_icon.png
cp assets/logos/bg_icon.png collect/collect_app/src/main/res/drawable-hdpi/bg_icon.png
cp assets/logos/bg_icon.png collect/collect_app/src/main/res/drawable-xhdpi/bg_icon.png
cp assets/logos/bg_icon.png collect/collect_app/src/main/res/drawable-xxhdpi/bg_icon.png
cp assets/logos/bg_icon.png collect/collect_app/src/main/res/drawable-xxxhdpi/bg_icon.png

echo "Logo files copied successfully!"
