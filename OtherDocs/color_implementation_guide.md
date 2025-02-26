# Bridging Gaps Collect Color Implementation Guide

This guide provides instructions for implementing the Bridging Gaps brand colors into the ODK Collect app.

## 1. Current Color Palette

We have defined the following placeholder colors in `collect/collect_app/src/main/res/values/bridging_gaps_colors.xml`:

### 1.1 Primary Colors
- Primary: `#3e9fcc` (Blue)
- On Primary: `#ffffff` (White)
- Primary Container: `#bfe9ff` (Light Blue)
- On Primary Container: `#001f2a` (Dark Blue)
- Primary Inverse: `#6dd2ff` (Bright Blue)

### 1.2 Error Colors
- Error: `#ba1a1a` (Red)
- Error Container: `#ffdad6` (Light Red)
- On Error Container: `#410002` (Dark Red)

### 1.3 Surface Colors
- Surface: `#ffffff` (White)
- Surface Variant: `#dce3e9` (Light Gray-Blue)
- On Surface: `#001f2a` (Dark Blue)
- On Surface Variant: `#40484c` (Dark Gray)

## 2. Color Extraction from Logo

To ensure brand consistency, we should extract the actual colors from the Bridging Gaps logo. Here's how to do it:

1. Open one of the logo files (e.g., `/assets/logos/Primary_Logo/PNG/Primary_Logo_Bridging_Gaps_logo_fullcolor_rgb_1000w.png`) in an image editor.
2. Use the color picker tool to identify the main colors used in the logo.
3. Note the hex codes for these colors.

## 3. Color Implementation Steps

### 3.1 Update Color Values

Once you have the actual brand colors, update the `bridging_gaps_colors.xml` file:

```xml
<?xml version="1.0" encoding="utf-8"?>
<resources>
    <!-- Bridging Gaps brand colors -->
    <color name="bridging_gaps_primary">#ACTUAL_PRIMARY_COLOR</color>
    <color name="bridging_gaps_on_primary">#ffffff</color>
    <color name="bridging_gaps_primary_container">#ACTUAL_LIGHT_COLOR</color>
    <color name="bridging_gaps_on_primary_container">#ACTUAL_DARK_COLOR</color>
    <color name="bridging_gaps_primary_inverse">#ACTUAL_ACCENT_COLOR</color>

    <color name="bridging_gaps_error">#ba1a1a</color>
    <color name="bridging_gaps_error_container">#ffdad6</color>
    <color name="bridging_gaps_on_error_container">#410002</color>

    <color name="bridging_gaps_surface">#ffffff</color>
    <color name="bridging_gaps_surface_variant">#ACTUAL_LIGHT_GRAY</color>
    <color name="bridging_gaps_on_surface">#ACTUAL_DARK_COLOR</color>
    <color name="bridging_gaps_on_surface_variant">#ACTUAL_DARK_GRAY</color>
</resources>
```

### 3.2 Verify Color Accessibility

Ensure that your color combinations meet accessibility standards:

1. Check contrast ratios:
   - Text on background should have a contrast ratio of at least 4.5:1
   - Large text can have a contrast ratio of at least 3:1

2. Use online tools like [WebAIM Contrast Checker](https://webaim.org/resources/contrastchecker/) to verify contrast ratios.

## 4. Testing Color Implementation

After implementing the colors:

1. Build the app:
   ```bash
   cd collect
   ./gradlew assembleDebug
   ```

2. Install on a device or emulator:
   ```bash
   adb install collect_app/build/outputs/apk/debug/collect_app-debug.apk
   ```

3. Verify the colors appear correctly:
   - In the app toolbar
   - In buttons and interactive elements
   - In form elements and controls
   - In error messages and notifications

## 5. Color Troubleshooting

### 5.1 Colors Not Applied
- Verify that the theme is correctly referencing the color resources
- Check that the AndroidManifest.xml is using the custom theme
- Clean and rebuild the project

### 5.2 Inconsistent Colors
- Ensure all color references are updated in the theme
- Check for hardcoded colors in layout files
- Look for activity-specific theme overrides

### 5.3 Poor Contrast
- Adjust colors to improve readability
- Consider using different shades for text vs. background
- Test on different screen types (OLED vs. LCD)
