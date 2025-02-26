# ODK Collect Setup Guide for Linux Mint

## 1. Prerequisites Installation

### 1.1 Install Java Development Kit (JDK) 17
```bash 
# Add the repository
sudo add-apt-repository ppa:openjdk-r/ppa

# Update package list
sudo apt update

# Install OpenJDK 17
sudo apt install openjdk-17-jdk

# Verify installation
java -version
```

### 1.2 Install Android Studio
```bash
# Download latest version
wget https://redirector.gvt1.com/edgedl/android/studio/ide-zips/2022.3.1.20/android-studio-2022.3.1.20-linux.tar.gz

# Extract to /opt
sudo tar -xvzf android-studio-*.tar.gz -C /opt

# Create desktop entry
cat << EOF > ~/.local/share/applications/android-studio.desktop
[Desktop Entry]
Version=1.0
Type=Application
Name=Android Studio
Exec=/opt/android-studio/bin/studio.sh
Icon=/opt/android-studio/bin/studio.png
Categories=Development;IDE;
EOF
```

### 1.3 Install Required SDKs and Tools
1. Open Android Studio
2. When the Android Studio Setup Wizard appears, click "Next" to start setup
3. In the SDK Components Setup screen:
   - Leave the default SDK location (usually `/home/serge/Android/Sdk`)
   - Select "Android SDK" and "Android Virtual Device"
   - Click "Next" and "Finish"

4. After initial setup, go to Tools -> SDK Manager
5. In "SDK Platforms" tab, select:
   - Android 13.0 (API 33)
   - Android 12.0 (API 31)
   
6. In "SDK Tools" tab, select:
   - Android SDK Build-Tools *
   - Android SDK Command-line Tools*
   - Android Emulator*
   - Android SDK Platform-Tools*

7. Click "Apply" and accept licenses

8. Wait for download and installation to complete

9. Verify SDK installation:
```bash
ls -la ~/Android/Sdk
```

If the directory doesn't exist after installation, check Android Studio settings:
1. Go to File -> Settings
2. Navigate to Appearance & Behavior -> System Settings -> Android SDK
3. Note the "Android SDK Location" path
4. Update your environment variables with this path

### 1.4 Set Environment Variables
Add to `~/.bashrc`:
```bash
export ANDROID_HOME=$HOME/Android/Sdk
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/platform-tools
```

### 1.5 Java Version Management

#### Setting up Java 17
```bash
# Install OpenJDK 17
sudo apt install openjdk-17-jdk

# Set Java 17 as the default version
sudo update-alternatives --config java

# Verify the default Java version
java -version
```

## 2. Project Setup 

### 2.1 Clone ODK Collect Repository
```bash
# Create project directory
mkdir -p ~/Documents/DEVSpace/BringingGaps
cd ~/Documents/DEVSpace/BringingGaps

# Clone repository
git clone https://github.com/getodk/collect.git odk-collect
cd odk-collect
```

### 2.2 IDE Configuration
1. Open project in Android Studio
2. Let Gradle sync complete
3. Verify compileSdkVersion is 33 in build.gradle
4. Install recommended plugins:
   - Kotlin
   - Java IDE Support 
   - Android SDK Tools

### 2.3 Build Configuration
1. Set build variants to debug
2. Enable developer options on test device
3. Configure run/debug configuration:
   - Target: Your connected device/emulator
   - Module: collect_app
   - Build variant: debug

## 3. Custom Branding Points

Key files for customization:

### 3.1 App Name and Strings
```
collect_app/src/main/res/values/strings.xml
```

### 3.2 Colors and Theme
```
collect_app/src/main/res/values/colors.xml
collect_app/src/main/res/values/theme.xml 
```

### 3.3 Icons and Images  
```
collect_app/src/main/res/mipmap/
collect_app/src/main/res/drawable/
```

### 3.4 Custom Fonts
```
collect_app/src/main/res/font/
```

## 4. Building and Testing

### 4.1 Debug Build
```bash
./gradlew assembleDebug
```

### 4.2 Release Build 
```bash
./gradlew assembleRelease
```

### 4.3 Run Tests
```bash
# Unit tests
./gradlew test

# Instrumented tests
./gradlew connectedAndroidTest
```

### 4.4 Install on Device
```bash
# Debug build
adb install collect_app/build/outputs/apk/debug/collect_app-debug.apk

# Release build
adb install collect_app/build/outputs/apk/release/collect_app-release.apk
```

## 5. Troubleshooting

Common issues and solutions:

1. **Gradle sync fails**
   - Verify internet connection
   - Clear .gradle cache: `rm -rf ~/.gradle/caches/`
   - Verify Java version matches project

2. **Build errors**  
   - Clean project: `./gradlew clean`
   - Invalidate caches in Android Studio
   - Verify all SDKs are installed

3. **Runtime crashes**
   - Check logcat for detailed error messages
   - Verify manifest permissions
   - Test on different API levels

4. **Test failures**  
   - Run tests individually to isolate issues
   - Check test dependencies
   - Verify emulator configuration
