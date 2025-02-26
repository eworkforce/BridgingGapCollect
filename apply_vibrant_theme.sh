#!/bin/bash

# Activate the conda environment
eval "$(conda shell.bash hook)"
conda activate odkc

echo "Starting Bridging Gaps vibrant theme customization..."

# Create directories if they don't exist
mkdir -p collect/collect_app/src/main/res/drawable

# Update the colors.xml file
echo "Updating Bridging Gaps colors with vibrant lime green..."
cat > collect/collect_app/src/main/res/values/bridging_gaps_colors.xml << 'EOL'
<?xml version="1.0" encoding="utf-8"?>
<resources>
    <!-- Bridging Gaps brand colors based on their website -->
    <!-- Vibrant lime green as main color for menus and buttons -->
    <color name="bridging_gaps_primary">#cfff6b</color>
    <color name="bridging_gaps_on_primary">#000000</color>
    <color name="bridging_gaps_primary_container">#e8ffb7</color>
    <color name="bridging_gaps_on_primary_container">#000000</color>
    <color name="bridging_gaps_primary_inverse">#a8e53a</color>

    <!-- Blue color from logo as secondary color -->
    <color name="bridging_gaps_secondary">#3e9fcc</color>
    <color name="bridging_gaps_on_secondary">#ffffff</color>
    <color name="bridging_gaps_secondary_container">#bfe9ff</color>
    <color name="bridging_gaps_on_secondary_container">#001f2a</color>

    <!-- Error colors -->
    <color name="bridging_gaps_error">#ba1a1a</color>
    <color name="bridging_gaps_error_container">#ffdad6</color>
    <color name="bridging_gaps_on_error_container">#410002</color>

    <!-- Surface colors -->
    <color name="bridging_gaps_surface">#ffffff</color>
    <color name="bridging_gaps_surface_variant">#e2efd3</color>
    <color name="bridging_gaps_on_surface">#000000</color>
    <color name="bridging_gaps_on_surface_variant">#404a33</color>
    
    <!-- Additional colors for UI elements -->
    <color name="bridging_gaps_background">#f8ffed</color>
    <color name="bridging_gaps_button_highlight">#b8e359</color>
    <color name="bridging_gaps_success">#27ae60</color>
    <color name="bridging_gaps_warning">#e67e22</color>
    <color name="bridging_gaps_info">#3498db</color>
    
    <!-- Accent colors for visual interest -->
    <color name="bridging_gaps_accent_1">#f39c12</color>
    <color name="bridging_gaps_accent_2">#9b59b6</color>
</resources>
EOL

# Update the splash screen background
echo "Updating splash screen background..."
cat > collect/collect_app/src/main/res/drawable/bg_splash_background.xml << 'EOL'
<?xml version="1.0" encoding="utf-8"?>
<layer-list xmlns:android="http://schemas.android.com/apk/res/android">
    <item>
        <shape android:shape="rectangle">
            <gradient
                android:startColor="#cfff6b"
                android:endColor="#a8e53a"
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

# Update the "Start new form" button background
echo "Updating Start new form button..."
cat > collect/collect_app/src/main/res/drawable/start_new_form_button_background.xml << 'EOL'
<?xml version="1.0" encoding="utf-8"?>
<ripple xmlns:android="http://schemas.android.com/apk/res/android"
    android:color="@color/bridging_gaps_button_highlight">
    <item>
        <shape android:shape="rectangle">
            <corners android:radius="100dp" />
            <solid android:color="@color/bridging_gaps_primary" />
        </shape>
    </item>
</ripple>
EOL

