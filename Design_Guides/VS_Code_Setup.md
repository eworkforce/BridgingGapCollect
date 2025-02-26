# Setting up Visual Studio Code for Android Development

## 1. Required VS Code Extensions

Install these extensions from VS Code marketplace:

1. **Extension Pack for Java**
   - Includes Java language support, debugger, test runner, etc.
   - Publisher: Microsoft

2. **Kotlin Language**
   - Kotlin language support and syntax highlighting
   - Publisher: mathiasfrohlich

3. **Android Debug Bridge**
   - Connects Android devices wirelessly for debugging
   - Publisher: SourceKod

4. **Gradle Language Support**
   - .gradle file support
   - Publisher: Naco Siren

5. **XML Tools**
   - XML language support and formatting
   - Publisher: Josh Johnson

## 2. Configure Environment Variables

1. The `.bashrc` file is located in your home directory. You can edit it using:
```bash
# Open .bashrc in default text editor
gedit ~/.bashrc

# Or use nano if you prefer command line
nano ~/.bashrc
```

2. Add these lines at the end of the file:
```bash
# Android SDK Path - use the system-wide installation path
export ANDROID_HOME=/usr/lib/android-sdk
export ANDROID_SDK_ROOT=/usr/lib/android-sdk
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/platform-tools
```

3. Save the file:
   - If using gedit: Click Save and close
   - If using nano: Press Ctrl+O to save, then Ctrl+X to exit

4. Apply the changes by either:
   - Restarting your terminal
   - Or running: `source ~/.bashrc`

5. Verify the environment setup:
```bash
# Reload environment variables
source ~/.bashrc

# Verify environment variables with explicit messages
echo "Checking Android SDK location..."
echo "ANDROID_HOME = $ANDROID_HOME"
if [ -z "$ANDROID_HOME" ]; then
    echo "ERROR: ANDROID_HOME is not set!"
else
    echo "OK: ANDROID_HOME is set to $ANDROID_HOME"
fi

echo -e "\nChecking Android SDK Root..."
echo "ANDROID_SDK_ROOT = $ANDROID_SDK_ROOT"
if [ -z "$ANDROID_SDK_ROOT" ]; then
    echo "ERROR: ANDROID_SDK_ROOT is not set!"
else
    echo "OK: ANDROID_SDK_ROOT is set to $ANDROID_SDK_ROOT"
fi

echo -e "\nChecking PATH includes platform-tools..."
if echo $PATH | grep -q "platform-tools"; then
    echo "OK: platform-tools found in PATH"
else
    echo "ERROR: platform-tools not found in PATH!"
fi

echo -e "\nChecking ADB installation..."
ADB_PATH=$(which adb)
if [ -n "$ADB_PATH" ]; then
    echo "OK: adb found at $ADB_PATH"
    adb version
else
    echo "ERROR: adb not found in PATH!"
fi
```

Expected output:
```
Checking Android SDK location...
ANDROID_HOME = /usr/lib/android-sdk
OK: ANDROID_HOME is set to /usr/lib/android-sdk

Checking Android SDK Root...
ANDROID_SDK_ROOT = /usr/lib/android-sdk
OK: ANDROID_SDK_ROOT is set to /usr/lib/android-sdk

Checking PATH includes platform-tools...
OK: platform-tools found in PATH

Checking ADB installation...
OK: adb found at /usr/bin/adb
Android Debug Bridge version 1.0.41
Version 35.0.2-12147458
```

If any of these checks fail, try:
1. Close and reopen your terminal
2. Run `source ~/.bashrc` again
3. Verify the entries in your `.bashrc` file
4. Check file permissions with `ls -l $ANDROID_HOME`

2. Open VS Code settings (File > Preferences > Settings)
3. Search for "Java" and add these settings to your `settings.json`:
```json
{
    "java.configuration.runtimes": [
        {
            "name": "JavaSE-17",
            "path": "/usr/lib/jvm/java-17-openjdk-amd64",
            "default": true
        }
    ]
}
```

4. Reload your terminal or run:
```bash
source ~/.bashrc
```

## 3. Command Line Tools Setup

1. Install ADB using the Debian package:
```bash
sudo apt update
sudo apt install adb android-sdk-platform-tools
```

Note: This will install ADB at `/usr/lib/android-sdk/platform-tools/adb`

2. Install Android Command Line Tools:
```bash
# Install the latest version (11.0) of Android Command Line Tools
sudo apt install google-android-cmdline-tools-11.0-installer

# Create necessary directories with proper permissions
sudo mkdir -p /usr/lib/android-sdk/.android
sudo chmod 777 /usr/lib/android-sdk/.android

# If using a custom SDK location, also do:
mkdir -p $HOME/Android/Sdk/.android
chmod 777 $HOME/Android/Sdk/.android

# Create an empty repository file to prevent warnings
touch $HOME/.android/repositories.cfg
```

