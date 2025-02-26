#!/bin/bash

# Bridging Gaps Collect Customization Script
# This script helps implement the customizations for Bridging Gaps Collect

# Ensure we're in the odkc conda environment
echo "Activating odkc conda environment..."
eval "$(conda shell.bash hook)"
conda activate odkc

# Create necessary directories
echo "Creating necessary directories..."
mkdir -p assets/logos
mkdir -p collect/collect_app/src/main/res/font
mkdir -p collect/collect_app/src/main/res/drawable-mdpi
mkdir -p collect/collect_app/src/main/res/drawable-hdpi
mkdir -p collect/collect_app/src/main/res/drawable-xhdpi
mkdir -p collect/collect_app/src/main/res/drawable-xxhdpi
mkdir -p collect/collect_app/src/main/res/drawable-xxxhdpi

# Copy fonts to Android project
echo "Copying fonts to Android project..."
# Use existing fonts in the assets directory
cp assets/fonts/Figtree/static/Figtree-Regular.ttf collect/collect_app/src/main/res/font/figtree_regular.ttf
cp assets/fonts/Figtree/static/Figtree-Medium.ttf collect/collect_app/src/main/res/font/figtree_medium.ttf
cp assets/fonts/Figtree/static/Figtree-Bold.ttf collect/collect_app/src/main/res/font/figtree_bold.ttf

# Copy logo to drawable directories
echo "Copying logo to drawable directories..."
cp assets/logos/bg_icon.png collect/collect_app/src/main/res/drawable/bg_icon.png
cp assets/logos/bg_icon.png collect/collect_app/src/main/res/drawable-mdpi/bg_icon.png
cp assets/logos/bg_icon.png collect/collect_app/src/main/res/drawable-hdpi/bg_icon.png
cp assets/logos/bg_icon.png collect/collect_app/src/main/res/drawable-xhdpi/bg_icon.png
cp assets/logos/bg_icon.png collect/collect_app/src/main/res/drawable-xxhdpi/bg_icon.png
cp assets/logos/bg_icon.png collect/collect_app/src/main/res/drawable-xxxhdpi/bg_icon.png

# Create font resource file
echo "Creating font resource file..."
cat > collect/collect_app/src/main/res/font/figtree.xml << 'EOF'
<?xml version="1.0" encoding="utf-8"?>
<font-family xmlns:android="http://schemas.android.com/apk/res/android"
    xmlns:app="http://schemas.android.com/apk/res-auto">
    <font
        android:font="@font/figtree_regular"
        android:fontStyle="normal"
        android:fontWeight="400"
        app:font="@font/figtree_regular"
        app:fontStyle="normal"
        app:fontWeight="400" />
    <font
        android:font="@font/figtree_medium"
        android:fontStyle="normal"
        android:fontWeight="500"
        app:font="@font/figtree_medium"
        app:fontStyle="normal"
        app:fontWeight="500" />
    <font
        android:font="@font/figtree_bold"
        android:fontStyle="normal"
        android:fontWeight="700"
        app:font="@font/figtree_bold"
        app:fontStyle="normal"
        app:fontWeight="700" />
</font-family>
EOF

# Update app name in strings.xml
echo "Updating app name..."
# Update the untranslated.xml file if it exists
if [ -f collect/strings/src/main/res/values/untranslated.xml ]; then
    echo "Updating untranslated.xml..."
    sed -i 's/<string name="collect_app_name" translatable="false">ODK Collect<\/string>/<string name="collect_app_name" translatable="false">Bridging Gaps Collect<\/string>/g' collect/strings/src/main/res/values/untranslated.xml
fi

# Check if typography.xml exists before updating
if [ -f collect/collect_app/src/main/res/values/typography.xml ]; then
    echo "Updating typography.xml..."
    sed -i 's/<item name="fontFamily">sans-serif-medium<\/item>/<item name="fontFamily">@font\/figtree<\/item>\n        <item name="android:fontFamily">@font\/figtree<\/item>/g' collect/collect_app/src/main/res/values/typography.xml
    sed -i 's/<item name="fontFamily">sans-serif<\/item>/<item name="fontFamily">@font\/figtree<\/item>/g' collect/collect_app/src/main/res/values/typography.xml
    sed -i 's/<item name="android:fontFamily">sans-serif<\/item>/<item name="android:fontFamily">@font\/figtree<\/item>/g' collect/collect_app/src/main/res/values/typography.xml
else
    echo "Warning: typography.xml not found at collect/collect_app/src/main/res/values/typography.xml"
fi

# Update colors.xml with Bridging Gaps brand colors
echo "Updating colors.xml..."
# Create colors directory if it doesn't exist
mkdir -p collect/collect_app/src/main/res/values

# Create Bridging Gaps colors file
cat > collect/collect_app/src/main/res/values/bridging_gaps_colors.xml << 'EOF'
<?xml version="1.0" encoding="utf-8"?>
<resources>
    <!-- Bridging Gaps brand colors -->
    <!-- Replace these with actual brand colors -->
    <color name="bridging_gaps_primary">#3e9fcc</color>
    <color name="bridging_gaps_on_primary">#ffffff</color>
    <color name="bridging_gaps_primary_container">#bfe9ff</color>
    <color name="bridging_gaps_on_primary_container">#001f2a</color>
    <color name="bridging_gaps_primary_inverse">#6dd2ff</color>

    <color name="bridging_gaps_error">#ba1a1a</color>
    <color name="bridging_gaps_error_container">#ffdad6</color>
    <color name="bridging_gaps_on_error_container">#410002</color>

    <color name="bridging_gaps_surface">#ffffff</color>
    <color name="bridging_gaps_surface_variant">#dce3e9</color>
    <color name="bridging_gaps_on_surface">#001f2a</color>
    <color name="bridging_gaps_on_surface_variant">#40484c</color>
