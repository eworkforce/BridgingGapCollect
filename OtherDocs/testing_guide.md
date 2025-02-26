# Bridging Gaps Collect Testing Guide

This guide provides a comprehensive approach to testing the customized Bridging Gaps Collect app to ensure all customizations are working correctly and the app functions as expected.

## 1. Build and Installation Testing

### 1.1 Debug Build
1. Activate the conda environment:
   ```bash
   conda activate odkc
   ```

2. Build the debug version:
   ```bash
   cd collect
   ./gradlew assembleDebug
   ```

3. Verify the build completes without errors

### 1.2 Installation Testing
1. Install on a physical device or emulator:
   ```bash
   adb install collect_app/build/outputs/apk/debug/collect_app-debug.apk
   ```

2. Verify the app installs correctly without errors

## 2. Visual Customization Testing

### 2.1 App Icon Testing
1. Check the app launcher to verify the Bridging Gaps icon appears correctly
2. Verify the icon is clear and not pixelated
3. Test on different screen densities if possible

### 2.2 App Name Testing
1. Verify the app name appears as "Bridging Gaps Collect" in the launcher
2. Check the app name in the About screen
3. Verify the app name in any system notifications

### 2.3 Color Testing
1. Verify the primary color is applied to:
   - App toolbar
   - Buttons and interactive elements
   - Selected items and highlights

2. Verify the surface colors are applied to:
   - Background areas
   - Cards and containers
   - Dialog boxes

3. Test in both light and dark modes (if supported)

### 2.4 Font Testing
1. Verify Figtree font is applied to:
   - App title and headers
   - Button text
   - Form labels and content
   - Settings screens

2. Check font weights (regular, medium, bold) are applied appropriately

## 3. Functional Testing

### 3.1 Core Functionality
1. Test form downloading:
   - Connect to a server
   - Download sample forms
   - Verify forms appear in the list

2. Test form filling:
   - Open a form
   - Fill in various question types
   - Navigate between form pages
   - Save as draft and resume

3. Test form submission:
   - Complete a form
   - Submit to server
   - Verify submission status

### 3.2 Navigation Testing
1. Test all main navigation paths:
   - Form list to form filling
   - Settings navigation
   - About screen access
   - Help documentation

2. Verify back button behavior is consistent

### 3.3 Settings Testing
1. Verify all settings screens function correctly
2. Test changing various settings and observe their effects
3. Verify settings persist after app restart

## 4. Performance Testing

### 4.1 Startup Time
1. Measure app startup time
2. Compare with original ODK Collect (if available)
3. Verify no significant performance degradation

### 4.2 Form Loading
1. Test loading large forms
2. Verify smooth scrolling and navigation
3. Check memory usage during form filling

### 4.3 Battery Usage
1. Monitor battery usage during extended testing
2. Verify no excessive battery drain

## 5. Compatibility Testing

### 5.1 Device Compatibility
1. Test on multiple device sizes if possible:
   - Phone (small screen)
   - Tablet (large screen)

2. Test on different Android versions:
   - Minimum supported version
   - Latest version

### 5.2 Server Compatibility
1. Test connection with ODK Central server
2. Verify form download and submission work correctly
3. Test with different server configurations

## 6. Regression Testing

### 6.1 Feature Verification
1. Create a checklist of all original ODK Collect features
2. Systematically test each feature to ensure it still works
3. Pay special attention to:
   - Form widgets and question types
   - Media capture (photos, audio, video)
   - GPS and location features
   - Offline functionality

### 6.2 Bug Verification
1. Check if any known bugs in original ODK Collect still exist
2. Verify no new bugs have been introduced by customizations

## 7. Final Verification Checklist

- [ ] App name shows as "Bridging Gaps Collect"
- [ ] Bridging Gaps logo appears correctly
- [ ] Figtree font is applied throughout the app
- [ ] Brand colors are applied consistently
- [ ] All core functionality works as expected
- [ ] No performance degradation compared to original app
- [ ] No new bugs or regressions introduced

## 8. Troubleshooting Common Issues

### 8.1 Resource Not Found Errors
- Check that all referenced resources exist
- Verify XML syntax in resource files
- Clean and rebuild the project

### 8.2 Theme Application Issues
- Verify theme inheritance is correct
- Check AndroidManifest.xml for theme application
- Look for activity-specific theme overrides

### 8.3 Performance Issues
- Check for memory leaks
- Verify image sizes are optimized
- Consider using Android Profiler to identify bottlenecks