3. Verify and configure the SDK:
```bash
# Accept licenses first (ignore XML parse warnings)
yes | sudo sdkmanager --licenses

# Install required packages with proper permissions
sudo sdkmanager --verbose "platform-tools" "platforms;android-33" "build-tools;33.0.0"

# Verify installation by listing installed packages
sdkmanager --list | grep -E "Installed|Path"
```

Expected output should show:
```
Installed packages:
  Path                 | Version | Description
  build-tools;33.0.0   | 33.0.0  | Android SDK Build-Tools 33
  platform-tools       | 35.0.2  | Android SDK Platform-Tools
  platforms;android-33 | 3       | Android SDK Platform 33
```

Note: The XML parse warnings can be safely ignored as long as the packages are installed correctly.

4. If you see permission issues, fix them with:
```bash
sudo chown -R $USER:$USER $ANDROID_HOME
sudo chmod -R 755 $ANDROID_HOME
```

5. Verify the environment:
```bash
# Check ADB version
adb version

# Check if platform tools are in path
which adb

# Check SDK location
echo $ANDROID_HOME
```

## 4. Project Setup

1. Open ODK project folder in VS Code:
```bash
code ~/Documents/DEVSpace/BringingGaps/odk-collect
```

2. Configure Gradle:
   - VS Code should automatically detect the Gradle project
   - Wait for initial indexing to complete
   - Create `gradle.properties` in project root if not exists
   - Add these settings:
```properties
org.gradle.jvmargs=-Xmx2048m -Dfile.encoding=UTF-8
android.useAndroidX=true
android.enableJetifier=true
```

3. Install Gradle Wrapper:
```bash
gradle wrapper
```

4. Sync project:
```bash
./gradlew build
```

5. Build Tasks:
   - Open command palette (Ctrl+Shift+P)
   - Type "Tasks: Configure Task"
   - Select "Create tasks.json file from template"
   - Choose "Others"
   - Add these tasks:

```json
{
    "version": "2.0.0",
    "tasks": [
        {
            "label": "Build Debug",
            "type": "shell",
            "command": "./gradlew assembleDebug",
            "group": {
                "kind": "build",
                "isDefault": true
            }
        },
        {
            "label": "Run Tests",
            "type": "shell",
            "command": "./gradlew test",
            "group": "test"
        }
    ]
}
```

## 5. Debugging Setup

1. Create launch configuration in `.vscode/launch.json`:

```json
{
    "version": "0.2.0",
    "configurations": [
        {
            "type": "android",
            "name": "Debug Android",
            "request": "launch",
            "appSrcRoot": "${workspaceRoot}/collect_app/src/main",
            "apkFile": "${workspaceRoot}/collect_app/build/outputs/apk/debug/collect_app-debug.apk",
            "adbPort": 5037
        }
    ]
}
```

## 6. Android Device Setup

1. Enable Developer Options on your Android device:
   - Go to Settings > About phone
   - Tap "Build number" 7 times
   - Enter your device PIN if prompted

2. Enable USB debugging:
   - Go to Settings > Developer options
   - Enable "USB debugging"

3. Connect device:
```bash
# List connected devices
adb devices

# For wireless debugging, first connect via USB, then:
adb tcpip 5555
adb connect <device-ip>:5555
```

## 7. Test Your Setup

1. Build the project:
```bash
./gradlew assembleDebug
```

2. Install on device:
```bash
adb install collect_app/build/outputs/apk/debug/collect_app-debug.apk
```

3. View logs:
```bash
adb logcat | grep odk
```

## 8. Workflow Tips

1. **Building**:
   - Use Command Palette: "Tasks: Run Build Task" (Ctrl+Shift+B)
   - Or use terminal: `./gradlew assembleDebug`

2. **Running Tests**:
   - Use Command Palette: "Tasks: Run Test Task"
   - Or use terminal: `./gradlew test`

3. **Code Navigation**:
   - F12: Go to definition
   - Alt+F12: Peek definition
   - Shift+F12: Find references

4. **Git Integration**:
   - Built-in Git support in VS Code
   - Source Control panel (Ctrl+Shift+G)

## 9. Limitations vs Android Studio

Be aware of these limitations when using VS Code:

1. No visual layout editor (XML only)
2. Limited Android-specific refactoring tools
3. No integrated device manager (use command line ADB)
4. Manual configuration of some Android tools

For these features, you may still need to occasionally open the project in Android Studio.

## 10. Recommended Workflow

1. Use VS Code for:
   - Code editing
   - Git operations
   - Building and testing
   - Quick changes and reviews

2. Use Android Studio for:
   - Layout design
   - Android device/emulator management
   - Complex refactoring
   - Performance profiling

This hybrid approach gives you the best of both editors while maintaining full project functionality.