</resources>
EOF

# Create a theme overlay to apply our custom colors
cat > collect/collect_app/src/main/res/values/bridging_gaps_theme.xml << 'EOF'
<?xml version="1.0" encoding="utf-8"?>
<resources>
    <!-- Apply Bridging Gaps colors to the existing theme -->
    <style name="Theme.Collect.BridgingGaps" parent="Theme.Collect">
        <!-- Primary brand color -->
        <item name="colorPrimary">@color/bridging_gaps_primary</item>
        <item name="colorOnPrimary">@color/bridging_gaps_on_primary</item>
        <item name="colorPrimaryContainer">@color/bridging_gaps_primary_container</item>
        <item name="colorOnPrimaryContainer">@color/bridging_gaps_on_primary_container</item>
        <item name="colorPrimaryInverse">@color/bridging_gaps_primary_inverse</item>
        
        <!-- Error colors -->
        <item name="colorError">@color/bridging_gaps_error</item>
        <item name="colorErrorContainer">@color/bridging_gaps_error_container</item>
        <item name="colorOnErrorContainer">@color/bridging_gaps_on_error_container</item>
        
        <!-- Surface colors -->
        <item name="colorSurface">@color/bridging_gaps_surface</item>
        <item name="colorSurfaceVariant">@color/bridging_gaps_surface_variant</item>
        <item name="colorOnSurface">@color/bridging_gaps_on_surface</item>
        <item name="colorOnSurfaceVariant">@color/bridging_gaps_on_surface_variant</item>
        
        <!-- Font customization -->
        <item name="android:fontFamily">@font/figtree</item>
        <item name="fontFamily">@font/figtree</item>
    </style>
</resources>
EOF

# Create custom splash screen icon
echo "Creating custom splash screen icon..."
cat > collect/collect_app/src/main/res/drawable/bridging_gaps_splash_icon.xml << 'EOF'
<?xml version="1.0" encoding="utf-8"?>
<vector xmlns:android="http://schemas.android.com/apk/res/android"
    android:width="108dp"
    android:height="108dp"
    android:viewportWidth="108"
    android:viewportHeight="108">
    <group
        android:pivotX="54"
        android:pivotY="54"
        android:scaleX="0.8"
        android:scaleY="0.8">
        <path
            android:fillColor="@color/bridging_gaps_primary"
            android:pathData="M54,30C40.7,30 30,40.7 30,54s10.7,24 24,24s24,-10.7 24,-24S67.3,30 54,30zM54,66c-6.6,0 -12,-5.4 -12,-12s5.4,-12 12,-12s12,5.4 12,12S60.6,66 54,66z"/>
    </group>
</vector>
EOF

# Update the AndroidManifest.xml to use our custom theme and logo
if [ -f collect/collect_app/src/main/AndroidManifest.xml ]; then
    echo "Updating AndroidManifest.xml to use custom theme and logo..."
    sed -i 's/android:theme="@style\/Theme.Collect"/android:theme="@style\/Theme.Collect.BridgingGaps"/g' collect/collect_app/src/main/AndroidManifest.xml
    sed -i 's/android:icon="@drawable\/notes"/android:icon="@drawable\/bg_icon"/g' collect/collect_app/src/main/AndroidManifest.xml
else
    echo "Warning: AndroidManifest.xml not found at collect/collect_app/src/main/AndroidManifest.xml"
fi

# Update the splash screen theme
if [ -f collect/collect_app/src/main/res/values/theme.xml ]; then
    echo "Updating splash screen theme..."
    sed -i 's/windowSplashScreenAnimatedIcon">@drawable\/ic_splash_screen_icon/windowSplashScreenAnimatedIcon">@drawable\/bg_icon/g' collect/collect_app/src/main/res/values/theme.xml
    sed -i 's/postSplashScreenTheme">@style\/Theme.Collect/postSplashScreenTheme">@style\/Theme.Collect.BridgingGaps/g' collect/collect_app/src/main/res/values/theme.xml
    sed -i 's/windowSplashScreenBackground">@color\/primaryDark/windowSplashScreenBackground">@color\/bridging_gaps_primary/g' collect/collect_app/src/main/res/values/theme.xml
else
    echo "Warning: theme.xml not found at collect/collect_app/src/main/res/values/theme.xml"
fi

# Remove any duplicate string resources
if [ -f collect/strings/src/main/res/values/bridging_gaps_strings.xml ]; then
    echo "Removing duplicate string resources..."
    rm collect/strings/src/main/res/values/bridging_gaps_strings.xml
fi

echo "Customization script completed!"
echo "Next steps:"
echo "1. Build the app with './gradlew assembleDebug'"
echo "2. Test the app on a device or emulator"
echo "3. Make any necessary adjustments to colors or logo"
echo "4. Create a signed APK for distribution"
