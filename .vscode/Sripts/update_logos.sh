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

# Convert SVG app icon to PNG for different densities
echo "Converting SVG app icon to PNG for different densities..."
mkdir -p temp_icons

# Check if ImageMagick is installed
if command -v convert &> /dev/null; then
    # Convert SVG to PNG for app icon (different sizes for different densities)
    convert -background none assets/logos/Logo_Icon/SVG/Secondary_Logo_Bridging_Gaps_logo_fullcolor_rgb.svg -resize 48x48 temp_icons/app_icon_mdpi.png
    convert -background none assets/logos/Logo_Icon/SVG/Secondary_Logo_Bridging_Gaps_logo_fullcolor_rgb.svg -resize 72x72 temp_icons/app_icon_hdpi.png
    convert -background none assets/logos/Logo_Icon/SVG/Secondary_Logo_Bridging_Gaps_logo_fullcolor_rgb.svg -resize 96x96 temp_icons/app_icon_xhdpi.png
    convert -background none assets/logos/Logo_Icon/SVG/Secondary_Logo_Bridging_Gaps_logo_fullcolor_rgb.svg -resize 144x144 temp_icons/app_icon_xxhdpi.png
    convert -background none assets/logos/Logo_Icon/SVG/Secondary_Logo_Bridging_Gaps_logo_fullcolor_rgb.svg -resize 192x192 temp_icons/app_icon_xxxhdpi.png
    
    # Copy the converted PNGs to the drawable directories
    cp temp_icons/app_icon_mdpi.png collect/collect_app/src/main/res/drawable-mdpi/app_icon.png
    cp temp_icons/app_icon_hdpi.png collect/collect_app/src/main/res/drawable-hdpi/app_icon.png
    cp temp_icons/app_icon_xhdpi.png collect/collect_app/src/main/res/drawable-xhdpi/app_icon.png
    cp temp_icons/app_icon_xxhdpi.png collect/collect_app/src/main/res/drawable-xxhdpi/app_icon.png
    cp temp_icons/app_icon_xxxhdpi.png collect/collect_app/src/main/res/drawable-xxxhdpi/app_icon.png
    cp temp_icons/app_icon_xxhdpi.png collect/collect_app/src/main/res/drawable/app_icon.png  # Default
else
    echo "ImageMagick not found. Copying SVG file directly."
    # Copy the SVG file directly
    cp assets/logos/Logo_Icon/SVG/Secondary_Logo_Bridging_Gaps_logo_fullcolor_rgb.svg collect/collect_app/src/main/res/drawable/app_icon.xml
fi

# Copy splash screen image
echo "Copying splash screen image..."
cp assets/logos/alt/Bridging_Gaps_BG_Youtube.jpg collect/collect_app/src/main/res/drawable/splash_image.jpg

# Update AndroidManifest.xml to use the new app icon
echo "Updating AndroidManifest.xml..."
sed -i 's/android:icon="@drawable\/bg_icon"/android:icon="@drawable\/app_icon"/g' collect/collect_app/src/main/AndroidManifest.xml

# Update theme.xml to use the new splash screen image
echo "Updating theme.xml..."
sed -i 's/windowSplashScreenAnimatedIcon">@drawable\/bg_icon/windowSplashScreenAnimatedIcon">@drawable\/splash_image/g' collect/collect_app/src/main/res/values/theme.xml

# Clean up temporary files
rm -rf temp_icons

echo "Logo update completed!"
echo "Next steps:"
echo "1. Build the app with './gradlew assembleDebug'"
echo "2. Test the app on a device or emulator"
echo "3. Create a signed APK for distribution"
