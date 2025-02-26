# Manual Implementation Steps for Bridging Gaps Collect

Since we're experiencing issues with terminal command execution, this guide provides manual steps to complete the customization of ODK Collect into Bridging Gaps Collect.

## 1. Font Implementation

### 1.1 Copy Font Files
```bash
# Create font directory if it doesn't exist
mkdir -p collect/collect_app/src/main/res/font

# Copy font files
cp assets/fonts/Figtree/static/Figtree-Regular.ttf collect/collect_app/src/main/res/font/figtree_regular.ttf
cp assets/fonts/Figtree/static/Figtree-Medium.ttf collect/collect_app/src/main/res/font/figtree_medium.ttf
cp assets/fonts/Figtree/static/Figtree-Bold.ttf collect/collect_app/src/main/res/font/figtree_bold.ttf
```

### 1.2 Create Font Resource File
Create a file at `collect/collect_app/src/main/res/font/figtree.xml` with the following content:

```xml
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
```

## 2. Branding Implementation

### 2.1 Update App Name
Edit `collect/strings/src/main/res/values/untranslated.xml` and change:
```xml
<string name="collect_app_name" translatable="false">ODK Collect</string>
```
to:
```xml
<string name="collect_app_name" translatable="false">Bridging Gaps Collect</string>
```

### 2.2 Create Custom Theme
Create a file at `collect/collect_app/src/main/res/values/bridging_gaps_theme.xml` with the following content:

```xml
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
```

### 2.3 Update AndroidManifest.xml
Edit `collect/collect_app/src/main/AndroidManifest.xml` and find the application tag. Change:
```xml
android:theme="@style/Theme.Collect"
```
to:
```xml
android:theme="@style/Theme.Collect.BridgingGaps"
```

## 3. Color Palette Implementation

### 3.1 Create Colors File
Create a file at `collect/collect_app/src/main/res/values/bridging_gaps_colors.xml` with the following content:

```xml
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
```

## 4. Logo Implementation

### 4.1 Prepare Logo Assets
1. Create logo files in various sizes for different screen densities
2. Name them consistently with the existing ODK logo files

### 4.2 Replace Logo Files
Copy your logo files to the appropriate drawable directories:
```bash
cp assets/logos/logo_hdpi.png collect/collect_app/src/main/res/drawable-hdpi/
cp assets/logos/logo_mdpi.png collect/collect_app/src/main/res/drawable-mdpi/
cp assets/logos/logo_xhdpi.png collect/collect_app/src/main/res/drawable-xhdpi/
cp assets/logos/logo_xxhdpi.png collect/collect_app/src/main/res/drawable-xxhdpi/
cp assets/logos/logo_xxxhdpi.png collect/collect_app/src/main/res/drawable-xxxhdpi/
```

## 5. Build and Test

### 5.1 Build Debug APK
```bash
cd collect
./gradlew assembleDebug
```

### 5.2 Install and Test
```bash
adb install collect_app/build/outputs/apk/debug/collect_app-debug.apk
```

## 6. Create Signed APK

### 6.1 Create Keystore
```bash
keytool -genkey -v -keystore bridging_gaps_keystore.jks -alias bridging_gaps -keyalg RSA -keysize 2048 -validity 10000
```

### 6.2 Configure Gradle for Release
Edit `collect/collect_app/build.gradle` and add:
```gradle
android {
    signingConfigs {
        release {
            storeFile file("../bridging_gaps_keystore.jks")
            storePassword "your_store_password"
            keyAlias "bridging_gaps"
            keyPassword "your_key_password"
        }
    }
    
    buildTypes {
        release {
            signingConfig signingConfigs.release
            minifyEnabled true
            proguardFiles getDefaultProguardFile('proguard-android-optimize.txt'), 'proguard-rules.pro'
        }
    }
}
```

### 6.3 Build Release APK
```bash
cd collect
./gradlew assembleRelease
```

## 7. Troubleshooting

### 7.1 Resource Not Found Errors
If you encounter "resource not found" errors during build:
1. Check that all XML files are properly formatted
2. Verify that all referenced resources exist
3. Clean and rebuild the project:
```bash
./gradlew clean
./gradlew assembleDebug
```

### 7.2 Theme Application Issues
If the theme is not applied correctly:
1. Check that the theme inheritance is correct
2. Verify that the AndroidManifest.xml has been updated
3. Check for any activity-specific theme overrides

### 7.3 Font Issues
If fonts are not applied:
1. Verify that font files are in the correct location
2. Check that the font family XML is properly formatted
3. Ensure that the theme references the font family correctly
