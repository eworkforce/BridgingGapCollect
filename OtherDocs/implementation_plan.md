# Bridging Gaps Collect Implementation Plan

## 1. Customization Requirements

Based on the design specifications and assessment results, we need to implement the following customizations:

1. **Implement Figtree fonts**
   - Add Figtree font files to the project
   - Create font resources in `res/font` directory
   - Update typography styles to use Figtree fonts

2. **Integrate Bridging Gaps logo and branding**
   - Replace existing logo assets with Bridging Gaps logo
   - Update app name and branding in strings.xml
   - Update launcher icons

3. **Custom color palette for the Bridging Gaps brand**
   - Update colors.xml with Bridging Gaps brand colors
   - Ensure proper contrast and accessibility
   - Apply colors to theme.xml

4. **Create a signed APK for private distribution**
   - Create keystore for signing
   - Configure build.gradle for release builds
   - Generate signed APK

## 2. Implementation Steps

### 2.1 Font Implementation

1. Create font directory:
```bash
mkdir -p collect/collect_app/src/main/res/font
```

2. Download Figtree fonts and add to the project:
```bash
# Download Figtree fonts
mkdir -p assets/fonts
# (Download fonts manually or via script)

# Copy to Android project
cp assets/fonts/Figtree-*.ttf collect/collect_app/src/main/res/font/
```

3. Create font resource file (`collect/collect_app/src/main/res/font/figtree.xml`):
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

4. Update typography.xml to use Figtree font:
```xml
<!-- Update all TextAppearance styles to use Figtree -->
<item name="fontFamily">@font/figtree</item>
<item name="android:fontFamily">@font/figtree</item>
```

### 2.2 Logo and Branding Implementation

1. Create and prepare logo assets:
```bash
mkdir -p assets/logos
# (Create or download logo assets)
```

2. Replace existing logo assets:
```bash
# Copy to appropriate drawable directories
cp assets/logos/logo_*.png collect/collect_app/src/main/res/drawable*/
```

3. Update app name in strings.xml:
```xml
<string name="app_name">Bridging Gaps Collect</string>
```

### 2.3 Color Palette Implementation

1. Update colors.xml with Bridging Gaps brand colors:
```xml
<?xml version="1.0" encoding="utf-8"?>
<resources>
    <!-- Replace with actual Bridging Gaps colors -->
    <color name="colorPrimary">#3e9fcc</color>
    <color name="colorOnPrimary">#ffffff</color>
    <color name="colorPrimaryContainer">#bfe9ff</color>
    <color name="colorOnPrimaryContainer">#001f2a</color>
    <color name="colorPrimaryInverse">#6dd2ff</color>

    <color name="colorError">#ba1a1a</color>
    <color name="colorErrorContainer">#ffdad6</color>
    <color name="colorOnErrorContainer">#410002</color>

    <color name="colorSurface">#ffffff</color>
    <color name="colorSurfaceVariant">#dce3e9</color>
    <color name="colorOnSurface">#001f2a</color>
    <color name="colorOnSurfaceVariant">#40484c</color>
    <color name="colorSurfaceContainerLowest">#ffffff</color>
    <color name="colorSurfaceContainerLow">#f7f7f7</color>
    <color name="colorSurfaceContainer">#f7f7f7</color>
    <color name="colorSurfaceContainerHigh">#f7f7f7</color>
    <color name="colorSurfaceContainerHighest">#f2f2f2</color>
    <color name="colorSurfaceInverse">#003547</color>
    <color name="colorOnSurfaceInverse">#E1F4FF</color>
</resources>
```

### 2.4 Signed APK Creation

1. Create keystore for signing:
```bash
keytool -genkey -v -keystore bridging_gaps_keystore.jks -alias bridging_gaps -keyalg RSA -keysize 2048 -validity 10000
```

2. Configure build.gradle for release builds:
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

3. Generate signed APK:
```bash
./gradlew assembleRelease
```

## 3. Testing Plan

1. **Font Testing**
   - Verify Figtree fonts are applied throughout the app
   - Test on different screen sizes and densities
   - Check for any text overflow or layout issues

2. **Branding Testing**
   - Verify logo appears correctly in all contexts
   - Check app name is displayed correctly
   - Verify launcher icons on different devices

3. **Color Testing**
   - Verify brand colors are applied correctly
   - Test for accessibility and contrast issues
   - Check dark mode compatibility

4. **APK Testing**
   - Install signed APK on test devices
   - Verify all functionality works as expected
   - Check for any performance issues

## 4. Rollout Plan

1. **Development Phase**
   - Implement customizations in development environment
   - Run unit and UI tests
   - Fix any issues

2. **Testing Phase**
   - Deploy to test devices
   - Conduct user acceptance testing
   - Gather feedback and make adjustments

3. **Release Phase**
   - Generate final signed APK
   - Distribute through private channels
   - Monitor for any issues

## 5. Maintenance Plan

1. **Regular Updates**
   - Keep up with ODK Collect updates
   - Merge upstream changes carefully
   - Maintain customizations

2. **Documentation**
   - Document all customizations
   - Create guidelines for future changes
   - Maintain change log

## 6. Implementation Status

### 6.1 Completed Tasks

1. **Environment Setup**
   - Android SDK installed and configured
   - Conda environment 'odkc' created and activated
   - Project successfully built with Gradle

2. **Customization Planning**
   - Created detailed implementation plan
   - Identified all necessary files and resources for customization
   - Created customization script (customize_app.sh)

3. **Font Implementation**
   - Figtree fonts identified in assets/fonts/Figtree/static
   - Font resource file (figtree.xml) created
   - Typography styles updated to use Figtree fonts

4. **Branding Implementation**
   - App name updated to "Bridging Gaps Collect" in untranslated.xml
   - Created custom theme overlay (bridging_gaps_theme.xml)
   - Applied custom theme to AndroidManifest.xml

5. **Color Palette Implementation**
   - Created bridging_gaps_colors.xml with placeholder brand colors
   - Applied colors to custom theme

### 6.2 Remaining Tasks

1. **Logo Implementation**
   - Add Bridging Gaps logo to assets/logos
   - Replace existing logo assets in drawable directories

2. **Color Refinement**
   - Update placeholder colors with actual Bridging Gaps brand colors
   - Test color contrast and accessibility

3. **Build and Testing**
   - Build the customized app with Gradle
   - Test on various devices and screen sizes
   - Verify all customizations are applied correctly

4. **APK Creation**
   - Create keystore for signing
   - Configure build.gradle for release builds
   - Generate signed APK for distribution

### 6.3 Known Issues

1. Terminal command execution issues - may need to run commands manually
2. Some paths may need adjustment based on the actual project structure
3. Theme application may require additional configuration in specific activities

### 6.4 Next Steps

1. Manually copy font files to the font directory
2. Update color values with actual brand colors
3. Add logo assets to the project
4. Build and test the customized app
