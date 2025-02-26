#!/bin/bash

# Activate the conda environment
eval "$(conda shell.bash hook)"
conda activate odkc

echo "Starting Bridging Gaps app customization..."

# Create directories if they don't exist
mkdir -p collect/collect_app/src/main/res/drawable
mkdir -p collect/collect_app/src/main/res/drawable-mdpi
mkdir -p collect/collect_app/src/main/res/drawable-hdpi
mkdir -p collect/collect_app/src/main/res/drawable-xhdpi
mkdir -p collect/collect_app/src/main/res/drawable-xxhdpi
mkdir -p collect/collect_app/src/main/res/drawable-xxxhdpi

# Copy the icon.jpg to the drawable directories
echo "Copying app icon to drawable directories..."
cp assets/logos/alt/icon.jpg collect/collect_app/src/main/res/drawable/icon.jpg
cp assets/logos/alt/icon.jpg collect/collect_app/src/main/res/drawable-mdpi/icon.jpg
cp assets/logos/alt/icon.jpg collect/collect_app/src/main/res/drawable-hdpi/icon.jpg
cp assets/logos/alt/icon.jpg collect/collect_app/src/main/res/drawable-xhdpi/icon.jpg
cp assets/logos/alt/icon.jpg collect/collect_app/src/main/res/drawable-xxhdpi/icon.jpg
cp assets/logos/alt/icon.jpg collect/collect_app/src/main/res/drawable-xxxhdpi/icon.jpg

# Update the colors.xml file
echo "Updating Bridging Gaps colors..."
cat > collect/collect_app/src/main/res/values/bridging_gaps_colors.xml << 'EOL'
<?xml version="1.0" encoding="utf-8"?>
<resources>
    <!-- Bridging Gaps brand colors based on their website -->
    <!-- Primary blue color from their logo -->
    <color name="bridging_gaps_primary">#3e9fcc</color>
    <color name="bridging_gaps_on_primary">#ffffff</color>
    <color name="bridging_gaps_primary_container">#bfe9ff</color>
    <color name="bridging_gaps_on_primary_container">#001f2a</color>
    <color name="bridging_gaps_primary_inverse">#6dd2ff</color>

    <!-- Secondary accent color - a warm orange/yellow for contrast -->
    <color name="bridging_gaps_secondary">#f39c12</color>
    <color name="bridging_gaps_on_secondary">#ffffff</color>
    <color name="bridging_gaps_secondary_container">#ffddb0</color>
    <color name="bridging_gaps_on_secondary_container">#2e1800</color>

    <!-- Error colors -->
    <color name="bridging_gaps_error">#ba1a1a</color>
    <color name="bridging_gaps_error_container">#ffdad6</color>
    <color name="bridging_gaps_on_error_container">#410002</color>

    <!-- Surface colors -->
    <color name="bridging_gaps_surface">#ffffff</color>
    <color name="bridging_gaps_surface_variant">#dce3e9</color>
    <color name="bridging_gaps_on_surface">#001f2a</color>
    <color name="bridging_gaps_on_surface_variant">#40484c</color>
    
    <!-- Additional colors for UI elements -->
    <color name="bridging_gaps_background">#f5f9fc</color>
    <color name="bridging_gaps_button_highlight">#2980b9</color>
    <color name="bridging_gaps_success">#27ae60</color>
    <color name="bridging_gaps_warning">#e67e22</color>
    <color name="bridging_gaps_info">#3498db</color>
</resources>
EOL

# Update the theme.xml file
echo "Updating Bridging Gaps theme..."
cat > collect/collect_app/src/main/res/values/bridging_gaps_theme.xml << 'EOL'
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
        
        <!-- Secondary brand color -->
        <item name="colorSecondary">@color/bridging_gaps_secondary</item>
        <item name="colorOnSecondary">@color/bridging_gaps_on_secondary</item>
        <item name="colorSecondaryContainer">@color/bridging_gaps_secondary_container</item>
        <item name="colorOnSecondaryContainer">@color/bridging_gaps_on_secondary_container</item>
        
        <!-- Error colors -->
        <item name="colorError">@color/bridging_gaps_error</item>
        <item name="colorErrorContainer">@color/bridging_gaps_error_container</item>
        <item name="colorOnErrorContainer">@color/bridging_gaps_on_error_container</item>
        
        <!-- Surface colors -->
        <item name="colorSurface">@color/bridging_gaps_surface</item>
        <item name="colorSurfaceVariant">@color/bridging_gaps_surface_variant</item>
        <item name="colorOnSurface">@color/bridging_gaps_on_surface</item>
        <item name="colorOnSurfaceVariant">@color/bridging_gaps_on_surface_variant</item>
        <item name="android:colorBackground">@color/bridging_gaps_background</item>
        
        <!-- Button styles -->
        <item name="colorButtonNormal">@color/bridging_gaps_primary</item>
        <item name="colorControlHighlight">@color/bridging_gaps_button_highlight</item>
        
        <!-- Status bar and navigation bar -->
        <item name="android:statusBarColor">@color/bridging_gaps_primary</item>
        <item name="android:navigationBarColor">@color/bridging_gaps_surface</item>
        <item name="android:windowLightStatusBar">false</item>
        <item name="android:windowLightNavigationBar">true</item>
        
        <!-- Font customization -->
        <item name="android:fontFamily">@font/figtree</item>
        <item name="fontFamily">@font/figtree</item>
    </style>