# Create custom button styles with vibrant colors
echo "Creating vibrant button styles..."
cat > collect/collect_app/src/main/res/values/bridging_gaps_styles.xml << 'EOL'
<?xml version="1.0" encoding="utf-8"?>
<resources>
    <!-- Custom button style for Bridging Gaps -->
    <style name="Widget.BridgingGaps.Button" parent="Widget.MaterialComponents.Button">
        <item name="android:textColor">@color/bridging_gaps_on_primary</item>
        <item name="backgroundTint">@color/bridging_gaps_primary</item>
        <item name="cornerRadius">24dp</item>
        <item name="android:paddingLeft">20dp</item>
        <item name="android:paddingRight">20dp</item>
        <item name="android:paddingTop">12dp</item>
        <item name="android:paddingBottom">12dp</item>
        <item name="android:textStyle">bold</item>
        <item name="android:elevation">4dp</item>
    </style>
    
    <!-- Custom text button style -->
    <style name="Widget.BridgingGaps.Button.TextButton" parent="Widget.MaterialComponents.Button.TextButton">
        <item name="android:textColor">@color/bridging_gaps_primary</item>
        <item name="rippleColor">@color/bridging_gaps_primary_container</item>
        <item name="android:textStyle">bold</item>
    </style>
    
    <!-- Custom outlined button style -->
    <style name="Widget.BridgingGaps.Button.OutlinedButton" parent="Widget.MaterialComponents.Button.OutlinedButton">
        <item name="android:textColor">@color/bridging_gaps_primary</item>
        <item name="strokeColor">@color/bridging_gaps_primary</item>
        <item name="cornerRadius">24dp</item>
        <item name="strokeWidth">2dp</item>
    </style>
    
    <!-- Custom card style -->
    <style name="Widget.BridgingGaps.CardView" parent="Widget.MaterialComponents.CardView">
        <item name="cardBackgroundColor">@color/bridging_gaps_surface</item>
        <item name="cardCornerRadius">16dp</item>
        <item name="cardElevation">8dp</item>
        <item name="contentPadding">16dp</item>
        <item name="strokeColor">@color/bridging_gaps_primary</item>
        <item name="strokeWidth">1dp</item>
    </style>
    
    <!-- Custom toolbar style -->
    <style name="Widget.BridgingGaps.Toolbar" parent="Widget.MaterialComponents.Toolbar">
        <item name="android:background">@color/bridging_gaps_primary</item>
        <item name="titleTextColor">@color/bridging_gaps_on_primary</item>
        <item name="subtitleTextColor">@color/bridging_gaps_on_primary</item>
        <item name="colorControlNormal">@color/bridging_gaps_on_primary</item>
        <item name="android:elevation">8dp</item>
    </style>
    
    <!-- Custom bottom navigation style -->
    <style name="Widget.BridgingGaps.BottomNavigation" parent="Widget.MaterialComponents.BottomNavigationView">
        <item name="android:background">@color/bridging_gaps_primary</item>
        <item name="itemIconTint">@color/bridging_gaps_on_primary</item>
        <item name="itemTextColor">@color/bridging_gaps_on_primary</item>
        <item name="android:elevation">8dp</item>
    </style>
    
    <!-- Custom FAB style -->
    <style name="Widget.BridgingGaps.FloatingActionButton" parent="Widget.MaterialComponents.FloatingActionButton">
        <item name="backgroundTint">@color/bridging_gaps_primary</item>
        <item name="tint">@color/bridging_gaps_on_primary</item>
        <item name="borderWidth">0dp</item>
        <item name="elevation">8dp</item>
        <item name="rippleColor">@color/bridging_gaps_button_highlight</item>
    </style>
</resources>
EOL

# Patch the main menu button layout for black text
echo "Updating main menu buttons with black text..."
sed -i.bak 's/<TextView id="@+id\/name"/<TextView\n        android:textColor="#000000"\n        android:id="@+id\/name"/g' collect/collect_app/src/main/res/layout/main_menu_button.xml && rm collect/collect_app/src/main/res/layout/main_menu_button.xml.bak
sed -i.bak 's/<TextView id="@+id\/number"/<TextView\n        android:textColor="#000000"\n        android:id="@+id\/number"/g' collect/collect_app/src/main/res/layout/main_menu_button.xml && rm collect/collect_app/src/main/res/layout/main_menu_button.xml.bak
sed -i.bak 's/<ImageView id="@+id\/icon"/<ImageView\n        app:tint="#000000"\n        android:id="@+id\/icon"/g' collect/collect_app/src/main/res/layout/main_menu_button.xml && rm collect/collect_app/src/main/res/layout/main_menu_button.xml.bak

# Patch the start new form button layout for black text and icon
echo "Updating start new form button with black text and icon..."
sed -i.bak 's/app:tint="?colorOnPrimary"/app:tint="#000000"/g' collect/collect_app/src/main/res/layout/start_new_from_button.xml && rm collect/collect_app/src/main/res/layout/start_new_from_button.xml.bak
sed -i.bak 's/android:textColor="?colorOnPrimary"/android:textColor="#000000"/g' collect/collect_app/src/main/res/layout/start_new_from_button.xml && rm collect/collect_app/src/main/res/layout/start_new_from_button.xml.bak

# Clean the build
echo "Cleaning the build..."
cd collect && ./gradlew clean

echo "Vibrant theme customization completed!"
echo "Now you can build the app with './gradlew assembleDebug'"
