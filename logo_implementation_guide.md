# Bridging Gaps Collect Logo Implementation Guide

This guide provides instructions for implementing the existing Bridging Gaps logo assets into the ODK Collect app.

## 1. Available Logo Assets

We have the following logo assets available in the `/assets/logos` directory:

### 1.1 Primary Logo
- `/assets/logos/Primary_Logo/PNG/Primary_Logo_.png` (24KB)
- `/assets/logos/Primary_Logo/PNG/Primary_Logo_Bridging_Gaps_logo_fullcolor_rgb_1000w.png` (51KB)
- `/assets/logos/Primary_Logo/PNG/Primary_Logo_Bridging_Gaps_logo_fullcolor_rgb_2000w.png` (111KB)
- `/assets/logos/Primary_Logo/PNG/logo BG_white.png` (8KB)

### 1.2 Logo Icon
- `/assets/logos/Logo_Icon/PNG/Secondary_Logo_Bridging_Gaps_logo_fullcolor_rgb_512w.png` (23KB)
- `/assets/logos/Logo_Icon/PNG/Secondary_Logo_Bridging_Gaps_logo_fullcolor_rgb_1000w.png` (50KB)
- `/assets/logos/Logo_Icon/PNG/Secondary_Logo_Bridging_Gaps_logo_fullcolor_rgb_2000w.png` (126KB)

## 2. Logo Implementation Steps

### 2.1 Prepare Logo Files for Android

Android requires specific sizes for different screen densities. We need to resize our existing logos to match these requirements:

1. **Launcher Icons:**
   - mdpi: 48x48 px
   - hdpi: 72x72 px
   - xhdpi: 96x96 px
   - xxhdpi: 144x144 px
   - xxxhdpi: 192x192 px

2. **App Logo:**
   - Various sizes for different contexts (toolbar, about screen, etc.)

### 2.2 Resize Logo Files

Use an image editor or the following commands to resize the logo files:

```bash
# Create a directory for the resized logos
mkdir -p assets/logos/android

# Resize the logo icon for different densities
convert assets/logos/Logo_Icon/PNG/Secondary_Logo_Bridging_Gaps_logo_fullcolor_rgb_512w.png -resize 48x48 assets/logos/android/logo_mdpi.png
convert assets/logos/Logo_Icon/PNG/Secondary_Logo_Bridging_Gaps_logo_fullcolor_rgb_512w.png -resize 72x72 assets/logos/android/logo_hdpi.png
convert assets/logos/Logo_Icon/PNG/Secondary_Logo_Bridging_Gaps_logo_fullcolor_rgb_512w.png -resize 96x96 assets/logos/android/logo_xhdpi.png
convert assets/logos/Logo_Icon/PNG/Secondary_Logo_Bridging_Gaps_logo_fullcolor_rgb_1000w.png -resize 144x144 assets/logos/android/logo_xxhdpi.png
convert assets/logos/Logo_Icon/PNG/Secondary_Logo_Bridging_Gaps_logo_fullcolor_rgb_1000w.png -resize 192x192 assets/logos/android/logo_xxxhdpi.png

# Create launcher icons
convert assets/logos/Logo_Icon/PNG/Secondary_Logo_Bridging_Gaps_logo_fullcolor_rgb_512w.png -resize 48x48 assets/logos/android/ic_launcher_mdpi.png
convert assets/logos/Logo_Icon/PNG/Secondary_Logo_Bridging_Gaps_logo_fullcolor_rgb_512w.png -resize 72x72 assets/logos/android/ic_launcher_hdpi.png
convert assets/logos/Logo_Icon/PNG/Secondary_Logo_Bridging_Gaps_logo_fullcolor_rgb_512w.png -resize 96x96 assets/logos/android/ic_launcher_xhdpi.png
convert assets/logos/Logo_Icon/PNG/Secondary_Logo_Bridging_Gaps_logo_fullcolor_rgb_1000w.png -resize 144x144 assets/logos/android/ic_launcher_xxhdpi.png
convert assets/logos/Logo_Icon/PNG/Secondary_Logo_Bridging_Gaps_logo_fullcolor_rgb_1000w.png -resize 192x192 assets/logos/android/ic_launcher_xxxhdpi.png
```

### 2.3 Replace Existing Logo Files

1. Identify the existing ODK logo files in the project:
   ```bash
   find collect/collect_app/src/main/res -name "*logo*" -type f
   ```

2. Replace these files with your resized Bridging Gaps logo files, maintaining the same names and locations.

3. For launcher icons, update the files in:
   ```
   collect/collect_app/src/main/res/mipmap-*/
   ```

## 3. Manual Implementation Steps

If the automatic resizing commands don't work, follow these manual steps:

1. Use an image editor (like GIMP, Photoshop, or an online tool) to resize the logo files to the required dimensions.

2. Save the resized files with appropriate names:
   - `logo_mdpi.png` (48x48 px)
   - `logo_hdpi.png` (72x72 px)
   - `logo_xhdpi.png` (96x96 px)
   - `logo_xxhdpi.png` (144x144 px)
   - `logo_xxxhdpi.png` (192x192 px)

3. Copy the files to the appropriate directories:
   ```bash
   # For app logos
   cp assets/logos/android/logo_mdpi.png collect/collect_app/src/main/res/drawable-mdpi/
   cp assets/logos/android/logo_hdpi.png collect/collect_app/src/main/res/drawable-hdpi/
   cp assets/logos/android/logo_xhdpi.png collect/collect_app/src/main/res/drawable-xhdpi/
   cp assets/logos/android/logo_xxhdpi.png collect/collect_app/src/main/res/drawable-xxhdpi/
   cp assets/logos/android/logo_xxxhdpi.png collect/collect_app/src/main/res/drawable-xxxhdpi/
   
   # For launcher icons
   cp assets/logos/android/ic_launcher_mdpi.png collect/collect_app/src/main/res/mipmap-mdpi/ic_launcher.png
   cp assets/logos/android/ic_launcher_hdpi.png collect/collect_app/src/main/res/mipmap-hdpi/ic_launcher.png
   cp assets/logos/android/ic_launcher_xhdpi.png collect/collect_app/src/main/res/mipmap-xhdpi/ic_launcher.png
   cp assets/logos/android/ic_launcher_xxhdpi.png collect/collect_app/src/main/res/mipmap-xxhdpi/ic_launcher.png
   cp assets/logos/android/ic_launcher_xxxhdpi.png collect/collect_app/src/main/res/mipmap-xxxhdpi/ic_launcher.png
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

## 5. Troubleshooting

### 5.1 Logo Appears Distorted
- Ensure the aspect ratio is maintained when resizing
- Consider adding padding around the logo to maintain consistent dimensions

### 5.2 Logo Not Appearing
- Check file names and locations match the original files
- Verify that the drawable directories exist and are accessible
- Clean and rebuild the project

### 5.3 Logo Quality Issues
- Use the highest resolution source files for resizing
- Ensure PNG transparency is properly preserved
- Consider using vector drawables (SVG) for better scaling