</resources>
EOL

# Create custom styles
echo "Creating custom styles..."
cat > collect/collect_app/src/main/res/values/bridging_gaps_styles.xml << 'EOL'
<?xml version="1.0" encoding="utf-8"?>
<resources>
    <!-- Custom button style for Bridging Gaps -->
    <style name="Widget.BridgingGaps.Button" parent="Widget.MaterialComponents.Button">
        <item name="android:textColor">@color/bridging_gaps_on_primary</item>
        <item name="backgroundTint">@color/bridging_gaps_primary</item>
        <item name="cornerRadius">8dp</item>
        <item name="android:paddingLeft">16dp</item>
        <item name="android:paddingRight">16dp</item>
        <item name="android:paddingTop">12dp</item>
        <item name="android:paddingBottom">12dp</item>
        <item name="android:textStyle">bold</item>
    </style>
    
    <!-- Custom text button style -->
    <style name="Widget.BridgingGaps.Button.TextButton" parent="Widget.MaterialComponents.Button.TextButton">
        <item name="android:textColor">@color/bridging_gaps_primary</item>
        <item name="rippleColor">@color/bridging_gaps_primary_container</item>
    </style>
    
    <!-- Custom outlined button style -->
    <style name="Widget.BridgingGaps.Button.OutlinedButton" parent="Widget.MaterialComponents.Button.OutlinedButton">
        <item name="android:textColor">@color/bridging_gaps_primary</item>
        <item name="strokeColor">@color/bridging_gaps_primary</item>
        <item name="cornerRadius">8dp</item>
    </style>
    
    <!-- Custom card style -->
    <style name="Widget.BridgingGaps.CardView" parent="Widget.MaterialComponents.CardView">
        <item name="cardBackgroundColor">@color/bridging_gaps_surface</item>
        <item name="cardCornerRadius">12dp</item>
        <item name="cardElevation">4dp</item>
        <item name="contentPadding">16dp</item>
    </style>
    
    <!-- Custom toolbar style -->
    <style name="Widget.BridgingGaps.Toolbar" parent="Widget.MaterialComponents.Toolbar">
        <item name="android:background">@color/bridging_gaps_primary</item>
        <item name="titleTextColor">@color/bridging_gaps_on_primary</item>
        <item name="subtitleTextColor">@color/bridging_gaps_on_primary</item>
        <item name="colorControlNormal">@color/bridging_gaps_on_primary</item>
    </style>
    
    <!-- Custom bottom navigation style -->
    <style name="Widget.BridgingGaps.BottomNavigation" parent="Widget.MaterialComponents.BottomNavigationView">
        <item name="android:background">@color/bridging_gaps_surface</item>
        <item name="itemIconTint">@color/bridging_gaps_primary</item>
        <item name="itemTextColor">@color/bridging_gaps_primary</item>
    </style>
</resources>
EOL

# Create a splash screen background
echo "Creating splash screen background..."
cat > collect/collect_app/src/main/res/drawable/bg_splash_background.xml << 'EOL'
<?xml version="1.0" encoding="utf-8"?>
<layer-list xmlns:android="http://schemas.android.com/apk/res/android">
    <item>
        <shape android:shape="rectangle">
            <gradient
                android:startColor="#3e9fcc"
                android:endColor="#2980b9"
                android:angle="135"/>
        </shape>
    </item>
    <item>
        <bitmap
            android:gravity="center"
            android:src="@drawable/icon" />
    </item>
</layer-list>
EOL

# Update the splash screen theme
echo "Updating splash screen theme..."
sed -i 's/windowSplashScreenBackground">@color\/colorSurface/windowSplashScreenBackground">@drawable\/bg_splash_background/g' collect/collect_app/src/main/res/values/theme.xml

# Clean the build
echo "Cleaning the build..."
cd collect && ./gradlew clean

echo "Customization completed!"
echo "Now you can build the app with './gradlew assembleDebug'"
