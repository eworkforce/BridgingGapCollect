# Bridging Gaps Collect: Customization & Repository Analysis
 
---
**Date:** 2025-02-23  
**Version:** 1.3  

## Table of Contents
1. [Project Overview](#1-project-overview)
2. [Key Customization Requirements](#2-key-customization-requirements)
3. [Repository Analysis](#3-repository-analysis)
4. [Environment Setup](#4-environment-setup)
5. [Implementation Guide](#5-implementation-guide)

## 1. Project Overview
*(Implementation details can be found in [Section 5.2](#52-high-level-objectives-hlo))*
- This is a customization project of ODK Collect, aiming to create a variant called "Bridging Gaps Collect"
- The project is based on the ODK Collect codebase, which is a robust open-source data collection tool
- The main goal is to create a branded version with custom styling and features while maintaining core ODK functionality

## 2. Key Customization Requirements
*(Technical implementation details in [Section 5.4](#54-implementation-rules--notes-irn))*
- Implementation of Figtree fonts
- Integration of Bridging Gaps logo and branding
- Custom color palette for the Bridging Gaps brand
- Creation of a signed APK for private distribution

## 3. Repository Analysis
*(Environment setup requirements detailed in [Section 4](#4-environment-setup))*
- Based on detailed analysis of ODK Collect repository structure in Design_Guides/ODK_Collect_Repo.md

### 3.1 Technology Stack
*(Build configuration details in [Section 4.3](#43-build-environment-requirements))*

#### Core Technologies
- **Programming Languages**
  - Kotlin 1.8.x (Primary language)
  - Java 17 (Legacy support)
  - XML (Resource files)

- **Build System**
  - Gradle 8.x
  - Kotlin DSL for build scripts
  - Custom Gradle plugins

- **Android Framework**
  - MinSDK: 21 (Android 5.0)
  - TargetSDK: 34 (Android 14)
  - AndroidX libraries
  - Material Design Components

#### Development Tools
- **IDE Support**
  - Android Studio (Primary)
  - Visual Studio Code
  - IntelliJ IDEA

- **Version Control**
  - Git
  - GitHub Actions for CI/CD
  - CircleCI integration

#### Core Libraries
- **UI Framework**
  - Material Design 3
  - ConstraintLayout 2.x
  - Custom UI components
  - Fragment-based navigation

- **Async Operations**
  - Kotlin Coroutines
  - Flow
  - WorkManager
  - LiveData

- **Data Management**
  - Room Database
  - SharedPreferences
  - Custom storage solutions
  - File system operations

#### Testing Framework
- **Unit Testing**
  - JUnit 5
  - Mockito
  - Robolectric
  - Kotlin Test

- **UI Testing**
  - Espresso
  - UI Automator
  - Screenshot Testing
  - Custom test runners

#### Third-Party Dependencies
- **Form Processing**
  - JavaRosa (Core form engine)
  - OpenRosa specifications
  - XForms standard

- **Networking**
  - OkHttp3
  - Retrofit2
  - Custom HTTP clients

- **Analytics & Monitoring**
  - Firebase (Optional)
  - Crashlytics (Optional)
  - Custom analytics implementations

### 3.2 Multi-Module Architecture
*(Related implementation details in [Section 5.4](#54-implementation-rules--notes-irn))*

ODK Collect implements a modular architecture with these key components:

- **`collect_app/`**  
  - Main Android application module
  - Contains all UI components (Activities, Fragments)
  - Manages form processing and data collection
  - Houses resource files for customization

- **`androidshared/`**  
  - Common Android utilities and components
  - UI utilities (dialogs, multi-click protection)
  - System services integration
  - Bitmap and image processing

- **`async/`**  
  - Modern concurrency implementation
  - Kotlin coroutines integration
  - WorkManager for background tasks
  - Task scheduling and management

- **`analytics/`**  
  - Configurable analytics system
  - Firebase integration capabilities
  - Privacy-focused tracking options

### 3.3 Testing Infrastructure
*(Testing environment setup in [Section 4.4](#44-testing-environment))*

- **Unit Tests**: 
  - Located in `src/test` directories
  - Uses JUnit and Robolectric
  - Covers core business logic
  - Modular test organization

- **Instrumented Tests**: 
  - Found in `src/androidTest`
  - Device/emulator execution
  - UI automation testing
  - Integration scenarios

### 3.4 Customization Points
*(Implementation guide in [Section 5.3](#53-mid-level-objectives-mlo))*

1. **Visual Branding**  
   - Theme customization via `res/values/`
   - Icon replacement in `res/drawable/`
   - Font integration in `res/font/`
   - Layout modifications in `res/layout/`

2. **Build System**  
   - Gradle-based build configuration
   - Module-level dependency management
   - ProGuard optimization rules
   - Signing configuration support

## 4. Environment Setup
*(Required for implementation in [Section 5](#5-implementation-guide))*

### 4.1 Development Environment Configuration
*(Related to technology stack in [Section 3.1](#31-technology-stack))*

#### A. Conda Environment Setup
```bash
# Create and activate the project environment
conda create -n odkc python=3.10
conda activate odkc

# Install required Python packages
pip install -r requirements.txt
```

#### B. Android Development Tools
```bash
# Install Android Studio Command-line Tools
sdkmanager --install "cmdline-tools;latest"

# Install required SDK components
sdkmanager --install \
    "platforms;android-34" \
    "build-tools;34.0.0" \
    "extras;android;m2repository" \
    "extras;google;m2repository"

# Accept licenses
sdkmanager --licenses
```

#### C. Environment Variables
```bash
# Add to ~/.zshrc or ~/.bashrc
export ANDROID_HOME=$HOME/Android/Sdk
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools
export PATH=$PATH:$ANDROID_HOME/cmdline-tools/latest/bin
export JAVA_HOME=/path/to/java-17-openjdk
```

### 4.2 Project Configuration
*(Aligns with customization points in [Section 3.4](#34-customization-points))*

#### A. IDE Setup (Android Studio)
```properties
# gradle.properties
org.gradle.jvmargs=-Xmx4096m -XX:MaxPermSize=1024m -XX:+HeapDumpOnOutOfMemoryError
org.gradle.parallel=true
org.gradle.daemon=true
android.useAndroidX=true
android.enableJetifier=false
kotlin.code.style=official
```

#### B. Code Style Configuration
```xml
<!-- .editorconfig -->
root = true

[*]
end_of_line = lf
insert_final_newline = true
indent_style = space
indent_size = 4
max_line_length = 120

[*.{kt,kts}]
ktlint_code_style = official
ktlint_standard_no-wildcard-imports = disabled
```

### 4.3 Build Environment Requirements
*(Based on technology stack in [Section 3.1](#31-technology-stack))*

#### A. System Requirements
- CPU: 64-bit processor
- RAM: Minimum 8GB (16GB recommended)
- Storage: 10GB free space
- OS: Linux (Ubuntu/Mint recommended)

#### B. Software Dependencies
```bash
# Core Development Tools
java_version="17"
kotlin_version="1.8.22"
gradle_version="8.2"
android_studio_version="2023.1.1"

# Android SDK
min_sdk="21"
target_sdk="34"
build_tools="34.0.0"

# Testing Framework
junit_version="5.10.0"
espresso_version="3.5.1"
robolectric_version="4.11.1"
```

### 4.4 Testing Environment
*(Implementation follows testing infrastructure in [Section 3.3](#33-testing-infrastructure))*

#### A. Local Testing Setup
```kotlin
// build.gradle.kts
android {
    testOptions {
        unitTests {
            isIncludeAndroidResources = true
            isReturnDefaultValues = true
            all {
                it.useJUnitPlatform()
            }
        }
        animationsDisabled = true
    }
}
```

#### B. Instrumented Testing Configuration
```xml
<!-- AndroidManifest.xml (debug) -->
<manifest>
    <application>
        <activity
            android:name=".debug.DebugActivity"
            android:exported="true">
            <intent-filter>
                <action android:name="android.intent.action.MAIN" />
                <category android:name="android.intent.category.LAUNCHER" />
            </intent-filter>
        </activity>
    </application>
</manifest>
```

### 4.5 Continuous Integration Setup
*(Supports testing requirements in [Section 3.3](#33-testing-infrastructure))*

#### A. CircleCI Configuration
```yaml
# .circleci/config.yml
version: 2.1
jobs:
  build:
    docker:
      - image: cimg/android:2024.01
    environment:
      JVM_OPTS: -Xmx3200m
      GRADLE_OPTS: "-Dorg.gradle.daemon=false -Dorg.gradle.workers.max=2"
    steps:
      - checkout
      - restore_cache:
          key: jars-{{ checksum "build.gradle.kts" }}
      - run:
          name: Run Tests
          command: ./gradlew test
      - store_artifacts:
          path: collect_app/build/reports
          destination: reports
```

#### B. Static Analysis Tools
```kotlin
// build.gradle.kts
plugins {
    id("io.gitlab.arturbosch.detekt")
    id("org.jlleitschuh.gradle.ktlint")
}

detekt {
    buildUponDefaultConfig = true
    config = files("$projectDir/config/detekt/detekt.yml")
}

ktlint {
    version.set("0.50.0")
    android.set(true)
    reporters {
        reporter(org.jlleitschuh.gradle.ktlint.reporter.ReporterType.HTML)
    }
}
```

### 4.6 Debug Configuration
*(Relates to implementation rules in [Section 5.4](#54-implementation-rules--notes-irn))*

#### A. Debug Build Variant
```kotlin
// build.gradle.kts
android {
    buildTypes {
        debug {
            isDebuggable = true
            isMinifyEnabled = false
            applicationIdSuffix = ".debug"
            versionNameSuffix = "-debug"
        }
    }
}
```

#### B. Logging Configuration
```kotlin
// Logger.kt
object Logger {
    private const val TAG = "BridgingGapsCollect"
    
    fun d(message: String) {
        if (BuildConfig.DEBUG) {
            Log.d(TAG, message)
        }
    }
    
    fun e(message: String, throwable: Throwable? = null) {
        Log.e(TAG, message, throwable)
    }
}
```

### 4.7 Alternative Development Environment: VS Code Setup
*(Optional alternative to Android Studio setup in [Section 4.1](#41-development-environment-configuration))*

While Android Studio is the traditional choice for Android development, Visual Studio Code offers a lighter alternative with proper configuration. This section details the complete VS Code setup for ODK development.

#### A. Required VS Code Extensions
```json
{
    "recommendations": [
        "fwcd.kotlin",              // Kotlin language support
        "vscjava.vscode-java-pack", // Java Development Kit
        "redhat.java",              // Java language support
        "vscjava.vscode-gradle",    // Gradle support
        "richardwillis.vscode-gradle-extension-pack", // Extended Gradle tools
        "redhat.vscode-xml",        // XML tools for layouts
        "ms-azuretools.vscode-docker", // For CI/CD containers
        "eamodio.gitlens",          // Enhanced Git integration
        "pkief.material-icon-theme", // Material Design icons
        "naco-siren.gradle-language" // Gradle DSL support
    ]
}
```

#### B. Command Line Tools Setup
```bash
# 1. Install Android SDK Command Line Tools
sdkmanager --install "cmdline-tools;latest"

# 2. Install required Android components
sdkmanager --install \
    "platforms;android-34" \
    "build-tools;34.0.0" \
    "platform-tools" \
    "emulator" \
    "system-images;android-34;google_apis;x86_64"

# 3. Create AVD (Android Virtual Device)
avdmanager create avd \
    --name "test_device" \
    --package "system-images;android-34;google_apis;x86_64" \
    --device "pixel_5"
```

#### C. VS Code Workspace Settings
```json
{
    "java.configuration.updateBuildConfiguration": "automatic",
    "java.compile.nullAnalysis.mode": "automatic",
    "kotlin.compiler.jvm.target": "17",
    "kotlin.languageServer.enabled": true,
    "gradle.autoDetect": "on",
    "gradle.nestedProjects": true,
    "files.associations": {
        "*.kts": "kotlin",
        "*.gradle.kts": "kotlin",
        "*.xml": "xml"
    },
    "terminal.integrated.env.linux": {
        "ANDROID_HOME": "${env:HOME}/Android/Sdk",
        "JAVA_HOME": "/path/to/java-17-openjdk"
    }
}
```

#### D. Task Configurations for VS Code
```json
{
    "version": "2.0.0",
    "tasks": [
        {
            "label": "Build Debug APK",
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
        },
        {
            "label": "Clean Project",
            "type": "shell",
            "command": "./gradlew clean"
        },
        {
            "label": "Install APK",
            "type": "shell",
            "command": "adb install -r ./collect_app/build/outputs/apk/debug/collect_app-debug.apk"
        }
    ]
}
```

#### E. Debug Configuration
```json
{
    "version": "0.2.0",
    "configurations": [
        {
            "type": "kotlin",
            "request": "attach",
            "name": "Attach to Android Process",
            "hostName": "localhost",
            "port": 5005,
            "timeout": 30000
        }
    ]
}
```

#### F. Command Line Alternatives for Android Studio Features

1. **Layout Preview**
```bash
# Generate layout preview PNG
android-layout-preview \
    collect_app/src/main/res/layout/activity_main.xml \
    --output preview.png
```

2. **APK Signing**
```bash
# Generate keystore
keytool -genkey -v -keystore bridging_gaps.keystore -alias bg_key -keyalg RSA -keysize 2048 -validity 10000

# Sign APK
apksigner sign --ks bridging_gaps.keystore \
    --ks-key-alias bg_key \
    --out collect_app-release-signed.apk \
    collect_app/build/outputs/apk/release/collect_app-release-unsigned.apk
```

3. **Device Management**
```bash
# List devices
adb devices

# Start emulator
emulator -avd test_device

# Install APK
adb install -r collect_app/build/outputs/apk/debug/collect_app-debug.apk

# View logs
adb logcat
```

4. **Debugging**
```bash
# Enable debugging port
adb forward tcp:5005 tcp:5005

# Start app in debug mode
adb shell am start -D -n org.odk.collect.bridginggaps/org.odk.collect.android.activities.MainMenuActivity
```

#### G. VS Code Development Workflow

1. **Project Setup**
```bash
# Clone and setup
git clone <repository-url>
cd <project-directory>
code .  # Open in VS Code
```

2. **Build Process**
- Use Command Palette (Ctrl+Shift+P)
- Select 'Tasks: Run Build Task'
- Choose 'Build Debug APK'

3. **Testing**
- Use integrated terminal
- Run `./gradlew test`
- Results appear in VS Code's test explorer

4. **Debugging**
- Set breakpoints in VS Code
- Use Debug view (Ctrl+Shift+D)
- Select 'Attach to Android Process'
- Start app in debug mode

#### H. Advantages and Limitations

**Advantages:**
- Lighter resource usage
- Faster startup time
- Better git integration
- More flexible customization
- Powerful command line integration

**Limitations:**
- No visual layout editor
- Manual device management
- More complex debugging setup
- No direct Gradle sync UI

This VS Code setup provides a complete alternative to Android Studio while maintaining all necessary development capabilities. Choose based on your preference and system resources.

This comprehensive environment setup ensures:
- Proper conda environment configuration (odkc)
- Consistent development environment across team members
- Standardized code style and quality checks
- Efficient testing and debugging capabilities
- Reliable continuous integration process
- Proper logging and monitoring in debug builds

---

## 5. Implementation Guide
*(Based on requirements from [Section 2](#2-key-customization-requirements))*

### 5.1 Version Information
*(Follows project overview from [Section 1](#1-project-overview))*

- **Version**: 1.3  
- **Timestamp**: 2025-02-23  
- **Detail**: Enhanced architecture analysis and implementation guidance

---

### 5.2 High-Level Objectives (HLO)
*(Implements requirements from [Section 2](#2-key-customization-requirements))*

1. **Complete Branding Integration**
   - Implement Figtree font family
   - Apply Bridging Gaps visual identity
   - Maintain ODK's robust functionality

2. **Enhanced User Experience**
   - Consistent visual language
   - Optimized form interactions
   - Smooth navigation flows

3. **Quality Assurance**
   - Comprehensive testing coverage
   - Performance optimization
   - Security compliance

---

### 5.3 Mid-Level Objectives (MLO)
*(Based on customization points in [Section 3.4](#34-customization-points))*

1. **Theme Implementation**  
   - Override Material Design theme
   - Apply custom color palette
   - Integrate Figtree typography
   - Update iconography

2. **Resource Management**  
   - Organize assets efficiently
   - Optimize resource usage
   - Maintain localization support

3. **Build Process**  
   - Configure Gradle properly
   - Implement signing process
   - Optimize APK size

4. **Quality Control**  
   - Run comprehensive tests
   - Verify form functionality
   - Ensure performance metrics

---

### 5.4 Implementation Rules & Notes (IR&N)
*(Uses environment setup from [Section 4](#4-environment-setup))*

#### A. UI/Theme Configuration

```xml
<!-- themes.xml -->
<resources xmlns:tools="http://schemas.android.com/tools">
    <!-- Base application theme using Material Design 3 -->
    <style name="Theme.BridgingGaps" parent="Theme.Material3.DayNight.NoActionBar">
        <!-- Primary brand color -->
        <item name="colorPrimary">@color/bridginggaps_primary</item>
        <item name="colorPrimaryVariant">@color/bridginggaps_primary_variant</item>
        <item name="colorOnPrimary">@color/white</item>
        
        <!-- Secondary brand color -->
        <item name="colorSecondary">@color/bridginggaps_secondary</item>
        <item name="colorSecondaryVariant">@color/bridginggaps_secondary_variant</item>
        <item name="colorOnSecondary">@color/black</item>
        
        <!-- Typography using Figtree font -->
        <item name="android:fontFamily">@font/figtree</item>
        <item name="fontFamily">@font/figtree</item>
    </style>
</resources>

<!-- styles.xml -->
<style name="Widget.BridgingGaps.TextView" parent="Widget.MaterialComponents.TextView">
    <item name="android:textAppearance">@style/TextAppearance.BridgingGaps.Body1</item>
</style>

<!-- Custom text appearances -->
<style name="TextAppearance.BridgingGaps.Body1" parent="TextAppearance.MaterialComponents.Body1">
    <item name="fontFamily">@font/figtree</item>
    <item name="android:fontFamily">@font/figtree</item>
</style>
```

#### B. Kotlin-Based Activity Structure

```kotlin
// MainActivity.kt
class MainActivity : AppCompatActivity() {
    private val viewModel: MainViewModel by viewModels()
    
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_main)
        
        setupNavigationComponent()
        observeViewModelState()
    }
    
    private fun setupNavigationComponent() {
        val navController = findNavController(R.id.nav_host_fragment)
        NavigationUI.setupActionBarWithNavController(this, navController)
    }
    
    private fun observeViewModelState() {
        lifecycleScope.launch {
            viewModel.uiState.collect { state ->
                updateUI(state)
            }
        }
    }
}
```

#### C. Form Processing Integration

```kotlin
// FormProcessor.kt
class FormProcessor @Inject constructor(
    private val javaRosaHandler: JavaRosaHandler,
    private val formRepository: FormRepository,
    private val coroutineScope: CoroutineScope
) {
    fun processForm(formId: String): Flow<FormState> = flow {
        emit(FormState.Loading)
        
        try {
            val form = formRepository.getForm(formId)
            val processedForm = javaRosaHandler.parseForm(form)
            emit(FormState.Success(processedForm))
        } catch (e: Exception) {
            emit(FormState.Error(e))
        }
    }.flowOn(Dispatchers.IO)
}
```

#### D. Data Management with Room

```kotlin
// FormDatabase.kt
@Database(
    entities = [FormEntity::class],
    version = 1,
    exportSchema = false
)
abstract class FormDatabase : RoomDatabase() {
    abstract fun formDao(): FormDao
    
    companion object {
        @Volatile
        private var INSTANCE: FormDatabase? = null
        
        fun getInstance(context: Context): FormDatabase {
            return INSTANCE ?: synchronized(this) {
                Room.databaseBuilder(
                    context.applicationContext,
                    FormDatabase::class.java,
                    "bridginggaps_forms.db"
                ).build().also { INSTANCE = it }
            }
        }
    }
}
```

#### E. Dependency Injection Setup

```kotlin
// AppModule.kt
@Module
@InstallIn(SingletonComponent::class)
object AppModule {
    @Provides
    @Singleton
    fun provideFormRepository(
        formDao: FormDao,
        apiService: ApiService
    ): FormRepository {
        return FormRepositoryImpl(formDao, apiService)
    }
    
    @Provides
    @Singleton
    fun provideApiService(): ApiService {
        return Retrofit.Builder()
            .baseUrl(BuildConfig.API_BASE_URL)
            .addConverterFactory(MoshiConverterFactory.create())
            .build()
            .create(ApiService::class.java)
    }
}
```

#### F. Build Configuration

```kotlin
// build.gradle.kts
plugins {
    id("com.android.application")
    id("kotlin-android")
    id("kotlin-kapt")
    id("dagger.hilt.android.plugin")
    id("androidx.navigation.safeargs.kotlin")
}

android {
    namespace = "org.odk.collect.bridginggaps"
    compileSdk = 34
    
    defaultConfig {
        applicationId = "org.odk.collect.bridginggaps"
        minSdk = 21
        targetSdk = 34
        versionCode = 1
        versionName = "1.0.0"
        
        testInstrumentationRunner = "androidx.test.runner.AndroidJUnitRunner"
    }
    
    buildFeatures {
        viewBinding = true
        compose = true
    }
    
    composeOptions {
        kotlinCompilerExtensionVersion = "1.5.1"
    }
}

dependencies {
    // AndroidX Core
    implementation("androidx.core:core-ktx:1.12.0")
    implementation("androidx.appcompat:appcompat:1.6.1")
    
    // Material Design
    implementation("com.google.android.material:material:1.11.0")
    
    // Architecture Components
    implementation("androidx.lifecycle:lifecycle-runtime-ktx:2.7.0")
    implementation("androidx.lifecycle:lifecycle-viewmodel-ktx:2.7.0")
    
    // Coroutines
    implementation("org.jetbrains.kotlinx:kotlinx-coroutines-android:1.7.3")
    
    // Room
    implementation("androidx.room:room-runtime:2.6.1")
    implementation("androidx.room:room-ktx:2.6.1")
    kapt("androidx.room:room-compiler:2.6.1")
    
    // Hilt
    implementation("com.google.dagger:hilt-android:2.48")
    kapt("com.google.dagger:hilt-compiler:2.48")
    
    // JavaRosa
    implementation("org.opendatakit:javarosa:2.17.0")
    
    // Testing
    testImplementation("junit:junit:4.13.2")
    testImplementation("org.robolectric:robolectric:4.11.1")
    androidTestImplementation("androidx.test.ext:junit:1.1.5")
    androidTestImplementation("androidx.test.espresso:espresso-core:3.5.1")
}
```

#### G. WorkManager Implementation

```kotlin
// FormSyncWorker.kt
@HiltWorker
class FormSyncWorker @AssistedInject constructor(
    @Assisted context: Context,
    @Assisted workerParams: WorkerParameters,
    private val formRepository: FormRepository
) : CoroutineWorker(context, workerParams) {
    
    override suspend fun doWork(): Result {
        return try {
            formRepository.syncForms()
            Result.success()
        } catch (e: Exception) {
            Result.failure()
        }
    }
    
    companion object {
        fun schedule(context: Context) {
            val constraints = Constraints.Builder()
                .setRequiredNetworkType(NetworkType.CONNECTED)
                .build()
                
            val request = PeriodicWorkRequestBuilder<FormSyncWorker>(
                1, TimeUnit.HOURS
            ).setConstraints(constraints)
                .build()
                
            WorkManager.getInstance(context)
                .enqueueUniquePeriodicWork(
                    "formSync",
                    ExistingPeriodicWorkPolicy.KEEP,
                    request
                )
        }
    }
}
```

These implementations align with the repository's tech stack and follow modern Android development practices, utilizing:
- Material Design 3 for theming
- Kotlin Coroutines and Flow for async operations
- Room for data persistence
- Hilt for dependency injection
- WorkManager for background tasks
- AndroidX components for UI and architecture
- JavaRosa integration for form processing

---

## Version History
- 1.3 (2025-02-23): Enhanced architecture analysis and implementation details
- 1.2 (2025-02-21): Initial specification document

By following this implementation guide, you can effectively customize ODK Collect while maintaining its core functionality and ensuring high quality standards. The guide emphasizes proper branding integration while preserving the robust data collection capabilities of the original platform.

---
**Note**: For any implementation task, please ensure you follow the sequence:
1. Review relevant requirements in [Section 2](#2-key-customization-requirements)
2. Check corresponding architecture in [Section 3](#3-repository-analysis)
3. Set up environment as per [Section 4](#4-environment-setup)
4. Follow implementation steps in [Section 5](#5-implementation-guide)
