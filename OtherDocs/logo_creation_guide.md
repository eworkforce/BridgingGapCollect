# Bridging Gaps Collect Logo Creation Guide

This guide provides instructions for creating and implementing the Bridging Gaps Collect logo.

## 1. Logo Requirements

The Bridging Gaps Collect logo should meet the following requirements:

1. **Sizes Required:**
   - mdpi: 48x48 px
   - hdpi: 72x72 px
   - xhdpi: 96x96 px
   - xxhdpi: 144x144 px
   - xxxhdpi: 192x192 px

2. **Format:**
   - PNG format with transparency
   - Consistent padding around the logo

3. **Design Guidelines:**
   - Use the Bridging Gaps brand colors
   - Simple and recognizable at small sizes
   - Maintain visual connection to the Bridging Gaps brand

## 2. Logo Design Suggestions

### 2.1 Simple Logo Concept

A simple logo could consist of:
- A bridge icon representing "Bridging Gaps"
- Data collection elements (form, clipboard, or checkmarks)
- The letters "BG" in a stylized form

### 2.2 Color Palette

Use the established Bridging Gaps color palette:
- Primary: #3e9fcc (Blue)
- Secondary: #bfe9ff (Light Blue)
- Accent: #001f2a (Dark Blue)

## 3. Implementation Steps

### 3.1 Create Logo Files

1. Design the logo at the largest size (192x192 px)
2. Scale down to create the other required sizes
3. Save each size with appropriate naming:
   - `logo_mdpi.png` (48x48 px)
   - `logo_hdpi.png` (72x72 px)
   - `logo_xhdpi.png` (96x96 px)
   - `logo_xxhdpi.png` (144x144 px)
   - `logo_xxxhdpi.png` (192x192 px)

### 3.2 Create Launcher Icons

Android requires specific launcher icons:
1. Design a square version of the logo for launcher icons
2. Create the following files:
   - `ic_launcher.png` (various sizes for different densities)
   - `ic_launcher_round.png` (for circular launcher icons)

### 3.3 Replace Existing Logo Files

1. Identify the existing ODK logo files in the project:
   ```bash
   find collect/collect_app/src/main/res -name "*logo*" -type f
   ```

2. Replace these files with your Bridging Gaps logo files, maintaining the same names and locations.

3. For launcher icons, update the files in:
   ```
   collect/collect_app/src/main/res/mipmap-*/
   ```

## 4. Testing Logo Implementation

After implementing the logo:

1. Build the app:
   ```bash
   cd collect
   ./gradlew assembleDebug
   ```

2. Install on a device or emulator:
   ```bash
   adb install collect_app/build/outputs/apk/debug/collect_app-debug.apk
   ```

3. Verify the logo appears correctly:
   - On the app launcher
   - In the app header/toolbar
   - On the splash screen
   - In any other locations where the logo is displayed

## 5. Common Issues and Solutions

### 5.1 Logo Appears Distorted

- Ensure the aspect ratio is maintained when scaling
- Check that the padding is consistent across all sizes
- Verify that the PNG transparency is properly preserved

### 5.2 Logo Not Appearing

- Check file names and locations match the original files
- Verify that the drawable directories exist and are accessible
- Clean and rebuild the project

### 5.3 Wrong Colors in Logo

- Ensure the color values are correctly defined in your image editor
- Check that the PNG color profile is compatible with Android
- Verify that no color transformations are applied during build

## 6. Additional Resources

- [Android Icon Design Guidelines](https://developer.android.com/develop/ui/views/launch/icon_design_adaptive)
- [Material Design Icon Guidelines](https://material.io/design/iconography/product-icons.html)
- [Android Asset Studio](https://romannurik.github.io/AndroidAssetStudio/) - Online tool for generating Android icons
