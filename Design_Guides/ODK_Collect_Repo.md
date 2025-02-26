analyse this repository : Directory structure:
└── getodk-collect/
    ├── README.md
    ├── LICENSE.md
    ├── SECURITY.md
    ├── benchmark.sh
    ├── check-size.sh
    ├── codecov.yml
    ├── debug.keystore
    ├── download-robolectric-deps.sh
    ├── gradle.properties
    ├── gradlew
    ├── gradlew.bat
    ├── robolectric-deps.properties
    ├── .editorconfig
    ├── .hgtags
    ├── analytics/
    │   ├── build.gradle.kts
    │   ├── consumer-rules.pro
    │   ├── proguard-rules.pro
    │   ├── .gitignore
    │   └── src/
    │       └── main/
    │           ├── AndroidManifest.xml
    │           └── java/
    │               └── org/
    │                   └── odk/
    │                       └── collect/
    │                           └── analytics/
    │                               ├── Analytics.kt
    │                               ├── BlockableFirebaseAnalytics.kt
    │                               └── NoopAnalytics.kt
    ├── androidshared/
    │   ├── build.gradle.kts
    │   ├── consumer-rules.pro
    │   ├── .gitignore
    │   └── src/
    │       ├── androidTest/
    │       │   └── java/
    │       │       └── org/
    │       │           └── odk/
    │       │               └── collect/
    │       │                   └── androidshared/
    │       │                       └── bitmap/
    │       │                           ├── ImageCompressorTest.kt
    │       │                           └── ImageFileUtilsTest.kt
    │       ├── main/
    │       │   ├── AndroidManifest.xml
    │       │   ├── java/
    │       │   │   └── org/
    │       │   │       └── odk/
    │       │   │           └── collect/
    │       │   │               └── androidshared/
    │       │   │                   ├── async/
    │       │   │                   │   └── TrackableWorker.kt
    │       │   │                   ├── bitmap/
    │       │   │                   │   ├── ImageCompressor.kt
    │       │   │                   │   └── ImageFileUtils.kt
    │       │   │                   ├── data/
    │       │   │                   │   ├── AppState.kt
    │       │   │                   │   ├── Consumable.kt
    │       │   │                   │   └── Data.kt
    │       │   │                   ├── livedata/
    │       │   │                   │   ├── LiveDataUtils.java
    │       │   │                   │   └── NonNullLiveData.kt
    │       │   │                   ├── system/
    │       │   │                   │   ├── CameraUtils.java
    │       │   │                   │   ├── ContextUtils.kt
    │       │   │                   │   ├── ExternalFilesUtils.kt
    │       │   │                   │   ├── IntentLauncher.kt
    │       │   │                   │   ├── OpenGLVersionChecker.kt
    │       │   │                   │   ├── PlayServicesChecker.java
    │       │   │                   │   ├── ProcessRestoreDetector.kt
    │       │   │                   │   └── UriExt.kt
    │       │   │                   ├── ui/
    │       │   │                   │   ├── Animations.kt
    │       │   │                   │   ├── ColorPickerDialog.kt
    │       │   │                   │   ├── DialogFragmentUtils.kt
    │       │   │                   │   ├── FragmentFactoryBuilder.kt
    │       │   │                   │   ├── GroupClickListener.kt
    │       │   │                   │   ├── ListFragmentStateAdapter.kt
    │       │   │                   │   ├── MenuExt.kt
    │       │   │                   │   ├── ObviousProgressBar.kt
    │       │   │                   │   ├── OneSignTextWatcher.kt
    │       │   │                   │   ├── PrefUtils.kt
    │       │   │                   │   ├── ReturnToAppActivity.kt
    │       │   │                   │   ├── SnackbarUtils.kt
    │       │   │                   │   ├── ToastUtils.kt
    │       │   │                   │   └── multiclicksafe/
    │       │   │                   │       ├── DoubleClickSafeMaterialButton.kt
    │       │   │                   │       ├── MultiClickGuard.kt
    │       │   │                   │       ├── MultiClickSafeMaterialButton.kt
    │       │   │                   │       ├── MultiClickSafeTextInputEditText.kt
    │       │   │                   │       └── MultiClickSaveOnClickListener.kt
    │       │   │                   └── utils/
    │       │   │                       ├── AppBarUtils.kt
    │       │   │                       ├── ColorUtils.kt
    │       │   │                       ├── CompressionUtils.kt
    │       │   │                       ├── PathUtils.kt
    │       │   │                       ├── PreferenceFragmentCompatUtils.kt
    │       │   │                       ├── ScreenUtils.java
    │       │   │                       └── Validator.kt
    │       │   └── res/
    │       │       ├── color/
    │       │       │   ├── color_on_primary_low_emphasis.xml
    │       │       │   ├── color_on_surface_high_emphasis.xml
    │       │       │   ├── color_on_surface_low_emphasis.xml
    │       │       │   ├── color_on_surface_medium_emphasis.xml
    │       │       │   └── color_primary_low_emphasis.xml
    │       │       ├── drawable/
    │       │       │   ├── color_circle.xml
    │       │       │   ├── ic_close_24.xml
    │       │       │   ├── list_item_divider.xml
    │       │       │   ├── radio_button_inset.xml
    │       │       │   └── shadow_up.xml
    │       │       ├── layout/
    │       │       │   ├── app_bar_layout.xml
    │       │       │   └── color_picker_dialog_layout.xml
    │       │       └── values/
    │       │           ├── attrs.xml
    │       │           ├── color_picker_dialog_colors.xml
    │       │           ├── dimens.xml
    │       │           └── styles.xml
    │       └── test/
    │           ├── java/
    │           │   └── org/
    │           │       └── odk/
    │           │           └── collect/
    │           │               └── androidshared/
    │           │                   ├── async/
    │           │                   │   └── TrackableWorkerTest.kt
    │           │                   ├── system/
    │           │                   │   └── UriExtTest.kt
    │           │                   ├── ui/
    │           │                   │   ├── ColorPickerDialogTest.kt
    │           │                   │   ├── OneSignTextWatcherTest.kt
    │           │                   │   └── ReturnToAppActivityTest.kt
    │           │                   └── utils/
    │           │                       ├── ColorUtilsTest.kt
    │           │                       ├── CompressionUtilsTest.kt
    │           │                       ├── DialogFragmentUtilsTest.java
    │           │                       ├── IntentLauncherImplTest.kt
    │           │                       ├── PathUtilsTest.kt
    │           │                       └── ValidatorTest.kt
    │           └── resources/
    │               └── robolectric.properties
    ├── androidtest/
    │   ├── README.md
    │   ├── build.gradle.kts
    │   ├── consumer-rules.pro
    │   ├── .gitignore
    │   └── src/
    │       └── main/
    │           ├── AndroidManifest.xml
    │           └── java/
    │               └── org/
    │                   └── odk/
    │                       └── collect/
    │                           └── androidtest/
    │                               ├── ActivityScenarioExtensions.kt
    │                               ├── ActivityScenarioLauncherRule.kt
    │                               ├── DrawableMatcher.kt
    │                               ├── FakeLifecycleOwner.kt
    │                               ├── LiveDataTestUtils.kt
    │                               └── RecordedIntentsRule.kt
    ├── async/
    │   ├── build.gradle.kts
    │   ├── consumer-rules.pro
    │   ├── proguard-rules.pro
    │   ├── .gitignore
    │   └── src/
    │       ├── main/
    │       │   ├── AndroidManifest.xml
    │       │   └── java/
    │       │       └── org/
    │       │           └── odk/
    │       │               └── collect/
    │       │                   └── async/
    │       │                       ├── Cancellable.kt
    │       │                       ├── CoroutineAndWorkManagerScheduler.kt
    │       │                       ├── CoroutineScheduler.kt
    │       │                       ├── OngoingWorkListener.kt
    │       │                       ├── Scheduler.kt
    │       │                       ├── SchedulerAsyncTaskMimic.kt
    │       │                       ├── ScopeCancellable.kt
    │       │                       ├── TaskSpec.kt
    │       │                       ├── TaskSpecWorker.kt
    │       │                       └── network/
    │       │                           ├── ConnectivityProvider.kt
    │       │                           └── NetworkStateProvider.kt
    │       └── test/
    │           └── java/
    │               └── org/
    │                   └── odk/
    │                       └── collect/
    │                           └── async/
    │                               └── TaskSpecWorkerTest.kt
    ├── audio-clips/
    │   ├── build.gradle.kts
    │   ├── consumer-rules.pro
    │   ├── .gitignore
    │   └── src/
    │       ├── main/
    │       │   ├── AndroidManifest.xml
    │       │   └── java/
    │       │       └── org/
    │       │           └── odk/
    │       │               └── collect/
    │       │                   └── audioclips/
    │       │                       ├── AudioClipViewModel.kt
    │       │                       ├── Clip.kt
    │       │                       └── PlaybackFailedException.kt
    │       └── test/
    │           └── java/
    │               └── org/
    │                   └── odk/
    │                       └── collect/
    │                           └── audioclips/
    │                               └── AudioClipViewModelTest.kt
    ├── audio-recorder/
    │   ├── build.gradle.kts
    │   ├── consumer-rules.pro
    │   ├── .gitignore
    │   └── src/
    │       ├── main/
    │       │   ├── AndroidManifest.xml
    │       │   └── java/
    │       │       └── org/
    │       │           └── odk/
    │       │               └── collect/
    │       │                   └── audiorecorder/
    │       │                       ├── DaggerSetup.kt
    │       │                       ├── mediarecorder/
    │       │                       │   └── MediaRecorderRecordingResource.kt
    │       │                       ├── recorder/
    │       │                       │   ├── Recorder.kt
    │       │                       │   ├── RecordingResource.kt
    │       │                       │   └── RecordingResourceRecorder.kt
    │       │                       ├── recording/
    │       │                       │   ├── AudioRecorder.kt
    │       │                       │   ├── AudioRecorderFactory.kt
    │       │                       │   ├── AudioRecorderService.kt
    │       │                       │   └── internal/
    │       │                       │       ├── ForegroundServiceAudioRecorder.kt
    │       │                       │       ├── RecordingForegroundServiceNotification.kt
    │       │                       │       └── RecordingRepository.kt
    │       │                       └── testsupport/
    │       │                           └── StubAudioRecorder.kt
    │       └── test/
    │           ├── java/
    │           │   └── org/
    │           │       └── odk/
    │           │           └── collect/
    │           │               └── audiorecorder/
    │           │                   ├── mediarecorder/
    │           │                   │   └── AMRRecordingResourceTest.kt
    │           │                   ├── recorder/
    │           │                   │   └── RecordingResourceRecorderTest.kt
    │           │                   ├── recording/
    │           │                   │   ├── AudioRecorderTest.kt
    │           │                   │   └── internal/
    │           │                   │       ├── AudioRecorderServiceTest.kt
    │           │                   │       ├── ForegroundServiceAudioRecorderTest.kt
    │           │                   │       └── RecordingForegroundServiceNotificationTest.kt
    │           │                   ├── support/
    │           │                   │   └── FakeRecorder.kt
    │           │                   └── testsupport/
    │           │                       ├── RobolectricApplication.kt
    │           │                       └── StubAudioRecorderTest.kt
    │           └── resources/
    │               └── robolectric.properties
    ├── collect_app/
    │   ├── google-services.json
    │   ├── proguard-rules.txt
    │   └── src/
    │       ├── androidTest/
    │       │   ├── assets/
    │       │   │   ├── database/
    │       │   │   │   ├── forms_v4.db
    │       │   │   │   ├── forms_v4_with_columns_from_v7.db
    │       │   │   │   ├── forms_v7.db
    │       │   │   │   ├── forms_v7000_added_fakeColumn.db
    │       │   │   │   ├── forms_v7000_removed_jrVersion.db
    │       │   │   │   ├── instances_v3.db
    │       │   │   │   ├── instances_v4_removed_jrVersion.db
    │       │   │   │   ├── instances_v5.db
    │       │   │   │   ├── instances_v7000_added_fakeColumn.db
    │       │   │   │   └── instances_v7000_removed_jrVersion.db
    │       │   │   └── instances/
    │       │   │       ├── One Question_2021-06-22_15-55-50.xml
    │       │   │       └── one-question-google_2023-08-08_14-51-00.xml
    │       │   └── java/
    │       │       └── org/
    │       │           └── odk/
    │       │               └── collect/
    │       │                   └── android/
    │       │                       ├── benchmark/
    │       │                       │   ├── EntitiesBenchmarkTest.kt
    │       │                       │   ├── SearchBenchmarkTest.kt
    │       │                       │   └── support/
    │       │                       │       └── Benchmarker.kt
    │       │                       ├── feature/
    │       │                       │   ├── entitymanagement/
    │       │                       │   │   └── ViewEntitiesTest.kt
    │       │                       │   ├── external/
    │       │                       │   │   ├── AndroidShortcutsTest.kt
    │       │                       │   │   ├── FormDownloadActionTest.kt
    │       │                       │   │   ├── FormEditActionTest.kt
    │       │                       │   │   ├── FormPickActionTest.kt
    │       │                       │   │   ├── InstanceEditActionTest.kt
    │       │                       │   │   ├── InstancePickActionTest.kt
    │       │                       │   │   └── InstanceUploadActionTest.kt
    │       │                       │   ├── formentry/
    │       │                       │   │   ├── AddRepeatTest.kt
    │       │                       │   │   ├── AudioRecordingTest.java
    │       │                       │   │   ├── BackgroundAudioRecordingTest.java
    │       │                       │   │   ├── CascadingSelectTest.kt
    │       │                       │   │   ├── CatchFormDesignExceptionsTest.kt
    │       │                       │   │   ├── ContextMenuTest.java
    │       │                       │   │   ├── DeletingRepeatGroupsTest.java
    │       │                       │   │   ├── EncryptedFormTest.java
    │       │                       │   │   ├── EntityFormTest.kt
    │       │                       │   │   ├── ExternalAudioRecordingTest.java
    │       │                       │   │   ├── ExternalSecondaryInstanceTest.java
    │       │                       │   │   ├── ExternalSelectsTest.kt
    │       │                       │   │   ├── FieldListUpdateTest.kt
    │       │                       │   │   ├── FillBlankFormWithRepeatGroupTest.kt
    │       │                       │   │   ├── FormEndTest.kt
    │       │                       │   │   ├── FormHierarchyTest.java
    │       │                       │   │   ├── FormLanguageTest.java
    │       │                       │   │   ├── FormMediaTest.kt
    │       │                       │   │   ├── FormMetadataTest.kt
    │       │                       │   │   ├── FormNavigationTest.kt
    │       │                       │   │   ├── FormSavedSnackbarTest.kt
    │       │                       │   │   ├── FormStylingTest.kt
    │       │                       │   │   ├── GuidanceTest.kt
    │       │                       │   │   ├── ImageLoadingTest.kt
    │       │                       │   │   ├── IntentGroupTest.java
    │       │                       │   │   ├── InvalidFormTest.kt
    │       │                       │   │   ├── LikertTest.java
    │       │                       │   │   ├── QuickSaveTest.java
    │       │                       │   │   ├── QuittingFormTest.java
    │       │                       │   │   ├── RankingWidgetWithCSVTest.java
    │       │                       │   │   ├── RequiredQuestionTest.kt
    │       │                       │   │   ├── SaveIncompleteTest.kt
    │       │                       │   │   ├── SavePointTest.kt
    │       │                       │   │   ├── SearchAppearancesTest.kt
    │       │                       │   │   ├── audit/
    │       │                       │   │   │   ├── AuditTest.kt
    │       │                       │   │   │   ├── IdentifyUserTest.kt
    │       │                       │   │   │   └── TrackChangesReasonTest.kt
    │       │                       │   │   ├── backgroundlocation/
    │       │                       │   │   │   ├── LocationTrackingAuditTest.java
    │       │                       │   │   │   └── SetGeopointActionTest.java
    │       │                       │   │   └── dynamicpreload/
    │       │                       │   │       ├── DynamicPreLoadedDataPullTest.kt
    │       │                       │   │       └── DynamicPreLoadedDataSelects.java
    │       │                       │   ├── formmanagement/
    │       │                       │   │   ├── BulkFinalizationTest.kt
    │       │                       │   │   ├── DeleteBlankFormTest.java
    │       │                       │   │   ├── FormUpdateTest.kt
    │       │                       │   │   ├── FormsAdbTest.java
    │       │                       │   │   ├── GetBlankFormsTest.java
    │       │                       │   │   ├── HideOldVersionsTest.java
    │       │                       │   │   ├── ManualUpdatesTest.java
    │       │                       │   │   ├── MatchExactlyTest.kt
    │       │                       │   │   └── PreviouslyDownloadedOnlyTest.kt
    │       │                       │   ├── instancemanagement/
    │       │                       │   │   ├── AutoSendTest.kt
    │       │                       │   │   ├── DeleteSavedFormTest.kt
    │       │                       │   │   ├── EditSavedFormTest.java
    │       │                       │   │   ├── InstancesAdbTest.kt
    │       │                       │   │   ├── PartialSubmissionTest.kt
    │       │                       │   │   └── SendFinalizedFormTest.kt
    │       │                       │   ├── maps/
    │       │                       │   │   └── FormMapTest.kt
    │       │                       │   ├── projects/
    │       │                       │   │   ├── AddNewProjectTest.kt
    │       │                       │   │   ├── DeleteProjectTest.kt
    │       │                       │   │   ├── GoogleDriveDeprecationTest.kt
    │       │                       │   │   ├── LaunchScreenTest.kt
    │       │                       │   │   ├── ProjectsAdbTest.kt
    │       │                       │   │   ├── SwitchProjectTest.kt
    │       │                       │   │   └── UpdateProjectTest.kt
    │       │                       │   ├── settings/
    │       │                       │   │   ├── ConfigureWithQRCodeTest.java
    │       │                       │   │   ├── FormEntrySettingsTest.kt
    │       │                       │   │   ├── FormManagementSettingsTest.kt
    │       │                       │   │   ├── FormMetadataSettingsTest.kt
    │       │                       │   │   ├── MovingBackwardsTest.kt
    │       │                       │   │   ├── ResetProjectTest.kt
    │       │                       │   │   ├── ServerSettingsTest.java
    │       │                       │   │   └── SettingLanguageTest.kt
    │       │                       │   └── smoke/
    │       │                       │       ├── AllWidgetsFormTest.kt
    │       │                       │       ├── BadServerTest.java
    │       │                       │       └── GetAndSubmitFormTest.java
    │       │                       ├── instrumented/
    │       │                       │   ├── forms/
    │       │                       │   │   └── FormUtilsTest.java
    │       │                       │   ├── tasks/
    │       │                       │   │   ├── DownloadFormListTaskTest.java
    │       │                       │   │   └── FormLoaderTaskTest.java
    │       │                       │   └── utilities/
    │       │                       │       ├── CustomSQLiteQueryExecutionTest.java
    │       │                       │       └── DateTimeUtilsTest.java
    │       │                       └── support/
    │       │                           ├── ActivityHelpers.java
    │       │                           ├── CollectHelpers.kt
    │       │                           ├── ContentProviderUtils.kt
    │       │                           ├── CountingTaskExecutorIdlingResource.java
    │       │                           ├── DummyActivityLauncher.kt
    │       │                           ├── FakeClickableMapFragment.kt
    │       │                           ├── FakeLocationClient.java
    │       │                           ├── FakeNetworkStateProvider.kt
    │       │                           ├── SchedulerIdlingResource.java
    │       │                           ├── StorageUtils.kt
    │       │                           ├── StubBarcodeViewDecoder.kt
    │       │                           ├── StubOpenRosaServer.java
    │       │                           ├── TestDependencies.java
    │       │                           ├── TestScheduler.kt
    │       │                           ├── TranslatedStringBuilder.kt
    │       │                           ├── actions/
    │       │                           │   └── RotateAction.java
    │       │                           ├── matchers/
    │       │                           │   ├── CustomMatchers.kt
    │       │                           │   └── ToastMatcher.java
    │       │                           ├── pages/
    │       │                           │   ├── AboutPage.java
    │       │                           │   ├── AccessControlPage.kt
    │       │                           │   ├── AddNewRepeatDialog.kt
    │       │                           │   ├── AppClosedPage.kt
    │       │                           │   ├── BlankFormSearchPage.java
    │       │                           │   ├── BulkFinalizationConfirmationDialogPage.kt
    │       │                           │   ├── CancelRecordingDialog.java
    │       │                           │   ├── ChangesReasonPromptPage.java
    │       │                           │   ├── DeleteSavedFormPage.java
    │       │                           │   ├── DeleteSelectedDialog.java
    │       │                           │   ├── EditSavedFormPage.java
    │       │                           │   ├── EndOfFormPage.java
    │       │                           │   ├── EntitiesPage.kt
    │       │                           │   ├── EntityListPage.kt
    │       │                           │   ├── ErrorDialog.kt
    │       │                           │   ├── ErrorPage.kt
    │       │                           │   ├── ExperimentalPage.java
    │       │                           │   ├── FillBlankFormPage.java
    │       │                           │   ├── FirstLaunchPage.kt
    │       │                           │   ├── FormEndPage.java
    │       │                           │   ├── FormEntryPage.java
    │       │                           │   ├── FormHierarchyPage.java
    │       │                           │   ├── FormManagementPage.java
    │       │                           │   ├── FormMapPage.java
    │       │                           │   ├── FormMetadataPage.java
    │       │                           │   ├── FormsDownloadResultPage.kt
    │       │                           │   ├── GetBlankFormPage.java
    │       │                           │   ├── IdentifyUserPromptPage.java
    │       │                           │   ├── ListPreferenceDialog.java
    │       │                           │   ├── MainMenuPage.java
    │       │                           │   ├── ManualProjectCreatorDialogPage.kt
    │       │                           │   ├── MapsSettingsPage.java
    │       │                           │   ├── NotificationDrawer.kt
    │       │                           │   ├── OkDialog.java
    │       │                           │   ├── OpenSourceLicensesPage.java
    │       │                           │   ├── Page.kt
    │       │                           │   ├── PreferencePage.java
    │       │                           │   ├── ProjectDisplayPage.kt
    │       │                           │   ├── ProjectManagementPage.kt
    │       │                           │   ├── ProjectSettingsDialogPage.kt
    │       │                           │   ├── ProjectSettingsPage.java
    │       │                           │   ├── QRCodePage.java
    │       │                           │   ├── QrCodeProjectCreatorDialogPage.kt
    │       │                           │   ├── ResetApplicationDialog.java
    │       │                           │   ├── SaveOrDiscardFormDialog.kt
    │       │                           │   ├── SaveOrIgnoreDrawingDialog.kt
    │       │                           │   ├── SavepointRecoveryDialogPage.kt
    │       │                           │   ├── SelectMinimalDialogPage.kt
    │       │                           │   ├── SendFinalizedFormPage.java
    │       │                           │   ├── ServerAuthDialog.java
    │       │                           │   ├── ServerSettingsPage.java
    │       │                           │   ├── ShortcutsPage.java
    │       │                           │   ├── UserAndDeviceIdentitySettingsPage.java
    │       │                           │   ├── UserInterfacePage.java
    │       │                           │   ├── ViewFormPage.kt
    │       │                           │   └── ViewSentFormPage.java
    │       │                           └── rules/
    │       │                               ├── BlankFormTestRule.kt
    │       │                               ├── CollectTestRule.kt
    │       │                               ├── FormEntryActivityTestRule.kt
    │       │                               ├── IdlingResourceRule.kt
    │       │                               ├── NotificationDrawerRule.kt
    │       │                               ├── PrepDeviceForTestsRule.kt
    │       │                               ├── RecentAppsRule.kt
    │       │                               ├── ResetRotationRule.kt
    │       │                               ├── ResetStateRule.kt
    │       │                               ├── RetryOnDeviceErrorRule.kt
    │       │                               ├── RunnableRule.kt
    │       │                               └── TestRuleChain.kt
    │       ├── debug/
    │       │   ├── AndroidManifest.xml
    │       │   └── google-services.json
    │       ├── main/
    │       │   ├── AndroidManifest.xml
    │       │   ├── assets/
    │       │   │   └── svg_map_helper.js
    │       │   ├── java/
    │       │   │   └── org/
    │       │   │       └── odk/
    │       │   │           └── collect/
    │       │   │               ├── android/
    │       │   │               │   ├── activities/
    │       │   │               │   │   ├── AboutActivity.kt
    │       │   │               │   │   ├── ActivityUtils.java
    │       │   │               │   │   ├── AppListActivity.java
    │       │   │               │   │   ├── BearingActivity.java
    │       │   │               │   │   ├── CrashHandlerActivity.kt
    │       │   │               │   │   ├── DeleteFormsActivity.kt
    │       │   │               │   │   ├── FirstLaunchActivity.kt
    │       │   │               │   │   ├── FormDownloadListActivity.java
    │       │   │               │   │   ├── FormEntryViewModelFactory.kt
    │       │   │               │   │   ├── FormFillingActivity.java
    │       │   │               │   │   ├── FormListActivity.java
    │       │   │               │   │   ├── FormMapActivity.kt
    │       │   │               │   │   ├── InstanceChooserList.java
    │       │   │               │   │   ├── ScannerWithFlashlightActivity.java
    │       │   │               │   │   └── viewmodels/
    │       │   │               │   │       └── FormDownloadListViewModel.java
    │       │   │               │   ├── adapters/
    │       │   │               │   │   ├── AboutListAdapter.kt
    │       │   │               │   │   ├── AbstractSelectListAdapter.java
    │       │   │               │   │   ├── FormDownloadListAdapter.java
    │       │   │               │   │   ├── InstanceListCursorAdapter.java
    │       │   │               │   │   ├── InstanceUploaderAdapter.java
    │       │   │               │   │   ├── RankingListAdapter.java
    │       │   │               │   │   ├── SelectMultipleListAdapter.java
    │       │   │               │   │   └── SelectOneListAdapter.java
    │       │   │               │   ├── analytics/
    │       │   │               │   │   ├── AnalyticsEvents.kt
    │       │   │               │   │   └── AnalyticsUtils.kt
    │       │   │               │   ├── application/
    │       │   │               │   │   ├── Collect.java
    │       │   │               │   │   ├── CollectSettingsChangeHandler.kt
    │       │   │               │   │   ├── FeatureFlags.kt
    │       │   │               │   │   ├── MapboxClassInstanceCreator.kt
    │       │   │               │   │   └── initialization/
    │       │   │               │   │       ├── AnalyticsInitializer.kt
    │       │   │               │   │       ├── ApplicationInitializer.kt
    │       │   │               │   │       ├── CachedFormsCleaner.kt
    │       │   │               │   │       ├── CrashReportingTree.kt
    │       │   │               │   │       ├── ExistingProjectMigrator.kt
    │       │   │               │   │       ├── ExistingSettingsMigrator.kt
    │       │   │               │   │       ├── GoogleDriveProjectsDeleter.kt
    │       │   │               │   │       ├── JavaRosaInitializer.kt
    │       │   │               │   │       ├── MapsInitializer.kt
    │       │   │               │   │       ├── SavepointsImporter.kt
    │       │   │               │   │       ├── ScheduledWorkUpgrade.kt
    │       │   │               │   │       ├── SystemThemeMismatchFixInitializer.kt
    │       │   │               │   │       ├── UserPropertiesInitializer.kt
    │       │   │               │   │       └── upgrade/
    │       │   │               │   │           ├── BeforeProjectsInstallDetector.kt
    │       │   │               │   │           └── UpgradeInitializer.kt
    │       │   │               │   ├── audio/
    │       │   │               │   │   ├── AMRAppender.java
    │       │   │               │   │   ├── AudioButton.java
    │       │   │               │   │   ├── AudioControllerView.java
    │       │   │               │   │   ├── AudioFileAppender.java
    │       │   │               │   │   ├── AudioHelper.java
    │       │   │               │   │   ├── AudioRecordingControllerFragment.java
    │       │   │               │   │   ├── AudioRecordingErrorDialogFragment.java
    │       │   │               │   │   ├── BackgroundAudioHelpDialogFragment.java
    │       │   │               │   │   ├── M4AAppender.java
    │       │   │               │   │   ├── VolumeBar.java
    │       │   │               │   │   └── Waveform.java
    │       │   │               │   ├── backgroundwork/
    │       │   │               │   │   ├── AutoUpdateTaskSpec.kt
    │       │   │               │   │   ├── BackgroundWorkUtils.java
    │       │   │               │   │   ├── FormUpdateAndInstanceSubmitScheduler.java
    │       │   │               │   │   ├── FormUpdateScheduler.java
    │       │   │               │   │   ├── InstanceSubmitScheduler.java
    │       │   │               │   │   ├── SendFormsTaskSpec.kt
    │       │   │               │   │   ├── SyncFormsTaskSpec.kt
    │       │   │               │   │   └── TaskData.kt
    │       │   │               │   ├── configure/
    │       │   │               │   │   └── qr/
    │       │   │               │   │       ├── AppConfigurationGenerator.kt
    │       │   │               │   │       ├── CachingQRCodeGenerator.kt
    │       │   │               │   │       ├── QRCodeActivityResultDelegate.kt
    │       │   │               │   │       ├── QRCodeMenuProvider.kt
    │       │   │               │   │       ├── QRCodeScannerFragment.kt
    │       │   │               │   │       ├── QRCodeTabsActivity.kt
    │       │   │               │   │       ├── QRCodeViewModel.kt
    │       │   │               │   │       └── ShowQRCodeFragment.kt
    │       │   │               │   ├── dao/
    │       │   │               │   │   ├── CursorLoaderFactory.java
    │       │   │               │   │   └── helpers/
    │       │   │               │   │       └── InstancesDaoHelper.java
    │       │   │               │   ├── database/
    │       │   │               │   │   ├── DatabaseConstants.java
    │       │   │               │   │   ├── DatabaseObjectMapper.kt
    │       │   │               │   │   ├── entities/
    │       │   │               │   │   │   └── DatabaseEntitiesRepository.kt
    │       │   │               │   │   ├── forms/
    │       │   │               │   │   │   ├── DatabaseFormColumns.kt
    │       │   │               │   │   │   ├── DatabaseFormsRepository.java
    │       │   │               │   │   │   └── FormDatabaseMigrator.java
    │       │   │               │   │   ├── instances/
    │       │   │               │   │   │   ├── DatabaseInstanceColumns.kt
    │       │   │               │   │   │   ├── DatabaseInstancesRepository.java
    │       │   │               │   │   │   └── InstanceDatabaseMigrator.java
    │       │   │               │   │   ├── itemsets/
    │       │   │               │   │   │   └── DatabaseFastExternalItemsetsRepository.kt
    │       │   │               │   │   └── savepoints/
    │       │   │               │   │       ├── DatabaseSavepointsColumns.kt
    │       │   │               │   │       ├── DatabaseSavepointsRepository.kt
    │       │   │               │   │       └── SavepointsDatabaseMigrator.kt
    │       │   │               │   ├── dynamicpreload/
    │       │   │               │   │   ├── DynamicPreloadXFormParserFactory.kt
    │       │   │               │   │   ├── ExternalAnswerResolver.java
    │       │   │               │   │   ├── ExternalAppsUtils.java
    │       │   │               │   │   ├── ExternalDataHandler.java
    │       │   │               │   │   ├── ExternalDataManager.java
    │       │   │               │   │   ├── ExternalDataManagerImpl.java
    │       │   │               │   │   ├── ExternalDataReader.java
    │       │   │               │   │   ├── ExternalDataReaderImpl.java
    │       │   │               │   │   ├── ExternalDataUseCases.kt
    │       │   │               │   │   ├── ExternalDataUtil.java
    │       │   │               │   │   ├── ExternalSQLiteOpenHelper.java
    │       │   │               │   │   ├── ExternalSelectChoice.java
    │       │   │               │   │   └── handler/
    │       │   │               │   │       ├── ExternalDataHandlerBase.java
    │       │   │               │   │       ├── ExternalDataHandlerPull.java
    │       │   │               │   │       ├── ExternalDataHandlerSearch.java
    │       │   │               │   │       └── ExternalDataSearchType.java
    │       │   │               │   ├── entities/
    │       │   │               │   │   └── EntitiesRepositoryProvider.kt
    │       │   │               │   ├── exception/
    │       │   │               │   │   ├── EncryptionException.java
    │       │   │               │   │   ├── ExternalDataException.java
    │       │   │               │   │   ├── ExternalParamsException.java
    │       │   │               │   │   └── JavaRosaException.java
    │       │   │               │   ├── external/
    │       │   │               │   │   ├── AndroidShortcutsActivity.kt
    │       │   │               │   │   ├── FormUriActivity.kt
    │       │   │               │   │   ├── FormsContract.java
    │       │   │               │   │   ├── FormsProvider.java
    │       │   │               │   │   ├── InstanceProvider.java
    │       │   │               │   │   └── InstancesContract.java
    │       │   │               │   ├── fastexternalitemset/
    │       │   │               │   │   ├── ItemsetDao.java
    │       │   │               │   │   ├── ItemsetDbAdapter.java
    │       │   │               │   │   └── XPathParseTool.java
    │       │   │               │   ├── formentry/
    │       │   │               │   │   ├── BackgroundAudioPermissionDialogFragment.java
    │       │   │               │   │   ├── BackgroundAudioViewModel.java
    │       │   │               │   │   ├── FormAnimation.kt
    │       │   │               │   │   ├── FormDefCache.kt
    │       │   │               │   │   ├── FormEndView.kt
    │       │   │               │   │   ├── FormEndViewModel.kt
    │       │   │               │   │   ├── FormEntryMenuProvider.kt
    │       │   │               │   │   ├── FormEntryUseCases.kt
    │       │   │               │   │   ├── FormEntryViewModel.java
    │       │   │               │   │   ├── FormError.kt
    │       │   │               │   │   ├── FormIndexAnimationHandler.kt
    │       │   │               │   │   ├── FormLoadingDialogFragment.java
    │       │   │               │   │   ├── FormSessionRepository.kt
    │       │   │               │   │   ├── ODKView.java
    │       │   │               │   │   ├── PrinterWidgetViewModel.kt
    │       │   │               │   │   ├── QuitFormDialog.kt
    │       │   │               │   │   ├── RecordingHandler.java
    │       │   │               │   │   ├── RecordingWarningDialogFragment.java
    │       │   │               │   │   ├── RefreshFormListDialogFragment.java
    │       │   │               │   │   ├── SwipeHandler.kt
    │       │   │               │   │   ├── audit/
    │       │   │               │   │   │   ├── AsyncTaskAuditEventWriter.java
    │       │   │               │   │   │   ├── AuditConfig.java
    │       │   │               │   │   │   ├── AuditEvent.java
    │       │   │               │   │   │   ├── AuditEventCSVLine.java
    │       │   │               │   │   │   ├── AuditEventLogger.java
    │       │   │               │   │   │   ├── AuditEventSaveTask.java
    │       │   │               │   │   │   ├── AuditUtils.kt
    │       │   │               │   │   │   ├── ChangesReasonPromptDialogFragment.java
    │       │   │               │   │   │   ├── IdentifyUserPromptDialogFragment.java
    │       │   │               │   │   │   └── IdentityPromptViewModel.java
    │       │   │               │   │   ├── backgroundlocation/
    │       │   │               │   │   │   ├── BackgroundLocationHelper.java
    │       │   │               │   │   │   ├── BackgroundLocationManager.java
    │       │   │               │   │   │   └── BackgroundLocationViewModel.java
    │       │   │               │   │   ├── loading/
    │       │   │               │   │   │   └── FormInstanceFileCreator.java
    │       │   │               │   │   ├── media/
    │       │   │               │   │   │   ├── AudioHelperFactory.java
    │       │   │               │   │   │   ├── FormMediaUtils.java
    │       │   │               │   │   │   ├── PromptAutoplayer.java
    │       │   │               │   │   │   └── ScreenContextAudioHelperFactory.java
    │       │   │               │   │   ├── questions/
    │       │   │               │   │   │   ├── AnswersProvider.java
    │       │   │               │   │   │   ├── AudioVideoImageTextLabel.java
    │       │   │               │   │   │   ├── NoButtonsItem.java
    │       │   │               │   │   │   ├── QuestionDetails.java
    │       │   │               │   │   │   └── SelectChoiceUtils.kt
    │       │   │               │   │   ├── repeats/
    │       │   │               │   │   │   ├── AddRepeatDialog.kt
    │       │   │               │   │   │   └── DeleteRepeatDialogFragment.java
    │       │   │               │   │   └── saving/
    │       │   │               │   │       ├── DiskFormSaver.java
    │       │   │               │   │       ├── FormSaveViewModel.java
    │       │   │               │   │       ├── FormSaver.java
    │       │   │               │   │       ├── SaveAnswerFileErrorDialogFragment.java
    │       │   │               │   │       ├── SaveAnswerFileProgressDialogFragment.java
    │       │   │               │   │       └── SaveFormProgressDialogFragment.java
    │       │   │               │   ├── formhierarchy/
    │       │   │               │   │   ├── FormHierarchyFragment.java
    │       │   │               │   │   ├── FormHierarchyFragmentHostActivity.kt
    │       │   │               │   │   ├── HierarchyItem.kt
    │       │   │               │   │   ├── HierarchyListAdapter.kt
    │       │   │               │   │   ├── HierarchyListItemView.kt
    │       │   │               │   │   └── QuestionAnswerProcessor.kt
    │       │   │               │   ├── formlists/
    │       │   │               │   │   ├── blankformlist/
    │       │   │               │   │   │   ├── BlankFormListActivity.kt
    │       │   │               │   │   │   ├── BlankFormListAdapter.kt
    │       │   │               │   │   │   ├── BlankFormListItem.kt
    │       │   │               │   │   │   ├── BlankFormListItemView.kt
    │       │   │               │   │   │   ├── BlankFormListMenuProvider.kt
    │       │   │               │   │   │   ├── BlankFormListViewModel.kt
    │       │   │               │   │   │   └── DeleteBlankFormFragment.kt
    │       │   │               │   │   ├── savedformlist/
    │       │   │               │   │   │   ├── DeleteSavedFormFragment.kt
    │       │   │               │   │   │   ├── SavedFormListItemView.kt
    │       │   │               │   │   │   ├── SavedFormListListMenuProvider.kt
    │       │   │               │   │   │   ├── SavedFormListViewModel.kt
    │       │   │               │   │   │   └── SelectableSavedFormListItemViewHolder.kt
    │       │   │               │   │   └── sorting/
    │       │   │               │   │       ├── FormListSortingAdapter.kt
    │       │   │               │   │       ├── FormListSortingBottomSheetDialog.kt
    │       │   │               │   │       └── FormListSortingOption.kt
    │       │   │               │   ├── formmanagement/
    │       │   │               │   │   ├── CollectFormEntryControllerFactory.kt
    │       │   │               │   │   ├── FormFillingIntentFactory.kt
    │       │   │               │   │   ├── FormSourceExceptionMapper.kt
    │       │   │               │   │   ├── FormSourceProvider.kt
    │       │   │               │   │   ├── FormsDataService.kt
    │       │   │               │   │   ├── LocalFormUseCases.kt
    │       │   │               │   │   ├── ServerFormDetails.kt
    │       │   │               │   │   ├── ServerFormUseCases.kt
    │       │   │               │   │   ├── ServerFormsDetailsFetcher.kt
    │       │   │               │   │   ├── download/
    │       │   │               │   │   │   ├── FormDownloadException.kt
    │       │   │               │   │   │   ├── FormDownloadExceptionMapper.kt
    │       │   │               │   │   │   ├── FormDownloader.kt
    │       │   │               │   │   │   └── ServerFormDownloader.java
    │       │   │               │   │   ├── drafts/
    │       │   │               │   │   │   ├── BulkFinalizationViewModel.kt
    │       │   │               │   │   │   └── DraftsMenuProvider.kt
    │       │   │               │   │   ├── formmap/
    │       │   │               │   │   │   └── FormMapViewModel.kt
    │       │   │               │   │   ├── matchexactly/
    │       │   │               │   │   │   └── ServerFormsSynchronizer.java
    │       │   │               │   │   └── metadata/
    │       │   │               │   │       ├── FormMetadata.kt
    │       │   │               │   │       └── FormMetadataParser.kt
    │       │   │               │   ├── fragments/
    │       │   │               │   │   ├── BarCodeScannerFragment.java
    │       │   │               │   │   ├── BarcodeWidgetScannerFragment.kt
    │       │   │               │   │   ├── MediaLoadingFragment.java
    │       │   │               │   │   ├── dialogs/
    │       │   │               │   │   │   ├── FormsDownloadResultDialog.kt
    │       │   │               │   │   │   ├── LocationProvidersDisabledDialog.java
    │       │   │               │   │   │   ├── MovingBackwardsDialog.java
    │       │   │               │   │   │   ├── NumberPickerDialog.kt
    │       │   │               │   │   │   ├── RankingWidgetDialog.java
    │       │   │               │   │   │   ├── ResetSettingsResultDialog.java
    │       │   │               │   │   │   ├── SelectMinimalDialog.java
    │       │   │               │   │   │   ├── SelectMultiMinimalDialog.java
    │       │   │               │   │   │   ├── SelectOneMinimalDialog.java
    │       │   │               │   │   │   └── SimpleDialog.java
    │       │   │               │   │   └── viewmodels/
    │       │   │               │   │       ├── RankingViewModel.java
    │       │   │               │   │       └── SelectMinimalViewModel.java
    │       │   │               │   ├── geo/
    │       │   │               │   │   ├── MapConfiguratorProvider.java
    │       │   │               │   │   └── MapFragmentFactoryImpl.kt
    │       │   │               │   ├── injection/
    │       │   │               │   │   ├── DaggerUtils.java
    │       │   │               │   │   └── config/
    │       │   │               │   │       ├── AppDependencyComponent.java
    │       │   │               │   │       ├── AppDependencyModule.java
    │       │   │               │   │       ├── CollectDrawDependencyModule.kt
    │       │   │               │   │       ├── CollectGeoDependencyModule.kt
    │       │   │               │   │       ├── CollectGoogleMapsDependencyModule.kt
    │       │   │               │   │       ├── CollectOsmDroidDependencyModule.kt
    │       │   │               │   │       ├── CollectProjectsDependencyModule.kt
    │       │   │               │   │       ├── CollectSelfieCameraDependencyModule.kt
    │       │   │               │   │       └── ProjectDependencyModuleFactory.kt
    │       │   │               │   ├── instancemanagement/
    │       │   │               │   │   ├── FinalizeAllSnackbarPresenter.kt
    │       │   │               │   │   ├── InstanceDeleter.kt
    │       │   │               │   │   ├── InstanceDiskSynchronizer.java
    │       │   │               │   │   ├── InstanceExt.kt
    │       │   │               │   │   ├── InstanceListItemView.kt
    │       │   │               │   │   ├── InstanceSubmitter.kt
    │       │   │               │   │   ├── InstancesDataService.kt
    │       │   │               │   │   ├── autosend/
    │       │   │               │   │   │   ├── AutoSendSettingsProvider.kt
    │       │   │               │   │   │   ├── FormExt.kt
    │       │   │               │   │   │   └── InstanceAutoSendFetcher.kt
    │       │   │               │   │   └── send/
    │       │   │               │   │       ├── InstanceUploaderActivity.java
    │       │   │               │   │       ├── InstanceUploaderListActivity.java
    │       │   │               │   │       ├── ReadyToSendBanner.kt
    │       │   │               │   │       └── ReadyToSendViewModel.kt
    │       │   │               │   ├── itemsets/
    │       │   │               │   │   └── FastExternalItemsetsRepository.kt
    │       │   │               │   ├── javarosawrapper/
    │       │   │               │   │   ├── FormController.kt
    │       │   │               │   │   ├── FormDesignException.kt
    │       │   │               │   │   ├── FormIndexUtils.java
    │       │   │               │   │   ├── InstanceMetadata.java
    │       │   │               │   │   ├── JavaRosaFormController.java
    │       │   │               │   │   └── ValidationResult.kt
    │       │   │               │   ├── listeners/
    │       │   │               │   │   ├── AdvanceToNextListener.java
    │       │   │               │   │   ├── DeleteInstancesListener.java
    │       │   │               │   │   ├── DownloadFormsTaskListener.java
    │       │   │               │   │   ├── FormListDownloaderListener.java
    │       │   │               │   │   ├── FormLoaderListener.java
    │       │   │               │   │   ├── InstanceUploaderListener.java
    │       │   │               │   │   ├── Result.java
    │       │   │               │   │   ├── SelectItemClickListener.java
    │       │   │               │   │   ├── ThousandsSeparatorTextWatcher.java
    │       │   │               │   │   └── WidgetValueChangedListener.java
    │       │   │               │   ├── location/
    │       │   │               │   │   └── client/
    │       │   │               │   │       └── MaxAccuracyWithinTimeoutLocationClientWrapper.java
    │       │   │               │   ├── logic/
    │       │   │               │   │   ├── FileReference.java
    │       │   │               │   │   ├── FileReferenceFactory.java
    │       │   │               │   │   ├── ImmutableDisplayableQuestion.java
    │       │   │               │   │   └── actions/
    │       │   │               │   │       └── setgeopoint/
    │       │   │               │   │           ├── CollectSetGeopointAction.java
    │       │   │               │   │           └── CollectSetGeopointActionHandler.java
    │       │   │               │   ├── mainmenu/
    │       │   │               │   │   ├── CurrentProjectViewModel.kt
    │       │   │               │   │   ├── MainMenuActivity.kt
    │       │   │               │   │   ├── MainMenuButton.kt
    │       │   │               │   │   ├── MainMenuFragment.kt
    │       │   │               │   │   ├── MainMenuViewModel.kt
    │       │   │               │   │   ├── MainMenuViewModelFactory.kt
    │       │   │               │   │   ├── PermissionsDialogFragment.kt
    │       │   │               │   │   ├── RequestPermissionsViewModel.kt
    │       │   │               │   │   └── StartNewFormButton.kt
    │       │   │               │   ├── notifications/
    │       │   │               │   │   ├── NotificationManagerNotifier.kt
    │       │   │               │   │   ├── NotificationUtils.kt
    │       │   │               │   │   ├── Notifier.kt
    │       │   │               │   │   └── builders/
    │       │   │               │   │       ├── FormUpdatesAvailableNotificationBuilder.kt
    │       │   │               │   │       ├── FormUpdatesDownloadedNotificationBuilder.kt
    │       │   │               │   │       ├── FormsSubmissionNotificationBuilder.kt
    │       │   │               │   │       └── FormsSyncFailedNotificationBuilder.kt
    │       │   │               │   ├── openrosa/
    │       │   │               │   │   ├── CaseInsensitiveEmptyHeaders.java
    │       │   │               │   │   ├── CaseInsensitiveHeaders.java
    │       │   │               │   │   ├── CollectThenSystemContentTypeMapper.java
    │       │   │               │   │   ├── HttpCredentials.java
    │       │   │               │   │   ├── HttpCredentialsInterface.java
    │       │   │               │   │   ├── HttpGetResult.java
    │       │   │               │   │   ├── HttpHeadResult.java
    │       │   │               │   │   ├── HttpPostResult.java
    │       │   │               │   │   ├── OpenRosaConstants.kt
    │       │   │               │   │   ├── OpenRosaFormSource.java
    │       │   │               │   │   ├── OpenRosaHttpInterface.java
    │       │   │               │   │   ├── OpenRosaResponseParser.java
    │       │   │               │   │   ├── OpenRosaResponseParserImpl.kt
    │       │   │               │   │   ├── OpenRosaServerClient.java
    │       │   │               │   │   ├── OpenRosaServerClientProvider.java
    │       │   │               │   │   ├── OpenRosaXmlFetcher.java
    │       │   │               │   │   └── okhttp/
    │       │   │               │   │       ├── OkHttpCaseInsensitiveHeaders.java
    │       │   │               │   │       ├── OkHttpConnection.java
    │       │   │               │   │       └── OkHttpOpenRosaServerClientProvider.java
    │       │   │               │   ├── preferences/
    │       │   │               │   │   ├── Defaults.kt
    │       │   │               │   │   ├── GuidanceHint.java
    │       │   │               │   │   ├── PreferenceVisibilityHandler.kt
    │       │   │               │   │   ├── ProjectPreferencesViewModel.kt
    │       │   │               │   │   ├── ServerPreferencesAdder.java
    │       │   │               │   │   ├── dialogs/
    │       │   │               │   │   │   ├── AdminPasswordDialogFragment.kt
    │       │   │               │   │   │   ├── ChangeAdminPasswordDialog.kt
    │       │   │               │   │   │   ├── ResetDialogPreference.java
    │       │   │               │   │   │   ├── ResetDialogPreferenceFragmentCompat.java
    │       │   │               │   │   │   ├── ResetProgressDialog.kt
    │       │   │               │   │   │   └── ServerAuthDialogFragment.java
    │       │   │               │   │   ├── filters/
    │       │   │               │   │   │   └── ControlCharacterFilter.java
    │       │   │               │   │   ├── screens/
    │       │   │               │   │   │   ├── AccessControlPreferencesFragment.kt
    │       │   │               │   │   │   ├── BaseAdminPreferencesFragment.java
    │       │   │               │   │   │   ├── BasePreferencesFragment.kt
    │       │   │               │   │   │   ├── BaseProjectPreferencesFragment.java
    │       │   │               │   │   │   ├── DevToolsPreferencesFragment.kt
    │       │   │               │   │   │   ├── ExperimentalPreferencesFragment.java
    │       │   │               │   │   │   ├── FormEntryAccessPreferencesFragment.kt
    │       │   │               │   │   │   ├── FormManagementPreferencesFragment.java
    │       │   │               │   │   │   ├── FormMetadataPreferencesFragment.java
    │       │   │               │   │   │   ├── IdentityPreferencesFragment.kt
    │       │   │               │   │   │   ├── MainMenuAccessPreferencesFragment.kt
    │       │   │               │   │   │   ├── MapsPreferencesFragment.kt
    │       │   │               │   │   │   ├── ProjectDisplayPreferencesFragment.kt
    │       │   │               │   │   │   ├── ProjectManagementPreferencesFragment.kt
    │       │   │               │   │   │   ├── ProjectPreferencesActivity.kt
    │       │   │               │   │   │   ├── ProjectPreferencesFragment.kt
    │       │   │               │   │   │   ├── ServerPreferencesFragment.java
    │       │   │               │   │   │   ├── UserInterfacePreferencesFragment.java
    │       │   │               │   │   │   └── UserSettingsAccessPreferencesFragment.java
    │       │   │               │   │   ├── source/
    │       │   │               │   │   │   ├── SettingsStore.kt
    │       │   │               │   │   │   ├── SharedPreferencesSettings.kt
    │       │   │               │   │   │   └── SharedPreferencesSettingsProvider.kt
    │       │   │               │   │   └── utilities/
    │       │   │               │   │       └── PreferencesUtils.java
    │       │   │               │   ├── projects/
    │       │   │               │   │   ├── DuplicateProjectConfirmationDialog.kt
    │       │   │               │   │   ├── ManualProjectCreatorDialog.kt
    │       │   │               │   │   ├── ProjectCreator.kt
    │       │   │               │   │   ├── ProjectDeleter.kt
    │       │   │               │   │   ├── ProjectDependencyModule.kt
    │       │   │               │   │   ├── ProjectIconView.kt
    │       │   │               │   │   ├── ProjectListItemView.kt
    │       │   │               │   │   ├── ProjectResetter.kt
    │       │   │               │   │   ├── ProjectSettingsDialog.kt
    │       │   │               │   │   ├── ProjectsDataService.kt
    │       │   │               │   │   ├── QrCodeProjectCreatorDialog.kt
    │       │   │               │   │   └── SettingsConnectionMatcher.kt
    │       │   │               │   ├── savepoints/
    │       │   │               │   │   ├── SavepointTask.kt
    │       │   │               │   │   └── SavepointUseCases.kt
    │       │   │               │   ├── state/
    │       │   │               │   │   └── DataKeys.kt
    │       │   │               │   ├── storage/
    │       │   │               │   │   ├── StoragePathProvider.kt
    │       │   │               │   │   ├── StoragePaths.kt
    │       │   │               │   │   └── StorageSubdirectory.java
    │       │   │               │   ├── tasks/
    │       │   │               │   │   ├── DownloadFormListTask.java
    │       │   │               │   │   ├── DownloadFormsTask.java
    │       │   │               │   │   ├── FormLoaderTask.java
    │       │   │               │   │   ├── InstanceUploaderTask.java
    │       │   │               │   │   ├── MediaLoadingTask.java
    │       │   │               │   │   ├── ProgressNotifier.java
    │       │   │               │   │   ├── SaveFormIndexTask.java
    │       │   │               │   │   ├── SaveFormToDisk.java
    │       │   │               │   │   └── SaveToDiskResult.java
    │       │   │               │   ├── upload/
    │       │   │               │   │   ├── FormUploadException.kt
    │       │   │               │   │   ├── InstanceServerUploader.java
    │       │   │               │   │   └── InstanceUploader.java
    │       │   │               │   ├── utilities/
    │       │   │               │   │   ├── ActionRegister.kt
    │       │   │               │   │   ├── AdminPasswordProvider.java
    │       │   │               │   │   ├── AndroidUserAgent.java
    │       │   │               │   │   ├── AnimationUtils.java
    │       │   │               │   │   ├── Appearances.kt
    │       │   │               │   │   ├── ApplicationConstants.java
    │       │   │               │   │   ├── ArrayUtils.java
    │       │   │               │   │   ├── AuthDialogUtility.java
    │       │   │               │   │   ├── CSVUtils.java
    │       │   │               │   │   ├── ChangeLockProvider.kt
    │       │   │               │   │   ├── CodeCaptureManagerFactory.kt
    │       │   │               │   │   ├── CollectStrictMode.kt
    │       │   │               │   │   ├── ContentUriHelper.kt
    │       │   │               │   │   ├── ContentUriProvider.java
    │       │   │               │   │   ├── ControllableLifecyleOwner.kt
    │       │   │               │   │   ├── DialogUtils.java
    │       │   │               │   │   ├── DocumentFetchResult.java
    │       │   │               │   │   ├── EncryptionUtils.java
    │       │   │               │   │   ├── ExternalAppIntentProvider.java
    │       │   │               │   │   ├── ExternalizableFormDefCache.java
    │       │   │               │   │   ├── FileProvider.java
    │       │   │               │   │   ├── FileUtils.java
    │       │   │               │   │   ├── FormEntryPromptUtils.java
    │       │   │               │   │   ├── FormNameUtils.java
    │       │   │               │   │   ├── FormUtils.java
    │       │   │               │   │   ├── FormsDownloadResultInterpreter.kt
    │       │   │               │   │   ├── FormsRepositoryProvider.kt
    │       │   │               │   │   ├── FormsUploadResultInterpreter.kt
    │       │   │               │   │   ├── HtmlUtils.java
    │       │   │               │   │   ├── ImageCompressionController.kt
    │       │   │               │   │   ├── InstanceAutoDeleteChecker.kt
    │       │   │               │   │   ├── InstanceUploaderUtils.java
    │       │   │               │   │   ├── InstancesRepositoryProvider.kt
    │       │   │               │   │   ├── LocaleHelper.kt
    │       │   │               │   │   ├── MediaUtils.kt
    │       │   │               │   │   ├── MyanmarDateUtils.java
    │       │   │               │   │   ├── QuestionMediaManager.java
    │       │   │               │   │   ├── RankingItemTouchHelperCallback.java
    │       │   │               │   │   ├── ReplaceCallback.java
    │       │   │               │   │   ├── ResponseMessageParser.java
    │       │   │               │   │   ├── SavepointsRepositoryProvider.kt
    │       │   │               │   │   ├── ScreenContext.java
    │       │   │               │   │   ├── SelectOneWidgetUtils.java
    │       │   │               │   │   ├── SoftKeyboardController.kt
    │       │   │               │   │   ├── ThemeUtils.java
    │       │   │               │   │   ├── UnderlyingValuesConcat.java
    │       │   │               │   │   ├── ViewUtils.kt
    │       │   │               │   │   ├── WebCredentialsUtils.java
    │       │   │               │   │   └── ZipUtils.java
    │       │   │               │   ├── version/
    │       │   │               │   │   ├── VersionDescriptionProvider.java
    │       │   │               │   │   └── VersionInformation.java
    │       │   │               │   ├── views/
    │       │   │               │   │   ├── BarcodeViewDecoder.kt
    │       │   │               │   │   ├── ChoicesRecyclerView.java
    │       │   │               │   │   ├── CustomNumberPicker.kt
    │       │   │               │   │   ├── CustomWebView.java
    │       │   │               │   │   ├── DayNightProgressDialog.java
    │       │   │               │   │   ├── DecoratedBarcodeView.kt
    │       │   │               │   │   ├── SlidingTabLayout.java
    │       │   │               │   │   ├── SlidingTabStrip.java
    │       │   │               │   │   ├── TrackingTouchSlider.kt
    │       │   │               │   │   ├── TransparentProgressScreen.kt
    │       │   │               │   │   ├── TwoItemMultipleChoiceView.java
    │       │   │               │   │   └── WidgetAnswerText.kt
    │       │   │               │   └── widgets/
    │       │   │               │       ├── AnnotateWidget.java
    │       │   │               │       ├── ArbitraryFileWidget.java
    │       │   │               │       ├── AudioWidget.java
    │       │   │               │       ├── BarcodeWidget.java
    │       │   │               │       ├── BaseArbitraryFileWidget.java
    │       │   │               │       ├── BaseImageWidget.java
    │       │   │               │       ├── BearingWidget.java
    │       │   │               │       ├── CounterWidget.kt
    │       │   │               │       ├── DecimalWidget.java
    │       │   │               │       ├── DrawWidget.java
    │       │   │               │       ├── ExArbitraryFileWidget.java
    │       │   │               │       ├── ExAudioWidget.java
    │       │   │               │       ├── ExDecimalWidget.java
    │       │   │               │       ├── ExImageWidget.java
    │       │   │               │       ├── ExIntegerWidget.java
    │       │   │               │       ├── ExStringWidget.java
    │       │   │               │       ├── ExVideoWidget.java
    │       │   │               │       ├── GeoPointMapWidget.java
    │       │   │               │       ├── GeoPointWidget.java
    │       │   │               │       ├── GeoShapeWidget.java
    │       │   │               │       ├── GeoTraceWidget.java
    │       │   │               │       ├── ImageWidget.java
    │       │   │               │       ├── IntegerWidget.java
    │       │   │               │       ├── OSMWidget.java
    │       │   │               │       ├── PrinterWidget.kt
    │       │   │               │       ├── QuestionWidget.java
    │       │   │               │       ├── RatingWidget.java
    │       │   │               │       ├── SignatureWidget.java
    │       │   │               │       ├── StringNumberWidget.java
    │       │   │               │       ├── StringWidget.java
    │       │   │               │       ├── TriggerWidget.java
    │       │   │               │       ├── UrlWidget.java
    │       │   │               │       ├── VideoWidget.java
    │       │   │               │       ├── WidgetFactory.java
    │       │   │               │       ├── datetime/
    │       │   │               │       │   ├── DatePickerDetails.java
    │       │   │               │       │   ├── DateTimeUtils.java
    │       │   │               │       │   ├── DateTimeWidget.java
    │       │   │               │       │   ├── DateWidget.java
    │       │   │               │       │   ├── TimeWidget.java
    │       │   │               │       │   └── pickers/
    │       │   │               │       │       ├── BikramSambatDatePickerDialog.java
    │       │   │               │       │       ├── BuddhistDatePickerDialog.kt
    │       │   │               │       │       ├── CopticDatePickerDialog.java
    │       │   │               │       │       ├── CustomDatePickerDialog.java
    │       │   │               │       │       ├── CustomTimePickerDialog.java
    │       │   │               │       │       ├── EthiopianDatePickerDialog.java
    │       │   │               │       │       ├── FixedDatePickerDialog.java
    │       │   │               │       │       ├── IslamicDatePickerDialog.java
    │       │   │               │       │       ├── MyanmarDatePickerDialog.java
    │       │   │               │       │       └── PersianDatePickerDialog.java
    │       │   │               │       ├── interfaces/
    │       │   │               │       │   ├── FileWidget.java
    │       │   │               │       │   ├── GeoDataRequester.kt
    │       │   │               │       │   ├── MultiChoiceWidget.java
    │       │   │               │       │   ├── Printer.kt
    │       │   │               │       │   ├── SelectChoiceLoader.kt
    │       │   │               │       │   ├── Widget.java
    │       │   │               │       │   └── WidgetDataReceiver.java
    │       │   │               │       ├── items/
    │       │   │               │       │   ├── BaseSelectListWidget.java
    │       │   │               │       │   ├── ItemsWidgetUtils.kt
    │       │   │               │       │   ├── LabelWidget.java
    │       │   │               │       │   ├── LikertWidget.java
    │       │   │               │       │   ├── ListMultiWidget.java
    │       │   │               │       │   ├── ListWidget.java
    │       │   │               │       │   ├── RankingWidget.java
    │       │   │               │       │   ├── SelectImageMapWidget.java
    │       │   │               │       │   ├── SelectMinimalWidget.java
    │       │   │               │       │   ├── SelectMultiImageMapWidget.java
    │       │   │               │       │   ├── SelectMultiMinimalWidget.java
    │       │   │               │       │   ├── SelectMultiWidget.java
    │       │   │               │       │   ├── SelectOneFromMapDialogFragment.kt
    │       │   │               │       │   ├── SelectOneFromMapWidget.kt
    │       │   │               │       │   ├── SelectOneImageMapWidget.java
    │       │   │               │       │   ├── SelectOneMinimalWidget.java
    │       │   │               │       │   └── SelectOneWidget.java
    │       │   │               │       ├── range/
    │       │   │               │       │   ├── RangeDecimalWidget.java
    │       │   │               │       │   ├── RangeIntegerWidget.java
    │       │   │               │       │   ├── RangePickerDecimalWidget.java
    │       │   │               │       │   ├── RangePickerIntegerWidget.java
    │       │   │               │       │   └── RangePickerWidgetUtils.kt
    │       │   │               │       ├── utilities/
    │       │   │               │       │   ├── ActivityGeoDataRequester.kt
    │       │   │               │       │   ├── AudioFileRequester.java
    │       │   │               │       │   ├── AudioPlayer.java
    │       │   │               │       │   ├── AudioRecorderRecordingStatusHandler.java
    │       │   │               │       │   ├── DateTimeWidgetUtils.java
    │       │   │               │       │   ├── ExternalAppRecordingRequester.kt
    │       │   │               │       │   ├── FileRequester.kt
    │       │   │               │       │   ├── FormControllerWaitingForDataRegistry.java
    │       │   │               │       │   ├── GeoWidgetUtils.kt
    │       │   │               │       │   ├── GetContentAudioFileRequester.kt
    │       │   │               │       │   ├── ImageCaptureIntentCreator.kt
    │       │   │               │       │   ├── InternalRecordingRequester.java
    │       │   │               │       │   ├── QuestionFontSizeUtils.kt
    │       │   │               │       │   ├── RangeWidgetUtils.java
    │       │   │               │       │   ├── RecordingRequester.java
    │       │   │               │       │   ├── RecordingRequesterProvider.java
    │       │   │               │       │   ├── RecordingStatusHandler.java
    │       │   │               │       │   ├── SearchQueryViewModel.java
    │       │   │               │       │   ├── StringRequester.kt
    │       │   │               │       │   ├── StringWidgetUtils.java
    │       │   │               │       │   ├── ViewModelAudioPlayer.java
    │       │   │               │       │   └── WaitingForDataRegistry.java
    │       │   │               │       ├── viewmodels/
    │       │   │               │       │   └── DateTimeViewModel.java
    │       │   │               │       └── warnings/
    │       │   │               │           └── SpacesInUnderlyingValuesWarning.java
    │       │   │               └── utilities/
    │       │   │                   ├── Result.java
    │       │   │                   └── UserAgentProvider.java
    │       │   └── res/
    │       │       ├── anim/
    │       │       │   ├── fade_in.xml
    │       │       │   ├── fade_out.xml
    │       │       │   ├── push_left_in.xml
    │       │       │   ├── push_left_out.xml
    │       │       │   ├── push_right_in.xml
    │       │       │   └── push_right_out.xml
    │       │       ├── drawable/
    │       │       │   ├── counter_minus_button_background.xml
    │       │       │   ├── counter_plus_button_background.xml
    │       │       │   ├── counter_value_background.xml
    │       │       │   ├── ic_access_time.xml
    │       │       │   ├── ic_add_circle_24.xml
    │       │       │   ├── ic_arrow_back.xml
    │       │       │   ├── ic_arrow_drop_down.xml
    │       │       │   ├── ic_arrow_up.xml
    │       │       │   ├── ic_attachment.xml
    │       │       │   ├── ic_baseline_delete_72.xml
    │       │       │   ├── ic_baseline_delete_outline_24.xml
    │       │       │   ├── ic_baseline_download_72.xml
    │       │       │   ├── ic_baseline_edit_72.xml
    │       │       │   ├── ic_baseline_error_24.xml
    │       │       │   ├── ic_baseline_help_outline_24.xml
    │       │       │   ├── ic_baseline_inbox_72.xml
    │       │       │   ├── ic_baseline_note_72.xml
    │       │       │   ├── ic_baseline_notifications_24.xml
    │       │       │   ├── ic_baseline_qr_code_scanner_24.xml
    │       │       │   ├── ic_baseline_refresh_24.xml
    │       │       │   ├── ic_baseline_refresh_error_24.xml
    │       │       │   ├── ic_baseline_search_24.xml
    │       │       │   ├── ic_baseline_send_72.xml
    │       │       │   ├── ic_baseline_sort_24.xml
    │       │       │   ├── ic_cancel.xml
    │       │       │   ├── ic_chat_bubble_24dp.xml
    │       │       │   ├── ic_check_circle_24.xml
    │       │       │   ├── ic_download_24.xml
    │       │       │   ├── ic_edit.xml
    │       │       │   ├── ic_edit_24.xml
    │       │       │   ├── ic_folder_open.xml
    │       │       │   ├── ic_form_state_blank.xml
    │       │       │   ├── ic_form_state_finalized.xml
    │       │       │   ├── ic_form_state_saved.xml
    │       │       │   ├── ic_form_state_submission_failed.xml
    │       │       │   ├── ic_form_state_submitted.xml
    │       │       │   ├── ic_information_outline.xml
    │       │       │   ├── ic_map.xml
    │       │       │   ├── ic_menu_share.xml
    │       │       │   ├── ic_navigate_back.xml
    │       │       │   ├── ic_navigate_forward.xml
    │       │       │   ├── ic_ondemand_video_black_24dp.xml
    │       │       │   ├── ic_outline_assignment_accent_24.xml
    │       │       │   ├── ic_outline_cloud_accent_24.xml
    │       │       │   ├── ic_outline_color_lens_accent_24.xml
    │       │       │   ├── ic_outline_delete_accent_24.xml
    │       │       │   ├── ic_outline_edit_24.xml
    │       │       │   ├── ic_outline_face_accent_24.xml
    │       │       │   ├── ic_outline_forum_24.xml
    │       │       │   ├── ic_outline_info_small.xml
    │       │       │   ├── ic_outline_lock_24.xml
    │       │       │   ├── ic_outline_lock_accent_24.xml
    │       │       │   ├── ic_outline_lock_open_24.xml
    │       │       │   ├── ic_outline_map_accent_24.xml
    │       │       │   ├── ic_outline_menu_accent_24.xml
    │       │       │   ├── ic_outline_phonelink_setup_accent_24.xml
    │       │       │   ├── ic_outline_qr_code_scanner_accent_24.xml
    │       │       │   ├── ic_outline_rate_review_24.xml
    │       │       │   ├── ic_outline_refresh_accent_24.xml
    │       │       │   ├── ic_outline_settings_accent_24.xml
    │       │       │   ├── ic_outline_settings_applications_accent_24.xml
    │       │       │   ├── ic_outline_share_24.xml
    │       │       │   ├── ic_outline_stars_24.xml
    │       │       │   ├── ic_outline_vpn_key_accent_24.xml
    │       │       │   ├── ic_outline_warning_accent_24.xml
    │       │       │   ├── ic_outline_website_24.xml
    │       │       │   ├── ic_pause_24dp.xml
    │       │       │   ├── ic_person_24dp.xml
    │       │       │   ├── ic_play_arrow_24dp.xml
    │       │       │   ├── ic_repeat.xml
    │       │       │   ├── ic_room_form_state_complete_24dp.xml
    │       │       │   ├── ic_room_form_state_complete_48dp.xml
    │       │       │   ├── ic_room_form_state_incomplete_24dp.xml
    │       │       │   ├── ic_room_form_state_incomplete_48dp.xml
    │       │       │   ├── ic_room_form_state_submission_failed_24dp.xml
    │       │       │   ├── ic_room_form_state_submission_failed_48dp.xml
    │       │       │   ├── ic_room_form_state_submitted_24dp.xml
    │       │       │   ├── ic_room_form_state_submitted_48dp.xml
    │       │       │   ├── ic_save_menu_24.xml
    │       │       │   ├── ic_send_24.xml
    │       │       │   ├── ic_sort.xml
    │       │       │   ├── ic_sort_by_alpha.xml
    │       │       │   ├── ic_sort_by_last_saved.xml
    │       │       │   ├── ic_splash_screen_icon.xml
    │       │       │   ├── ic_stop_black_24dp.xml
    │       │       │   ├── ic_visibility.xml
    │       │       │   ├── ic_volume_up_black_24dp.xml
    │       │       │   ├── inset_divider_64dp.xml
    │       │       │   ├── main_menu_button_background.xml
    │       │       │   ├── odk_logo.xml
    │       │       │   ├── pill_filled.xml
    │       │       │   ├── pill_unfilled.xml
    │       │       │   ├── project_icon_background.xml
    │       │       │   ├── question_with_error_border.xml
    │       │       │   ├── select_item_border.xml
    │       │       │   └── start_new_form_button_background.xml
    │       │       ├── drawable-hdpi/
    │       │       ├── drawable-ldrtl/
    │       │       │   ├── counter_minus_button_background.xml
    │       │       │   └── counter_plus_button_background.xml
    │       │       ├── drawable-mdpi/
    │       │       ├── drawable-xhdpi/
    │       │       ├── drawable-xxhdpi/
    │       │       ├── drawable-xxxhdpi/
    │       │       ├── layout/
    │       │       │   ├── about_item_layout.xml
    │       │       │   ├── about_layout.xml
    │       │       │   ├── activity_blank_form_list.xml
    │       │       │   ├── activity_custom_scanner.xml
    │       │       │   ├── activity_preferences_layout.xml
    │       │       │   ├── admin_password_dialog_layout.xml
    │       │       │   ├── annotate_widget.xml
    │       │       │   ├── arbitrary_file_widget_answer.xml
    │       │       │   ├── audio_controller_layout.xml
    │       │       │   ├── audio_player_layout.xml
    │       │       │   ├── audio_recording_controller_fragment.xml
    │       │       │   ├── audio_video_image_text_label.xml
    │       │       │   ├── audio_widget_answer.xml
    │       │       │   ├── background_audio_help_fragment_layout.xml
    │       │       │   ├── barcode_widget_answer.xml
    │       │       │   ├── bearing_widget_answer.xml
    │       │       │   ├── blank_form_list_item.xml
    │       │       │   ├── bottom_sheet.xml
    │       │       │   ├── captioned_item.xml
    │       │       │   ├── captioned_list_dialog.xml
    │       │       │   ├── changes_reason_dialog.xml
    │       │       │   ├── checkbox.xml
    │       │       │   ├── circular_progress_indicator.xml
    │       │       │   ├── counter_widget.xml
    │       │       │   ├── current_project_menu_icon.xml
    │       │       │   ├── custom_date_picker_dialog.xml
    │       │       │   ├── date_time_widget_answer.xml
    │       │       │   ├── date_widget_answer.xml
    │       │       │   ├── delete_form_layout.xml
    │       │       │   ├── draw_widget.xml
    │       │       │   ├── ex_arbitrary_file_widget_answer.xml
    │       │       │   ├── ex_audio_widget_answer.xml
    │       │       │   ├── ex_image_widget_answer.xml
    │       │       │   ├── ex_string_question_type.xml
    │       │       │   ├── ex_video_widget_answer.xml
    │       │       │   ├── first_launch_layout.xml
    │       │       │   ├── form_chooser_list.xml
    │       │       │   ├── form_chooser_list_item.xml
    │       │       │   ├── form_chooser_list_item_icon.xml
    │       │       │   ├── form_chooser_list_item_map_button.xml
    │       │       │   ├── form_chooser_list_item_multiple_choice.xml
    │       │       │   ├── form_chooser_list_item_text.xml
    │       │       │   ├── form_download_list.xml
    │       │       │   ├── form_entry.xml
    │       │       │   ├── form_entry_end.xml
    │       │       │   ├── form_hierarchy_layout.xml
    │       │       │   ├── form_map_activity.xml
    │       │       │   ├── fragment_scan.xml
    │       │       │   ├── geopoint_question.xml
    │       │       │   ├── geoshape_question.xml
    │       │       │   ├── geotrace_question.xml
    │       │       │   ├── google_drive_deprecation_banner.xml
    │       │       │   ├── help_layout.xml
    │       │       │   ├── hierarchy_group_item.xml
    │       │       │   ├── hierarchy_host_layout.xml
    │       │       │   ├── hierarchy_question_item.xml
    │       │       │   ├── hierarchy_repeatable_group_instance_item.xml
    │       │       │   ├── hierarchy_repeatable_group_item.xml
    │       │       │   ├── identify_user_dialog.xml
    │       │       │   ├── image_widget.xml
    │       │       │   ├── instance_uploader_list.xml
    │       │       │   ├── label_widget.xml
    │       │       │   ├── main_menu.xml
    │       │       │   ├── main_menu_activity.xml
    │       │       │   ├── main_menu_button.xml
    │       │       │   ├── manual_project_creator_dialog_layout.xml
    │       │       │   ├── map_button.xml
    │       │       │   ├── no_buttons_item_layout.xml
    │       │       │   ├── number_picker_dialog.xml
    │       │       │   ├── odk_view.xml
    │       │       │   ├── osm_widget_answer.xml
    │       │       │   ├── password_dialog_layout.xml
    │       │       │   ├── permissions_dialog_layout.xml
    │       │       │   ├── printer_widget.xml
    │       │       │   ├── progress_bar_view.xml
    │       │       │   ├── project_icon_view.xml
    │       │       │   ├── project_list_item.xml
    │       │       │   ├── project_settings_dialog_layout.xml
    │       │       │   ├── qr_code_project_creator_dialog_layout.xml
    │       │       │   ├── question_error_layout.xml
    │       │       │   ├── question_widget.xml
    │       │       │   ├── quit_form_dialog_layout.xml
    │       │       │   ├── range_picker_widget_answer.xml
    │       │       │   ├── range_widget_horizontal.xml
    │       │       │   ├── range_widget_vertical.xml
    │       │       │   ├── ranking_item.xml
    │       │       │   ├── ranking_widget.xml
    │       │       │   ├── rating_widget_answer.xml
    │       │       │   ├── ready_to_send_banner.xml
    │       │       │   ├── reset_dialog_layout.xml
    │       │       │   ├── select_image_map_widget_answer.xml
    │       │       │   ├── select_list_widget_answer.xml
    │       │       │   ├── select_minimal_dialog_layout.xml
    │       │       │   ├── select_minimal_widget_answer.xml
    │       │       │   ├── select_multi_item.xml
    │       │       │   ├── select_one_from_map_dialog_layout.xml
    │       │       │   ├── select_one_from_map_widget_answer.xml
    │       │       │   ├── select_one_item.xml
    │       │       │   ├── server_auth_dialog.xml
    │       │       │   ├── show_qrcode_fragment.xml
    │       │       │   ├── signature_widget.xml
    │       │       │   ├── sort_item_layout.xml
    │       │       │   ├── start_new_from_button.xml
    │       │       │   ├── tabs_layout.xml
    │       │       │   ├── time_widget_answer.xml
    │       │       │   ├── transparent_progress_screen.xml
    │       │       │   ├── trigger_widget_answer.xml
    │       │       │   ├── url_widget_answer.xml
    │       │       │   ├── video_widget.xml
    │       │       │   ├── waveform_layout.xml
    │       │       │   └── widget_answer_text.xml
    │       │       ├── menu/
    │       │       │   ├── blank_form_list_menu.xml
    │       │       │   ├── changes_reason_dialog.xml
    │       │       │   ├── drafts.xml
    │       │       │   ├── form_hierarchy_menu.xml
    │       │       │   ├── form_menu.xml
    │       │       │   ├── instance_uploader_menu.xml
    │       │       │   ├── main_menu.xml
    │       │       │   ├── project_preferences_menu.xml
    │       │       │   ├── qr_code_scan_menu.xml
    │       │       │   ├── saved_form_list_menu.xml
    │       │       │   └── select_minimal_dialog_menu.xml
    │       │       ├── raw/
    │       │       │   └── isrgrootx1.pem
    │       │       ├── values/
    │       │       │   ├── arrays.xml
    │       │       │   ├── attrs.xml
    │       │       │   ├── buttons.xml
    │       │       │   ├── colors.xml
    │       │       │   ├── date_time_pickers.xml
    │       │       │   ├── dimens.xml
    │       │       │   ├── form_entry_activity_theme.xml
    │       │       │   ├── form_state_colors.xml
    │       │       │   ├── leak_canary_config.xml
    │       │       │   ├── screen_names.xml
    │       │       │   ├── settings_theme.xml
    │       │       │   ├── shape.xml
    │       │       │   ├── styles.xml
    │       │       │   ├── theme.xml
    │       │       │   └── typography.xml
    │       │       ├── values-night/
    │       │       │   └── colors.xml
    │       │       └── xml/
    │       │           ├── access_control_preferences.xml
    │       │           ├── dev_tools_preferences.xml
    │       │           ├── experimental_preferences.xml
    │       │           ├── form_entry_access_preferences.xml
    │       │           ├── form_management_preferences.xml
    │       │           ├── form_metadata_preferences.xml
    │       │           ├── identity_preferences.xml
    │       │           ├── main_menu_access_preferences.xml
    │       │           ├── maps_preferences.xml
    │       │           ├── network_security_config.xml
    │       │           ├── odk_server_preferences.xml
    │       │           ├── project_display_preferences.xml
    │       │           ├── project_management_preferences.xml
    │       │           ├── project_preferences.xml
    │       │           ├── provider_paths.xml
    │       │           ├── server_preferences.xml
    │       │           ├── user_interface_preferences.xml
    │       │           └── user_settings_access_preferences.xml
    │       ├── release/
    │       │   └── google-services.json
    │       └── test/
    │           ├── java/
    │           │   └── org/
    │           │       └── odk/
    │           │           └── collect/
    │           │               └── android/
    │           │                   ├── TestSettingsProvider.kt
    │           │                   ├── activities/
    │           │                   │   ├── CrashHandlerActivityTest.kt
    │           │                   │   ├── FirstLaunchActivityTest.kt
    │           │                   │   ├── FormFillingActivityTest.kt
    │           │                   │   └── FormHierarchyFragmentHostActivityTest.kt
    │           │                   ├── application/
    │           │                   │   ├── CollectSettingsChangeHandlerTest.kt
    │           │                   │   ├── RobolectricApplication.java
    │           │                   │   └── initialization/
    │           │                   │       ├── AnalyticsInitializerTest.kt
    │           │                   │       ├── CachedFormsCleanerTest.kt
    │           │                   │       ├── ExistingSettingsMigratorTest.kt
    │           │                   │       ├── GoogleDriveProjectsDeleterTest.kt
    │           │                   │       ├── SavepointsImporterTest.kt
    │           │                   │       ├── ScheduledWorkUpgradeTest.kt
    │           │                   │       └── upgrade/
    │           │                   │           └── BeforeProjectsInstallDetectorTest.kt
    │           │                   ├── audio/
    │           │                   │   ├── AudioButtonIntegrationTest.java
    │           │                   │   ├── AudioButtonTest.java
    │           │                   │   ├── AudioControllerViewTest.java
    │           │                   │   ├── AudioRecordingControllerFragmentTest.java
    │           │                   │   ├── AudioRecordingFormErrorDialogFragmentTest.java
    │           │                   │   └── BackgroundAudioHelpDialogFragmentTest.java
    │           │                   ├── backgroundwork/
    │           │                   │   ├── AutoUpdateTaskSpecTest.kt
    │           │                   │   ├── FormUpdateAndInstanceSubmitSchedulerTest.kt
    │           │                   │   ├── SendFormsTaskSpecTest.kt
    │           │                   │   └── SyncFormsTaskSpecTest.kt
    │           │                   ├── configure/
    │           │                   │   └── qr/
    │           │                   │       ├── QRCodeActivityResultDelegateTest.kt
    │           │                   │       ├── QRCodeMenuProviderTest.kt
    │           │                   │       └── QRCodeViewModelTest.kt
    │           │                   ├── database/
    │           │                   │   ├── DatabaseConnectionTest.kt
    │           │                   │   ├── DatabaseFormsRepositoryTest.java
    │           │                   │   ├── DatabaseInstancesRepositoryTest.java
    │           │                   │   ├── DatabaseSavepointsRepositoryTest.kt
    │           │                   │   ├── FormDatabaseMigratorTest.java
    │           │                   │   └── InstanceDatabaseMigratorTest.kt
    │           │                   ├── dependencies/
    │           │                   │   ├── BikramSambatTest.java
    │           │                   │   └── PersianCalendarTest.java
    │           │                   ├── dynamicpreload/
    │           │                   │   ├── DynamicPreloadExtraTest.kt
    │           │                   │   ├── DynamicPreloadParseProcessorTest.kt
    │           │                   │   ├── ExternalDataReaderTest.java
    │           │                   │   ├── ExternalDataUseCasesTest.kt
    │           │                   │   └── ExternalDataUtilTest.java
    │           │                   ├── entities/
    │           │                   │   ├── DatabaseEntitiesRepositoryTest.kt
    │           │                   │   ├── EntitiesRepositoryTest.kt
    │           │                   │   ├── InMemEntitiesRepositoryTest.kt
    │           │                   │   └── support/
    │           │                   │       └── EntitySameAsMatcher.kt
    │           │                   ├── external/
    │           │                   │   ├── FormUriActivityTest.kt
    │           │                   │   ├── FormsProviderTest.java
    │           │                   │   └── InstanceProviderTest.java
    │           │                   ├── fakes/
    │           │                   │   └── FakePermissionsProvider.kt
    │           │                   ├── formentry/
    │           │                   │   ├── AppStateFormSessionRepositoryTest.kt
    │           │                   │   ├── AudioVideoImageTextLabelTest.java
    │           │                   │   ├── AudioVideoImageTextLabelVisibilityTest.kt
    │           │                   │   ├── BackgroundAudioPermissionDialogFragmentTest.java
    │           │                   │   ├── BackgroundAudioViewModelTest.java
    │           │                   │   ├── FormEndViewModelTest.kt
    │           │                   │   ├── FormEndViewTest.kt
    │           │                   │   ├── FormEntryMenuProviderTest.kt
    │           │                   │   ├── FormEntryUseCasesTest.kt
    │           │                   │   ├── FormEntryViewModelTest.java
    │           │                   │   ├── FormLoadingDialogFragmentTest.java
    │           │                   │   ├── FormSessionRepositoryTest.kt
    │           │                   │   ├── InMemoryFormSessionRepositoryTest.kt
    │           │                   │   ├── PrinterWidgetViewModelTest.kt
    │           │                   │   ├── QuitFormDialogTest.kt
    │           │                   │   ├── RecordingHandlerTest.java
    │           │                   │   ├── RefreshFormListDialogFragmentTest.java
    │           │                   │   ├── SaveFormProgressDialogFragmentTest.java
    │           │                   │   ├── audit/
    │           │                   │   │   ├── AsyncTaskAuditEventWriterTest.java
    │           │                   │   │   ├── AuditConfigTest.java
    │           │                   │   │   ├── AuditEventCSVLineTest.java
    │           │                   │   │   ├── AuditEventLoggerTest.java
    │           │                   │   │   ├── AuditEventTest.java
    │           │                   │   │   ├── FormSaveViewModelTest.java
    │           │                   │   │   └── IdentityPromptViewModelTest.java
    │           │                   │   ├── backgroundlocation/
    │           │                   │   │   └── BackgroundLocationManagerTest.java
    │           │                   │   ├── loading/
    │           │                   │   │   └── FormInstanceFileCreatorTest.java
    │           │                   │   ├── repeats/
    │           │                   │   │   └── DeleteRepeatDialogFragmentTest.java
    │           │                   │   └── support/
    │           │                   │       └── InMemFormSessionRepository.kt
    │           │                   ├── formhierarchy/
    │           │                   │   ├── HierarchyListItemViewTest.kt
    │           │                   │   └── QuestionAnswerProcessorTest.kt
    │           │                   ├── formlists/
    │           │                   │   ├── DeleteBlankFormFragmentTest.kt
    │           │                   │   ├── blankformlist/
    │           │                   │   │   ├── BlankFormListItemTest.kt
    │           │                   │   │   ├── BlankFormListItemViewTest.kt
    │           │                   │   │   ├── BlankFormListMenuProviderTest.kt
    │           │                   │   │   └── BlankFormListViewModelTest.kt
    │           │                   │   └── savedformlist/
    │           │                   │       ├── DeleteSavedFormFragmentTest.kt
    │           │                   │       ├── SavedFormListListMenuProviderTest.kt
    │           │                   │       └── SavedFormListViewModelTest.kt
    │           │                   ├── formmanagement/
    │           │                   │   ├── FilterFormsToAddTest.kt
    │           │                   │   ├── FormFillingIntentFactoryTest.kt
    │           │                   │   ├── FormSourceExceptionMapperTest.kt
    │           │                   │   ├── FormSourceProviderTest.kt
    │           │                   │   ├── FormsDataServiceTest.kt
    │           │                   │   ├── LocalFormUseCasesTest.java
    │           │                   │   ├── ServerFormUseCasesTest.kt
    │           │                   │   ├── ServerFormsDetailsFetcherTest.kt
    │           │                   │   ├── ServerFormsSynchronizerTest.java
    │           │                   │   ├── ShouldAddFormFileTest.java
    │           │                   │   ├── download/
    │           │                   │   │   ├── FormDownloadExceptionMapperTest.kt
    │           │                   │   │   └── ServerFormDownloaderTest.java
    │           │                   │   ├── drafts/
    │           │                   │   │   └── DraftsMenuProviderTest.kt
    │           │                   │   ├── formmap/
    │           │                   │   │   └── FormMapViewModelTest.kt
    │           │                   │   └── metadata/
    │           │                   │       └── FormMetadataParserTest.kt
    │           │                   ├── fragments/
    │           │                   │   ├── dialogs/
    │           │                   │   │   ├── FormsDownloadResultDialogTest.kt
    │           │                   │   │   ├── SelectMinimalDialogTest.java
    │           │                   │   │   ├── SelectMultiMinimalDialogTest.java
    │           │                   │   │   └── SelectOneMinimalDialogTest.java
    │           │                   │   └── support/
    │           │                   │       └── DialogFragmentHelpers.java
    │           │                   ├── geo/
    │           │                   │   └── MapFragmentFactoryImplTest.kt
    │           │                   ├── instancemanagement/
    │           │                   │   ├── InstanceDeleterTest.kt
    │           │                   │   ├── InstanceExtKtTest.kt
    │           │                   │   ├── InstanceListItemViewTest.kt
    │           │                   │   ├── InstancesDataServiceTest.kt
    │           │                   │   ├── autosend/
    │           │                   │   │   ├── AutoSendSettingsProviderTest.kt
    │           │                   │   │   ├── FormExtTest.kt
    │           │                   │   │   └── InstanceAutoSendFetcherTest.kt
    │           │                   │   └── send/
    │           │                   │       ├── ReadyToSendBannerTest.kt
    │           │                   │       └── ReadyToSendViewModelTest.kt
    │           │                   ├── javarosawrapper/
    │           │                   │   ├── FakeFormController.java
    │           │                   │   └── FormControllerTest.java
    │           │                   ├── location/
    │           │                   │   └── client/
    │           │                   │       ├── FakeLocationClient.java
    │           │                   │       └── MaxAccuracyWithinTimeoutLocationClientWrapperTest.java
    │           │                   ├── mainmenu/
    │           │                   │   ├── CurrentProjectViewModelTest.kt
    │           │                   │   ├── MainMenuActivityTest.kt
    │           │                   │   ├── MainMenuButtonTest.kt
    │           │                   │   ├── MainMenuViewModelTest.kt
    │           │                   │   ├── PermissionsDialogFragmentTest.kt
    │           │                   │   └── RequestPermissionsViewModelTest.kt
    │           │                   ├── notifications/
    │           │                   │   └── NotificationManagerNotifierTest.kt
    │           │                   ├── openrosa/
    │           │                   │   ├── CaseInsensitiveEmptyHeadersTest.java
    │           │                   │   ├── CollectThenSystemContentTypeMapperTest.java
    │           │                   │   ├── OkHttpCaseInsensitiveHeadersTest.java
    │           │                   │   ├── OkHttpConnectionGetRequestTest.java
    │           │                   │   ├── OkHttpConnectionHeadRequestTest.java
    │           │                   │   ├── OkHttpConnectionPostRequestTest.java
    │           │                   │   ├── OkHttpOpenRosaServerClientProviderTest.java
    │           │                   │   ├── OpenRosaGetRequestTest.java
    │           │                   │   ├── OpenRosaHeadRequestTest.java
    │           │                   │   ├── OpenRosaPostRequestTest.java
    │           │                   │   ├── OpenRosaResponseParserImplTest.kt
    │           │                   │   ├── OpenRosaServerClientProviderTest.java
    │           │                   │   ├── OpenRosaXmlFetcherTest.java
    │           │                   │   ├── api/
    │           │                   │   │   └── OpenRosaFormSourceTest.java
    │           │                   │   └── support/
    │           │                   │       └── MockWebServerHelper.java
    │           │                   ├── preferences/
    │           │                   │   ├── AppConfigurationGeneratorTest.kt
    │           │                   │   ├── ProjectPreferencesViewModelTest.kt
    │           │                   │   ├── ServerPreferencesAdderTest.java
    │           │                   │   ├── dialogs/
    │           │                   │   │   ├── AdminPasswordDialogFragmentTest.kt
    │           │                   │   │   ├── ChangeAdminPasswordDialogTest.kt
    │           │                   │   │   ├── ResetProgressDialogTest.kt
    │           │                   │   │   └── ServerAuthDialogFragmentTest.java
    │           │                   │   ├── screens/
    │           │                   │   │   ├── FormEntryAccessPreferencesFragmentTest.kt
    │           │                   │   │   ├── FormManagementPreferencesFragmentTest.kt
    │           │                   │   │   ├── FormMetadataPreferencesFragmentTest.kt
    │           │                   │   │   ├── IdentityPreferencesFragmentTest.kt
    │           │                   │   │   ├── MainMenuAccessPreferencesTest.kt
    │           │                   │   │   ├── MapsPreferencesFragmentTest.kt
    │           │                   │   │   ├── ProjectDisplayPreferencesFragmentTest.kt
    │           │                   │   │   ├── ProjectPreferencesFragmentTest.kt
    │           │                   │   │   └── UserInterfacePreferencesFragmentTest.kt
    │           │                   │   └── source/
    │           │                   │       ├── SettingsStoreTest.kt
    │           │                   │       ├── SharedPreferencesSettingsProviderTest.kt
    │           │                   │       └── SharedPreferencesSettingsTest.kt
    │           │                   ├── projects/
    │           │                   │   ├── ExistingProjectMigratorTest.kt
    │           │                   │   ├── ManualProjectCreatorDialogTest.kt
    │           │                   │   ├── ProjectCreatorTest.kt
    │           │                   │   ├── ProjectDeleterTest.kt
    │           │                   │   ├── ProjectIconViewTest.kt
    │           │                   │   ├── ProjectListItemViewTest.kt
    │           │                   │   ├── ProjectResetterTest.kt
    │           │                   │   ├── ProjectSettingsDialogTest.kt
    │           │                   │   ├── ProjectsDataServiceTest.kt
    │           │                   │   ├── QrCodeProjectCreatorDialogTest.kt
    │           │                   │   └── SettingsConnectionMatcherTest.kt
    │           │                   ├── rules/
    │           │                   │   └── MockWebServerRule.kt
    │           │                   ├── savepoints/
    │           │                   │   └── SavepointUseCasesTest.kt
    │           │                   ├── storage/
    │           │                   │   └── StoragePathProviderTest.kt
    │           │                   ├── support/
    │           │                   │   ├── CollectHelpers.java
    │           │                   │   ├── Matchers.kt
    │           │                   │   ├── MockFormEntryPromptBuilder.java
    │           │                   │   ├── SwipableParentActivity.kt
    │           │                   │   └── WidgetTestActivity.kt
    │           │                   ├── tasks/
    │           │                   │   └── SaveFormIndexTaskTest.java
    │           │                   ├── utilities/
    │           │                   │   ├── AdminPasswordProviderTest.java
    │           │                   │   ├── AppearancesTest.kt
    │           │                   │   ├── ArrayUtilsTest.java
    │           │                   │   ├── CSVUtilsTest.java
    │           │                   │   ├── ChangeLockProviderTest.kt
    │           │                   │   ├── ExternalAppIntentProviderTest.kt
    │           │                   │   ├── ExternalAppUtilsTest.java
    │           │                   │   ├── FileUtilsTest.java
    │           │                   │   ├── FormNameUtilsTest.java
    │           │                   │   ├── FormsDownloadResultInterpreterTest.kt
    │           │                   │   ├── FormsRepositoryProviderTest.kt
    │           │                   │   ├── FormsUploadResultInterpreterTest.kt
    │           │                   │   ├── HtmlUtilsTest.java
    │           │                   │   ├── ImageCompressionControllerTest.kt
    │           │                   │   ├── InstanceAutoDeleteCheckerTest.kt
    │           │                   │   ├── InstanceUploaderUtilsTest.java
    │           │                   │   ├── InstancesRepositoryProviderTest.kt
    │           │                   │   ├── MediaUtilsTest.kt
    │           │                   │   ├── MyanmarDateUtilsTest.java
    │           │                   │   ├── QuestionFontSizeUtilsTest.java
    │           │                   │   ├── StubFormController.kt
    │           │                   │   └── WebCredentialsUtilsTest.java
    │           │                   ├── version/
    │           │                   │   └── VersionInformationTest.java
    │           │                   ├── views/
    │           │                   │   ├── ChoicesRecyclerViewTest.java
    │           │                   │   ├── TrackingTouchSliderTest.java
    │           │                   │   └── helpers/
    │           │                   │       └── PromptAutoplayerTest.java
    │           │                   └── widgets/
    │           │                       ├── AnnotateWidgetTest.java
    │           │                       ├── ArbitraryFileWidgetTest.java
    │           │                       ├── AudioWidgetTest.java
    │           │                       ├── BarcodeWidgetTest.java
    │           │                       ├── BearingWidgetTest.java
    │           │                       ├── CounterWidgetTest.kt
    │           │                       ├── DecimalWidgetTest.java
    │           │                       ├── DrawWidgetTest.java
    │           │                       ├── ExArbitraryFileWidgetTest.java
    │           │                       ├── ExAudioWidgetTest.java
    │           │                       ├── ExDecimalWidgetTest.java
    │           │                       ├── ExImageWidgetTest.java
    │           │                       ├── ExIntegerWidgetTest.java
    │           │                       ├── ExStringWidgetTest.java
    │           │                       ├── ExVideoWidgetTest.java
    │           │                       ├── GeoPointMapWidgetTest.java
    │           │                       ├── GeoPointWidgetTest.java
    │           │                       ├── GeoShapeWidgetTest.java
    │           │                       ├── GeoTraceWidgetTest.java
    │           │                       ├── ImageWidgetTest.java
    │           │                       ├── IntegerWidgetTest.java
    │           │                       ├── OSMWidgetTest.java
    │           │                       ├── PrinterWidgetTest.kt
    │           │                       ├── QuestionWidgetTest.java
    │           │                       ├── RatingWidgetTest.java
    │           │                       ├── SignatureWidgetTest.java
    │           │                       ├── StringNumberWidgetTest.java
    │           │                       ├── StringWidgetTest.java
    │           │                       ├── TriggerWidgetTest.java
    │           │                       ├── UrlWidgetTest.java
    │           │                       ├── VideoWidgetTest.java
    │           │                       ├── WidgetFactoryTest.kt
    │           │                       ├── base/
    │           │                       │   ├── BinaryWidgetTest.java
    │           │                       │   ├── FileWidgetTest.java
    │           │                       │   ├── GeneralExStringWidgetTest.java
    │           │                       │   ├── GeneralSelectMultiWidgetTest.java
    │           │                       │   ├── GeneralSelectOneWidgetTest.java
    │           │                       │   ├── GeneralStringWidgetTest.java
    │           │                       │   ├── QuestionWidgetTest.java
    │           │                       │   ├── SelectWidgetTest.java
    │           │                       │   └── WidgetTest.java
    │           │                       ├── datetime/
    │           │                       │   ├── DateTimeUtilsTest.java
    │           │                       │   ├── DateTimeWidgetTest.java
    │           │                       │   ├── DateTimeWidgetUtilsTest.java
    │           │                       │   ├── DateWidgetTest.java
    │           │                       │   ├── DaylightSavingTest.java
    │           │                       │   ├── TimeWidgetTest.java
    │           │                       │   └── pickers/
    │           │                       │       ├── BikramSambatDatePickerDialogTest.java
    │           │                       │       ├── BuddhistDatePickerDialogTest.kt
    │           │                       │       ├── CopticDatePickerDialogTest.java
    │           │                       │       ├── EthiopianDatePickerDialogTest.java
    │           │                       │       ├── IslamicDatePickerDialogTest.java
    │           │                       │       ├── MyanmarDatePickerDialogTest.java
    │           │                       │       └── PersianDatePickerDialogTest.java
    │           │                       ├── items/
    │           │                       │   ├── LikertWidgetTest.java
    │           │                       │   ├── ListMultiWidgetTest.java
    │           │                       │   ├── ListWidgetTest.java
    │           │                       │   ├── RankingWidgetTest.java
    │           │                       │   ├── SelectChoicesMapDataTest.kt
    │           │                       │   ├── SelectImageMapWidgetTest.java
    │           │                       │   ├── SelectMultiImageMapWidgetTest.java
    │           │                       │   ├── SelectMultiMinimalWidgetTest.java
    │           │                       │   ├── SelectMultiWidgetTest.java
    │           │                       │   ├── SelectOneFromMapDialogFragmentTest.kt
    │           │                       │   ├── SelectOneFromMapWidgetTest.kt
    │           │                       │   ├── SelectOneImageMapWidgetTest.java
    │           │                       │   ├── SelectOneMinimalWidgetTest.java
    │           │                       │   └── SelectOneWidgetTest.java
    │           │                       ├── range/
    │           │                       │   ├── RangeDecimalWidgetTest.java
    │           │                       │   ├── RangeIntegerWidgetTest.java
    │           │                       │   ├── RangePickerDecimalWidgetTest.kt
    │           │                       │   ├── RangePickerIntegerWidgetTest.kt
    │           │                       │   └── RangePickerWidgetUtilsTest.kt
    │           │                       ├── support/
    │           │                       │   ├── FakeQuestionMediaManager.java
    │           │                       │   ├── FakeWaitingForDataRegistry.java
    │           │                       │   ├── FormElementFixtures.kt
    │           │                       │   ├── FormEntryPromptSelectChoiceLoader.kt
    │           │                       │   ├── GeoWidgetHelpers.java
    │           │                       │   ├── NoOpMapFragment.kt
    │           │                       │   ├── QuestionWidgetHelpers.java
    │           │                       │   └── SynchronousImageLoader.kt
    │           │                       ├── utilities/
    │           │                       │   ├── ActivityGeoDataRequesterTest.java
    │           │                       │   ├── AudioRecorderRecordingStatusHandlerTest.java
    │           │                       │   ├── ExternalAppRecordingRequesterTest.kt
    │           │                       │   ├── FileRequesterImplTest.kt
    │           │                       │   ├── GeoWidgetUtilsTest.kt
    │           │                       │   ├── GetContentAudioFileRequesterTest.kt
    │           │                       │   ├── InternalRecordingRequesterTest.java
    │           │                       │   ├── RangeWidgetUtilsTest.java
    │           │                       │   ├── RecordingRequesterProviderTest.java
    │           │                       │   ├── StringRequesterImplTest.kt
    │           │                       │   └── StringWidgetUtilsTest.java
    │           │                       ├── viewmodels/
    │           │                       │   └── DateTimeViewModelTest.java
    │           │                       └── warnings/
    │           │                           ├── SpacesInUnderlyingValuesTest.java
    │           │                           └── SpacesInUnderlyingValuesWarningTest.java
    │           └── resources/
    │               ├── robolectric.properties
    │               ├── forms/
    │               │   └── simple-search-external-csv.xml
    │               └── media/
    │                   └── simple-search-external-csv-fruits.csv
    ├── config/
    │   ├── checkstyle.xml
    │   ├── lint.xml
    │   └── pmd-ruleset.xml
    ├── crash-handler/
    │   ├── build.gradle.kts
    │   ├── consumer-rules.pro
    │   ├── .gitignore
    │   └── src/
    │       ├── main/
    │       │   ├── AndroidManifest.xml
    │       │   ├── java/
    │       │   │   └── org/
    │       │   │       └── odk/
    │       │   │           └── collect/
    │       │   │               └── crashhandler/
    │       │   │                   ├── CrashHandler.kt
    │       │   │                   ├── CrashView.kt
    │       │   │                   └── MockCrashView.kt
    │       │   └── res/
    │       │       └── layout/
    │       │           └── crash_layout.xml
    │       └── test/
    │           └── java/
    │               └── org/
    │                   └── odk/
    │                       └── collect/
    │                           └── crashhandler/
    │                               └── CrashHandlerTest.kt
    ├── db/
    │   ├── build.gradle.kts
    │   ├── .gitignore
    │   └── src/
    │       ├── main/
    │       │   ├── AndroidManifest.xml
    │       │   └── java/
    │       │       └── org/
    │       │           └── odk/
    │       │               └── collect/
    │       │                   └── db/
    │       │                       └── sqlite/
    │       │                           ├── AltDatabasePathContext.kt
    │       │                           ├── CursorExt.kt
    │       │                           ├── CustomSQLiteQueryBuilder.java
    │       │                           ├── CustomSQLiteQueryExecutor.java
    │       │                           ├── DatabaseConnection.kt
    │       │                           ├── DatabaseMigrator.java
    │       │                           ├── SQLiteColumns.kt
    │       │                           ├── SQLiteDatabaseExt.kt
    │       │                           ├── SQLiteUtils.java
    │       │                           ├── SqlQuery.kt
    │       │                           └── SynchronizedDatabaseConnection.kt
    │       └── test/
    │           └── java/
    │               └── org/
    │                   └── odk/
    │                       └── collect/
    │                           └── db/
    │                               └── sqlite/
    │                                   ├── CustomSQLiteQueryBuilderTest.java
    │                                   ├── SQLiteUtilsTest.java
    │                                   ├── SqlQueryTest.kt
    │                                   └── SqliteDatabaseExtTest.kt
    ├── docs/
    │   ├── ANALYTICS-QUESTIONS.md
    │   ├── CODE-GUIDELINES.md
    │   ├── CONTRIBUTING.md
    │   ├── STATE.md
    │   ├── TEST-GUIDELINES.md
    │   ├── WIDGETS.md
    │   └── WINDOWS-DEV-SETUP.md
    ├── draw/
    │   ├── build.gradle.kts
    │   ├── .gitignore
    │   └── src/
    │       ├── main/
    │       │   ├── AndroidManifest.xml
    │       │   ├── java/
    │       │   │   └── org/
    │       │   │       └── odk/
    │       │   │           └── collect/
    │       │   │               └── draw/
    │       │   │                   ├── DaggerSetup.kt
    │       │   │                   ├── DrawActivity.java
    │       │   │                   ├── DrawView.kt
    │       │   │                   ├── DrawViewModel.kt
    │       │   │                   ├── IconMenuListAdapter.java
    │       │   │                   ├── PenColorPickerDialog.kt
    │       │   │                   └── PenColorPickerViewModel.kt
    │       │   └── res/
    │       │       └── layout/
    │       │           ├── draw_layout.xml
    │       │           └── item_view_option.xml
    │       └── test/
    │           ├── java/
    │           │   └── org/
    │           │       └── odk/
    │           │           └── collect/
    │           │               └── draw/
    │           │                   ├── PenColorPickerDialogTest.kt
    │           │                   └── PenColorPickerViewModelTest.kt
    │           └── resources/
    │               └── robolectric.properties
    ├── entities/
    │   ├── build.gradle.kts
    │   ├── consumer-rules.pro
    │   ├── .gitignore
    │   └── src/
    │       ├── main/
    │       │   ├── AndroidManifest.xml
    │       │   ├── java/
    │       │   │   └── org/
    │       │   │       └── odk/
    │       │   │           └── collect/
    │       │   │               └── entities/
    │       │   │                   ├── DaggerSetup.kt
    │       │   │                   ├── LocalEntityUseCases.kt
    │       │   │                   ├── browser/
    │       │   │                   │   ├── EntitiesFragment.kt
    │       │   │                   │   ├── EntitiesViewModel.kt
    │       │   │                   │   ├── EntityBrowserActivity.kt
    │       │   │                   │   ├── EntityItemView.kt
    │       │   │                   │   └── EntityListsFragment.kt
    │       │   │                   ├── javarosa/
    │       │   │                   │   ├── filter/
    │       │   │                   │   │   ├── LocalEntitiesFilterStrategy.kt
    │       │   │                   │   │   └── PullDataFunctionHandler.kt
    │       │   │                   │   ├── finalization/
    │       │   │                   │   │   ├── EntitiesExtra.kt
    │       │   │                   │   │   ├── EntityFormFinalizationProcessor.java
    │       │   │                   │   │   └── FormEntity.kt
    │       │   │                   │   ├── intance/
    │       │   │                   │   │   ├── LocalEntitiesExternalInstanceParserFactory.kt
    │       │   │                   │   │   ├── LocalEntitiesInstanceAdapter.kt
    │       │   │                   │   │   └── LocalEntitiesInstanceProvider.kt
    │       │   │                   │   ├── parse/
    │       │   │                   │   │   ├── EntityFormExtra.java
    │       │   │                   │   │   ├── EntityFormParseProcessor.java
    │       │   │                   │   │   ├── EntitySchema.kt
    │       │   │                   │   │   └── EntityXFormParserFactory.java
    │       │   │                   │   └── spec/
    │       │   │                   │       ├── EntityAction.kt
    │       │   │                   │       ├── EntityFormParser.java
    │       │   │                   │       ├── FormEntityElement.kt
    │       │   │                   │       └── UnrecognizedEntityVersionException.kt
    │       │   │                   └── storage/
    │       │   │                       ├── EntitiesRepository.kt
    │       │   │                       ├── Entity.kt
    │       │   │                       └── InMemEntitiesRepository.kt
    │       │   └── res/
    │       │       ├── layout/
    │       │       │   ├── entities_layout.xml
    │       │       │   ├── entity_item_layout.xml
    │       │       │   ├── entity_list_item_layout.xml
    │       │       │   └── list_layout.xml
    │       │       └── navigation/
    │       │           └── entities_nav.xml
    │       └── test/
    │           └── java/
    │               └── org/
    │                   └── odk/
    │                       └── collect/
    │                           └── entities/
    │                               ├── LocalEntityUseCasesTest.kt
    │                               ├── browser/
    │                               │   └── EntityItemViewTest.kt
    │                               └── javarosa/
    │                                   ├── EntitiesTest.java
    │                                   ├── EntityFormFinalizationProcessorTest.java
    │                                   ├── EntityFormParseProcessorTest.java
    │                                   ├── EntityFormParserTest.java
    │                                   ├── LocalEntitiesInstanceProviderTest.kt
    │                                   └── filter/
    │                                       ├── LocalEntitiesFilterStrategyTest.kt
    │                                       └── PullDataFunctionHandlerTest.kt
    ├── errors/
    │   ├── build.gradle.kts
    │   ├── consumer-rules.pro
    │   ├── .gitignore
    │   └── src/
    │       ├── main/
    │       │   ├── AndroidManifest.xml
    │       │   ├── java/
    │       │   │   └── org/
    │       │   │       └── odk/
    │       │   │           └── collect/
    │       │   │               └── errors/
    │       │   │                   ├── ErrorActivity.kt
    │       │   │                   ├── ErrorAdapter.kt
    │       │   │                   └── ErrorItem.kt
    │       │   └── res/
    │       │       └── layout/
    │       │           ├── activity_error.xml
    │       │           └── error_item.xml
    │       └── test/
    │           ├── java/
    │           │   └── org/
    │           │       └── odk/
    │           │           └── collect/
    │           │               └── errors/
    │           │                   └── ErrorActivityTest.kt
    │           └── resources/
    │               └── robolectric.properties
    ├── external-app/
    │   ├── build.gradle.kts
    │   ├── consumer-rules.pro
    │   ├── .gitignore
    │   └── src/
    │       ├── main/
    │       │   ├── AndroidManifest.xml
    │       │   └── java/
    │       │       └── org/
    │       │           └── odk/
    │       │               └── collect/
    │       │                   └── externalapp/
    │       │                       └── ExternalAppUtils.kt
    │       └── test/
    │           └── java/
    │               └── org/
    │                   └── odk/
    │                       └── collect/
    │                           └── externalapp/
    │                               └── ExternalAppUtilsTest.kt
    ├── forms/
    │   ├── build.gradle.kts
    │   ├── .gitignore
    │   └── src/
    │       ├── main/
    │       │   └── java/
    │       │       └── org/
    │       │           └── odk/
    │       │               └── collect/
    │       │                   └── forms/
    │       │                       ├── Form.java
    │       │                       ├── FormListItem.kt
    │       │                       ├── FormSource.java
    │       │                       ├── FormSourceException.kt
    │       │                       ├── FormsRepository.java
    │       │                       ├── ManifestFile.kt
    │       │                       ├── MediaFile.kt
    │       │                       ├── instances/
    │       │                       │   ├── Instance.java
    │       │                       │   └── InstancesRepository.java
    │       │                       └── savepoints/
    │       │                           ├── Savepoint.kt
    │       │                           └── SavepointsRepository.kt
    │       └── test/
    │           └── java/
    │               └── org/
    │                   └── odk/
    │                       └── collect/
    │                           └── forms/
    │                               └── instances/
    │                                   └── InstanceTest.kt
    ├── forms-test/
    │   ├── README.md
    │   ├── build.gradle.kts
    │   ├── .gitignore
    │   └── src/
    │       ├── main/
    │       │   └── java/
    │       │       └── org/
    │       │           └── odk/
    │       │               └── collect/
    │       │                   └── formstest/
    │       │                       ├── FormFixtures.kt
    │       │                       ├── FormUtils.kt
    │       │                       ├── FormsRepositoryTest.java
    │       │                       ├── InMemFormsRepository.java
    │       │                       ├── InMemInstancesRepository.java
    │       │                       ├── InMemSavepointsRepository.kt
    │       │                       ├── InstanceFixtures.kt
    │       │                       ├── InstanceUtils.kt
    │       │                       ├── InstancesRepositoryTest.java
    │       │                       └── SavepointsRepositoryTest.kt
    │       └── test/
    │           └── java/
    │               └── org/
    │                   └── odk/
    │                       └── collect/
    │                           └── formstest/
    │                               ├── InMemFormsRepositoryTest.java
    │                               ├── InMemInstancesRepositoryTest.java
    │                               └── InMemSavepointsRepositoryTest.kt
    ├── fragments-test/
    │   ├── README.md
    │   ├── build.gradle.kts
    │   ├── consumer-rules.pro
    │   ├── .gitignore
    │   └── src/
    │       └── main/
    │           ├── AndroidManifest.xml
    │           └── java/
    │               └── org/
    │                   └── odk/
    │                       └── collect/
    │                           └── fragmentstest/
    │                               └── FragmentScenarioLauncherRule.kt
    ├── geo/
    │   ├── build.gradle.kts
    │   ├── consumer-rules.pro
    │   ├── .gitignore
    │   └── src/
    │       ├── main/
    │       │   ├── AndroidManifest.xml
    │       │   ├── java/
    │       │   │   └── org/
    │       │   │       └── odk/
    │       │   │           └── collect/
    │       │   │               └── geo/
    │       │   │                   ├── Constants.kt
    │       │   │                   ├── DaggerSetup.kt
    │       │   │                   ├── GeoActivityUtils.kt
    │       │   │                   ├── GeoUtils.java
    │       │   │                   ├── analytics/
    │       │   │                   │   └── AnalyticsEvents.kt
    │       │   │                   ├── geopoint/
    │       │   │                   │   ├── AccuracyStatusView.kt
    │       │   │                   │   ├── GeoPointAccuracy.kt
    │       │   │                   │   ├── GeoPointActivity.kt
    │       │   │                   │   ├── GeoPointDialogFragment.kt
    │       │   │                   │   ├── GeoPointMapActivity.java
    │       │   │                   │   └── GeoPointViewModel.kt
    │       │   │                   ├── geopoly/
    │       │   │                   │   ├── GeoPolyActivity.java
    │       │   │                   │   └── GeoPolySettingsDialogFragment.java
    │       │   │                   └── selection/
    │       │   │                       ├── MappableSelectItem.kt
    │       │   │                       ├── SelectionMapFragment.kt
    │       │   │                       └── SelectionSummarySheet.kt
    │       │   └── res/
    │       │       ├── color/
    │       │       │   └── fab_surface_background_color_less_transparent_disabled.xml
    │       │       ├── drawable/
    │       │       │   ├── ic_add_location.xml
    │       │       │   ├── ic_backspace.xml
    │       │       │   ├── ic_crop_frame.xml
    │       │       │   ├── ic_distance.xml
    │       │       │   ├── ic_layers.xml
    │       │       │   ├── ic_my_location.xml
    │       │       │   ├── ic_note_add.xml
    │       │       │   ├── ic_pause_36.xml
    │       │       │   └── property_divider.xml
    │       │       ├── layout/
    │       │       │   ├── accuracy_status.xml
    │       │       │   ├── geopoint_dialog.xml
    │       │       │   ├── geopoint_layout.xml
    │       │       │   ├── geopoly_dialog.xml
    │       │       │   ├── geopoly_layout.xml
    │       │       │   ├── property.xml
    │       │       │   ├── selection_map_layout.xml
    │       │       │   ├── selection_summary_sheet_layout.xml
    │       │       │   └── simple_spinner_dropdown_item.xml
    │       │       ├── layout-land/
    │       │       │   ├── geopoint_layout.xml
    │       │       │   └── geopoly_layout.xml
    │       │       └── values/
    │       │           ├── fab_surface.xml
    │       │           └── force_light_surface_overlay.xml
    │       └── test/
    │           ├── java/
    │           │   └── org/
    │           │       └── odk/
    │           │           └── collect/
    │           │               └── geo/
    │           │                   ├── GeoUtilsTest.java
    │           │                   ├── geopoint/
    │           │                   │   ├── AccuracyStatusViewTest.kt
    │           │                   │   ├── GeoPointActivityTest.kt
    │           │                   │   ├── GeoPointDialogFragmentTest.kt
    │           │                   │   ├── GeoPointMapActivityTest.java
    │           │                   │   └── LocationTrackerGeoPointViewModelTest.kt
    │           │                   ├── geopoly/
    │           │                   │   ├── GeoPolyActivityTest.kt
    │           │                   │   └── GeoPolySettingsDialogFragmentTest.java
    │           │                   ├── selection/
    │           │                   │   ├── SelectionMapFragmentTest.kt
    │           │                   │   └── SelectionSummarySheetTest.kt
    │           │                   └── support/
    │           │                       ├── FakeMapFragment.kt
    │           │                       ├── Fixtures.kt
    │           │                       └── RobolectricApplication.kt
    │           └── resources/
    │               └── robolectric.properties
    ├── google-maps/
    │   ├── build.gradle.kts
    │   ├── .gitignore
    │   └── src/
    │       └── main/
    │           ├── AndroidManifest.xml
    │           ├── java/
    │           │   └── org/
    │           │       └── odk/
    │           │           └── collect/
    │           │               └── googlemaps/
    │           │                   ├── BitmapDescriptorCache.kt
    │           │                   ├── DaggerSetup.kt
    │           │                   ├── GoogleMapConfigurator.java
    │           │                   ├── GoogleMapFragment.java
    │           │                   ├── GoogleMapsMapBoxOfflineTileProvider.java
    │           │                   └── scaleview/
    │           │                       ├── Drawer.java
    │           │                       ├── MapScaleModel.java
    │           │                       ├── MapScaleView.java
    │           │                       ├── Scale.java
    │           │                       ├── Scales.java
    │           │                       └── ViewConfig.java
    │           └── res/
    │               ├── layout/
    │               │   └── map_layout.xml
    │               └── values/
    │                   └── attrs.xml
    ├── gradle/
    │   ├── libs.versions.toml
    │   └── wrapper/
    │       └── gradle-wrapper.properties
    ├── icons/
    │   ├── build.gradle.kts
    │   ├── .gitignore
    │   └── src/
    │       └── main/
    │           ├── AndroidManifest.xml
    │           └── res/
    │               └── drawable/
    │                   ├── ic_add_white_24.xml
    │                   ├── ic_baseline_add_24.xml
    │                   ├── ic_baseline_attach_file_white_24.xml
    │                   ├── ic_baseline_barcode_scanner_white_24.xml
    │                   ├── ic_baseline_calendar_today_white_24.xml
    │                   ├── ic_baseline_check_24.xml
    │                   ├── ic_baseline_collapse_24.xml
    │                   ├── ic_baseline_done_all_24.xml
    │                   ├── ic_baseline_draw_white_24.xml
    │                   ├── ic_baseline_expand_24.xml
    │                   ├── ic_baseline_explore_white_24.xml
    │                   ├── ic_baseline_format_list_bulleted_white_24.xml
    │                   ├── ic_baseline_format_list_numbered_white_24.xml
    │                   ├── ic_baseline_language_24.xml
    │                   ├── ic_baseline_layers_24.xml
    │                   ├── ic_baseline_library_music_white_24.xml
    │                   ├── ic_baseline_list_24.xml
    │                   ├── ic_baseline_location_off_24.xml
    │                   ├── ic_baseline_location_on_24.xml
    │                   ├── ic_baseline_location_on_white_24.xml
    │                   ├── ic_baseline_markup_white_24.xml
    │                   ├── ic_baseline_mic_24.xml
    │                   ├── ic_baseline_mic_off_24.xml
    │                   ├── ic_baseline_mic_white_24.xml
    │                   ├── ic_baseline_my_location_white_24.xml
    │                   ├── ic_baseline_open_in_new_white_24.xml
    │                   ├── ic_baseline_photo_camera_white_24.xml
    │                   ├── ic_baseline_photo_library_white_24.xml
    │                   ├── ic_baseline_play_circle_white_24.xml
    │                   ├── ic_baseline_print_white_24.xml
    │                   ├── ic_baseline_qr_code_2_add_24.xml
    │                   ├── ic_baseline_remove_24.xml
    │                   ├── ic_baseline_rule_24.xml
    │                   ├── ic_baseline_settings_24.xml
    │                   ├── ic_baseline_signature_white_24.xml
    │                   ├── ic_baseline_time_filled_white_24.xml
    │                   ├── ic_baseline_video_library_white_24.xml
    │                   ├── ic_baseline_videocam_white_24.xml
    │                   ├── ic_baseline_visibility_24.xml
    │                   ├── ic_baseline_warning_24.xml
    │                   ├── ic_baseline_wifi_off_24.xml
    │                   ├── ic_clear_white.xml
    │                   ├── ic_close.xml
    │                   ├── ic_color_lens_white.xml
    │                   ├── ic_delete.xml
    │                   ├── ic_delete_24.xml
    │                   ├── ic_map_marker_big.xml
    │                   ├── ic_map_marker_small.xml
    │                   ├── ic_map_marker_with_hole_big.xml
    │                   ├── ic_map_marker_with_hole_small.xml
    │                   ├── ic_map_point.xml
    │                   ├── ic_notification_small.xml
    │                   ├── ic_outline_info_24.xml
    │                   ├── ic_outline_polygon_white_24.xml
    │                   ├── ic_outline_polyline_white_24.xml
    │                   ├── ic_save.xml
    │                   └── ic_save_white.xml
    ├── image-loader/
    │   ├── build.gradle.kts
    │   ├── .gitignore
    │   └── src/
    │       └── main/
    │           ├── AndroidManifest.xml
    │           └── java/
    │               └── org/
    │                   └── odk/
    │                       └── collect/
    │                           └── imageloader/
    │                               ├── GlideImageLoader.kt
    │                               └── svg/
    │                                   ├── SvgDecoder.kt
    │                                   ├── SvgDrawableTranscoder.kt
    │                                   ├── SvgModule.kt
    │                                   └── SvgSoftwareLayerSetter.kt
    ├── lists/
    │   ├── build.gradle.kts
    │   ├── consumer-rules.pro
    │   ├── proguard-rules.pro
    │   ├── .gitignore
    │   └── src/
    │       ├── main/
    │       │   ├── AndroidManifest.xml
    │       │   ├── java/
    │       │   │   └── org/
    │       │   │       └── odk/
    │       │   │           └── collect/
    │       │   │               └── lists/
    │       │   │                   ├── EmptyListView.kt
    │       │   │                   ├── RecyclerViewUtils.kt
    │       │   │                   └── selects/
    │       │   │                       ├── MultiSelectAdapter.kt
    │       │   │                       ├── MultiSelectControlsFragment.kt
    │       │   │                       ├── MultiSelectListFragment.kt
    │       │   │                       ├── MultiSelectViewModel.kt
    │       │   │                       ├── SelectItem.kt
    │       │   │                       └── SingleSelectViewModel.kt
    │       │   └── res/
    │       │       ├── layout/
    │       │       │   ├── empty_list_view.xml
    │       │       │   ├── multi_select_controls_layout.xml
    │       │       │   └── multi_select_list.xml
    │       │       └── values/
    │       │           └── attrs.xml
    │       └── test/
    │           ├── java/
    │           │   └── org/
    │           │       └── odk/
    │           │           └── collect/
    │           │               └── lists/
    │           │                   ├── EmptyListViewTest.kt
    │           │                   ├── RobolectricApplication.kt
    │           │                   └── selects/
    │           │                       ├── MultiSelectAdapterTest.kt
    │           │                       ├── MultiSelectControlsFragmentTest.kt
    │           │                       ├── MultiSelectListFragmentTest.kt
    │           │                       ├── MultiSelectViewModelTest.kt
    │           │                       ├── SingleSelectViewModelTest.kt
    │           │                       └── support/
    │           │                           └── TextAndCheckboxViewHolder.kt
    │           └── resources/
    │               └── robolectric.properties
    ├── location/
    │   ├── build.gradle.kts
    │   ├── consumer-rules.pro
    │   ├── .gitignore
    │   └── src/
    │       ├── main/
    │       │   ├── AndroidManifest.xml
    │       │   └── java/
    │       │       └── org/
    │       │           └── odk/
    │       │               └── collect/
    │       │                   └── location/
    │       │                       ├── AndroidLocationClient.java
    │       │                       ├── BaseLocationClient.kt
    │       │                       ├── GoogleFusedLocationClient.kt
    │       │                       ├── Location.kt
    │       │                       ├── LocationClient.java
    │       │                       ├── LocationClientProvider.kt
    │       │                       ├── LocationUtils.kt
    │       │                       ├── satellites/
    │       │                       │   ├── GpsStatusSatelliteInfoClient.kt
    │       │                       │   └── SatelliteInfoClient.kt
    │       │                       └── tracker/
    │       │                           ├── ForegroundServiceLocationTracker.kt
    │       │                           └── LocationTracker.kt
    │       └── test/
    │           ├── java/
    │           │   └── org/
    │           │       └── odk/
    │           │           └── collect/
    │           │               └── location/
    │           │                   ├── AndroidLocationClientTest.java
    │           │                   ├── GoogleFusedLocationClientTest.kt
    │           │                   ├── LocationClientProviderTest.kt
    │           │                   ├── LocationUtilsTest.kt
    │           │                   ├── RobolectricApplication.kt
    │           │                   ├── TestClientListener.java
    │           │                   ├── TestLocationListener.java
    │           │                   └── tracker/
    │           │                       ├── ForegroundServiceLocationTrackerTest.kt
    │           │                       ├── LocationTrackerServiceTest.kt
    │           │                       └── LocationTrackerTest.kt
    │           └── resources/
    │               └── robolectric.properties
    ├── mapbox/
    │   ├── build.gradle.kts
    │   ├── consumer-rules.pro
    │   ├── .gitignore
    │   └── src/
    │       ├── main/
    │       │   ├── AndroidManifest.xml
    │       │   ├── java/
    │       │   │   └── org/
    │       │   │       └── odk/
    │       │   │           └── collect/
    │       │   │               └── mapbox/
    │       │   │                   ├── DynamicPolyLineFeature.kt
    │       │   │                   ├── LineFeature.kt
    │       │   │                   ├── MapBoxInitializationFragment.kt
    │       │   │                   ├── MapFeature.kt
    │       │   │                   ├── MapUtils.kt
    │       │   │                   ├── MapboxLocationCallback.kt
    │       │   │                   ├── MapboxMapConfigurator.java
    │       │   │                   ├── MapboxMapFragment.kt
    │       │   │                   ├── MarkerFeature.kt
    │       │   │                   ├── StaticPolyLineFeature.kt
    │       │   │                   ├── StaticPolygonFeature.kt
    │       │   │                   └── TileHttpServer.java
    │       │   └── res/
    │       │       └── layout/
    │       │           └── mapbox_fragment_layout.xml
    │       └── test/
    │           └── java/
    │               └── org/
    │                   └── odk/
    │                       └── collect/
    │                           └── mapbox/
    │                               └── MapboxLocationCallbackTest.java
    ├── maps/
    │   ├── build.gradle.kts
    │   ├── consumer-rules.pro
    │   ├── .gitignore
    │   └── src/
    │       ├── main/
    │       │   ├── AndroidManifest.xml
    │       │   ├── java/
    │       │   │   └── org/
    │       │   │       └── odk/
    │       │   │           └── collect/
    │       │   │               └── maps/
    │       │   │                   ├── AnalyticsEvents.kt
    │       │   │                   ├── LineDescription.kt
    │       │   │                   ├── MapConfigurator.kt
    │       │   │                   ├── MapConsts.kt
    │       │   │                   ├── MapFragment.kt
    │       │   │                   ├── MapFragmentDelegate.kt
    │       │   │                   ├── MapFragmentFactory.kt
    │       │   │                   ├── MapPoint.kt
    │       │   │                   ├── PolygonDescription.kt
    │       │   │                   ├── layers/
    │       │   │                   │   ├── DirectoryReferenceLayerRepository.kt
    │       │   │                   │   ├── MapFragmentReferenceLayerUtils.kt
    │       │   │                   │   ├── MbtilesFile.java
    │       │   │                   │   ├── OfflineMapLayersImporterAdapter.kt
    │       │   │                   │   ├── OfflineMapLayersImporterDialogFragment.kt
    │       │   │                   │   ├── OfflineMapLayersPickerAdapter.kt
    │       │   │                   │   ├── OfflineMapLayersPickerBottomSheetDialogFragment.kt
    │       │   │                   │   ├── OfflineMapLayersViewModel.kt
    │       │   │                   │   ├── ReferenceLayerRepository.kt
    │       │   │                   │   └── TileSource.java
    │       │   │                   └── markers/
    │       │   │                       ├── MarkerDescription.kt
    │       │   │                       ├── MarkerIconCreator.kt
    │       │   │                       └── MarkerIconDescription.kt
    │       │   └── res/
    │       │       ├── drawable/
    │       │       │   └── ic_crosshairs.xml
    │       │       └── layout/
    │       │           ├── offline_map_layers_importer.xml
    │       │           ├── offline_map_layers_importer_item.xml
    │       │           ├── offline_map_layers_picker.xml
    │       │           └── offline_map_layers_picker_item.xml
    │       └── test/
    │           ├── java/
    │           │   └── org/
    │           │       └── odk/
    │           │           └── collect/
    │           │               └── maps/
    │           │                   ├── LineDescriptionTest.kt
    │           │                   ├── MarkerIconDescriptionTest.kt
    │           │                   ├── PolygonDescriptionTest.kt
    │           │                   ├── RobolectricApplication.kt
    │           │                   └── layers/
    │           │                       ├── DirectoryReferenceLayerRepositoryTest.kt
    │           │                       ├── InMemReferenceLayerRepository.kt
    │           │                       ├── MapFragmentReferenceLayerUtilsTest.kt
    │           │                       ├── OfflineMapLayersImporterDialogFragmentTest.kt
    │           │                       └── OfflineMapLayersPickerBottomSheetDialogFragmentTest.kt
    │           └── resources/
    │               └── robolectric.properties
    ├── material/
    │   ├── README.md
    │   ├── build.gradle.kts
    │   ├── consumer-rules.pro
    │   ├── .gitignore
    │   └── src/
    │       ├── main/
    │       │   ├── AndroidManifest.xml
    │       │   ├── java/
    │       │   │   └── org/
    │       │   │       └── odk/
    │       │   │           └── collect/
    │       │   │               └── material/
    │       │   │                   ├── BottomSheetBehavior.kt
    │       │   │                   ├── ErrorsPill.kt
    │       │   │                   ├── MaterialAlertDialogFragment.kt
    │       │   │                   ├── MaterialFullScreenDialogFragment.java
    │       │   │                   ├── MaterialPill.kt
    │       │   │                   └── MaterialProgressDialogFragment.java
    │       │   └── res/
    │       │       ├── layout/
    │       │       │   ├── pill.xml
    │       │       │   └── progress_dialog.xml
    │       │       └── values/
    │       │           ├── attrs.xml
    │       │           ├── material_3_button_icon_end_style.xml
    │       │           └── material_full_screen_dialog_theme.xml
    │       └── test/
    │           └── java/
    │               └── org/
    │                   └── odk/
    │                       └── collect/
    │                           └── material/
    │                               ├── ErrorsPillTest.kt
    │                               ├── MaterialAlertDialogFragmentTest.kt
    │                               └── MaterialProgressDialogFragmentTest.java
    ├── metadata/
    │   ├── build.gradle.kts
    │   ├── .gitignore
    │   └── src/
    │       ├── main/
    │       │   └── java/
    │       │       └── org/
    │       │           └── odk/
    │       │               └── collect/
    │       │                   └── metadata/
    │       │                       ├── InstallIDProvider.kt
    │       │                       └── PropertyManager.kt
    │       └── test/
    │           └── java/
    │               └── org/
    │                   └── odk/
    │                       └── collect/
    │                           └── metadata/
    │                               ├── PropertyManagerTest.kt
    │                               └── SettingsInstallIDProviderTest.kt
    ├── nbistubs/
    │   ├── README.md
    │   ├── build.gradle.kts
    │   ├── consumer-rules.pro
    │   ├── .gitignore
    │   └── src/
    │       └── main/
    │           ├── AndroidManifest.xml
    │           └── jniLibs/
    │               ├── arm64-v8a/
    │               ├── armeabi/
    │               ├── armeabi-v7a/
    │               ├── x86/
    │               └── x86_64/
    ├── osmdroid/
    │   ├── build.gradle.kts
    │   ├── consumer-rules.pro
    │   ├── .gitignore
    │   └── src/
    │       └── main/
    │           ├── AndroidManifest.xml
    │           ├── java/
    │           │   └── org/
    │           │       └── odk/
    │           │           └── collect/
    │           │               └── osmdroid/
    │           │                   ├── DaggerSetup.kt
    │           │                   ├── OsmDroidInitializer.kt
    │           │                   ├── OsmDroidMapConfigurator.java
    │           │                   ├── OsmDroidMapFragment.java
    │           │                   ├── OsmMBTileModuleProvider.java
    │           │                   ├── OsmMBTileProvider.java
    │           │                   ├── OsmMBTileSource.java
    │           │                   └── WebMapService.java
    │           └── res/
    │               └── layout/
    │                   └── osm_map_layout.xml
    ├── permissions/
    │   ├── build.gradle.kts
    │   ├── .gitignore
    │   └── src/
    │       ├── main/
    │       │   ├── AndroidManifest.xml
    │       │   ├── java/
    │       │   │   └── org/
    │       │   │       └── odk/
    │       │   │           └── collect/
    │       │   │               └── permissions/
    │       │   │                   ├── LocationAccessibilityChecker.kt
    │       │   │                   ├── PermissionListener.kt
    │       │   │                   ├── PermissionsChecker.kt
    │       │   │                   ├── PermissionsDialogCreator.kt
    │       │   │                   ├── PermissionsProvider.kt
    │       │   │                   └── RequestPermissionsAPI.kt
    │       │   └── res/
    │       │       └── drawable/
    │       │           ├── ic_photo_camera.xml
    │       │           ├── ic_room_24dp.xml
    │       │           └── ic_storage.xml
    │       └── test/
    │           ├── java/
    │           │   └── org/
    │           │       └── odk/
    │           │           └── collect/
    │           │               └── permissions/
    │           │                   ├── PermissionsDialogCreatorTest.kt
    │           │                   └── PermissionsProviderTest.kt
    │           └── resources/
    │               └── robolectric.properties
    ├── printer/
    │   ├── build.gradle.kts
    │   ├── .gitignore
    │   └── src/
    │       └── main/
    │           ├── AndroidManifest.xml
    │           └── java/
    │               └── org/
    │                   └── odk/
    │                       └── collect/
    │                           └── printer/
    │                               └── HtmlPrinter.kt
    ├── projects/
    │   ├── build.gradle.kts
    │   ├── consumer-rules.pro
    │   ├── .gitignore
    │   └── src/
    │       ├── main/
    │       │   ├── AndroidManifest.xml
    │       │   └── java/
    │       │       └── org/
    │       │           └── odk/
    │       │               └── collect/
    │       │                   └── projects/
    │       │                       ├── DaggerSetup.kt
    │       │                       ├── InMemProjectsRepository.kt
    │       │                       ├── Project.kt
    │       │                       ├── ProjectDependencyFactory.kt
    │       │                       ├── ProjectsRepository.kt
    │       │                       └── SharedPreferencesProjectsRepository.kt
    │       └── test/
    │           ├── java/
    │           │   └── org/
    │           │       └── odk/
    │           │           └── collect/
    │           │               └── projects/
    │           │                   ├── InMemProjectsRepositoryTest.kt
    │           │                   ├── ProjectsRepositoryTest.kt
    │           │                   ├── SharedPreferencesProjectsRepositoryTest.kt
    │           │                   └── support/
    │           │                       └── RobolectricApplication.kt
    │           └── resources/
    │               └── robolectric.properties
    ├── qr-code/
    │   ├── build.gradle.kts
    │   ├── .gitignore
    │   └── src/
    │       ├── main/
    │       │   ├── AndroidManifest.xml
    │       │   └── java/
    │       │       └── org/
    │       │           └── odk/
    │       │               └── collect/
    │       │                   └── qrcode/
    │       │                       ├── QRCodeCreator.kt
    │       │                       └── QRCodeDecoder.kt
    │       └── test/
    │           ├── assets/
    │           ├── java/
    │           │   └── org/
    │           │       └── odk/
    │           │           └── collect/
    │           │               └── qrcode/
    │           │                   └── QRCodeEncodeDecodeTest.kt
    │           └── resources/
    │               └── robolectric.properties
    ├── selfie-camera/
    │   ├── build.gradle.kts
    │   ├── consumer-rules.pro
    │   ├── .gitignore
    │   └── src/
    │       ├── main/
    │       │   ├── AndroidManifest.xml
    │       │   ├── java/
    │       │   │   └── org/
    │       │   │       └── odk/
    │       │   │           └── collect/
    │       │   │               └── selfiecamera/
    │       │   │                   ├── Camera.kt
    │       │   │                   ├── CameraXCamera.kt
    │       │   │                   ├── CaptureSelfieActivity.kt
    │       │   │                   └── DaggerSetup.kt
    │       │   └── res/
    │       │       └── layout/
    │       │           └── activity_capture_selfie.xml
    │       └── test/
    │           ├── java/
    │           │   └── org/
    │           │       └── odk/
    │           │           └── collect/
    │           │               └── selfiecamera/
    │           │                   ├── CaptureSelfieActivityTest.kt
    │           │                   └── support/
    │           │                       └── RobolectricApplication.kt
    │           └── resources/
    │               └── robolectric.properties
    ├── service-test/
    │   ├── README.md
    │   ├── build.gradle.kts
    │   ├── consumer-rules.pro
    │   ├── .gitignore
    │   └── src/
    │       └── main/
    │           ├── AndroidManifest.xml
    │           └── java/
    │               └── org/
    │                   └── odk/
    │                       └── collect/
    │                           └── servicetest/
    │                               ├── NotificationDetails.kt
    │                               └── ServiceScenario.kt
    ├── settings/
    │   ├── README.md
    │   ├── build.gradle.kts
    │   ├── consumer-rules.pro
    │   ├── .gitignore
    │   └── src/
    │       ├── main/
    │       │   ├── AndroidManifest.xml
    │       │   ├── java/
    │       │   │   └── org/
    │       │   │       └── odk/
    │       │   │           └── collect/
    │       │   │               └── settings/
    │       │   │                   ├── InMemSettingsProvider.kt
    │       │   │                   ├── ODKAppSettingsImporter.kt
    │       │   │                   ├── ODKAppSettingsMigrator.java
    │       │   │                   ├── SettingsProvider.kt
    │       │   │                   ├── enums/
    │       │   │                   │   ├── AutoSend.kt
    │       │   │                   │   ├── FormUpdateMode.java
    │       │   │                   │   ├── StringIdEnum.kt
    │       │   │                   │   └── StringIdEnumUtils.kt
    │       │   │                   ├── importing/
    │       │   │                   │   ├── ProjectDetailsCreatorImpl.kt
    │       │   │                   │   ├── SettingsImporter.kt
    │       │   │                   │   └── SettingsImportingResult.kt
    │       │   │                   ├── keys/
    │       │   │                   │   ├── AppConfigurationKeys.kt
    │       │   │                   │   ├── MetaKeys.kt
    │       │   │                   │   ├── ProjectKeys.kt
    │       │   │                   │   └── ProtectedProjectKeys.kt
    │       │   │                   ├── migration/
    │       │   │                   │   ├── KeyCombiner.java
    │       │   │                   │   ├── KeyExtractor.java
    │       │   │                   │   ├── KeyMover.java
    │       │   │                   │   ├── KeyRenamer.java
    │       │   │                   │   ├── KeyTranslator.java
    │       │   │                   │   ├── KeyUpdater.java
    │       │   │                   │   ├── KeyValuePair.java
    │       │   │                   │   ├── Migration.java
    │       │   │                   │   ├── MigrationUtils.java
    │       │   │                   │   └── ValueTranslator.java
    │       │   │                   └── validation/
    │       │   │                       └── JsonSchemaSettingsValidator.kt
    │       │   ├── res/
    │       │   │   └── values/
    │       │   │       └── strings.xml
    │       │   └── resources/
    │       │       └── client-settings.schema.json
    │       └── test/
    │           └── java/
    │               └── org/
    │                   └── odk/
    │                       └── collect/
    │                           └── settings/
    │                               ├── ODKAppSettingsImporterTest.kt
    │                               ├── ODKAppSettingsMigratorTest.java
    │                               ├── importing/
    │                               │   ├── ProjectDetailsCreatorImplTest.kt
    │                               │   └── SettingsImporterTest.kt
    │                               ├── migration/
    │                               │   ├── KeyCombinerTest.java
    │                               │   ├── KeyExtractorTest.java
    │                               │   ├── KeyMoverTest.java
    │                               │   ├── KeyRemoverTest.java
    │                               │   ├── KeyRenamerTest.java
    │                               │   ├── KeyTranslatorTest.java
    │                               │   └── ValueTranslatorTest.java
    │                               ├── support/
    │                               │   └── SettingsUtils.kt
    │                               └── validation/
    │                                   ├── JsonSchemaSettingsValidatorTest.kt
    │                                   └── OriginalJsonSchemaSettingsValidatorTest.kt
    ├── shadows/
    │   ├── README.md
    │   ├── build.gradle.kts
    │   ├── consumer-rules.pro
    │   ├── .gitignore
    │   └── src/
    │       ├── main/
    │       │   ├── AndroidManifest.xml
    │       │   └── java/
    │       │       └── org/
    │       │           └── odk/
    │       │               └── collect/
    │       │                   └── shadows/
    │       │                       └── ShadowAndroidXAlertDialog.kt
    │       └── test/
    │           └── java/
    │               └── org/
    │                   └── odk/
    │                       └── collect/
    │                           └── shadows/
    │                               └── ShadowAndroidXAlertDialogTest.kt
    ├── shared/
    │   ├── build.gradle.kts
    │   ├── .gitignore
    │   └── src/
    │       ├── main/
    │       │   └── java/
    │       │       └── org/
    │       │           └── odk/
    │       │               └── collect/
    │       │                   └── shared/
    │       │                       ├── PathUtils.kt
    │       │                       ├── Query.kt
    │       │                       ├── TempFiles.kt
    │       │                       ├── TimeInMs.kt
    │       │                       ├── collections/
    │       │                       │   └── CollectionExtensions.kt
    │       │                       ├── files/
    │       │                       │   └── FileExt.kt
    │       │                       ├── injection/
    │       │                       │   └── ObjectProvider.kt
    │       │                       ├── locks/
    │       │                       │   ├── BooleanChangeLock.kt
    │       │                       │   ├── ChangeLock.kt
    │       │                       │   └── ThreadSafeBooleanChangeLock.kt
    │       │                       ├── result/
    │       │                       │   └── Result.kt
    │       │                       ├── settings/
    │       │                       │   ├── InMemSettings.kt
    │       │                       │   └── Settings.kt
    │       │                       └── strings/
    │       │                           ├── Md5.kt
    │       │                           ├── RandomString.java
    │       │                           ├── StringUtils.kt
    │       │                           └── UUIDGenerator.kt
    │       └── test/
    │           └── java/
    │               └── org/
    │                   └── odk/
    │                       └── collect/
    │                           └── shared/
    │                               ├── Md5Test.kt
    │                               ├── PathUtilsTest.kt
    │                               ├── collections/
    │                               │   └── CollectionExtensionsTest.kt
    │                               ├── files/
    │                               │   └── FileExtTest.kt
    │                               ├── locks/
    │                               │   ├── BooleanChangeLockTest.kt
    │                               │   ├── ChangeLockTest.kt
    │                               │   └── ThreadSafeBooleanChangeLockTest.kt
    │                               └── strings/
    │                                   └── StringUtilsTest.kt
    ├── strings/
    │   ├── build.gradle.kts
    │   ├── .gitignore
    │   └── src/
    │       ├── main/
    │       │   ├── AndroidManifest.xml
    │       │   ├── java/
    │       │   │   └── org/
    │       │   │       └── odk/
    │       │   │           └── collect/
    │       │   │               └── strings/
    │       │   │                   ├── format/
    │       │   │                   │   └── LengthFormatter.kt
    │       │   │                   └── localization/
    │       │   │                       ├── LocalizedActivity.kt
    │       │   │                       └── LocalizedApplication.kt
    │       │   └── res/
    │       │       ├── values/
    │       │       │   ├── strings.xml
    │       │       │   └── untranslated.xml
    │       │       ├── values-af/
    │       │       │   └── strings.xml
    │       │       ├── values-am/
    │       │       │   └── strings.xml
    │       │       ├── values-ar/
    │       │       │   └── strings.xml
    │       │       ├── values-bg/
    │       │       │   └── strings.xml
    │       │       ├── values-bn/
    │       │       │   └── strings.xml
    │       │       ├── values-ca/
    │       │       │   └── strings.xml
    │       │       ├── values-cs/
    │       │       │   └── strings.xml
    │       │       ├── values-da/
    │       │       │   └── strings.xml
    │       │       ├── values-de/
    │       │       │   └── strings.xml
    │       │       ├── values-es/
    │       │       │   └── strings.xml
    │       │       ├── values-es-rSV/
    │       │       │   └── strings.xml
    │       │       ├── values-et/
    │       │       │   └── strings.xml
    │       │       ├── values-fa/
    │       │       │   └── strings.xml
    │       │       ├── values-fa-rAF/
    │       │       │   └── strings.xml
    │       │       ├── values-fi/
    │       │       │   └── strings.xml
    │       │       ├── values-fr/
    │       │       │   └── strings.xml
    │       │       ├── values-hi/
    │       │       │   └── strings.xml
    │       │       ├── values-ht/
    │       │       │   └── strings.xml
    │       │       ├── values-in/
    │       │       │   └── strings.xml
    │       │       ├── values-it/
    │       │       │   └── strings.xml
    │       │       ├── values-ja/
    │       │       │   └── strings.xml
    │       │       ├── values-ka/
    │       │       │   └── strings.xml
    │       │       ├── values-km/
    │       │       │   └── strings.xml
    │       │       ├── values-ln/
    │       │       │   └── strings.xml
    │       │       ├── values-lo-rLA/
    │       │       │   └── strings.xml
    │       │       ├── values-lt/
    │       │       │   └── strings.xml
    │       │       ├── values-mg/
    │       │       │   └── strings.xml
    │       │       ├── values-ml/
    │       │       │   └── strings.xml
    │       │       ├── values-mr/
    │       │       │   └── strings.xml
    │       │       ├── values-ms/
    │       │       │   └── strings.xml
    │       │       ├── values-my/
    │       │       │   └── strings.xml
    │       │       ├── values-ne-rNP/
    │       │       │   └── strings.xml
    │       │       ├── values-nl/
    │       │       │   └── strings.xml
    │       │       ├── values-no/
    │       │       │   └── strings.xml
    │       │       ├── values-pl/
    │       │       │   └── strings.xml
    │       │       ├── values-ps/
    │       │       │   └── strings.xml
    │       │       ├── values-pt/
    │       │       │   └── strings.xml
    │       │       ├── values-ro/
    │       │       │   └── strings.xml
    │       │       ├── values-ru/
    │       │       │   └── strings.xml
    │       │       ├── values-rw/
    │       │       │   └── strings.xml
    │       │       ├── values-si/
    │       │       │   └── strings.xml
    │       │       ├── values-sl/
    │       │       │   └── strings.xml
    │       │       ├── values-so/
    │       │       │   └── strings.xml
    │       │       ├── values-sq/
    │       │       │   └── strings.xml
    │       │       ├── values-sr/
    │       │       │   └── strings.xml
    │       │       ├── values-sv-rSE/
    │       │       │   └── strings.xml
    │       │       ├── values-sw/
    │       │       │   └── strings.xml
    │       │       ├── values-sw-rKE/
    │       │       │   └── strings.xml
    │       │       ├── values-te/
    │       │       │   └── strings.xml
    │       │       ├── values-th-rTH/
    │       │       │   └── strings.xml
    │       │       ├── values-ti/
    │       │       │   └── strings.xml
    │       │       ├── values-tl/
    │       │       │   └── strings.xml
    │       │       ├── values-tl-rPH/
    │       │       │   └── strings.xml
    │       │       ├── values-tr/
    │       │       │   └── strings.xml
    │       │       ├── values-uk/
    │       │       │   └── strings.xml
    │       │       ├── values-ur/
    │       │       │   └── strings.xml
    │       │       ├── values-ur-rPK/
    │       │       │   └── strings.xml
    │       │       ├── values-vi/
    │       │       │   └── strings.xml
    │       │       ├── values-zh/
    │       │       │   └── strings.xml
    │       │       ├── values-zh-rTW/
    │       │       │   └── strings.xml
    │       │       └── values-zu/
    │       │           └── strings.xml
    │       └── test/
    │           ├── java/
    │           │   └── org/
    │           │       └── odk/
    │           │           └── collect/
    │           │               └── strings/
    │           │                   └── format/
    │           │                       ├── DateFormatsTest.kt
    │           │                       └── LengthFormatterTest.kt
    │           └── resources/
    │               └── robolectric.properties
    ├── test-forms/
    │   ├── build.gradle.kts
    │   ├── .gitignore
    │   └── src/
    │       └── main/
    │           └── resources/
    │               ├── forms/
    │               │   ├── Empty First Repeat.xml
    │               │   ├── RepeatGroupAndGroup.xml
    │               │   ├── RepeatTitles_1648.xml
    │               │   ├── TestRepeat.xml
    │               │   ├── all-widgets.xml
    │               │   ├── audio-question.xml
    │               │   ├── basic.xml
    │               │   ├── different-search-appearances.xml
    │               │   ├── dynamic_required_question.xml
    │               │   ├── emptyGroupFieldList.xml
    │               │   ├── encrypted-no-instanceID.xml
    │               │   ├── encrypted.xml
    │               │   ├── entities-with-dates-follow-up.xml
    │               │   ├── entities-with-dates-registration.xml
    │               │   ├── entity-update-pulldata.xml
    │               │   ├── external-audio-question.xml
    │               │   ├── external-csv-search-broken.xml
    │               │   ├── external-csv-search.xml
    │               │   ├── external_csv_form.xml
    │               │   ├── external_data_questions.xml
    │               │   ├── external_select.xml
    │               │   ├── external_select_10.xml
    │               │   ├── external_select_csv.xml
    │               │   ├── field-list-repeat.xml
    │               │   ├── fieldlist-updates.xml
    │               │   ├── fixed-count-repeat.xml
    │               │   ├── form1.xml
    │               │   ├── form2.xml
    │               │   ├── form3.xml
    │               │   ├── form4.xml
    │               │   ├── form5.xml
    │               │   ├── form6.xml
    │               │   ├── form7.xml
    │               │   ├── form8.xml
    │               │   ├── form9.xml
    │               │   ├── formHierarchy1.xml
    │               │   ├── formHierarchy2.xml
    │               │   ├── formHierarchy3.xml
    │               │   ├── form_design_error.xml
    │               │   ├── form_styling.xml
    │               │   ├── form_with_images.xml
    │               │   ├── g6Error.xml
    │               │   ├── hints_textq.xml
    │               │   ├── identify-user-audit-false.xml
    │               │   ├── identify-user-audit.xml
    │               │   ├── intent-group.xml
    │               │   ├── internal-audio-question.xml
    │               │   ├── invalid-form.xml
    │               │   ├── likert_test.xml
    │               │   ├── location-audit.xml
    │               │   ├── manyQ.xml
    │               │   ├── metadata.xml
    │               │   ├── numberInCSV.xml
    │               │   ├── one-question-audit.xml
    │               │   ├── one-question-autosend-disabled.xml
    │               │   ├── one-question-autosend.xml
    │               │   ├── one-question-background-audio-audit.xml
    │               │   ├── one-question-background-audio-multiple.xml
    │               │   ├── one-question-background-audio.xml
    │               │   ├── one-question-entity-create-and-update.xml
    │               │   ├── one-question-entity-follow-up.xml
    │               │   ├── one-question-entity-registration-v2020.1.xml
    │               │   ├── one-question-entity-registration-v2023.1.xml
    │               │   ├── one-question-entity-registration.xml
    │               │   ├── one-question-entity-update-and-create.xml
    │               │   ├── one-question-entity-update.xml
    │               │   ├── one-question-last-saved-updated.xml
    │               │   ├── one-question-last-saved.xml
    │               │   ├── one-question-partial.xml
    │               │   ├── one-question-repeat.xml
    │               │   ├── one-question-translation.xml
    │               │   ├── one-question-updated.xml
    │               │   ├── one-question-uuid-instance-name.xml
    │               │   ├── one-question.xml
    │               │   ├── pull_data.xml
    │               │   ├── random.xml
    │               │   ├── randomTest_broken.xml
    │               │   ├── ranking_widget.xml
    │               │   ├── repeat_group_form.xml
    │               │   ├── repeat_group_new.xml
    │               │   ├── repeat_group_wrapped_with_a_regular_group.xml
    │               │   ├── repeat_groups.xml
    │               │   ├── repeat_in_field_list.xml
    │               │   ├── repeat_without_label.xml
    │               │   ├── requiredQuestionInFieldList.xml
    │               │   ├── required_question_with_audio.xml
    │               │   ├── required_question_with_custom_error_message.xml
    │               │   ├── search_and_select.xml
    │               │   ├── selectOneExternal.xml
    │               │   ├── select_one_external.xml
    │               │   ├── setgeopoint-action.xml
    │               │   ├── simple-search-external-csv.xml
    │               │   ├── single-geopoint.xml
    │               │   ├── start-geopoint.xml
    │               │   ├── string_widgets_in_field_list.xml
    │               │   ├── track-changes-reason-on-edit.xml
    │               │   ├── two-question-audit-track-changes.xml
    │               │   ├── two-question-audit.xml
    │               │   ├── two-question-external.xml
    │               │   ├── two-question-required.xml
    │               │   ├── two-question-save-incomplete-required.xml
    │               │   ├── two-question-save-incomplete.xml
    │               │   ├── two-question-updated.xml
    │               │   ├── two-question.xml
    │               │   └── validate.xml
    │               └── media/
    │                   ├── external-csv-search-produce.csv
    │                   ├── external_csv_cities.csv
    │                   ├── external_csv_countries.csv
    │                   ├── external_csv_neighbourhoods.csv
    │                   ├── external_data.csv
    │                   ├── external_data.xml
    │                   ├── external_data_10.xml
    │                   ├── external_data_10.zip
    │                   ├── external_data_broken.csv
    │                   ├── fruits.csv
    │                   ├── itemSets.csv
    │                   ├── people.csv
    │                   ├── simple-search-external-csv-fruits.csv
    │                   ├── test.m4a
    │                   ├── updated-people.csv
    │                   ├── rects_v1/
    │                   ├── rects_v2/
    │                   └── selectOneExternal-media/
    │                       └── itemsets.csv
    ├── test-shared/
    │   ├── build.gradle.kts
    │   ├── consumer-rules.pro
    │   ├── .gitignore
    │   └── src/
    │       └── main/
    │           ├── AndroidManifest.xml
    │           └── java/
    │               └── org/
    │                   └── odk/
    │                       └── collect/
    │                           └── testshared/
    │                               ├── ActivityControllerRule.kt
    │                               ├── ActivityExt.kt
    │                               ├── AssertIntentsHelper.kt
    │                               ├── Assertions.kt
    │                               ├── DummyActivity.kt
    │                               ├── ErrorIntentLauncher.kt
    │                               ├── FakeScheduler.kt
    │                               ├── Interactions.kt
    │                               ├── LocationTestUtils.kt
    │                               ├── RecyclerViewMatcher.kt
    │                               ├── RobolectricHelpers.kt
    │                               ├── SliderExt.kt
    │                               ├── TimeZoneSetter.kt
    │                               ├── ViewActions.kt
    │                               ├── ViewMatchers.kt
    │                               └── WaitFor.kt
    ├── upgrade/
    │   ├── README.md
    │   ├── build.gradle.kts
    │   ├── consumer-rules.pro
    │   ├── .gitignore
    │   └── src/
    │       ├── main/
    │       │   ├── AndroidManifest.xml
    │       │   └── java/
    │       │       └── org/
    │       │           └── odk/
    │       │               └── collect/
    │       │                   └── upgrade/
    │       │                       ├── AppUpgrader.kt
    │       │                       ├── LaunchState.kt
    │       │                       └── Upgrade.kt
    │       └── test/
    │           └── java/
    │               └── org/
    │                   └── odk/
    │                       └── collect/
    │                           └── upgrade/
    │                               ├── AppUpgraderTest.kt
    │                               └── VersionCodeLaunchStateTest.kt
    ├── web-page/
    │   ├── build.gradle.kts
    │   ├── .gitignore
    │   └── src/
    │       ├── main/
    │       │   ├── AndroidManifest.xml
    │       │   ├── java/
    │       │   │   └── org/
    │       │   │       └── odk/
    │       │   │           └── collect/
    │       │   │               └── webpage/
    │       │   │                   ├── ExternalWebPageHelper.java
    │       │   │                   └── WebViewActivity.java
    │       │   └── res/
    │       │       └── layout/
    │       │           └── activity_web_view.xml
    │       └── test/
    │           └── java/
    │               └── org/
    │                   └── odk/
    │                       └── collect/
    │                           └── webpage/
    │                               └── ExternalWebPageHelperTest.java
    ├── .circleci/
    │   ├── config.yml
    │   ├── generate-app-test-list.sh
    │   ├── gradle.properties
    │   └── test_modules.txt
    └── .github/
        ├── CODE_OF_CONDUCT.md
        ├── ISSUE_TEMPLATE.md
        ├── PULL_REQUEST_TEMPLATE.md
        ├── TESTING_RESULT_TEMPLATES.md
        └── ISSUE_TEMPLATE/
            └── config.yml


Files Content:

(Files content cropped to 300k characters, download full ingest to see more)
================================================
File: README.md
================================================
# ODK Collect

![Platform](https://img.shields.io/badge/platform-Android-blue.svg)
[![License](https://img.shields.io/badge/license-Apache%202.0-blue.svg)](https://opensource.org/licenses/Apache-2.0)
[![Build status](https://circleci.com/gh/getodk/collect.svg?style=shield&circle-token=:circle-token)](https://circleci.com/gh/getodk/collect)
[![Slack](https://img.shields.io/badge/chat-on%20slack-brightgreen)](https://slack.getodk.org)

ODK Collect is an Android app for filling out forms. It is designed to be used in resource-constrained environments with challenges such as unreliable connectivity or power infrastructure. ODK Collect is part the ODK project, a free and open-source set of tools which help organizations author, field, and manage mobile data collection solutions. Learn more about ODK and its history [here](https://getodk.org/) and read about example ODK deployments [here](https://forum.getodk.org/c/showcase).

ODK Collect renders forms that are compliant with the [ODK XForms standard](https://getodk.github.io/xforms-spec/), a subset of the [XForms 1.1 standard](https://www.w3.org/TR/xforms/) with some extensions. The form parsing is done by the [JavaRosa library](https://github.com/getodk/javarosa) which Collect includes as a dependency.

Please note that the `master` branch reflects ongoing development and is not production-ready.

## Table of Contents
* [Learn more about ODK Collect](#learn-more-about-odk-collect)
* [Release cycle](#release-cycle)
* [Downloading builds](#downloading-builds)
* [Suggesting new features](#suggesting-new-features)
* Contributing
  * [Contributing code](#contributing-code)
  * [Contributing translations](#contributing-translations)
* Developing
  * [Setting up your development environment](#setting-up-your-development-environment)
  * [Testing a form without a server](#testing-a-form-without-a-server)
  * [Using APIs for local development](#using-apis-for-local-development)
  * [Debugging JavaRosa](#debugging-javarosa)
  * [Troubleshooting](#troubleshooting)
  * [Test devices](#test-devices)
* [Creating signed releases for Google Play Store](#creating-signed-releases-for-google-play-store)

## Learn more about ODK Collect
* ODK website: [https://getodk.org](https://getodk.org)
* ODK Collect usage documentation: [https://docs.getodk.org/collect-intro/](https://docs.getodk.org/collect-intro/)
* ODK forum: [https://forum.getodk.org](https://forum.getodk.org)
* ODK developer Slack chat: [https://slack.getodk.org](https://slack.getodk.org)

## Release cycle

Releases are planned to happen every 2-3 months (resulting in ~4 releases a year). Soon before (or just after) the end of one release cycle, the core team will plan a new set of work for the next release. This involves:

1. Moving issues not finished in the last release and new items from the [ODK Roadmap](https://getodk.org/roadmap) to the [planning board](https://github.com/orgs/getodk/projects/9/views/25)
2. Giving the core team a few days to review and reflect on the planning board
3. The core team will then meet to trim work that will not be included in the next release and pitch alternative things to work on
4. The milestone for the new release is added to [the backlog](https://github.com/orgs/getodk/projects/9) and is prioritized

Sometimes issues will be assigned to core team members before they are actually started (moved to "in progress") to make it clear who's going to be working on what.

Once the majority of high risk or visible work is done for a release, a new beta will then be released to the Play Store by [@lognaturel](https://github.com/lognaturel) and that will be used for regression testing by [@getodk/testers](https://github.com/orgs/getodk/teams/testers). If any problems are found, the release is blocked until we can merge fixes. Regression testing should continue on the original beta build (rather than a new one with fixes) unless problems block the rest of testing. Once the process is complete, [@lognaturel](https://github.com/lognaturel) pushes the releases to the Play Store following [these instructions](#creating-signed-releases-for-google-play-store).

Fixes to a previous release should be merged to a "release" branch (`v2023.2.x` for example) so as to leave `master` available for the current release's work. If hotfix changes are needed in the current release as well then these can be merged in as a PR after hotfix releases (generally easiest as a single PR for the whole hotfix release). This approach can also be used if work for the next release starts before the current one is out - the next release continues on `master` while the release is on a release branch.

At the beginning of each release cycle, [@grzesiek2010](https://github.com/grzesiek2010) updates all dependencies that have compatible upgrades available and ensures that the build targets the latest SDK.

## Downloading builds
Per-commit debug builds can be found on [CircleCI](https://circleci.com/gh/getodk/collect). Login with your GitHub account, click the build you'd like, then find the APK in the Artifacts tab.

If you are looking to use ODK Collect, we strongly recommend using the [Play Store build](https://play.google.com/store/apps/details?id=org.odk.collect.android). Current and previous production builds can be found in [Releases](https://github.com/getodk/collect/releases).

## Suggesting new features
We try to make sure that all issues in the issue tracker are as close to fully specified as possible so that they can be closed by a pull request. Feature suggestions should be described [in the forum Features category](https://forum.getodk.org/c/features) and discussed by the broader user community. Once there is a clear way forward, issues should be filed on the relevant repositories. More controversial features will be discussed as part of the Technical Steering Committee's [roadmapping process](https://github.com/getodk/governance/blob/master/TSC-1/STANDARD-OPERATING-PROCEDURES.md#roadmap).

## Contributing code
Any and all contributions to the project are welcome. ODK Collect is used across the world primarily by organizations with a social purpose so you can have real impact!

Issues tagged as [good first issue](https://github.com/getodk/collect/labels/good%20first%20issue) should be a good place to start. There are also currently many issues tagged as [needs reproduction](https://github.com/getodk/collect/labels/needs%20reproduction) which need someone to try to reproduce them with the current version of ODK Collect and comment on the issue with their findings.

If you're ready to contribute code, see [the contribution guide](docs/CONTRIBUTING.md).

## Contributing translations
If you know a language other than English, consider contributing translations through [Transifex](https://www.transifex.com/getodk/collect/).

Translations are updated right before the first beta for a release and before the release itself. To update translations, download the zip from https://www.transifex.com/getodk/collect/strings/. The contents of each folder then need to be moved to the Android project folders. A quick script like [the one in this gist](https://gist.github.com/lognaturel/9974fab4e7579fac034511cd4944176b) can help. We currently copy everything from Transifex to minimize manual intervention. Sometimes translation files will only get comment changes. When new languages are updated in Transifex, they need to be added to the script above. Additionally, `ApplicationConstants.TRANSLATIONS_AVAILABLE` needs to be updated. This array provides the choices for the language preference in settings. Ideally the list could be dynamically generated.

## Setting up your development environment

1. Download and install [Git](https://git-scm.com/downloads) and add it to your PATH

1. Download and install [Android Studio](https://developer.android.com/studio/index.html) 

1. Fork the collect project ([why and how to fork](https://help.github.com/articles/fork-a-repo/))

1. Clone your fork of the project locally. At the command line:

        git clone https://github.com/YOUR-GITHUB-USERNAME/collect

    If you prefer not to use the command line, you can use Android Studio to create a new project from version control using `https://github.com/YOUR-GITHUB-USERNAME/collect`.

1. Use Android Studio to import the project from its Gradle settings. To run the project, click on the green arrow at the top of the screen.

1. Windows developers: continue configuring Android Studio with the steps in this document: [Developing ODK Collect on Windows](docs/WINDOWS-DEV-SETUP.md).

1. Make sure you can run unit tests by running everything under `collect_app/src/test/java` in Android Studio or on the command line:

    ```
    ./gradlew testDebug
    ```

1. Make sure you can run instrumented tests by running everything under `collect_app/src/androidTest/java` in Android Studio or on the command line:

    ```
    ./gradlew connectedAndroidTest
    ```
    **Note:** You can see the emulator setup used on CI in  `.circleci/config.yml`.

## Customizing the development environment

### Changing JVM heap size

You can customize the heap size that is used for compiling and running tests. Increasing these will most likely speed up compilation and tests on your local machine. The default values are specified in the project's `gradle.properties` and this can be overriden by your user level `gradle.properties` (found in your `GRADLE_USER_HOME` directory). An example `gradle.properties` that would give you a heap size of 4GB (rather than the default 1GB) would look like:

```
org.gradle.jvmargs=-Xmx4096m
```

## Testing a form without a server
When you first run Collect, it is set to download forms from [https://demo.getodk.org/](https://demo.getodk.org/), the demo server. You can sometimes verify your changes with those forms but it can also be helpful to put a specific test form on your device. Here are some options for that:

1. The `All question types` form from the default server is [here](https://docs.google.com/spreadsheets/d/1af_Sl8A_L8_EULbhRLHVl8OclCfco09Hq2tqb9CslwQ/edit#gid=0). You can also try [example forms](https://github.com/XLSForm/example-forms) and [test forms](https://github.com/XLSForm/test-forms) or [make your own](https://xlsform.org).

1. Convert the XLSForm (xlsx) to XForm (xml). Use the [ODK website](http://getodk.org/xlsform/) or [XLSForm Offline](https://gumroad.com/l/xlsform-offline) or [pyxform](https://github.com/XLSForm/pyxform).

1. Once you have the XForm, use [adb](https://developer.android.com/studio/command-line/adb.html) to push the form to your device (after [enabling USB debugging](https://www.kingoapp.com/root-tutorials/how-to-enable-usb-debugging-mode-on-android.htm)) or emulator.
	```
	adb push my_form.xml /sdcard/Android/data/org.odk.collect.android/files/projects/{project-id}/forms
	```

If you are using the demo project, kindly replace `{project_id}` with `DEMO`

4. Launch ODK Collect and tap `+ Start new form`. The new form will be there.

More information about using Android Debug Bridge with Collect can be found [here](https://docs.getodk.org/collect-adb/).

## Using APIs for local development

Certain functions in ODK Collect depend on cloud services that require API keys or authorization steps to work.  Here are the steps you need to take in order to use these functions in your development builds.

**Google Maps API**: When the "Google Maps SDK" option is selected in the "User interface" settings, ODK Collect uses the Google Maps API for displaying maps in the geospatial question types (GeoPoint, GeoTrace, and GeoShape).  To enable this API:
  1. [Get a Google Maps API key](https://developers.google.com/maps/documentation/android-api/signup).  Note that this requires a credit card number, though the card will not be charged immediately; some free API usage is permitted.  You should carefully read the terms before providing a credit card number.
  1. Edit or create `secrets.properties` and set the `GOOGLE_MAPS_API_KEY` property to your API key.  You should end up with a line that looks like this:
    ```
    GOOGLE_MAPS_API_KEY=AIbzvW8e0ub...
    ```

**Mapbox Maps SDK for Android**: When the "Mapbox SDK" option is selected in the "User interface" settings, ODK Collect uses the Mapbox SDK for displaying maps in the geospatial question types (GeoPoint, GeoTrace, and GeoShape).  To enable this API:
  1. [Create a Mapbox account](https://www.mapbox.com/signup/).  Note that signing up with the "Pay-As-You-Go" plan does not require a credit card.  Mapbox provides free API usage up to the monthly thresholds documented at [https://www.mapbox.com/pricing](https://www.mapbox.com/pricing).  If your usage exceeds these thresholds, you will receive e-mail with instructions on how to add a credit card for payment; services will remain live until the end of the 30-day billing term, after which the account will be deactivated and will require a credit card to reactivate.
  2. Find your access token on your [account page](https://account.mapbox.com/) - it should be in "Tokens" as "Default public token".
  3. Edit or create `secrets.properties` and set the `MAPBOX_ACCESS_TOKEN` property to your access token.  You should end up with a line that looks like this:
    ```
    MAPBOX_ACCESS_TOKEN=pk.eyJk3bumVp4i...
    ```
  4. Create a new secret token with the "DOWNLOADS:READ" secret scope and then add it to `secrets.properties` as `MAPBOX_DOWNLOADS_TOKEN`.

*Note: Mapbox will not be available as an option in compiled versions of Collect unless you follow the steps above. Mapbox will also not be available on x86 devices as the native libraries are excluded to reduce the APK size. If you need to use an x86 device, you can force the build to include x86 libs by include the `x86Libs` Gradle parameter. For example, to build a debug APK with x86 libs: `./gradlew assembleDebug -Px86Libs`.*

## Debugging JavaRosa

JavaRosa is the form engine that powers Collect. If you want to debug or change that code while running Collect you can deploy it locally with Maven (you'll need `mvn` and `sed` installed):

1. Build and install your changes of JavaRosa (into your local Maven repo):

```bash
./gradlew publishToMavenLocal
```

1. Change `const val javarosa = javarosa_online` in `Dependencies.kt` to `const val javarosa = javarosa_local`

## Troubleshooting

#### Error when running Robolectric tests from Android Studio on macOS: `build/intermediates/bundles/debug/AndroidManifest.xml (No such file or directory)`
> Configure the default JUnit test runner configuration in order to work around a bug where IntelliJ / Android Studio does not set the working directory to the module being tested. This can be accomplished by editing the run configurations, Defaults -> JUnit and changing the working directory value to $MODULE_DIR$.

> Source: [Robolectric Wiki](https://github.com/robolectric/robolectric/wiki/Running-tests-in-Android-Studio#notes-for-mac).

#### Android Studio Error: `SDK location not found. Define location with sdk.dir in the local.properties file or with an ANDROID_HOME environment variable.`
When cloning the project from Android Studio, click "No" when prompted to open the `build.gradle` file and then open project.

#### Execution failed for task ':collect_app:transformClassesWithInstantRunForDebug'.

We have seen this problem happen in both IntelliJ IDEA and Android Studio, and believe it to be due to a bug in the IDE, which we can't fix.  As a workaround, turning off [Instant Run](https://developer.android.com/studio/run/#set-up-ir) will usually avoid this problem. The problem is fixed in Android Studio 3.5 with the new [Apply Changes](https://medium.com/androiddevelopers/android-studio-project-marble-apply-changes-e3048662e8cd) feature.

#### Moving to the main view if user minimizes the app
If you build the app on your own using Android Studio `(Build -> Build APK)` and then install it (from an `.apk` file), you might notice this strange behaviour thoroughly described: [#1280](https://github.com/getodk/collect/issues/1280) and [#1142](https://github.com/getodk/collect/issues/1142).

This problem occurs building other apps as well.

#### gradlew Failure: `FAILURE: Build failed with an exception.`

If you encounter an error similar to this when running `gradlew`:

```
FAILURE: Build failed with an exception

What went wrong:
A problem occurred configuring project ':collect_app'.
> Failed to notify project evaluation listener.
   > Could not initialize class com.android.sdklib.repository.AndroidSdkHandler
```

You may have a mismatch between the embedded Android SDK Java and the JDK installed on your machine. You may wish to set your **JAVA_HOME** environment variable to that SDK. For example, on macOS:

`export JAVA_HOME="/Applications/Android\ Studio.app/Contents/jre/Contents/Home/"
`

Note that this change might cause problems with other Java-based applications (e.g., if you uninstall Android Studio).

#### gradlew Failure: `java.lang.NullPointerException (no error message).`
If you encounter the `java.lang.NullPointerException (no error message).` when running `gradlew`, please make sure your Java version for this project is Java 17.

This can be configured under **File > Project Structure** in Android Studio, or by editing `$USER_HOME/.gradle/gradle.properties` to set `org.gradle.java.home=(path to JDK home)` for command-line use.

#### `Unable to resolve artifact: Missing` while running tests

This is encountered when Robolectric has problems downloading the jars it needs for different Android SDK levels. If you keep running into this you can download the JARs locally and point Robolectric to them by doing:

```
./download-robolectric-deps.sh
```

## Test devices

Devices that @getodk/testers have available for testing are as follows:

* Xiaomi Redmi 9T 4GB - Android 10
* Pixel 7a 8GB - Android 14
* LG Nexus 5X 2GB - Android 8.1
* Samsung Galaxy M12 4GB - Android 11
* Samsung Galaxy M23 4GB - Android 14
* Xiaomi Redmi 7 3GB - Android 10
* Pixel 6a 6GB - Android 13
* Pixel 3a 4GB - Android 12
* Huawei Y560-L01 1GB - Android 5.1

## Creating signed releases for Google Play Store
Maintainers keep a folder with a clean checkout of the code and use [jenv.be](https://www.jenv.be) in that folder to ensure compilation with Java 17.

### Release prerequisites:

- a`local.properties` file in the root folder with the following:
  ```
  sdk.dir=/path/to/android/sdk
  ```

- the keystore file and passwords

- a `secrets.properties` file in the root project folder folder with the following:
  ```
  // secrets.properties
  RELEASE_STORE_FILE=/path/to/collect.keystore
  RELEASE_STORE_PASSWORD=secure-store-password
  RELEASE_KEY_ALIAS=key-alias
  RELEASE_KEY_PASSWORD=secure-alias-password
  ```

- a `google-services.json` file in the `collect_app/src/odkCollectRelease` folder. The contents of the file are similar to the contents of `collect_app/src/google-services.json`.

### Release checklist:

- update translations
- make sure CI is green for the chosen commit
- run `./gradlew releaseCheck`. If successful, a signed release will be at `collect_app/build/outputs/apk` (with an old version name)
- verify a basic "happy path": scan a QR code to configure a new project, get a blank form, fill it, open the form map (confirms that the Google Maps key is correct), send form
- run `./benchmark.sh` with a real device connected to verify performance
- verify new APK can be installed as update to previous version and that above "happy path" works in that case also
- create and publish scheduled forum post with release description
- write Play Store release notes, include link to forum post
- create a release with the correct version by tagging the commit and running `./collect_app:assembleOdkCollectRelease`
  - Tags for full releases must have the format `vX.X.X`. Tags for beta releases must have the format `vX.X.X-beta.X`.
- add a release to Github [here](https://github.com/getodk/collect/releases), generate release notes and attach the APK
- upload APK to Play Store
- if there was an active beta before release (this can happen with point releases), publish a new beta release to replace the previous one which was disabled by the production release
- backup dependencies for the release by downloading the `vX.X.X.tar` artifact from the `create_dependency_backup` job on Circle CI (for the release commit) and then uploading it to [this folder](https://drive.google.com/drive/folders/1_tMKBFLdhzFZF9GKNeob4FbARjdfbtJu?usp=share_link)
- backup a self signed release APK by downloading the `selfSignedRelease.apk` from the `build_release` job on Circle CI (for the release commit) and then upload to [this folder](https://drive.google.com/drive/folders/1pbbeNaMTziFhtZmedOs0If3BeYu3Ex5x?usp=share_link)

## Compiling a previous release using backed-up dependencies

1. Download the `.tar` for relevant release tag
2. Extract `.local-m2` into the project directory:
    ```bash
    tar -xf maven.tar -C <collect project directory>
    ```
   
The project will now be able to fetch dependencies that are no longer available (but were used to compile the release) from the `.local-m2` Maven repo.



================================================
File: LICENSE.md
================================================
Apache License
==============

_Version 2.0, January 2004_  
_&lt;<http://www.apache.org/licenses/>&gt;_

### Terms and Conditions for use, reproduction, and distribution

#### 1. Definitions

“License” shall mean the terms and conditions for use, reproduction, and
distribution as defined by Sections 1 through 9 of this document.

“Licensor” shall mean the copyright owner or entity authorized by the copyright
owner that is granting the License.

“Legal Entity” shall mean the union of the acting entity and all other entities
that control, are controlled by, or are under common control with that entity.
For the purposes of this definition, “control” means **(i)** the power, direct or
indirect, to cause the direction or management of such entity, whether by
contract or otherwise, or **(ii)** ownership of fifty percent (50%) or more of the
outstanding shares, or **(iii)** beneficial ownership of such entity.

“You” (or “Your”) shall mean an individual or Legal Entity exercising
permissions granted by this License.

“Source” form shall mean the preferred form for making modifications, including
but not limited to software source code, documentation source, and configuration
files.

“Object” form shall mean any form resulting from mechanical transformation or
translation of a Source form, including but not limited to compiled object code,
generated documentation, and conversions to other media types.

“Work” shall mean the work of authorship, whether in Source or Object form, made
available under the License, as indicated by a copyright notice that is included
in or attached to the work (an example is provided in the Appendix below).

“Derivative Works” shall mean any work, whether in Source or Object form, that
is based on (or derived from) the Work and for which the editorial revisions,
annotations, elaborations, or other modifications represent, as a whole, an
original work of authorship. For the purposes of this License, Derivative Works
shall not include works that remain separable from, or merely link (or bind by
name) to the interfaces of, the Work and Derivative Works thereof.

“Contribution” shall mean any work of authorship, including the original version
of the Work and any modifications or additions to that Work or Derivative Works
thereof, that is intentionally submitted to Licensor for inclusion in the Work
by the copyright owner or by an individual or Legal Entity authorized to submit
on behalf of the copyright owner. For the purposes of this definition,
“submitted” means any form of electronic, verbal, or written communication sent
to the Licensor or its representatives, including but not limited to
communication on electronic mailing lists, source code control systems, and
issue tracking systems that are managed by, or on behalf of, the Licensor for
the purpose of discussing and improving the Work, but excluding communication
that is conspicuously marked or otherwise designated in writing by the copyright
owner as “Not a Contribution.”

“Contributor” shall mean Licensor and any individual or Legal Entity on behalf
of whom a Contribution has been received by Licensor and subsequently
incorporated within the Work.

#### 2. Grant of Copyright License

Subject to the terms and conditions of this License, each Contributor hereby
grants to You a perpetual, worldwide, non-exclusive, no-charge, royalty-free,
irrevocable copyright license to reproduce, prepare Derivative Works of,
publicly display, publicly perform, sublicense, and distribute the Work and such
Derivative Works in Source or Object form.

#### 3. Grant of Patent License

Subject to the terms and conditions of this License, each Contributor hereby
grants to You a perpetual, worldwide, non-exclusive, no-charge, royalty-free,
irrevocable (except as stated in this section) patent license to make, have
made, use, offer to sell, sell, import, and otherwise transfer the Work, where
such license applies only to those patent claims licensable by such Contributor
that are necessarily infringed by their Contribution(s) alone or by combination
of their Contribution(s) with the Work to which such Contribution(s) was
submitted. If You institute patent litigation against any entity (including a
cross-claim or counterclaim in a lawsuit) alleging that the Work or a
Contribution incorporated within the Work constitutes direct or contributory
patent infringement, then any patent licenses granted to You under this License
for that Work shall terminate as of the date such litigation is filed.

#### 4. Redistribution

You may reproduce and distribute copies of the Work or Derivative Works thereof
in any medium, with or without modifications, and in Source or Object form,
provided that You meet the following conditions:

* **(a)** You must give any other recipients of the Work or Derivative Works a copy of
this License; and
* **(b)** You must cause any modified files to carry prominent notices stating that You
changed the files; and
* **(c)** You must retain, in the Source form of any Derivative Works that You distribute,
all copyright, patent, trademark, and attribution notices from the Source form
of the Work, excluding those notices that do not pertain to any part of the
Derivative Works; and
* **(d)** If the Work includes a “NOTICE” text file as part of its distribution, then any
Derivative Works that You distribute must include a readable copy of the
attribution notices contained within such NOTICE file, excluding those notices
that do not pertain to any part of the Derivative Works, in at least one of the
following places: within a NOTICE text file distributed as part of the
Derivative Works; within the Source form or documentation, if provided along
with the Derivative Works; or, within a display generated by the Derivative
Works, if and wherever such third-party notices normally appear. The contents of
the NOTICE file are for informational purposes only and do not modify the
License. You may add Your own attribution notices within Derivative Works that
You distribute, alongside or as an addendum to the NOTICE text from the Work,
provided that such additional attribution notices cannot be construed as
modifying the License.

You may add Your own copyright statement to Your modifications and may provide
additional or different license terms and conditions for use, reproduction, or
distribution of Your modifications, or for any such Derivative Works as a whole,
provided Your use, reproduction, and distribution of the Work otherwise complies
with the conditions stated in this License.

#### 5. Submission of Contributions

Unless You explicitly state otherwise, any Contribution intentionally submitted
for inclusion in the Work by You to the Licensor shall be under the terms and
conditions of this License, without any additional terms or conditions.
Notwithstanding the above, nothing herein shall supersede or modify the terms of
any separate license agreement you may have executed with Licensor regarding
such Contributions.

#### 6. Trademarks

This License does not grant permission to use the trade names, trademarks,
service marks, or product names of the Licensor, except as required for
reasonable and customary use in describing the origin of the Work and
reproducing the content of the NOTICE file.

#### 7. Disclaimer of Warranty

Unless required by applicable law or agreed to in writing, Licensor provides the
Work (and each Contributor provides its Contributions) on an “AS IS” BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied,
including, without limitation, any warranties or conditions of TITLE,
NON-INFRINGEMENT, MERCHANTABILITY, or FITNESS FOR A PARTICULAR PURPOSE. You are
solely responsible for determining the appropriateness of using or
redistributing the Work and assume any risks associated with Your exercise of
permissions under this License.

#### 8. Limitation of Liability

In no event and under no legal theory, whether in tort (including negligence),
contract, or otherwise, unless required by applicable law (such as deliberate
and grossly negligent acts) or agreed to in writing, shall any Contributor be
liable to You for damages, including any direct, indirect, special, incidental,
or consequential damages of any character arising as a result of this License or
out of the use or inability to use the Work (including but not limited to
damages for loss of goodwill, work stoppage, computer failure or malfunction, or
any and all other commercial damages or losses), even if such Contributor has
been advised of the possibility of such damages.

#### 9. Accepting Warranty or Additional Liability

While redistributing the Work or Derivative Works thereof, You may choose to
offer, and charge a fee for, acceptance of support, warranty, indemnity, or
other liability obligations and/or rights consistent with this License. However,
in accepting such obligations, You may act only on Your own behalf and on Your
sole responsibility, not on behalf of any other Contributor, and only if You
agree to indemnify, defend, and hold each Contributor harmless for any liability
incurred by, or claims asserted against, such Contributor by reason of your
accepting any such warranty or additional liability.

_END OF TERMS AND CONDITIONS_

### APPENDIX: How to apply the Apache License to your work

To apply the Apache License to your work, attach the following boilerplate
notice, with the fields enclosed by brackets `[]` replaced with your own
identifying information. (Don't include the brackets!) The text should be
enclosed in the appropriate comment syntax for the file format. We also
recommend that a file or class name and description of purpose be included on
the same “printed page” as the copyright notice for easier identification within
third-party archives.

    Copyright [yyyy] [name of copyright owner]
    
    Licensed under the Apache License, Version 2.0 (the "License");
    you may not use this file except in compliance with the License.
    You may obtain a copy of the License at
    
      http://www.apache.org/licenses/LICENSE-2.0
    
    Unless required by applicable law or agreed to in writing, software
    distributed under the License is distributed on an "AS IS" BASIS,
    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
    See the License for the specific language governing permissions and
    limitations under the License.


================================================
File: SECURITY.md
================================================
# Security Policy

## Reporting a Vulnerability

See our [Vulnerability Disclosure Policy](https://getodk.org/vdp).


================================================
File: benchmark.sh
================================================
./gradlew collect_app:connectedAndroidTest -Pandroid.testInstrumentationRunnerArguments.package=org.odk.collect.android.benchmark


================================================
File: check-size.sh
================================================
set -e

if [ $(ls -l collect_app/build/outputs/apk/selfSignedRelease/*.apk | awk '{print $5}') -gt 11800000 ];then
  echo "APK increased to $(ls -l collect_app/build/outputs/apk/selfSignedRelease/*.apk | awk '{print $5}') bytes!"
  exit 1
fi


================================================
File: codecov.yml
================================================
codecov:
  notify:
    require_ci_to_pass: no
coverage:
  precision: 2
  round: down
  range: "10...100"
  status:
    project: yes
    patch: yes
changes: yes

================================================
File: download-robolectric-deps.sh
================================================
set -e

wget -nc https://repo1.maven.org/maven2/org/robolectric/android-all-instrumented/6.0.1_r3-robolectric-r1-i7/android-all-instrumented-6.0.1_r3-robolectric-r1-i7.jar -P robolectric-deps
wget -nc https://repo1.maven.org/maven2/org/robolectric/android-all-instrumented/7.0.0_r1-robolectric-r1-i7/android-all-instrumented-7.0.0_r1-robolectric-r1-i7.jar -P robolectric-deps
wget -nc https://repo1.maven.org/maven2/org/robolectric/android-all-instrumented/12.1-robolectric-8229987-i7/android-all-instrumented-12.1-robolectric-8229987-i7.jar -P robolectric-deps
wget -nc https://repo1.maven.org/maven2/org/robolectric/android-all-instrumented/13-robolectric-9030017-i7/android-all-instrumented-13-robolectric-9030017-i7.jar -P robolectric-deps
wget -nc https://repo1.maven.org/maven2/org/robolectric/android-all-instrumented/15-robolectric-12650502-i7/android-all-instrumented-15-robolectric-12650502-i7.jar -P robolectric-deps

dest_dir="src/test/resources"
mkdir -p collect_app/$dest_dir && cp robolectric-deps.properties collect_app/$dest_dir
mkdir -p audiorecorder/$dest_dir && cp robolectric-deps.properties audiorecorder/$dest_dir
mkdir -p projects/$dest_dir && cp robolectric-deps.properties projects/$dest_dir
mkdir -p location/$dest_dir && cp robolectric-deps.properties location/$dest_dir
mkdir -p androidshared/$dest_dir && cp robolectric-deps.properties androidshared/$dest_dir
mkdir -p geo/$dest_dir && cp robolectric-deps.properties geo/$dest_dir
mkdir -p permissions/$dest_dir && cp robolectric-deps.properties permissions/$dest_dir
mkdir -p settings/$dest_dir && cp robolectric-deps.properties settings/$dest_dir
mkdir -p maps/$dest_dir && cp robolectric-deps.properties maps/$dest_dir
mkdir -p errors/$dest_dir && cp robolectric-deps.properties errors/$dest_dir
mkdir -p selfie-camera/$dest_dir && cp robolectric-deps.properties selfie-camera/$dest_dir
mkdir -p qr-code/$dest_dir && cp robolectric-deps.properties qr-code/$dest_dir
mkdir -p draw/$dest_dir && cp robolectric-deps.properties draw/$dest_dir


================================================
File: gradle.properties
================================================
#You can override this in ~/.gradle/gradle.properties
android.useAndroidX=true
android.enableJetifier=true
#https://issuetracker.google.com/issues/283715193
android.jetifier.ignorelist = jackson-core
org.gradle.jvmargs=-Xmx1536m
org.gradle.parallel=true
test.heap.max=1g
android.nonTransitiveRClass=true
android.injected.androidTest.leaveApksInstalledAfterRun=true


================================================
File: gradlew
================================================
#!/usr/bin/env sh

##############################################################################
##
##  Gradle start up script for UN*X
##
##############################################################################

# Attempt to set APP_HOME
# Resolve links: $0 may be a link
PRG="$0"
# Need this for relative symlinks.
while [ -h "$PRG" ] ; do
    ls=`ls -ld "$PRG"`
    link=`expr "$ls" : '.*-> \(.*\)$'`
    if expr "$link" : '/.*' > /dev/null; then
        PRG="$link"
    else
        PRG=`dirname "$PRG"`"/$link"
    fi
done
SAVED="`pwd`"
cd "`dirname \"$PRG\"`/" >/dev/null
APP_HOME="`pwd -P`"
cd "$SAVED" >/dev/null

APP_NAME="Gradle"
APP_BASE_NAME=`basename "$0"`

# Add default JVM options here. You can also use JAVA_OPTS and GRADLE_OPTS to pass JVM options to this script.
DEFAULT_JVM_OPTS=""

# Use the maximum available, or set MAX_FD != -1 to use that value.
MAX_FD="maximum"

warn () {
    echo "$*"
}

die () {
    echo
    echo "$*"
    echo
    exit 1
}

# OS specific support (must be 'true' or 'false').
cygwin=false
msys=false
darwin=false
nonstop=false
case "`uname`" in
  CYGWIN* )
    cygwin=true
    ;;
  Darwin* )
    darwin=true
    ;;
  MINGW* )
    msys=true
    ;;
  NONSTOP* )
    nonstop=true
    ;;
esac

CLASSPATH=$APP_HOME/gradle/wrapper/gradle-wrapper.jar

# Determine the Java command to use to start the JVM.
if [ -n "$JAVA_HOME" ] ; then
    if [ -x "$JAVA_HOME/jre/sh/java" ] ; then
        # IBM's JDK on AIX uses strange locations for the executables
        JAVACMD="$JAVA_HOME/jre/sh/java"
    else
        JAVACMD="$JAVA_HOME/bin/java"
    fi
    if [ ! -x "$JAVACMD" ] ; then
        die "ERROR: JAVA_HOME is set to an invalid directory: $JAVA_HOME

Please set the JAVA_HOME variable in your environment to match the
location of your Java installation."
    fi
else
    JAVACMD="java"
    which java >/dev/null 2>&1 || die "ERROR: JAVA_HOME is not set and no 'java' command could be found in your PATH.

Please set the JAVA_HOME variable in your environment to match the
location of your Java installation."
fi

# Increase the maximum file descriptors if we can.
if [ "$cygwin" = "false" -a "$darwin" = "false" -a "$nonstop" = "false" ] ; then
    MAX_FD_LIMIT=`ulimit -H -n`
    if [ $? -eq 0 ] ; then
        if [ "$MAX_FD" = "maximum" -o "$MAX_FD" = "max" ] ; then
            MAX_FD="$MAX_FD_LIMIT"
        fi
        ulimit -n $MAX_FD
        if [ $? -ne 0 ] ; then
            warn "Could not set maximum file descriptor limit: $MAX_FD"
        fi
    else
        warn "Could not query maximum file descriptor limit: $MAX_FD_LIMIT"
    fi
fi

# For Darwin, add options to specify how the application appears in the dock
if $darwin; then
    GRADLE_OPTS="$GRADLE_OPTS \"-Xdock:name=$APP_NAME\" \"-Xdock:icon=$APP_HOME/media/gradle.icns\""
fi

# For Cygwin, switch paths to Windows format before running java
if $cygwin ; then
    APP_HOME=`cygpath --path --mixed "$APP_HOME"`
    CLASSPATH=`cygpath --path --mixed "$CLASSPATH"`
    JAVACMD=`cygpath --unix "$JAVACMD"`

    # We build the pattern for arguments to be converted via cygpath
    ROOTDIRSRAW=`find -L / -maxdepth 1 -mindepth 1 -type d 2>/dev/null`
    SEP=""
    for dir in $ROOTDIRSRAW ; do
        ROOTDIRS="$ROOTDIRS$SEP$dir"
        SEP="|"
    done
    OURCYGPATTERN="(^($ROOTDIRS))"
    # Add a user-defined pattern to the cygpath arguments
    if [ "$GRADLE_CYGPATTERN" != "" ] ; then
        OURCYGPATTERN="$OURCYGPATTERN|($GRADLE_CYGPATTERN)"
    fi
    # Now convert the arguments - kludge to limit ourselves to /bin/sh
    i=0
    for arg in "$@" ; do
        CHECK=`echo "$arg"|egrep -c "$OURCYGPATTERN" -`
        CHECK2=`echo "$arg"|egrep -c "^-"`                                 ### Determine if an option

        if [ $CHECK -ne 0 ] && [ $CHECK2 -eq 0 ] ; then                    ### Added a condition
            eval `echo args$i`=`cygpath --path --ignore --mixed "$arg"`
        else
            eval `echo args$i`="\"$arg\""
        fi
        i=$((i+1))
    done
    case $i in
        (0) set -- ;;
        (1) set -- "$args0" ;;
        (2) set -- "$args0" "$args1" ;;
        (3) set -- "$args0" "$args1" "$args2" ;;
        (4) set -- "$args0" "$args1" "$args2" "$args3" ;;
        (5) set -- "$args0" "$args1" "$args2" "$args3" "$args4" ;;
        (6) set -- "$args0" "$args1" "$args2" "$args3" "$args4" "$args5" ;;
        (7) set -- "$args0" "$args1" "$args2" "$args3" "$args4" "$args5" "$args6" ;;
        (8) set -- "$args0" "$args1" "$args2" "$args3" "$args4" "$args5" "$args6" "$args7" ;;
        (9) set -- "$args0" "$args1" "$args2" "$args3" "$args4" "$args5" "$args6" "$args7" "$args8" ;;
    esac
fi

# Escape application args
save () {
    for i do printf %s\\n "$i" | sed "s/'/'\\\\''/g;1s/^/'/;\$s/\$/' \\\\/" ; done
    echo " "
}
APP_ARGS=$(save "$@")

# Collect all arguments for the java command, following the shell quoting and substitution rules
eval set -- $DEFAULT_JVM_OPTS $JAVA_OPTS $GRADLE_OPTS "\"-Dorg.gradle.appname=$APP_BASE_NAME\"" -classpath "\"$CLASSPATH\"" org.gradle.wrapper.GradleWrapperMain "$APP_ARGS"

# by default we should be in the correct project dir, but when run from Finder on Mac, the cwd is wrong
if [ "$(uname)" = "Darwin" ] && [ "$HOME" = "$PWD" ]; then
  cd "$(dirname "$0")"
fi

exec "$JAVACMD" "$@"


================================================
File: gradlew.bat
================================================
@if "%DEBUG%" == "" @echo off
@rem ##########################################################################
@rem
@rem  Gradle startup script for Windows
@rem
@rem ##########################################################################

@rem Set local scope for the variables with windows NT shell
if "%OS%"=="Windows_NT" setlocal

set DIRNAME=%~dp0
if "%DIRNAME%" == "" set DIRNAME=.
set APP_BASE_NAME=%~n0
set APP_HOME=%DIRNAME%

@rem Add default JVM options here. You can also use JAVA_OPTS and GRADLE_OPTS to pass JVM options to this script.
set DEFAULT_JVM_OPTS=

@rem Find java.exe
if defined JAVA_HOME goto findJavaFromJavaHome

set JAVA_EXE=java.exe
%JAVA_EXE% -version >NUL 2>&1
if "%ERRORLEVEL%" == "0" goto init

echo.
echo ERROR: JAVA_HOME is not set and no 'java' command could be found in your PATH.
echo.
echo Please set the JAVA_HOME variable in your environment to match the
echo location of your Java installation.

goto fail

:findJavaFromJavaHome
set JAVA_HOME=%JAVA_HOME:"=%
set JAVA_EXE=%JAVA_HOME%/bin/java.exe

if exist "%JAVA_EXE%" goto init

echo.
echo ERROR: JAVA_HOME is set to an invalid directory: %JAVA_HOME%
echo.
echo Please set the JAVA_HOME variable in your environment to match the
echo location of your Java installation.

goto fail

:init
@rem Get command-line arguments, handling Windows variants

if not "%OS%" == "Windows_NT" goto win9xME_args

:win9xME_args
@rem Slurp the command line arguments.
set CMD_LINE_ARGS=
set _SKIP=2

:win9xME_args_slurp
if "x%~1" == "x" goto execute

set CMD_LINE_ARGS=%*

:execute
@rem Setup the command line

set CLASSPATH=%APP_HOME%\gradle\wrapper\gradle-wrapper.jar

@rem Execute Gradle
"%JAVA_EXE%" %DEFAULT_JVM_OPTS% %JAVA_OPTS% %GRADLE_OPTS% "-Dorg.gradle.appname=%APP_BASE_NAME%" -classpath "%CLASSPATH%" org.gradle.wrapper.GradleWrapperMain %CMD_LINE_ARGS%

:end
@rem End local scope for the variables with windows NT shell
if "%ERRORLEVEL%"=="0" goto mainEnd

:fail
rem Set variable GRADLE_EXIT_CONSOLE if you need the _script_ return code instead of
rem the _cmd.exe /c_ return code!
if  not "" == "%GRADLE_EXIT_CONSOLE%" exit 1
exit /b 1

:mainEnd
if "%OS%"=="Windows_NT" endlocal

:omega


================================================
File: robolectric-deps.properties
================================================
org.robolectric\:android-all-instrumented\:6.0.1_r3-robolectric-r1-i7=../../../../../../../robolectric-deps/android-all-instrumented-6.0.1_r3-robolectric-r1-i7.jar
org.robolectric\:android-all-instrumented\:7.0.0_r1-robolectric-r1-i7=../../../../../../../robolectric-deps/android-all-instrumented-7.0.0_r1-robolectric-r1-i7.jar
org.robolectric\:android-all-instrumented\:12.1-robolectric-8229987-i7=../../../../../../../robolectric-deps/android-all-instrumented-12.1-robolectric-8229987-i7.jar
org.robolectric\:android-all-instrumented\:13-robolectric-9030017-i7=../../../../../../../robolectric-deps/android-all-instrumented-13-robolectric-9030017-i7.jar
org.robolectric\:android-all-instrumented\:15-robolectric-12650502-i7=../../../../../../../robolectric-deps/android-all-instrumented-15-robolectric-12650502-i7.jar

================================================
File: .editorconfig
================================================
root = true

[*.{kt,kts}]
ktlint_standard_no-blank-lines-in-chained-method-calls = disabled
ktlint_standard_trailing-comma-on-call-site = disabled
ktlint_standard_trailing-comma-on-declaration-site = disabled
ktlint_standard_function-signature = disabled
ktlint_standard_no-empty-first-line-in-class-body = disabled
ktlint_standard_argument-list-wrapping = disabled
ktlint_standard_parameter-list-wrapping = disabled
ktlint_standard_multiline-expression-wrapping = disabled
ktlint_standard_max-line-length = disabled
ktlint_standard_string-template-indent = disabled
ktlint_standard_annotation = disabled
ktlint_standard_value-parameter-comment = disabled
ktlint_standard_property-naming = disabled
ktlint_standard_value-argument-comment = disabled
ktlint_standard_blank-line-before-declaration = disabled
ktlint_standard_no-consecutive-comments = disabled
ktlint_standard_enum-wrapping = disabled
ktlint_standard_statement-wrapping = disabled
ktlint_standard_try-catch-finally-spacing = disabled
ktlint_standard_wrapping = disabled
ktlint_standard_chain-method-continuation = disabled
ktlint_standard_function-expression-body = disabled
ktlint_standard_class-signature = disabled
ktlint_standard_binary-expression-wrapping = disabled
ktlint_standard_condition-wrapping = disabled
ktlint_standard_function-literal = disabled
ktlint_standard_backing-property-naming = disabled


================================================
File: .hgtags
================================================
5836a17a0e6f28b4e5b7a7abc9152446f4806ee2 v1.0.0
30d9314729db181177bb7209d1c16cd65a5095eb v1.1.0
827cf67bd902b80c37dce8d4ee8d2d29437408a5 v1.1.1
82798e410f5ab043721b3998e23861fd365a9801 v1.1.2
78fc6b2df0575ec79b94c0196babacbafcb7f958 v1.1.3
c6308d8be8cd99d060a06f3b10c87f5722776098 v1.1.4
f85cab690aa86dc86c2d53f12def22f16d9c0c5b v1.1.7-beta1
165ee1feda811cccefda77ae83896b7cb3209b6c v1.1.7-rc1
0c06023f4bae172a79a5aad27ca8d66798f2109e v1.1.7-rc2
caeb88584771e1e569c87eed7cca90738c867189 v1.1.7
96568099c2ec1408508178568fc5ca2503ec670b v1.2 RC1
96568099c2ec1408508178568fc5ca2503ec670b v1.2 RC1
15185704d55c220b02abcf5de6170a106f387f5b v1.2 RC1
88476e4dc9845a0a276bb57f93911d8aacc68912 v1.2.0
88476e4dc9845a0a276bb57f93911d8aacc68912 v1.2.0
ccb4a2556950af32ac153c26ca1f71faebbf8a9b v1.2.0
ccb4a2556950af32ac153c26ca1f71faebbf8a9b v1.2.0
2a9b44755f0a5af2558b7e22ac9948377b6e9597 v1.2.0
2a9b44755f0a5af2558b7e22ac9948377b6e9597 v1.2.0
a5faa6055d4bdbc5db786673c28d9872142120c7 v1.2.0
a5faa6055d4bdbc5db786673c28d9872142120c7 v1.2.0
0000000000000000000000000000000000000000 v1.2.0
b0ac9ab2b5bccea1b160e774b28a1f0c8af9a9e8 v1.2.0 rev 1012
3e7860308f3d7520ff91b8fb27bc5123450cfaa4 v1.2.0 rev 1013
3e7860308f3d7520ff91b8fb27bc5123450cfaa4 v1.2.0 rev 1013
b7d1fccb1a29ae62185bef1a123e80dbcdbc171c v1.2.0 rev 1013
29d29a54a208785e93d8ed2024e2222115ede489 v1.2.0 rev 1014
29d29a54a208785e93d8ed2024e2222115ede489 v1.2.0 rev 1014
0000000000000000000000000000000000000000 v1.2.0 rev 1014
abbf6ad98f25f0f33216ed11125a3a9cee8f90bc v1.2.1 rev 1014
6b017ddf90f21ab24a9b0f219657d48b1bdfc204 v1.2.1 rev 1015
fbc9d90492a631209d8587d299d08b0d005c681a v1.2.1 rev 1016
fd9ea977734c1bdbb37f40217becb4ec50d356d2 v1.2.1 rev 1017
b25021b3a495e039ef4a2a932a95df705648dc3c v1.2.0 rev 1010 prerelease
797ac8701d2c93b13c5cc585d39ff0a1a74d70d2 v1.2.0 rev 1011 prerelease
6e3dcf4780ac5e8a62b8d92f4111638cbc9a53e9 v1.2.0 rev 1009 prerelease
dd3c2816eb879b2b922d2e4c52bc95c8996a8f25 v1.2.0 rev 1008 RC2
06063863a95919cd18dc36841febbf21ca0fa60e v1.2.0 rev 1008 RC1
7f9a9e162ff5de00b4384de5a6bd7b0132ad1e9c v1.2.0 rev 1007 beta
a5a35a6eaf724a9c080a8ab85a2190f8fa6470fa v1.2.0 rev 1006 beta
eca30a5719a2d603c364d470bedfbd7c90c89e35 v1.2.0 rev 1005 beta
820c7e389d341953d0158290f880c9226d144870 v1.2.0 rev 1004 alpha
5630fb8134d1e8169517b5586b05cc4183370e56 v1.2.0 rev 1003 alpha
f628ef1bc45293e3d5fea77ac881a7b7652af554 v1.2.0 rev 1001 alpha
8c5544b1b0f4d469f35832c730d02a3bfbdb21ea v1.2.0 rev 1000 alpha
7f9a9e162ff5de00b4384de5a6bd7b0132ad1e9c v1.2.0 rev 1007 RC1
7f9a9e162ff5de00b4384de5a6bd7b0132ad1e9c v1.2.0 rev 1007 beta
0000000000000000000000000000000000000000 v1.2.0 rev 1007 beta
a5a35a6eaf724a9c080a8ab85a2190f8fa6470fa v1.2.0 rev 1006 RC1
a5a35a6eaf724a9c080a8ab85a2190f8fa6470fa v1.2.0 rev 1006 beta
0000000000000000000000000000000000000000 v1.2.0 rev 1006 beta
eca30a5719a2d603c364d470bedfbd7c90c89e35 v1.2.0 rev 1005 RC1
eca30a5719a2d603c364d470bedfbd7c90c89e35 v1.2.0 rev 1005 beta
0000000000000000000000000000000000000000 v1.2.0 rev 1005 beta
820c7e389d341953d0158290f880c9226d144870 v1.2.0 rev 1004 RC1
820c7e389d341953d0158290f880c9226d144870 v1.2.0 rev 1004 alpha
0000000000000000000000000000000000000000 v1.2.0 rev 1004 alpha
5630fb8134d1e8169517b5586b05cc4183370e56 v1.2.0 rev 1003 RC1
5630fb8134d1e8169517b5586b05cc4183370e56 v1.2.0 rev 1003 alpha
0000000000000000000000000000000000000000 v1.2.0 rev 1003 alpha
f628ef1bc45293e3d5fea77ac881a7b7652af554 v1.2.0 rev 1001 RC1
f628ef1bc45293e3d5fea77ac881a7b7652af554 v1.2.0 rev 1001 alpha
0000000000000000000000000000000000000000 v1.2.0 rev 1001 alpha
8c5544b1b0f4d469f35832c730d02a3bfbdb21ea v1.2.0 rev 1000 RC1
8c5544b1b0f4d469f35832c730d02a3bfbdb21ea v1.2.0 rev 1000 alpha
0000000000000000000000000000000000000000 v1.2.0 rev 1000 alpha
7be1f7e0a0dc36b67f8a584c7f420c240eefd5c6 v1.2.1 rev 1018 (plus swahili)
c11fe1aebaca2e213f71e61ad2337791d02723e0 v1.2.1 rev 1019
64e490522c2ef5ebc9af8a1a2c0dbf78bb213c06 v1.2.1 rev 1020
ea230f4ee12c303640c30090c30a9ac386324d5a v1.2.2 rev 1021
ea230f4ee12c303640c30090c30a9ac386324d5a v1.2.2 rev 1021
3b8a3847d1bea472176a27548d602b119d0e695d v1.2.2 rev 1021
3b8a3847d1bea472176a27548d602b119d0e695d v1.2.2 rev 1021
f714913194222fb579c5ef6e59092c788eeea300 v1.2.2 rev 1021
1759bdc402730ed7a16d26e7aba44aa43f822355 v1.2.2 rev 1023
cef8219f74248bd4d295e5c105b9f0ced3ac7f8d v1.3 rev 1025
a3d74ab96cdee3e972f7e507776a3834f497fbe0 v1.3 rev 1027
5c2ce96c94c6daf5277befaabf54ab74f088437b v1.3 rev 1029
1c8b890c69fbccc47de596c8592d21c7439646ba v1.3 rev 1030
e1e6c70eef9913497c65de897e229a6e0d871ad8 v1.4 rev 1033
68616e24e60d963334c762daba5784c7af763d76 v1.4 rev 1034
aa63d3a1f3295cf5a4a6bc74d8f1a4d4939fdd8b v1.4 rev 1035
db03f3497da8c76883e475a14a2b034e61e29c37 v1.4 rev 1036
db03f3497da8c76883e475a14a2b034e61e29c37 v1.4 rev 1036
8f77433258b376de5a6a7267df03ecc7cdecc1a4 v1.4 rev 1036
86afc4615411eaeee61271790b2bae5de7b94176 v1.4 rev 1037
3254b74a70d9c4f4088ba710fd6d7f542ffe166f v1.4 rev 1038
bc69898dc4ccb061079ee82f9b52da34de8400b7 v1.4.3 rev 1040
cd78ad21a3c8b1f106cdbb35a55ddfd1c2cf021f v1.4.3 rev 1041
7bf86c85d2dac5d6353bf2007a5c817654bbfdfc v1.4.3 rev 1042
753b33ca1fa800b517fcb6156d55370b986cedeb v1.4.4 rev 1044
753b33ca1fa800b517fcb6156d55370b986cedeb v1.4.4 rev 1044
c0d79cc86e2da93dfb03165a520de2c42b5cf061 v1.4.4 rev 1044
72d2e66877f36e0d3b607a6dbc4207c96dcc4c0c v1.4.4 rev 1045
712f8174b16bd95ece6bac433f871a19d59ea46c v1.4.4 rev 1046
5a92ad65ed775aa744b0abfe1aaa3ef756bd82f3 v1.4.5 rev 1048
5a92ad65ed775aa744b0abfe1aaa3ef756bd82f3 v1.4.5 rev 1048
1a6028ae2ce23b2eb50bd7ee3b2674effd2620af v1.4.5 rev 1048
aacc424db2a79c201abd6dcb481af830d017477f v1.4.6 rev 1049 for testing
aacc424db2a79c201abd6dcb481af830d017477f v1.4.6 rev 1049 for testing
1fced08f31e9e4f10fcdf067debdbad3557899de v1.4.6 rev 1049 for testing


================================================
File: analytics/build.gradle.kts
================================================
plugins {
    alias(libs.plugins.androidLibrary)
    alias(libs.plugins.kotlinAndroid)
}

apply(from = "../config/quality.gradle")

android {
    compileSdk = libs.versions.compileSdk.get().toInt()

    defaultConfig {
        minSdk = libs.versions.minSdk.get().toInt()

        testInstrumentationRunner = "androidx.test.runner.AndroidJUnitRunner"
        consumerProguardFiles("consumer-rules.pro")
    }

    buildTypes {
        release {
            isMinifyEnabled = false
            proguardFiles(getDefaultProguardFile("proguard-android-optimize.txt"), "proguard-rules.pro")
        }
    }

    compileOptions {
        sourceCompatibility = JavaVersion.VERSION_17
        targetCompatibility = JavaVersion.VERSION_17
    }

    namespace = "org.odk.collect.analytics"
}

dependencies {
    implementation(libs.kotlinStdlib)
    implementation(libs.androidxCoreKtx)
    implementation(libs.firebaseCrashlytics)
    implementation(libs.firebaseAnalytics)
}


================================================
File: analytics/proguard-rules.pro
================================================
# Add project specific ProGuard rules here.
# You can control the set of applied configuration files using the
# proguardFiles setting in build.gradle.
#
# For more details, see
#   http://developer.android.com/guide/developing/tools/proguard.html

# If your project uses WebView with JS, uncomment the following
# and specify the fully qualified class name to the JavaScript interface
# class:
#-keepclassmembers class fqcn.of.javascript.interface.for.webview {
#   public *;
#}

# Uncomment this to preserve the line number information for
# debugging stack traces.
#-keepattributes SourceFile,LineNumberTable

# If you keep the line number information, uncomment this to
# hide the original source file name.
#-renamesourcefileattribute SourceFile


================================================
File: analytics/.gitignore
================================================
/build


================================================
File: analytics/src/main/AndroidManifest.xml
================================================
<?xml version="1.0" encoding="utf-8"?>
<manifest xmlns:android="http://schemas.android.com/apk/res/android">

    <uses-permission android:name="android.permission.ACCESS_NETWORK_STATE" />
    <uses-permission android:name="android.permission.INTERNET" />
    <uses-permission android:name="android.permission.WAKE_LOCK" />
</manifest>


================================================
File: analytics/src/main/java/org/odk/collect/analytics/Analytics.kt
================================================
package org.odk.collect.analytics

interface Analytics {
    fun logEvent(event: String)
    fun logEventWithParam(event: String, key: String, value: String)
    fun logNonFatal(throwable: Throwable)
    fun logMessage(message: String)
    fun setAnalyticsCollectionEnabled(isAnalyticsEnabled: Boolean)
    fun setUserProperty(name: String, value: String)

    companion object {
        private var instance: Analytics = NoopAnalytics()
        private val params = mutableMapOf<String, String>()

        fun setInstance(analytics: Analytics) {
            this.instance = analytics
        }

        @JvmStatic
        fun log(event: String) {
            instance.logEvent(event)
        }

        @JvmStatic
        fun log(event: String, key: String) {
            val paramValue = params[key]

            if (paramValue != null) {
                log(event, key, paramValue)
            } else {
                log(event)
            }
        }

        @JvmStatic
        fun log(event: String, key: String, value: String) {
            instance.logEventWithParam(event, key, value)
        }

        @JvmStatic
        fun setParam(key: String, value: String) {
            params[key] = value
        }

        fun setUserProperty(name: String, value: String) {
            instance.setUserProperty(name, value)
        }

        fun logNonFatal(throwable: Throwable) {
            instance.logNonFatal(throwable)
        }
    }
}


================================================
File: analytics/src/main/java/org/odk/collect/analytics/BlockableFirebaseAnalytics.kt
================================================
package org.odk.collect.analytics

import android.app.Application
import android.os.Bundle
import com.google.firebase.analytics.FirebaseAnalytics
import com.google.firebase.crashlytics.FirebaseCrashlytics

class BlockableFirebaseAnalytics(application: Application) : Analytics {
    private val firebaseAnalytics = FirebaseAnalytics.getInstance(application)
    private val crashlytics = FirebaseCrashlytics.getInstance()

    override fun logEvent(event: String) {
        firebaseAnalytics.logEvent(event, null)
    }

    override fun logEventWithParam(event: String, key: String, value: String) {
        val bundle = Bundle()
        bundle.putString(key, value)
        firebaseAnalytics.logEvent(event, bundle)
    }

    override fun logNonFatal(throwable: Throwable) {
        crashlytics.recordException(throwable)
    }

    override fun logMessage(message: String) {
        crashlytics.log(message)
    }

    override fun setAnalyticsCollectionEnabled(isAnalyticsEnabled: Boolean) {
        firebaseAnalytics.setAnalyticsCollectionEnabled(isAnalyticsEnabled)
        crashlytics.setCrashlyticsCollectionEnabled(isAnalyticsEnabled)
    }

    override fun setUserProperty(name: String, value: String) {
        firebaseAnalytics.setUserProperty(name, value)
    }
}


================================================
File: analytics/src/main/java/org/odk/collect/analytics/NoopAnalytics.kt
================================================
package org.odk.collect.analytics

class NoopAnalytics : Analytics {
    override fun logEvent(event: String) {}
    override fun logEventWithParam(event: String, key: String, value: String) {}
    override fun logNonFatal(throwable: Throwable) {}
    override fun logMessage(message: String) {}
    override fun setAnalyticsCollectionEnabled(isAnalyticsEnabled: Boolean) {}
    override fun setUserProperty(name: String, value: String) {}
}


================================================
File: androidshared/build.gradle.kts
================================================
plugins {
    alias(libs.plugins.androidLibrary)
    alias(libs.plugins.kotlinAndroid)
    alias(libs.plugins.kotlinKapt)
}

apply(from = "../config/quality.gradle")

android {
    compileSdk = libs.versions.compileSdk.get().toInt()

    buildFeatures {
        viewBinding = true
    }

    defaultConfig {
        minSdk = libs.versions.minSdk.get().toInt()

        testInstrumentationRunner = "androidx.test.runner.AndroidJUnitRunner"
        consumerProguardFiles("consumer-rules.pro")
    }

    buildTypes {
        release {
            isMinifyEnabled = false
        }
    }

    compileOptions {
        isCoreLibraryDesugaringEnabled = true
        sourceCompatibility = JavaVersion.VERSION_17
        targetCompatibility = JavaVersion.VERSION_17
    }

    testOptions {
        unitTests.isIncludeAndroidResources = true
    }
    namespace = "org.odk.collect.androidshared"
}

dependencies {
    coreLibraryDesugaring(libs.desugar)

    implementation(project(":icons"))
    implementation(project(":strings"))
    implementation(project(":shared"))
    implementation(project(":async"))
    implementation(libs.kotlinStdlib)
    implementation(libs.androidxCoreKtx)
    implementation(libs.androidxLifecycleLivedataKtx)
    implementation(libs.androidMaterial)
    implementation(libs.androidxFragmentKtx)
    implementation(libs.androidxPreferenceKtx)
    implementation(libs.timber)
    implementation(libs.androidxExinterface)
    implementation(libs.playServicesLocation)

    testImplementation(project(":test-shared"))
    testImplementation(project(":androidtest"))
    testImplementation(libs.junit)
    testImplementation(libs.androidxTestExtJunit)
    testImplementation(libs.androidxTestEspressoCore)
    testImplementation(libs.robolectric)
    testImplementation(libs.mockitoKotlin)
    testImplementation(libs.androidxArchCoreTesting)

    androidTestImplementation(libs.androidxTestExtJunit)
    androidTestImplementation(libs.junit)

    debugImplementation(project(":fragments-test"))
}


================================================
File: androidshared/.gitignore
================================================
/build


================================================
File: androidshared/src/androidTest/java/org/odk/collect/androidshared/bitmap/ImageCompressorTest.kt
================================================
/*
 * Copyright 2017 Nafundi
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
package org.odk.collect.androidshared.bitmap

import android.graphics.Bitmap
import android.graphics.BitmapFactory
import androidx.exifinterface.media.ExifInterface
import androidx.test.ext.junit.runners.AndroidJUnit4
import org.hamcrest.CoreMatchers.equalTo
import org.hamcrest.MatcherAssert.assertThat
import org.junit.Test
import org.junit.runner.RunWith
import java.io.File

@RunWith(AndroidJUnit4::class)
class ImageCompressorTest {
    private lateinit var testImagePath: String
    private val imageCompressor = ImageCompressor

    @Test
    fun imageShouldNotBeChangedIfMaxPixelsIsZero() {
        saveTestBitmap(3000, 2000)
        imageCompressor.execute(testImagePath, 0)

        val image = ImageFileUtils.getBitmap(testImagePath, BitmapFactory.Options())!!

        assertThat(3000, equalTo(image.width))
        assertThat(2000, equalTo(image.height))
    }

    @Test
    fun imageShouldNotBeChangedIfMaxPixelsIsSmallerThanZero() {
        saveTestBitmap(3000, 2000)
        imageCompressor.execute(testImagePath, -10)

        val image = ImageFileUtils.getBitmap(testImagePath, BitmapFactory.Options())!!

        assertThat(3000, equalTo(image.width))
        assertThat(2000, equalTo(image.height))
    }

    @Test
    fun imageShouldNotBeChangedIfMaxPixelsIsNotSmallerThanTheEdgeWhenWidthIsBiggerThanHeight() {
        saveTestBitmap(3000, 2000)
        imageCompressor.execute(testImagePath, 3000)

        val image = ImageFileUtils.getBitmap(testImagePath, BitmapFactory.Options())!!

        assertThat(3000, equalTo(image.width))
        assertThat(2000, equalTo(image.height))
    }

    @Test
    fun imageShouldNotBeChangedIfMaxPixelsIsNotSmallerThanTheLongEdgeWhenWidthIsSmallerThanHeight() {
        saveTestBitmap(2000, 3000)
        imageCompressor.execute(testImagePath, 4000)

        val image = ImageFileUtils.getBitmap(testImagePath, BitmapFactory.Options())!!

        assertThat(2000, equalTo(image.width))
        assertThat(3000, equalTo(image.height))
    }

    @Test
    fun imageShouldNotBeChangedIfMaxPixelsIsNotSmallerThanTheLongEdgeWhenWidthEqualsHeight() {
        saveTestBitmap(3000, 3000)
        imageCompressor.execute(testImagePath, 3000)

        val image = ImageFileUtils.getBitmap(testImagePath, BitmapFactory.Options())!!

        assertThat(3000, equalTo(image.width))
        assertThat(3000, equalTo(image.height))
    }

    @Test
    fun imageShouldBeCompressedIfMaxPixelsIsSmallerThanTheLongEdgeWhenWidthIsBiggerThanHeight() {
        saveTestBitmap(4000, 3000)
        imageCompressor.execute(testImagePath, 2000)

        val image = ImageFileUtils.getBitmap(testImagePath, BitmapFactory.Options())!!

        assertThat(2000, equalTo(image.width))
        assertThat(1500, equalTo(image.height))
    }

    @Test
    fun imageShouldBeCompressedIfMaxPixelsIsSmallerThanTheLongEdgeWhenWidthIsSmallerThanHeight() {
        saveTestBitmap(3000, 4000)
        imageCompressor.execute(testImagePath, 2000)

        val image = ImageFileUtils.getBitmap(testImagePath, BitmapFactory.Options())!!

        assertThat(1500, equalTo(image.width))
        assertThat(2000, equalTo(image.height))
    }

    @Test
    fun imageShouldBeCompressedIfMaxPixelsIsSmallerThanTheLongEdgeWhenWidthEqualsHeight() {
        saveTestBitmap(3000, 3000)
        imageCompressor.execute(testImagePath, 2000)

        val image = ImageFileUtils.getBitmap(testImagePath, BitmapFactory.Options())!!

        assertThat(2000, equalTo(image.width))
        assertThat(2000, equalTo(image.height))
    }

    @Test
    fun keepExifAfterScaling() {
        val attributes = mutableMapOf(
            // supported exif tags
            ExifInterface.TAG_DATETIME to "2014:01:23 14:57:18",
            ExifInterface.TAG_DATETIME_ORIGINAL to "2014:01:23 14:57:18",
            ExifInterface.TAG_DATETIME_DIGITIZED to "2014:01:23 14:57:18",
            ExifInterface.TAG_OFFSET_TIME to "+1:00",
            ExifInterface.TAG_OFFSET_TIME_ORIGINAL to "+1:00",
            ExifInterface.TAG_OFFSET_TIME_DIGITIZED to "+1:00",
            ExifInterface.TAG_SUBSEC_TIME to "First photo",
            ExifInterface.TAG_SUBSEC_TIME_ORIGINAL to "0",
            ExifInterface.TAG_SUBSEC_TIME_DIGITIZED to "0",
            ExifInterface.TAG_IMAGE_DESCRIPTION to "Photo from Poland",
            ExifInterface.TAG_MAKE to "OLYMPUS IMAGING CORP",
            ExifInterface.TAG_MODEL to "STYLUS1",
            ExifInterface.TAG_SOFTWARE to "Version 1.0",
            ExifInterface.TAG_ARTIST to "Grzegorz",
            ExifInterface.TAG_COPYRIGHT to "G",
            ExifInterface.TAG_MAKER_NOTE to "OLYMPUS",
            ExifInterface.TAG_USER_COMMENT to "First photo",
            ExifInterface.TAG_IMAGE_UNIQUE_ID to "123456789",
            ExifInterface.TAG_CAMERA_OWNER_NAME to "John",
            ExifInterface.TAG_BODY_SERIAL_NUMBER to "987654321",
            ExifInterface.TAG_GPS_ALTITUDE to "41/1",
            ExifInterface.TAG_GPS_ALTITUDE_REF to "0",
            ExifInterface.TAG_GPS_DATESTAMP to "2014:01:23",
            ExifInterface.TAG_GPS_TIMESTAMP to "14:57:18",
            ExifInterface.TAG_GPS_LATITUDE to "50/1,49/1,8592/1000",
            ExifInterface.TAG_GPS_LATITUDE_REF to "N",
            ExifInterface.TAG_GPS_LONGITUDE to "0/1,8/1,12450/1000",
            ExifInterface.TAG_GPS_LONGITUDE_REF to "W",
            ExifInterface.TAG_GPS_SATELLITES to "8",
            ExifInterface.TAG_GPS_STATUS to "A",
            ExifInterface.TAG_ORIENTATION to "1",
            // unsupported exif tags
            ExifInterface.TAG_THUMBNAIL_IMAGE_LENGTH to "5",
            ExifInterface.TAG_DNG_VERSION to "100"
        )

        saveTestBitmap(3000, 4000, attributes)
        imageCompressor.execute(testImagePath, 2000)

        val exifData = ExifInterface(testImagePath)
        for (attributeName in attributes.keys) {
            if (attributeName == ExifInterface.TAG_THUMBNAIL_IMAGE_LENGTH ||
                attributeName == ExifInterface.TAG_DNG_VERSION
            ) {
                assertThat(exifData.getAttribute(attributeName), equalTo(null))
            } else {
                assertThat(exifData.getAttribute(attributeName), equalTo(attributes[attributeName]))
            }
        }
    }

    @Test
    fun verifyNoRotationAppliedForExifRotation() {
        val attributes = mapOf(ExifInterface.TAG_ORIENTATION to ExifInterface.ORIENTATION_ROTATE_90.toString())
        saveTestBitmap(3000, 4000, attributes)
        imageCompressor.execute(testImagePath, 4000)

        val image = ImageFileUtils.getBitmap(testImagePath, BitmapFactory.Options())!!

        assertThat(3000, equalTo(image.width))
        assertThat(4000, equalTo(image.height))
    }

    private fun saveTestBitmap(width: Int, height: Int, attributes: Map<String, String> = emptyMap()) {
        testImagePath = File.createTempFile("test", ".jpg").absolutePath

        val bitmap = Bitmap.createBitmap(width, height, Bitmap.Config.RGB_565)
        ImageFileUtils.saveBitmapToFile(bitmap, testImagePath)
        val exifInterface = ExifInterface(testImagePath)
        for ((key, value) in attributes) {
            exifInterface.setAttribute(key, value)
        }
        exifInterface.saveAttributes()
    }
}


================================================
File: androidshared/src/androidTest/java/org/odk/collect/androidshared/bitmap/ImageFileUtilsTest.kt
================================================
/*
 * Copyright 2017 Nafundi
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
package org.odk.collect.androidshared.bitmap

import android.content.Context
import android.graphics.Bitmap
import android.graphics.BitmapFactory
import android.graphics.Color
import androidx.exifinterface.media.ExifInterface
import androidx.test.core.app.ApplicationProvider
import androidx.test.ext.junit.runners.AndroidJUnit4
import org.junit.Assert.assertEquals
import org.junit.Before
import org.junit.Test
import org.junit.runner.RunWith
import timber.log.Timber
import java.io.File
import java.io.IOException

@RunWith(AndroidJUnit4::class)
class ImageFileUtilsTest {

    private lateinit var sourceFile: File
    private lateinit var destinationFile: File
    private lateinit var attributes: MutableMap<String, String>

    @Before
    fun setup() {
        sourceFile = createTempImageFile("source")
        destinationFile = createTempImageFile("destination")
        attributes = HashMap()
    }

    @Test
    fun copyAndRotateImageNinety() {
        attributes[ExifInterface.TAG_ORIENTATION] = ExifInterface.ORIENTATION_ROTATE_90.toString()
        saveTestBitmapToFile(sourceFile.absolutePath, attributes)
        ImageFileUtils.copyImageAndApplyExifRotation(sourceFile, destinationFile)
        val image = ImageFileUtils.getBitmap(
            destinationFile.absolutePath,
            BitmapFactory.Options()
        )!!

        assertEquals(2, image.width)
        assertEquals(1, image.height)
        assertEquals(Color.GREEN, image.getPixel(0, 0))
        assertEquals(Color.RED, image.getPixel(1, 0))
        verifyNoExifOrientationInDestinationFile(destinationFile.absolutePath)
    }

    @Test
    fun copyAndRotateImageTwoSeventy() {
        attributes[ExifInterface.TAG_ORIENTATION] = ExifInterface.ORIENTATION_ROTATE_270.toString()
        saveTestBitmapToFile(sourceFile.absolutePath, attributes)
        ImageFileUtils.copyImageAndApplyExifRotation(sourceFile, destinationFile)
        val image = ImageFileUtils.getBitmap(
            destinationFile.absolutePath,
            BitmapFactory.Options()
        )!!

        assertEquals(2, image.width)
        assertEquals(1, image.height)
        assertEquals(Color.RED, image.getPixel(0, 0))
        assertEquals(Color.GREEN, image.getPixel(1, 0))
        verifyNoExifOrientationInDestinationFile(destinationFile.absolutePath)
    }

    @Test
    fun copyAndRotateImageOneEighty() {
        attributes[ExifInterface.TAG_ORIENTATION] = ExifInterface.ORIENTATION_ROTATE_180.toString()
        saveTestBitmapToFile(sourceFile.absolutePath, attributes)
        ImageFileUtils.copyImageAndApplyExifRotation(sourceFile, destinationFile)
        val image = ImageFileUtils.getBitmap(
            destinationFile.absolutePath,
            BitmapFactory.Options()
        )!!

        assertEquals(1, image.width)
        assertEquals(2, image.height)
        assertEquals(Color.GREEN, image.getPixel(0, 0))
        assertEquals(Color.RED, image.getPixel(0, 1))
        verifyNoExifOrientationInDestinationFile(destinationFile.absolutePath)
    }

    @Test
    fun copyAndRotateImageUndefined() {
        attributes[ExifInterface.TAG_ORIENTATION] = ExifInterface.ORIENTATION_UNDEFINED.toString()
        saveTestBitmapToFile(sourceFile.absolutePath, attributes)
        ImageFileUtils.copyImageAndApplyExifRotation(sourceFile, destinationFile)
        val image = ImageFileUtils.getBitmap(
            destinationFile.absolutePath,
            BitmapFactory.Options()
        )!!

        assertEquals(1, image.width)
        assertEquals(2, image.height)
        assertEquals(Color.RED, image.getPixel(0, 0))
        assertEquals(Color.GREEN, image.getPixel(0, 1))
        verifyNoExifOrientationInDestinationFile(destinationFile.absolutePath)
    }

    @Test
    fun copyAndRotateImageNoExif() {
        saveTestBitmapToFile(sourceFile.absolutePath, null)
        ImageFileUtils.copyImageAndApplyExifRotation(sourceFile, destinationFile)
        val image = ImageFileUtils.getBitmap(
            destinationFile.absolutePath,
            BitmapFactory.Options()
        )!!

        assertEquals(1, image.width)
        assertEquals(2, image.height)
        assertEquals(Color.RED, image.getPixel(0, 0))
        assertEquals(Color.GREEN, image.getPixel(0, 1))
        verifyNoExifOrientationInDestinationFile(destinationFile.absolutePath)
    }

    /**
     * These cases all have a window smaller than the image so the image should be scaled down.
     * Note that the scaling isn't exact -- the factor is the closest power of 2 to the exact one.
     */
    @Test
    fun scaleDownBitmapWhenNeeded() {
        runScaleTest(1000, 1000, 500, 500, 500, 500, false)
        runScaleTest(600, 800, 600, 200, 150, 200, false)
        runScaleTest(500, 400, 250, 200, 250, 200, false)
    }

    @Test
    fun doNotScaleDownBitmapWhenNotNeeded() {
        runScaleTest(1000, 1000, 2000, 2000, 1000, 1000, false)
        runScaleTest(600, 800, 600, 800, 600, 800, false)
        runScaleTest(500, 400, 600, 600, 500, 400, false)
        runScaleTest(2000, 800, 4000, 2000, 2000, 800, false)
    }

    @Test
    fun accuratelyScaleBitmapToDisplay() {
        runScaleTest(1000, 1000, 500, 500, 500, 500, true)
        runScaleTest(600, 800, 600, 200, 150, 200, true)
        runScaleTest(500, 400, 250, 200, 250, 200, true)
        runScaleTest(2000, 800, 300, 400, 300, 120, true)
        runScaleTest(1000, 1000, 2000, 2000, 2000, 2000, true)
        runScaleTest(600, 800, 600, 800, 600, 800, true)
        runScaleTest(500, 400, 600, 600, 600, 480, true)
        runScaleTest(2000, 800, 4000, 2000, 4000, 1600, true)
    }

    private fun runScaleTest(
        imageHeight: Int,
        imageWidth: Int,
        windowHeight: Int,
        windowWidth: Int,
        expectedHeight: Int,
        expectedWidth: Int,
        shouldScaleAccurately: Boolean
    ) {
        ScaleImageTest()
            .createBitmap(imageHeight, imageWidth)
            .scaleBitmapToDisplay(windowHeight, windowWidth, shouldScaleAccurately)
            .assertScaledBitmapDimensions(expectedHeight, expectedWidth)
    }

    private fun verifyNoExifOrientationInDestinationFile(destinationFilePath: String) {
        val exifData = getTestImageExif(destinationFilePath)
        if (exifData != null) {
            assertEquals(
                ExifInterface.ORIENTATION_UNDEFINED,
                exifData.getAttributeInt(
                    ExifInterface.TAG_ORIENTATION,
                    ExifInterface.ORIENTATION_UNDEFINED
                )
            )
        }
    }

    private fun saveTestBitmapToFile(
        filePath: String,
        attributes: Map<String, String>?
    ) {
        val bitmap = Bitmap.createBitmap(1, 2, Bitmap.Config.ARGB_8888)
        bitmap.setPixel(0, 0, Color.RED)
        bitmap.setPixel(0, 1, Color.GREEN)

        ImageFileUtils.saveBitmapToFile(bitmap, filePath)
        if (attributes != null) {
            try {
                val exifInterface = ExifInterface(filePath)
                for (attributeName in attributes.keys) {
                    exifInterface.setAttribute(attributeName, attributes[attributeName])
                }
                exifInterface.saveAttributes()
            } catch (e: IOException) {
                Timber.w(e)
            }
        }
    }

    private fun getTestImageExif(imagePath: String): ExifInterface? {
        try {
            return ExifInterface(imagePath)
        } catch (e: Exception) {
            Timber.w(e)
        }
        return null
    }

    private fun createTempImageFile(imageName: String): File {
        val temp = File.createTempFile(imageName, ".png")
        temp.deleteOnExit()
        return temp
    }

    private class ScaleImageTest {
        private val cache = ApplicationProvider.getApplicationContext<Context>().externalCacheDir
        private val imageFile = File(cache, "testImage.jpeg")
        private var scaledBitmap: Bitmap? = null

        fun createBitmap(imageHeight: Int, imageWidth: Int): ScaleImageTest {
            val bitmap = Bitmap.createBitmap(imageWidth, imageHeight, Bitmap.Config.ARGB_8888)
            ImageFileUtils.saveBitmapToFile(bitmap, imageFile.absolutePath)
            return this
        }

        fun scaleBitmapToDisplay(
            windowHeight: Int,
            windowWidth: Int,
            shouldScaleAccurately: Boolean
        ): ScaleImageTest {
            scaledBitmap = ImageFileUtils.getBitmapScaledToDisplay(
                imageFile,
                windowHeight,
                windowWidth,
                shouldScaleAccurately
            )
            return this
        }

        fun assertScaledBitmapDimensions(expectedHeight: Int, expectedWidth: Int) {
            assertEquals(expectedHeight.toLong(), scaledBitmap!!.height.toLong())
            assertEquals(expectedWidth.toLong(), scaledBitmap!!.width.toLong())
        }
    }
}


================================================
File: androidshared/src/main/AndroidManifest.xml
================================================
<?xml version="1.0" encoding="utf-8"?>
<manifest xmlns:android="http://schemas.android.com/apk/res/android">

    <uses-permission android:name="android.permission.ACCESS_NETWORK_STATE" />

    <application>
        <activity android:name="org.odk.collect.androidshared.ui.ReturnToAppActivity" />
    </application>
</manifest>


================================================
File: androidshared/src/main/java/org/odk/collect/androidshared/async/TrackableWorker.kt
================================================
package org.odk.collect.androidshared.async

import org.odk.collect.androidshared.livedata.MutableNonNullLiveData
import org.odk.collect.androidshared.livedata.NonNullLiveData
import org.odk.collect.async.Scheduler
import java.util.concurrent.atomic.AtomicInteger
import java.util.function.Consumer
import java.util.function.Supplier

class TrackableWorker(private val scheduler: Scheduler) {

    private val _isWorking = MutableNonNullLiveData(false)
    val isWorking: NonNullLiveData<Boolean> = _isWorking

    private var activeBackgroundJobsCounter = AtomicInteger(0)

    fun <T> immediate(background: Supplier<T>, foreground: Consumer<T>) {
        activeBackgroundJobsCounter.incrementAndGet()
        _isWorking.value = true
        scheduler.immediate(background) { result ->
            if (activeBackgroundJobsCounter.decrementAndGet() == 0) {
                _isWorking.value = false
            }
            foreground.accept(result)
        }
    }

    fun immediate(background: Runnable) {
        immediate(
            background = {
                background.run()
            },
            foreground = {}
        )
    }
}


================================================
File: androidshared/src/main/java/org/odk/collect/androidshared/bitmap/ImageCompressor.kt
================================================
/*
 * Copyright 2017 Nafundi
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
package org.odk.collect.androidshared.bitmap

import android.graphics.Bitmap
import android.graphics.BitmapFactory
import androidx.exifinterface.media.ExifInterface
import timber.log.Timber

object ImageCompressor {
    /**
     * Before proceed with scaling or rotating, make sure existing exif information is stored/restored.
     * @author Khuong Ninh (khuong.ninh@it-development.com)
     */
    fun execute(imagePath: String, maxPixels: Int) {
        backupExifData(imagePath)
        scaleDownImage(imagePath, maxPixels)
        restoreExifData(imagePath)
    }

    /**
     * This method is used to reduce an original picture size.
     * maxPixels refers to the max pixels of the long edge, the short edge is scaled proportionately.
     */
    private fun scaleDownImage(imagePath: String, maxPixels: Int) {
        if (maxPixels <= 0) {
            return
        }

        var image = ImageFileUtils.getBitmap(imagePath, BitmapFactory.Options())
        if (image != null) {
            val originalWidth = image.width.toDouble()
            val originalHeight = image.height.toDouble()
            if (originalWidth > originalHeight && originalWidth > maxPixels) {
                val newHeight = (originalHeight / (originalWidth / maxPixels)).toInt()
                image = Bitmap.createScaledBitmap(image, maxPixels, newHeight, false)
                ImageFileUtils.saveBitmapToFile(image, imagePath)
            } else if (originalHeight > maxPixels) {
                val newWidth = (originalWidth / (originalHeight / maxPixels)).toInt()
                image = Bitmap.createScaledBitmap(image, newWidth, maxPixels, false)
                ImageFileUtils.saveBitmapToFile(image, imagePath)
            }
        }
    }

    private fun backupExifData(imagePath: String) {
        try {
            val exif = ExifInterface(imagePath)
            for ((key, _) in exifDataBackup) {
                exifDataBackup[key] = exif.getAttribute(key)
            }
        } catch (e: Throwable) {
            Timber.w(e)
        }
    }

    private fun restoreExifData(imagePath: String) {
        try {
            val exif = ExifInterface(imagePath)
            for ((key, value) in exifDataBackup) {
                exif.setAttribute(key, value)
            }
            exif.saveAttributes()
        } catch (e: Throwable) {
            Timber.w(e)
        }
    }

    private val exifDataBackup = mutableMapOf<String, String?>(
        ExifInterface.TAG_DATETIME to null,
        ExifInterface.TAG_DATETIME_ORIGINAL to null,
        ExifInterface.TAG_DATETIME_DIGITIZED to null,
        ExifInterface.TAG_OFFSET_TIME to null,
        ExifInterface.TAG_OFFSET_TIME_ORIGINAL to null,
        ExifInterface.TAG_OFFSET_TIME_DIGITIZED to null,
        ExifInterface.TAG_SUBSEC_TIME to null,
        ExifInterface.TAG_SUBSEC_TIME_ORIGINAL to null,
        ExifInterface.TAG_SUBSEC_TIME_DIGITIZED to null,
        ExifInterface.TAG_IMAGE_DESCRIPTION to null,
        ExifInterface.TAG_MAKE to null,
        ExifInterface.TAG_MODEL to null,
        ExifInterface.TAG_SOFTWARE to null,
        ExifInterface.TAG_ARTIST to null,
        ExifInterface.TAG_COPYRIGHT to null,
        ExifInterface.TAG_MAKER_NOTE to null,
        ExifInterface.TAG_USER_COMMENT to null,
        ExifInterface.TAG_IMAGE_UNIQUE_ID to null,
        ExifInterface.TAG_CAMERA_OWNER_NAME to null,
        ExifInterface.TAG_BODY_SERIAL_NUMBER to null,
        ExifInterface.TAG_GPS_ALTITUDE to null,
        ExifInterface.TAG_GPS_ALTITUDE_REF to null,
        ExifInterface.TAG_GPS_DATESTAMP to null,
        ExifInterface.TAG_GPS_TIMESTAMP to null,
        ExifInterface.TAG_GPS_LATITUDE to null,
        ExifInterface.TAG_GPS_LATITUDE_REF to null,
        ExifInterface.TAG_GPS_LONGITUDE to null,
        ExifInterface.TAG_GPS_LONGITUDE_REF to null,
        ExifInterface.TAG_GPS_SATELLITES to null,
        ExifInterface.TAG_GPS_STATUS to null,
        ExifInterface.TAG_ORIENTATION to null
    )
}


================================================
File: androidshared/src/main/java/org/odk/collect/androidshared/bitmap/ImageFileUtils.kt
================================================
package org.odk.collect.androidshared.bitmap

import android.graphics.Bitmap
import android.graphics.Bitmap.CompressFormat
import android.graphics.BitmapFactory
import android.graphics.Matrix
import androidx.exifinterface.media.ExifInterface
import timber.log.Timber
import java.io.File
import java.io.FileOutputStream
import java.io.IOException
import java.lang.Exception
import java.util.Locale
import kotlin.math.ceil

object ImageFileUtils {
    // 80% JPEG quality gives a greater file size reduction with almost no loss in quality
    private const val IMAGE_COMPRESS_QUALITY = 80

    private val EXIF_ORIENTATION_ROTATIONS = arrayOf(
        ExifInterface.ORIENTATION_ROTATE_90,
        ExifInterface.ORIENTATION_ROTATE_180,
        ExifInterface.ORIENTATION_ROTATE_270
    )

    @JvmStatic
    fun saveBitmapToFile(bitmap: Bitmap?, path: String) {
        val compressFormat =
            if (path.lowercase(Locale.getDefault()).endsWith(".png")) {
                CompressFormat.PNG
            } else {
                CompressFormat.JPEG
            }
        try {
            if (bitmap != null) {
                FileOutputStream(path).use { out -> bitmap.compress(compressFormat, IMAGE_COMPRESS_QUALITY, out) }
            }
        } catch (e: Exception) {
            Timber.e(e)
        }
    }

    /*
    This method is used to avoid OutOfMemoryError exception during loading an image.
    If the exception occurs we catch it and try to load a smaller image.
     */
    @JvmStatic
    fun getBitmap(path: String?, originalOptions: BitmapFactory.Options): Bitmap? {
        val newOptions = BitmapFactory.Options()
        newOptions.inSampleSize = originalOptions.inSampleSize
        if (newOptions.inSampleSize <= 0) {
            newOptions.inSampleSize = 1
        }
        val bitmap: Bitmap? = try {
            BitmapFactory.decodeFile(path, originalOptions)
        } catch (e: OutOfMemoryError) {
            Timber.i(e)
            newOptions.inSampleSize++
            return getBitmap(path, newOptions)
        }
        return bitmap
    }

    @JvmStatic
    fun getBitmapScaledToDisplay(file: File, screenHeight: Int, screenWidth: Int): Bitmap? {
        return getBitmapScaledToDisplay(file, screenHeight, screenWidth, false)
    }

    /**
     * Scales image according to the given display
     *
     * @param file           containing the image
     * @param screenHeight   height of the display
     * @param screenWidth    width of the display
     * @param upscaleEnabled determines whether the image should be up-scaled or not
     * if the window size is greater than the image size
     * @return scaled bitmap
     */
    @JvmStatic
    fun getBitmapScaledToDisplay(
        file: File,
        screenHeight: Int,
        screenWidth: Int,
        upscaleEnabled: Boolean
    ): Bitmap? {
        // Determine image size of file
        var options = BitmapFactory.Options()
        options.inJustDecodeBounds = true
        getBitmap(file.absolutePath, options)
        var bitmap: Bitmap?
        val scale: Double
        if (upscaleEnabled) {
            // Load full size bitmap image
            options = BitmapFactory.Options()
            options.inInputShareable = true
            options.inPurgeable = true
            bitmap = getBitmap(file.absolutePath, options)
            val heightScale = options.outHeight.toDouble() / screenHeight
            val widthScale = options.outWidth.toDouble() / screenWidth
            scale = widthScale.coerceAtLeast(heightScale)
            val newHeight = ceil(options.outHeight / scale)
            val newWidth = ceil(options.outWidth / scale)
            if (bitmap != null) {
                bitmap = Bitmap.createScaledBitmap(
                    bitmap,
                    newWidth.toInt(),
                    newHeight.toInt(),
                    false
                )
            }
        } else {
            val heightScale = options.outHeight / screenHeight
            val widthScale = options.outWidth / screenWidth

            // Powers of 2 work faster, sometimes, according to the doc.
            // We're just doing closest size that still fills the screen.
            scale = widthScale.coerceAtLeast(heightScale).toDouble()

            // get bitmap with scale ( < 1 is the same as 1)
            options = BitmapFactory.Options()
            options.inInputShareable = true
            options.inPurgeable = true
            options.inSampleSize = scale.toInt()
            bitmap = getBitmap(file.absolutePath, options)
        }
        if (bitmap != null) {
            Timber.i(
                "Screen is %dx%d.  Image has been scaled down by %f to %dx%d",
                screenHeight,
                screenWidth,
                scale,
                bitmap.height,
                bitmap.width
            )
        }
        return bitmap
    }

    /**
     * While copying the file, apply the exif rotation of sourceFile to destinationFile
     * so that sourceFile with EXIF has same orientation as destinationFile without EXIF
     */
    @JvmStatic
    fun copyImageAndApplyExifRotation(sourceFile: File, destFile: File) {
        var sourceFileExif: ExifInterface? = null
        try {
            sourceFileExif = ExifInterface(sourceFile)
        } catch (e: IOException) {
            Timber.w(e)
        }
        if (sourceFileExif == null ||
            !EXIF_ORIENTATION_ROTATIONS.contains(
                sourceFileExif
                    .getAttributeInt(
                        ExifInterface.TAG_ORIENTATION,
                        ExifInterface.ORIENTATION_UNDEFINED
                    )
            )
        ) {
            // Source Image doesn't have any EXIF Rotations, so a normal file copy will suffice
            sourceFile.copyTo(destFile, true)
        } else {
            val sourceImage = getBitmap(sourceFile.absolutePath, BitmapFactory.Options())
            val orientation = sourceFileExif.getAttributeInt(
                ExifInterface.TAG_ORIENTATION,
                ExifInterface.ORIENTATION_UNDEFINED
            )
            when (orientation) {
                ExifInterface.ORIENTATION_ROTATE_90 -> rotateBitmapAndSaveToFile(
                    sourceImage,
                    90,
                    destFile.absolutePath
                )
                ExifInterface.ORIENTATION_ROTATE_180 -> rotateBitmapAndSaveToFile(
                    sourceImage,
                    180,
                    destFile.absolutePath
                )
                ExifInterface.ORIENTATION_ROTATE_270 -> rotateBitmapAndSaveToFile(
                    sourceImage,
                    270,
                    destFile.absolutePath
                )
            }
        }
    }

    private fun rotateBitmapAndSaveToFile(image: Bitmap?, degrees: Int, filePath: String) {
        var imageToSave = image
        try {
            val matrix = Matrix()
            matrix.postRotate(degrees.toFloat())
            if (image != null) {
                imageToSave = Bitmap.createBitmap(image, 0, 0, image.width, image.height, matrix, true)
            }
        } catch (e: OutOfMemoryError) {
            Timber.w(e)
        }
        saveBitmapToFile(imageToSave, filePath)
    }
}


================================================
File: androidshared/src/main/java/org/odk/collect/androidshared/data/AppState.kt
================================================
package org.odk.collect.androidshared.data

import android.app.Activity
import android.app.Application
import android.app.Service
import android.content.Context
import androidx.fragment.app.Fragment
import androidx.lifecycle.ViewModel
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.StateFlow

/**
 * [AppState] can be used as a shared store of state that lives at an "app"/"in-memory" level
 * rather than being tied to a specific component. This could be shared state between different
 * [Activity] objects or a way of communicating between a [Service] and other components.
 * [AppState] can be used as an alternative to Dagger singleton objects or static fields.
 *
 * [AppState] should not be used to share state between views or components on the same screen or make
 * up part of the same flow. For this, using Jetpack's [ViewModel] at either a [Fragment] or [Activity]
 * level is more appropriate.
 *
 * The easiest way to use [AppState] is have an instance owned by your app's [Application] object
 * and implement the [StateStore] interface:
 *
 * ```
 * class MyApplication : Application(), StateStore {
 *     private val appState = AppState()
 * }
 * ```
 *
 * The [AppState] instance can then be accessed anywhere the [Application] is available using the
 * [getState] extension function.
 *
 */
class AppState {

    private val map = mutableMapOf<String, Any?>()

    @Suppress("UNCHECKED_CAST")
    fun <T> get(key: String, default: T): T {
        return map.getOrPut(key) { default } as T
    }

    @Suppress("UNCHECKED_CAST")
    fun <T> get(key: String): T? {
        return map[key] as T?
    }

    fun <T> getFlow(key: String, default: T): StateFlow<T> {
        return get(key, MutableStateFlow(default))
    }

    fun set(key: String, value: Any?) {
        map[key] = value
    }

    fun <T> setFlow(key: String, value: T) {
        get<MutableStateFlow<T>>(key).let {
            if (it != null) {
                it.value = value
            } else {
                map[key] = MutableStateFlow(value)
            }
        }
    }

    fun clear() {
        map.clear()
    }

    fun clear(key: String) {
        map.remove(key)
    }
}

interface StateStore {
    fun getState(): AppState
}

fun Application.getState(): AppState {
    try {
        val stateStore = this as StateStore
        return stateStore.getState()
    } catch (e: ClassCastException) {
        throw ClassCastException("${this.javaClass} cannot be cast to StateStore")
    }
}

fun Context.getState(): AppState {
    return (applicationContext as Application).getState()
}


================================================
File: androidshared/src/main/java/org/odk/collect/androidshared/data/Consumable.kt
================================================
package org.odk.collect.androidshared.data

import androidx.lifecycle.LifecycleOwner
import androidx.lifecycle.LiveData

/**
 * Useful for values that are read multiple times but only used
 * once (like an error that shows a dialog once).
 */
data class Consumable<T>(val value: T) {

    private var consumed = false

    fun isConsumed(): Boolean {
        return consumed
    }

    fun consume() {
        consumed = true
    }
}

fun <T> LiveData<Consumable<T>>.consume(lifecycleOwner: LifecycleOwner, consumer: (T) -> Unit) {
    observe(lifecycleOwner) { consumable ->
        if (!consumable.isConsumed()) {
            consumable.consume()
            consumer(consumable.value)
        }
    }
}


================================================
File: androidshared/src/main/java/org/odk/collect/androidshared/data/Data.kt
================================================
package org.odk.collect.androidshared.data

import kotlinx.coroutines.flow.StateFlow
import org.odk.collect.androidshared.data.Updatable.Data
import org.odk.collect.androidshared.data.Updatable.QualifiedData
import kotlin.reflect.KProperty

sealed interface Updatable<T> {
    class QualifiedData<T>(
        private val appState: AppState,
        private val key: String,
        private val default: T
    ) : Updatable<T> {
        fun flow(qualifier: String): StateFlow<T> {
            return appState.getFlow("$qualifier:$key", default)
        }

        fun set(qualifier: String?, value: T) {
            appState.setFlow("$qualifier:$key", value)
        }
    }

    class Data<T>(private val appState: AppState, private val key: String, private val default: T) :
        Updatable<T> {
        fun flow(): StateFlow<T> {
            return appState.getFlow(key, default)
        }

        fun set(value: T) {
            appState.setFlow(key, value)
        }
    }
}

abstract class DataService(
    private val appState: AppState,
    private val onUpdate: (() -> Unit)? = null
) {

    private val updaters = mutableListOf<Updater<*>>()

    fun update(qualifier: String? = null) {
        updaters.forEach { it.update(qualifier) }
        onUpdate?.invoke()
    }

    protected fun <T> data(key: String, default: T): DataDelegate<T> {
        val data = Data(appState, key, default)
        return DataDelegate(data)
    }

    protected fun <T> data(key: String, default: T, updater: () -> T): DataDelegate<T> {
        val data = Data(appState, key, default)
        updaters.add(Updater(data) { updater() })
        return DataDelegate(data)
    }

    protected fun <T> qualifiedData(
        key: String,
        default: T
    ): QualifiedDataDelegate<T> {
        val data = QualifiedData(appState, key, default)
        return QualifiedDataDelegate(data)
    }

    protected fun <T> qualifiedData(
        key: String,
        default: T,
        updater: (String) -> T
    ): QualifiedDataDelegate<T> {
        val data = QualifiedData(appState, key, default)
        updaters.add(Updater(data) { it: String? -> updater(it!!) })
        return QualifiedDataDelegate(data)
    }

    class QualifiedDataDelegate<T>(private val data: QualifiedData<T>) {
        operator fun getValue(thisRef: Any?, property: KProperty<*>): QualifiedData<T> {
            return data
        }
    }

    class DataDelegate<T>(private val data: Data<T>) {
        operator fun getValue(thisRef: Any?, property: KProperty<*>): Data<T> {
            return data
        }
    }

    private class Updater<T>(
        private val updatable: Updatable<T>,
        private val updater: (String?) -> T
    ) {
        fun update(qualifier: String? = null) {
            when (updatable) {
                is Data -> updatable.set(updater(qualifier))
                is QualifiedData -> updatable.set(qualifier, updater(qualifier))
            }
        }
    }
}


================================================
File: androidshared/src/main/java/org/odk/collect/androidshared/livedata/LiveDataUtils.java
================================================
package org.odk.collect.androidshared.livedata;

import androidx.annotation.NonNull;
import androidx.lifecycle.LiveData;
import androidx.lifecycle.MediatorLiveData;
import androidx.lifecycle.MutableLiveData;
import androidx.lifecycle.Observer;

import org.jetbrains.annotations.NotNull;
import org.odk.collect.async.Cancellable;

import java.util.HashSet;
import java.util.Set;
import java.util.function.Consumer;
import java.util.function.Function;

import kotlin.Pair;
import kotlin.Triple;

public class LiveDataUtils {

    private LiveDataUtils() {

    }

    public static <T> Cancellable observe(LiveData<T> liveData, Consumer<T> consumer) {
        Observer<T> observer = value -> {
            if (value != null) {
                consumer.accept(value);
            }
        };

        liveData.observeForever(observer);
        return () -> {
            liveData.removeObserver(observer);
            return true;
        };
    }

    public static <T> void observeUntilNotNull(LiveData<T> liveData, Consumer<@NotNull T> consumer) {
        Observer<T> observer = new Observer<T>() {
            @Override
            public void onChanged(T value) {
                if (value != null) {
                    consumer.accept(value);
                    liveData.removeObserver(this);
                }
            }
        };

        liveData.observeForever(observer);
    }

    public static <T> LiveData<T> liveDataOf(T value) {
        return new MutableLiveData<>(value);
    }

    public static <T, U> LiveData<Pair<T, U>> zip(LiveData<T> one, LiveData<U> two) {
        return new ZippedLiveData<>(
                new LiveData[]{one, two},
                values -> new Pair<>((T) values[0], (U) values[1])
        );
    }

    public static <T, U, V> LiveData<Triple<T, U, V>> zip3(LiveData<T> one, LiveData<U> two, LiveData<V> three) {
        return new ZippedLiveData<>(
                new LiveData[]{one, two, three},
                values -> new Triple<>((T) values[0], (U) values[1], (V) values[2])
        );
    }

    public static <T, U, V, W> LiveData<Quad<T, U, V, W>> zip4(LiveData<T> one, LiveData<U> two, LiveData<V> three, LiveData<W> four) {
        return new ZippedLiveData<>(
                new LiveData[]{one, two, three, four},
                values -> new Quad<>((T) values[0], (U) values[1], (V) values[2], (W) values[3])
        );
    }

    private abstract static class DeferrableUpdateMediatorLiveData<T> extends MediatorLiveData<T> {

        private final int sources;
        private final Set<Integer> registeredSources = new HashSet<>();
        private int sourceCounter;

        DeferrableUpdateMediatorLiveData(int sources) {
            this.sources = sources;
        }

        public <S> void addDeferredSource(@NonNull LiveData<S> source, @NonNull Observer<? super S> onChanged) {
            addSource(source, s -> {
                registeredSources.add(sourceCounter++);
                onChanged.onChanged(s);
            });
        }

        /**
         * The value of the this {@link LiveData} will only be set once the `onChanged` for each
         * source (other than the last) added via
         * {@link DeferrableUpdateMediatorLiveData#addDeferredSource(LiveData, Observer)} has been
         * called once. This prevents unneeded early  calls to {@link LiveData#setValue(Object)}
         * when building up the initial state of a {@link MediatorLiveData} with many sources.
         */
        public void deferredSetValue(T value) {
            if (registeredSources.size() >= sources) {
                super.setValue(value);
            }
        }
    }

    private static class ZippedLiveData<T> extends DeferrableUpdateMediatorLiveData<T> {

        private final Object[] values;
        private final Function<Object[], T> map;

        ZippedLiveData(LiveData<?>[] sources, Function<Object[], T> map) {
            super(sources.length);
            this.map = map;
            values = new Object[sources.length];

            for (int i = 0; i < sources.length; i++) {
                int index = i;
                addDeferredSource(sources[i], value -> {
                    values[index] = value;
                    update();
                });
            }
        }

        private void update() {
            deferredSetValue(map.apply(values));
        }
    }

    public static class Quad<T, U, V, W> {

        public final T first;
        public final U second;
        public final V third;
        public final W fourth;

        public Quad(T first, U second, V third, W fourth) {
            this.first = first;
            this.second = second;
            this.third = third;
            this.fourth = fourth;
        }
    }
}


================================================
File: androidshared/src/main/java/org/odk/collect/androidshared/livedata/NonNullLiveData.kt
================================================
package org.odk.collect.androidshared.livedata

import androidx.lifecycle.LiveData

/**
 * Allows creating LiveData values that can be used without null checks
 */
abstract class NonNullLiveData<T : Any>(value: T) : LiveData<T>(value) {

    override fun getValue(): T {
        return super.getValue() as T
    }
}

class MutableNonNullLiveData<T : Any>(value: T) : NonNullLiveData<T>(value) {

    public override fun postValue(value: T) {
        super.postValue(value)
    }

    public override fun setValue(value: T) {
        super.setValue(value)
    }
}


================================================
File: androidshared/src/main/java/org/odk/collect/androidshared/system/CameraUtils.java
================================================
package org.odk.collect.androidshared.system;

/*
Copyright 2018 Theodoros Tyrovouzis

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

  http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
 */

import android.content.Context;
import android.hardware.Camera;
import android.hardware.camera2.CameraAccessException;
import android.hardware.camera2.CameraCharacteristics;
import android.hardware.camera2.CameraManager;

import timber.log.Timber;

public class CameraUtils {
    public static int getFrontCameraId() {
        for (int camNo = 0; camNo < Camera.getNumberOfCameras(); camNo++) {
            Camera.CameraInfo camInfo = new Camera.CameraInfo();
            Camera.getCameraInfo(camNo, camInfo);

            if (camInfo.facing == Camera.CameraInfo.CAMERA_FACING_FRONT) {
                return camNo;
            }
        }
        Timber.w("No Available front camera");
        return -1;
    }

    public boolean isFrontCameraAvailable(Context context) {
        try {
            //https://developer.android.com/reference/android/hardware/camera2/CameraCharacteristics.html
            CameraManager cameraManager = (CameraManager) context.getSystemService(Context.CAMERA_SERVICE);
            if (cameraManager != null) {
                String[] cameraId = cameraManager.getCameraIdList();
                for (String id : cameraId) {
                    CameraCharacteristics characteristics = cameraManager.getCameraCharacteristics(id);
                    Integer facing = characteristics.get(CameraCharacteristics.LENS_FACING);
                    if (facing != null && facing == CameraCharacteristics.LENS_FACING_FRONT) {
                        return true;
                    }
                }
            }
        } catch (CameraAccessException | NullPointerException e) {
            Timber.e(e);
        }
        return false; // No front-facing camera found
    }
}


================================================
File: androidshared/src/main/java/org/odk/collect/androidshared/system/ContextUtils.kt
================================================
package org.odk.collect.androidshared.system

import android.content.Context
import android.util.TypedValue
import androidx.annotation.AttrRes

object ContextUtils {

    /**
     * Be careful when using this method to retrieve colors, especially for those defined
     * using selectors as it might not work well.
     * In such cases consider using [com.google.android.material.color.MaterialColors.getColor] instead.
     */
    @JvmStatic
    fun getThemeAttributeValue(context: Context, @AttrRes resId: Int): Int {
        val outValue = TypedValue()
        context.theme.resolveAttribute(resId, outValue, true)
        return outValue.data
    }
}


================================================
File: androidshared/src/main/java/org/odk/collect/androidshared/system/ExternalFilesUtils.kt
================================================
package org.odk.collect.androidshared.system

import android.content.Context
import java.io.File
import java.io.IOException

object ExternalFilesUtils {

    @JvmStatic
    fun testExternalFilesAccess(context: Context) {
        val externalFilesDir = context.getExternalFilesDir(null)

        if (externalFilesDir == null) {
            throw IllegalStateException("External files dir is null!")
        } else {
            try {
                val testFile = File(externalFilesDir, ".test")
                testFile.createNewFile()
                testFile.delete()
            } catch (e: IOException) {
                if (!externalFilesDir.exists()) {
                    throw IllegalStateException(
                        "External files dir does not exist: ${externalFilesDir.absolutePath}"
                    )
                } else {
                    throw IllegalStateException(
                        "App can't write to external files dir: ${externalFilesDir.absolutePath}",
                        e
                    )
                }
            }
        }
    }
}


================================================
File: androidshared/src/main/java/org/odk/collect/androidshared/system/IntentLauncher.kt
================================================
package org.odk.collect.androidshared.system

import android.app.Activity
import android.content.Context
import android.content.Intent
import androidx.activity.result.ActivityResultLauncher

object IntentLauncherImpl : IntentLauncher {
    override fun launch(context: Context, intent: Intent?, onError: () -> Unit) {
        try {
            context.startActivity(intent)
        } catch (e: Exception) {
            onError()
        } catch (e: Error) {
            onError()
        }
    }

    override fun launchForResult(
        activity: Activity,
        intent: Intent?,
        requestCode: Int,
        onError: () -> Unit
    ) {
        try {
            activity.startActivityForResult(intent, requestCode)
        } catch (e: Exception) {
            onError()
        } catch (e: Error) {
            onError()
        }
    }

    override fun launchForResult(
        resultLauncher: ActivityResultLauncher<Intent>,
        intent: Intent?,
        onError: () -> Unit
    ) {
        try {
            resultLauncher.launch(intent)
        } catch (e: Exception) {
            onError()
        } catch (e: Error) {
            onError()
        }
    }
}

interface IntentLauncher {
    fun launch(context: Context, intent: Intent?, onError: () -> Unit)

    fun launchForResult(activity: Activity, intent: Intent?, requestCode: Int, onError: () -> Unit)

    fun launchForResult(
        resultLauncher: ActivityResultLauncher<Intent>,
        intent: Intent?,
        onError: () -> Unit
    )
}


================================================
File: androidshared/src/main/java/org/odk/collect/androidshared/system/OpenGLVersionChecker.kt
================================================
package org.odk.collect.androidshared.system

import android.app.ActivityManager
import android.content.Context

/**
 * Checks if the device supports the given OpenGL ES version.
 *
 * Note: This approach may not be 100% reliable because `reqGlEsVersion` indicates
 * the highest version of OpenGL ES that the device's hardware is guaranteed to support
 * at runtime. However, it might not always reflect the actual version available.
 *
 * For a more reliable method, refer to https://developer.android.com/develop/ui/views/graphics/opengl/about-opengl#version-check.
 * This recommended approach is more complex to implement but offers better accuracy.
 */
object OpenGLVersionChecker {
    @JvmStatic
    fun isOpenGLv2Supported(context: Context): Boolean {
        return (context.getSystemService(Context.ACTIVITY_SERVICE) as ActivityManager)
            .deviceConfigurationInfo.reqGlEsVersion >= 0x20000
    }

    @JvmStatic
    fun isOpenGLv3Supported(context: Context): Boolean {
        return (context.getSystemService(Context.ACTIVITY_SERVICE) as ActivityManager)
            .deviceConfigurationInfo.reqGlEsVersion >= 0x30000
    }
}


================================================
File: androidshared/src/main/java/org/odk/collect/androidshared/system/PlayServicesChecker.java
================================================
package org.odk.collect.androidshared.system;

import android.app.Activity;
import android.content.Context;

import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.GoogleApiAvailability;

/** Created by Divya on 3/2/2017. */

public class PlayServicesChecker {
    private static final int PLAY_SERVICE_ERROR_REQUEST_CODE = 1000;
    private static int lastResultCode = ConnectionResult.SUCCESS;

    /** Returns true if Google Play Services is installed and up to date. */
    public boolean isGooglePlayServicesAvailable(Context context) {
        lastResultCode = GoogleApiAvailability.getInstance()
            .isGooglePlayServicesAvailable(context);
        return lastResultCode == ConnectionResult.SUCCESS;
    }

    /** Shows an error dialog for the last call to isGooglePlayServicesAvailable(). */
    public void showGooglePlayServicesAvailabilityErrorDialog(Context context) {
        GoogleApiAvailability.getInstance().getErrorDialog(
            (Activity) context, lastResultCode, PLAY_SERVICE_ERROR_REQUEST_CODE).show();
    }
}


================================================
File: androidshared/src/main/java/org/odk/collect/androidshared/system/ProcessRestoreDetector.kt
================================================
package org.odk.collect.androidshared.system

import android.content.Context
import android.os.Bundle
import org.odk.collect.androidshared.data.getState
import org.odk.collect.shared.strings.UUIDGenerator

object ProcessRestoreDetector {

    @JvmStatic
    fun registerOnSaveInstanceState(context: Context, outState: Bundle) {
        val uuid = UUIDGenerator().generateUUID()
        context.getState().set("${getKey()}:$uuid", Any())
        outState.putString(getKey(), uuid)
    }

    @JvmStatic
    fun isProcessRestoring(context: Context, savedInstanceState: Bundle?): Boolean {
        return if (savedInstanceState != null) {
            val bundleUuid = savedInstanceState.getString(getKey())
            context.getState().get<Any>("${getKey()}:$bundleUuid") == null
        } else {
            false
        }
    }

    private fun getKey() = this::class.qualifiedName
}


================================================
File: androidshared/src/main/java/org/odk/collect/androidshared/system/UriExt.kt
================================================
package org.odk.collect.androidshared.system

import android.content.ContentResolver
import android.content.Context
import android.net.Uri
import android.provider.OpenableColumns
import android.webkit.MimeTypeMap
import androidx.core.net.toFile
import java.io.File
import java.io.FileOutputStream

fun Uri.copyToFile(context: Context, dest: File) {
    try {
        context.contentResolver.openInputStream(this)?.use { inputStream ->
            FileOutputStream(dest).use { outputStream ->
                inputStream.copyTo(outputStream)
            }
        }
    } catch (e: Exception) {
        // ignore
    }
}

fun Uri.getFileExtension(context: Context): String? {
    var extension = getFileName(context)?.substringAfterLast(".", "")

    if (extension.isNullOrEmpty()) {
        val mimeType = context.contentResolver.getType(this)

        extension = if (scheme == ContentResolver.SCHEME_CONTENT) {
            MimeTypeMap.getSingleton().getExtensionFromMimeType(mimeType)
        } else {
            MimeTypeMap.getFileExtensionFromUrl(toString())
        }

        if (extension.isNullOrEmpty()) {
            extension = mimeType?.substringAfterLast("/", "")
        }
    }

    return if (extension.isNullOrEmpty()) {
        null
    } else {
        ".$extension"
    }
}

fun Uri.getFileName(context: Context): String? {
    var fileName: String? = null

    try {
        when (scheme) {
            ContentResolver.SCHEME_FILE -> fileName = toFile().name
            ContentResolver.SCHEME_CONTENT -> {
                val cursor = context.contentResolver.query(this, null, null, null, null)
                cursor?.use {
                    if (it.moveToFirst()) {
                        val fileNameColumnIndex = it.getColumnIndex(OpenableColumns.DISPLAY_NAME)
                        if (fileNameColumnIndex != -1) {
                            fileName = it.getString(fileNameColumnIndex)
                        }
                    }
                }
            }
            ContentResolver.SCHEME_ANDROID_RESOURCE -> {
                // for uris like [android.resource://com.example.app/1234567890]
                val resourceId = lastPathSegment?.toIntOrNull()
                if (resourceId != null) {
                    fileName = context.resources.getResourceName(resourceId)
                } else {
                    // for uris like [android.resource://com.example.app/raw/sample]
                    val packageName = authority
                    if (pathSegments.size >= 2) {
                        val resourceType = pathSegments[0]
                        val resourceEntryName = pathSegments[1]
                        val resId = context.resources.getIdentifier(resourceEntryName, resourceType, packageName)
                        if (resId != 0) {
                            fileName = context.resources.getResourceName(resId)
                        }
                    }
                }
            }
        }

        if (fileName == null) {
            fileName = path?.substringAfterLast("/")
        }
    } catch (e: Exception) {
        // ignore
    }

    return fileName
}


================================================
File: androidshared/src/main/java/org/odk/collect/androidshared/ui/Animations.kt
================================================
package org.odk.collect.androidshared.ui

import android.animation.Animator
import android.animation.AnimatorSet
import android.animation.ValueAnimator
import android.view.View
import org.odk.collect.androidshared.ui.Animations.DISABLE_ANIMATIONS

/**
 * Helpers/extensions for running animations. These are "test safe" in that animations can be disabled
 * using [DISABLE_ANIMATIONS] - this should be set to `true` in Robolectric tests to avoid
 * infinite loops.
 */
object Animations {

    var DISABLE_ANIMATIONS = false

    @JvmStatic
    fun View.createAlphaAnimation(
        startValue: Float,
        endValue: Float,
        duration: Long
    ): DisableableAnimatorWrapper {
        val animation = ValueAnimator.ofFloat(startValue, endValue)
        animation.duration = duration
        animation.addUpdateListener {
            this.alpha = it.animatedValue as Float
        }

        return DisableableAnimatorWrapper(animation)
    }
}

class DisableableAnimatorWrapper(private val wrapped: Animator) {

    fun onEnd(onEnd: () -> Unit): DisableableAnimatorWrapper {
        wrapped.addListener(object : Animator.AnimatorListener {
            override fun onAnimationStart(animation: Animator) {
            }

            override fun onAnimationEnd(animation: Animator) {
                onEnd()
            }

            override fun onAnimationCancel(animation: Animator) {
            }

            override fun onAnimationRepeat(animation: Animator) {
            }
        })

        return this
    }

    fun then(other: DisableableAnimatorWrapper): DisableableAnimatorWrapper {
        val set = AnimatorSet()
        set.playSequentially(this.wrapped, other.wrapped)

        return DisableableAnimatorWrapper(set)
    }

    fun start() {
        if (!DISABLE_ANIMATIONS) {
            wrapped.start()
        } else {
            // Just run listeners immediately if we're not running the actual animations
            if (wrapped is AnimatorSet) {
                (wrapped.childAnimations + wrapped).forEach { anim ->
                    anim.listeners?.forEach {
                        it.onAnimationStart(wrapped)
                        it.onAnimationEnd(wrapped)
                    }
                }
            } else {
                wrapped.listeners?.forEach {
                    it.onAnimationStart(wrapped)
                    it.onAnimationEnd(wrapped)
                }
            }
        }
    }
}


================================================
File: androidshared/src/main/java/org/odk/collect/androidshared/ui/ColorPickerDialog.kt
================================================
package org.odk.collect.androidshared

import android.app.Dialog
import android.graphics.Color
import android.graphics.drawable.GradientDrawable
import android.os.Bundle
import android.view.Gravity
import android.view.LayoutInflater
import android.view.ViewGroup
import android.widget.LinearLayout
import androidx.appcompat.app.AlertDialog
import androidx.appcompat.widget.AppCompatTextView
import androidx.core.content.ContextCompat
import androidx.core.widget.doOnTextChanged
import androidx.fragment.app.DialogFragment
import androidx.fragment.app.activityViewModels
import androidx.lifecycle.LiveData
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.google.android.material.dialog.MaterialAlertDialogBuilder
import org.odk.collect.androidshared.databinding.ColorPickerDialogLayoutBinding
import java.lang.Exception

class ColorPickerDialog : DialogFragment() {
    lateinit var binding: ColorPickerDialogLayoutBinding

    val model: ColorPickerViewModel by activityViewModels()

    override fun onCreateDialog(savedInstanceState: Bundle?): Dialog {
        binding = ColorPickerDialogLayoutBinding.inflate(LayoutInflater.from(context))
        binding.hexColor.doOnTextChanged { color, _, _, _ ->
            updateCurrentColorCircle("#$color")
        }
        binding.currentColor.text = requireArguments().getString(CURRENT_ICON)!!

        fixHexColorPrefix()
        setListeners()
        setCurrentColor(requireArguments().getString(CURRENT_COLOR)!!)

        return MaterialAlertDialogBuilder(requireContext())
            .setView(binding.root)
            .setTitle(org.odk.collect.strings.R.string.project_color)
            .setNegativeButton(org.odk.collect.strings.R.string.cancel) { _, _ -> dismiss() }
            .setPositiveButton(org.odk.collect.strings.R.string.ok) { _, _ -> model.pickColor("#${binding.hexColor.text}") }
            .create()
    }

    private fun setListeners() {
        binding.color1.setOnClickListener { setCurrentColor(R.color.color1) }
        binding.color2.setOnClickListener { setCurrentColor(R.color.color2) }
        binding.color3.setOnClickListener { setCurrentColor(R.color.color3) }
        binding.color4.setOnClickListener { setCurrentColor(R.color.color4) }
        binding.color5.setOnClickListener { setCurrentColor(R.color.color5) }
        binding.color6.setOnClickListener { setCurrentColor(R.color.color6) }
        binding.color7.setOnClickListener { setCurrentColor(R.color.color7) }
        binding.color8.setOnClickListener { setCurrentColor(R.color.color8) }
        binding.color9.setOnClickListener { setCurrentColor(R.color.color9) }
        binding.color10.setOnClickListener { setCurrentColor(R.color.color10) }
        binding.color11.setOnClickListener { setCurrentColor(R.color.color11) }
        binding.color12.setOnClickListener { setCurrentColor(R.color.color12) }
        binding.color13.setOnClickListener { setCurrentColor(R.color.color13) }
        binding.color14.setOnClickListener { setCurrentColor(R.color.color14) }
        binding.color15.setOnClickListener { setCurrentColor(R.color.color15) }
    }

    private fun setCurrentColor(color: Int) {
        setCurrentColor("#${Integer.toHexString(ContextCompat.getColor(requireContext(), color)).substring(2)}")
    }

    private fun setCurrentColor(color: String) {
        binding.hexColor.setText(color.substring(1))
    }

    private fun updateCurrentColorCircle(color: String) {
        try {
            (binding.currentColor.background as GradientDrawable).setColor(Color.parseColor(color))
            binding.hexColor.error = null
            (dialog as? AlertDialog)?.also {
                it.getButton(AlertDialog.BUTTON_POSITIVE).alpha = 1f
                it.getButton(AlertDialog.BUTTON_POSITIVE).isEnabled = true
            }
        } catch (e: Exception) {
            binding.hexColor.error = getString(org.odk.collect.strings.R.string.invalid_hex_code)
            (dialog as? AlertDialog)?.also {
                it.getButton(AlertDialog.BUTTON_POSITIVE).alpha = 0.3f
                it.getButton(AlertDialog.BUTTON_POSITIVE).isEnabled = false
            }
        }
    }

    // https://github.com/material-components/material-components-android/issues/773#issuecomment-603759649
    private fun fixHexColorPrefix() {
        val prefixView = binding.hexColorLayout.findViewById<AppCompatTextView>(com.google.android.material.R.id.textinput_prefix_text)
        prefixView.layoutParams = LinearLayout.LayoutParams(ViewGroup.LayoutParams.WRAP_CONTENT, ViewGroup.LayoutParams.MATCH_PARENT)
        prefixView.gravity = Gravity.CENTER
    }

    companion object {
        const val CURRENT_COLOR = "CURRENT_COLOR"
        const val CURRENT_ICON = "CURRENT_ICON"
    }
}

class ColorPickerViewModel : ViewModel() {
    private val _pickedColor = MutableLiveData<String>()
    val pickedColor: LiveData<String> = _pickedColor

    fun pickColor(color: String) {
        _pickedColor.value = color
    }
}


================================================
File: androidshared/src/main/java/org/odk/collect/androidshared/ui/DialogFragmentUtils.kt
================================================
package org.odk.collect.androidshared.ui

import android.os.Bundle
import androidx.fragment.app.DialogFragment
import androidx.fragment.app.FragmentManager
import timber.log.Timber
import kotlin.reflect.KClass

object DialogFragmentUtils {

    @JvmStatic
    fun <T : DialogFragment> showIfNotShowing(
        dialogClass: Class<T>,
        fragmentManager: FragmentManager
    ) {
        showIfNotShowing(dialogClass, null, fragmentManager)
    }

    @JvmStatic
    fun <T : DialogFragment> showIfNotShowing(
        dialogClass: Class<T>,
        args: Bundle?,
        fragmentManager: FragmentManager
    ) {
        if (fragmentManager.isDestroyed) {
            return
        }

        val fragmentFactory = fragmentManager.fragmentFactory
        val instance = fragmentFactory.instantiate(dialogClass.classLoader, dialogClass.name) as T
        instance.arguments = args
        showIfNotShowing(instance, dialogClass, fragmentManager)
    }

    @JvmStatic
    fun <T : DialogFragment> showIfNotShowing(
        newDialog: T,
        dialogClass: Class<T>,
        fragmentManager: FragmentManager
    ) {
        showIfNotShowing(newDialog, dialogClass.name, fragmentManager)
    }

    @JvmStatic
    fun <T : DialogFragment> showIfNotShowing(
        newDialog: T,
        tag: String,
        fragmentManager: FragmentManager
    ) {
        if (fragmentManager.isStateSaved) {
            return
        }
        val existingDialog = fragmentManager.findFragmentByTag(tag) as T?
        if (existingDialog == null) {
            newDialog.show(fragmentManager.beginTransaction(), tag)

            // We need to execute this transaction. Otherwise a follow up call to this method
            // could happen before the Fragment exists in the Fragment Manager and so the
            // call to findFragmentByTag would return null and result in second dialog being show.
            try {
                fragmentManager.executePendingTransactions()
            } catch (e: IllegalStateException) {
                Timber.w(e)
            }
        }
    }

    @JvmStatic
    fun dismissDialog(dialogClazz: Class<*>, fragmentManager: FragmentManager) {
        dismissDialog(dialogClazz.name, fragmentManager)
    }

    @JvmStatic
    fun dismissDialog(tag: String, fragmentManager: FragmentManager) {
        val existingDialog = fragmentManager.findFragmentByTag(tag) as DialogFragment?
        if (existingDialog != null) {
            existingDialog.dismissAllowingStateLoss()

            // We need to execute this transaction. Otherwise a next attempt to display a dialog
            // could happen before the Fragment is dismissed in Fragment Manager and so the
            // call to findFragmentByTag would return something (not null) and as a result the
            // next dialog won't be displayed.
            try {
                fragmentManager.executePendingTransactions()
            } catch (e: IllegalStateException) {
                Timber.w(e)
            }
        }
    }

    fun <T : DialogFragment> FragmentManager.showIfNotShowing(dialogClass: KClass<T>) {
        showIfNotShowing(dialogClass.java, this)
    }
}


================================================
File: androidshared/src/main/java/org/odk/collect/androidshared/ui/FragmentFactoryBuilder.kt
================================================
package org.odk.collect.androidshared.ui

import androidx.fragment.app.Fragment
import androidx.fragment.app.FragmentFactory
import kotlin.reflect.KClass

/**
 * Convenience object for creating [FragmentFactory] instances without needing to use an inner,
 * private or anonymous class.
 */
class FragmentFactoryBuilder {

    private val classesAndFactories = mutableListOf<Pair<Class<*>, () -> Fragment>>()

    fun forClass(fragmentClass: KClass<*>, factory: () -> Fragment): FragmentFactoryBuilder {
        return forClass(fragmentClass.java, factory)
    }

    fun forClass(fragmentClass: Class<*>, factory: () -> Fragment): FragmentFactoryBuilder {
        classesAndFactories.add(Pair(fragmentClass, factory))
        return this
    }

    fun build(): FragmentFactory {
        return object : androidx.fragment.app.FragmentFactory() {
            override fun instantiate(classLoader: ClassLoader, className: String): Fragment {
                val fragmentClass = loadFragmentClass(classLoader, className)

                val factory =
                    classesAndFactories.find { it.first.isAssignableFrom(fragmentClass) }?.second

                return if (factory != null) {
                    factory()
                } else {
                    super.instantiate(classLoader, className)
                }
            }
        }
    }
}


================================================
File: androidshared/src/main/java/org/odk/collect/androidshared/ui/GroupClickListener.kt
================================================
package org.odk.collect.androidshared.ui

import android.view.View
import androidx.constraintlayout.widget.Group

// https://stackoverflow.com/questions/59020818/group-multiple-views-in-constraint-layout-to-set-only-one-click-listener
fun Group.addOnClickListener(listener: (view: View) -> Unit) {
    referencedIds.forEach { id ->
        rootView.findViewById<View>(id).setOnClickListener(listener)
    }
}

fun List<View>.addOnClickListener(listener: (view: View) -> Unit) {
    forEach {
        it.setOnClickListener(listener)
    }
}


================================================
File: androidshared/src/main/java/org/odk/collect/androidshared/ui/ListFragmentStateAdapter.kt
================================================
package org.odk.collect.androidshared.ui

import androidx.fragment.app.Fragment
import androidx.fragment.app.FragmentActivity
import androidx.viewpager2.adapter.FragmentStateAdapter

class ListFragmentStateAdapter(
    activity: FragmentActivity,
    private val fragments: List<Class<out Fragment>>
) : FragmentStateAdapter(activity) {

    private val fragmentFactory = activity.supportFragmentManager.fragmentFactory

    override fun createFragment(position: Int): Fragment {
        return fragmentFactory.instantiate(
            Thread.currentThread().contextClassLoader,
            fragments[position].name
        )
    }

    override fun getItemCount(): Int {
        return fragments.size
    }
}


================================================
File: androidshared/src/main/java/org/odk/collect/androidshared/ui/MenuExt.kt
================================================
package org.odk.collect.androidshared.ui

import android.annotation.SuppressLint
import android.view.Menu
import androidx.appcompat.view.menu.MenuBuilder

/**
 * Currently, there is no public API to add icons to popup menus.
 * The following workaround is for API 21+, and uses library-only APIs,
 * and is not guaranteed to work in future versions.
 */
@SuppressLint("RestrictedApi")
fun Menu.enableIconsVisibility() {
    if (this is MenuBuilder) {
        this.setOptionalIconsVisible(true)
    }
}


================================================
File: androidshared/src/main/java/org/odk/collect/androidshared/ui/ObviousProgressBar.kt
================================================
package org.odk.collect.androidshared.ui

import android.content.Context
import android.os.Handler
import android.util.AttributeSet
import com.google.android.material.progressindicator.LinearProgressIndicator

/**
 * A progress bar that shows for a minimum amount fo time so it's obvious to the user that
 * something has happened.
 */
class ObviousProgressBar(
    context: Context,
    attrs: AttributeSet?
) : LinearProgressIndicator(context, attrs) {
    private val handler = Handler()
    private var shownAt: Long? = null

    init {
        super.setVisibility(GONE)
        super.setIndeterminate(true)
    }

    override fun show() {
        handler.removeCallbacksAndMessages(null)
        shownAt = System.currentTimeMillis()
        super.setVisibility(VISIBLE)
    }

    override fun hide() {
        if (shownAt != null) {
            val timeShown = System.currentTimeMillis() - shownAt!!

            if (timeShown < MINIMUM_SHOW_TIME) {
                val delay = MINIMUM_SHOW_TIME - timeShown

                handler.removeCallbacksAndMessages(null)
                handler.postDelayed({ this.makeGone() }, delay)
            } else {
                makeGone()
            }
        } else {
            makeGone()
        }
    }

    private fun makeGone() {
        super.setVisibility(GONE)
        shownAt = null
    }

    companion object {
        private const val MINIMUM_SHOW_TIME = 750
    }
}


================================================
File: androidshared/src/main/java/org/odk/collect/androidshared/ui/OneSignTextWatcher.kt
================================================
package org.odk.collect.androidshared.ui

import android.text.Editable
import android.text.TextWatcher
import android.widget.EditText
import org.odk.collect.shared.strings.StringUtils

class OneSignTextWatcher(private val editText: EditText) : TextWatcher {
    lateinit var oldTextString: String

    override fun beforeTextChanged(s: CharSequence?, start: Int, count: Int, after: Int) {
        oldTextString = s.toString()
    }

    override fun onTextChanged(s: CharSequence?, start: Int, before: Int, count: Int) {
    }

    override fun afterTextChanged(editable: Editable?) {
        editable.toString().let {
            if (it != oldTextString) {
                val trimmedString = StringUtils.firstCharacterOrEmoji(it)
                editText.setText(trimmedString)
                editText.setSelection(trimmedString.length)
            }
        }
    }
}


================================================
File: androidshared/src/main/java/org/odk/collect/androidshared/ui/PrefUtils.kt
================================================
package org.odk.collect.androidshared.ui

import android.content.Context
import androidx.preference.ListPreference
import org.odk.collect.shared.settings.Settings

object PrefUtils {

    @JvmStatic
    fun createListPref(
        context: Context,
        key: String,
        title: String,
        labelIds: IntArray,
        values: Array<String>,
        settings: Settings
    ): ListPreference {
        val labels: Array<String?> = labelIds.map { context.getString(it) }.toTypedArray()
        return createListPref(context, key, title, labels, values, settings)
    }

    /**
     * Gets an integer value from the shared preferences. If the preference has
     * a string value, attempts to convert it to an integer. If the preference
     * is not found or is not a valid integer, returns the defaultValue.
     */
    @JvmStatic
    fun getInt(key: String?, defaultValue: Int, settings: Settings): Int {
        val value: Any? = settings.getAll()[key]
        if (value is Int) {
            return value
        }

        if (value is String) {
            try {
                return Integer.parseInt(value)
            } catch (e: NumberFormatException) {
                // ignore
            }
        }

        return defaultValue
    }

    private fun createListPref(
        context: Context,
        key: String,
        title: String,
        labels: Array<String?>,
        values: Array<String>,
        settings: Settings
    ): ListPreference {
        ensurePrefHasValidValue(key, values, settings)
        return ListPreference(context).also {
            it.key = key
            it.isPersistent = true
            it.title = title
            it.dialogTitle = title
            it.entries = labels
            it.entryValues = values
            it.summary = "%s"
        }
    }

    private fun ensurePrefHasValidValue(
        key: String,
        validValues: Array<String>,
        settings: Settings
    ) {
        val value = settings.getString(key)
        if (validValues.indexOf(value) < 0) {
            if (validValues.isNotEmpty()) {
                settings.save(key, validValues[0])
            } else {
                settings.remove(key)
            }
        }
    }
}


================================================
File: androidshared/src/main/java/org/odk/collect/androidshared/ui/ReturnToAppActivity.kt
================================================
package org.odk.collect.androidshared.ui

import android.app.Activity
import android.os.Bundle

/**
 * This Activity will close as soon as it is started. This means it can be used as the content
 * intent of a notification so clicking it will effectively return to the screen the user
 * was last on (knowing what that Activity was).
 */
class ReturnToAppActivity : Activity() {

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        finish()
    }
}


================================================
File: androidshared/src/main/java/org/odk/collect/androidshared/ui/SnackbarUtils.kt
================================================
/*

Copyright 2018 Shobhit
Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at
http://www.apache.org/licenses/LICENSE-2.0
Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
*/
package org.odk.collect.androidshared.ui

import android.view.View
import android.view.ViewGroup
import android.widget.Button
import android.widget.ImageView
import android.widget.LinearLayout
import android.widget.TextView
import androidx.lifecycle.Observer
import com.google.android.material.snackbar.BaseTransientBottomBar
import com.google.android.material.snackbar.Snackbar
import org.odk.collect.androidshared.data.Consumable

/**
 * Convenience wrapper around Android's [Snackbar] API.
 */
object SnackbarUtils {
    private var lastSnackbar: Snackbar? = null

    @JvmStatic
    @JvmOverloads
    fun showShortSnackbar(
        parentView: View,
        message: String,
        anchorView: View? = null,
        action: Action? = null,
        displayDismissButton: Boolean = false
    ) {
        return showSnackbar(parentView, message, 3500, anchorView, action, displayDismissButton)
    }

    @JvmStatic
    fun showLongSnackbar(parentView: View, snackbarDetails: SnackbarDetails) {
        showLongSnackbar(parentView, snackbarDetails.text, action = snackbarDetails.action)
    }

    @JvmStatic
    @JvmOverloads
    fun showLongSnackbar(
        parentView: View,
        message: String,
        anchorView: View? = null,
        action: Action? = null,
        displayDismissButton: Boolean = false
    ) {
        return showSnackbar(parentView, message, 5500, anchorView, action, displayDismissButton)
    }

    /**
     * Displays snackbar with {@param message} and multi-line message enabled.
     *
     * @param parentView            The view to find a parent from.
     * @param anchorView            The view this snackbar should be anchored above.
     * @param message               The text to show. Can be formatted text.
     * @param displayDismissButton  True if the dismiss button should be displayed, false otherwise.
     */
    private fun showSnackbar(
        parentView: View,
        message: String,
        duration: Int,
        anchorView: View?,
        action: Action? = null,
        displayDismissButton: Boolean
    ) {
        if (message.isBlank()) {
            return
        }

        lastSnackbar?.dismiss()
        lastSnackbar = Snackbar.make(parentView, message.trim(), duration).apply {
            val textView =
                view.findViewById<TextView>(com.google.android.material.R.id.snackbar_text)
            textView.isSingleLine = false

            if (anchorView?.visibility != View.GONE) {
                this.anchorView = anchorView
            }

            if (displayDismissButton) {
                view.findViewById<Button>(com.google.android.material.R.id.snackbar_action).let {
                    val dismissButton = ImageView(view.context).apply {
                        setImageResource(org.odk.collect.androidshared.R.drawable.ic_close_24)
                        setOnClickListener {
                            dismiss()
                        }
                        contentDescription =
                            context.getString(org.odk.collect.strings.R.string.close_snackbar)
                    }

                    val params = LinearLayout.LayoutParams(
                        LinearLayout.LayoutParams.WRAP_CONTENT,
                        LinearLayout.LayoutParams.MATCH_PARENT
                    )
                    params.setMargins(16, 0, 0, 0)

                    (it.parent as ViewGroup).addView(dismissButton, params)
                }
            }

            if (action != null) {
                setAction(action.text) {
                    action.listener.invoke()
                    dismiss()
                }
            }
        }.addCallback(object : BaseTransientBottomBar.BaseCallback<Snackbar>() {
            override fun onDismissed(transientBottomBar: Snackbar?, event: Int) {
                super.onDismissed(transientBottomBar, event)
                lastSnackbar = null
            }
        })
        lastSnackbar?.show()
    }

    data class SnackbarDetails @JvmOverloads constructor(
        val text: String,
        val action: Action? = null
    )

    data class Action(val text: String, val listener: () -> Unit)

    abstract class SnackbarPresenterObserver<T : Any?>(private val parentView: View) :
        Observer<Consumable<T>?> {

        abstract fun getSnackbarDetails(value: T): SnackbarDetails

        override fun onChanged(consumable: Consumable<T>?) {
            if (consumable != null && !consumable.isConsumed()) {
                showLongSnackbar(parentView, getSnackbarDetails(consumable.value))
                consumable.consume()
            }
        }
    }
}


================================================
File: androidshared/src/main/java/org/odk/collect/androidshared/ui/ToastUtils.kt
================================================
package org.odk.collect.androidshared.ui

import android.app.Activity
import android.app.Application
import android.content.Context
import android.os.Build
import android.view.Gravity
import android.view.ViewGroup
import android.widget.TextView
import android.widget.Toast
import com.google.android.material.dialog.MaterialAlertDialogBuilder
import org.odk.collect.strings.localization.getLocalizedString

/**
 * Convenience wrapper around Android's [Toast] API.
 */
object ToastUtils {

    @JvmStatic
    var recordToasts = false
    private var recordedToasts = mutableListOf<String>()

    private lateinit var lastToast: Toast

    @JvmStatic
    fun showShortToast(context: Context, message: String) {
        showToast(context.applicationContext as Application, message)
    }

    @JvmStatic
    fun showShortToast(context: Context, messageResource: Int) {
        showToast(
            context.applicationContext as Application,
            context.getLocalizedString(messageResource)
        )
    }

    @JvmStatic
    fun showLongToast(context: Context, message: String) {
        showToast(context.applicationContext as Application, message, Toast.LENGTH_LONG)
    }

    @JvmStatic
    fun showLongToast(context: Context, messageResource: Int) {
        showToast(
            context.applicationContext as Application,
            context.getLocalizedString(messageResource),
            Toast.LENGTH_LONG
        )
    }

    @JvmStatic
    @Deprecated("Toast position cannot be customized on API 30 and above. A dialog is shown instead for this API levels.")
    fun showShortToastInMiddle(activity: Activity, message: String) {
        showToastInMiddle(activity, message)
    }

    @JvmStatic
    fun popRecordedToasts(): List<String> {
        val copy = recordedToasts.toList()
        recordedToasts.clear()

        return copy
    }

    private fun showToast(
        context: Application,
        message: String,
        duration: Int = Toast.LENGTH_SHORT
    ) {
        hideLastToast()
        lastToast = Toast.makeText(context, message, duration)
        lastToast.show()

        if (recordToasts) {
            recordedToasts.add(message)
        }
    }

    private fun showToastInMiddle(
        activity: Activity,
        message: String,
        duration: Int = Toast.LENGTH_SHORT
    ) {
        if (Build.VERSION.SDK_INT < 30) {
            hideLastToast()
            lastToast = Toast.makeText(activity.applicationContext, message, duration)
            try {
                val group = lastToast.view as ViewGroup?
                val messageTextView = group!!.getChildAt(0) as TextView
                messageTextView.textSize = 21f
                messageTextView.gravity = Gravity.CENTER
            } catch (ignored: Exception) {
                // ignored
            }
            lastToast.setGravity(Gravity.CENTER, 0, 0)
            lastToast.show()

            if (recordToasts) {
                recordedToasts.add(message)
            }
        } else {
            MaterialAlertDialogBuilder(activity)
                .setMessage(message)
                .setPositiveButton(org.odk.collect.strings.R.string.ok, null)
                .create()
                .show()
        }
    }

    private fun hideLastToast() {
        if (ToastUtils::lastToast.isInitialized) {
            lastToast.cancel()
        }
    }
}


================================================
File: androidshared/src/main/java/org/odk/collect/androidshared/ui/multiclicksafe/DoubleClickSafeMaterialButton.kt
================================================
package org.odk.collect.androidshared.ui.multiclicksafe

import android.content.Context
import android.util.AttributeSet
import com.google.android.material.button.MaterialButton

class DoubleClickSafeMaterialButton @JvmOverloads constructor(
    context: Context,
    attrs: AttributeSet? = null,
    defStyleAttr: Int = 0
) : MaterialButton(context, attrs, defStyleAttr) {

    override fun performClick(): Boolean {
        return allowClick() && super.performClick()
    }

    /**
     * Use [MultiClickGuard] with a scope unique to this object (class name + hash).
     */
    private fun allowClick(): Boolean {
        val scope = javaClass.name + hashCode()
        return MultiClickGuard.allowClick(scope)
    }
}


================================================
File: androidshared/src/main/java/org/odk/collect/androidshared/ui/multiclicksafe/MultiClickGuard.kt
================================================
package org.odk.collect.androidshared.ui.multiclicksafe

import android.os.SystemClock

object MultiClickGuard {
    @JvmField
    var test = false

    private var lastClickTime: Long = 0
    private var lastClickName: String = javaClass.name

    @JvmStatic
    fun allowClickFast(className: String = javaClass.name): Boolean {
        return allowClick(className, 500)
    }

    /**
     * Debounce multiple clicks within the same scope
     *
     * @param scope If not provided, the Java class name of the element
     * is used. However, this approach is imperfect, as elements on the same screen might belong to
     * different classes. Consequently, clicks on these elements are treated as interactions occurring
     * on two distinct screens, not protecting from rapid clicking.
     */
    @JvmStatic
    @JvmOverloads
    fun allowClick(scope: String = javaClass.name, clickDebounceMs: Long = 1000): Boolean {
        if (test) {
            return true
        }
        val elapsedRealtime = SystemClock.elapsedRealtime()
        val isSameClass = scope == lastClickName
        val isBeyondThreshold = elapsedRealtime - lastClickTime > clickDebounceMs
        val isBeyondTestThreshold =
            lastClickTime == 0L || lastClickTime == elapsedRealtime // just for tests

        val allowClick = !isSameClass || isBeyondThreshold || isBeyondTestThreshold

        if (allowClick) {
            lastClickTime = elapsedRealtime
            lastClickName = scope
        }
        return allowClick
    }
}


================================================
File: androidshared/src/main/java/org/odk/collect/androidshared/ui/multiclicksafe/MultiClickSafeMaterialButton.kt
================================================
package org.odk.collect.androidshared.ui.multiclicksafe

import android.content.Context
import android.util.AttributeSet
import androidx.core.content.withStyledAttributes
import com.google.android.material.button.MaterialButton
import org.odk.collect.androidshared.R
import org.odk.collect.androidshared.ui.multiclicksafe.MultiClickGuard.allowClick

open class MultiClickSafeMaterialButton @JvmOverloads constructor(
    context: Context,
    attrs: AttributeSet? = null,
    defStyleAttr: Int = 0
) : MaterialButton(context, attrs, defStyleAttr) {
    private lateinit var screenName: String

    init {
        context.withStyledAttributes(attrs, R.styleable.MultiClickSafeMaterialButton) {
            screenName = getString(R.styleable.MultiClickSafeMaterialButton_screenName) ?: javaClass.name
        }
    }

    override fun performClick(): Boolean {
        return allowClick(screenName) && super.performClick()
    }
}


================================================
File: androidshared/src/main/java/org/odk/collect/androidshared/ui/multiclicksafe/MultiClickSafeTextInputEditText.kt
================================================
package org.odk.collect.androidshared.ui.multiclicksafe

import android.content.Context
import android.util.AttributeSet
import com.google.android.material.textfield.TextInputEditText
import org.odk.collect.androidshared.ui.multiclicksafe.MultiClickGuard.allowClick

class MultiClickSafeTextInputEditText : TextInputEditText {
    constructor(context: Context) : super(context)

    constructor(context: Context, attrs: AttributeSet?) : super(
        context,
        attrs
    )

    override fun performClick(): Boolean {
        return allowClick() && super.performClick()
    }
}


================================================
File: androidshared/src/main/java/org/odk/collect/androidshared/ui/multiclicksafe/MultiClickSaveOnClickListener.kt
================================================
package org.odk.collect.androidshared.ui.multiclicksafe

import android.view.View

abstract class MultiClickSafeOnClickListener : View.OnClickListener {

    abstract fun onSafeClick(v: View)

    override fun onClick(v: View) {
        if (MultiClickGuard.allowClick()) {
            onSafeClick(v)
        }
    }
}

fun View.setMultiClickSafeOnClickListener(listener: (View) -> Unit) {
    setOnClickListener(object : MultiClickSafeOnClickListener() {
        override fun onSafeClick(v: View) {
            listener(v)
        }
    })
}


================================================
File: androidshared/src/main/java/org/odk/collect/androidshared/utils/AppBarUtils.kt
================================================
package org.odk.collect.androidshared.utils

import android.app.Activity
import androidx.appcompat.app.AppCompatActivity
import androidx.appcompat.widget.Toolbar

object AppBarUtils {

    @JvmStatic
    fun setupAppBarLayout(activity: Activity, title: CharSequence) {
        val toolbar = activity.findViewById<Toolbar>(org.odk.collect.androidshared.R.id.toolbar)
        if (toolbar != null && activity is AppCompatActivity) {
            toolbar.title = title
            activity.setSupportActionBar(toolbar)
        }
    }
}


================================================
File: androidshared/src/main/java/org/odk/collect/androidshared/utils/ColorUtils.kt
================================================
package org.odk.collect.androidshared.utils

import android.graphics.Color
import androidx.annotation.ColorInt

@ColorInt
fun String.toColorInt() = try {
    var sanitizedColor = if (this.startsWith("#")) {
        this
    } else {
        "#$this"
    }

    if (sanitizedColor.length == 4) {
        sanitizedColor = shorthandToLonghandHexColor(sanitizedColor)
    }

    Color.parseColor(sanitizedColor)
} catch (e: IllegalArgumentException) {
    null
}

private fun shorthandToLonghandHexColor(shorthandColor: String): String {
    return shorthandColor.substring(1).fold("#") { accum, char ->
        "$accum$char$char"
    }
}


================================================
File: androidshared/src/main/java/org/odk/collect/androidshared/utils/CompressionUtils.kt
================================================
/*
 * Copyright (C) 2017 Shobhit
 *
 * Licensed under the Apache License, Version 2.0 (the "License"); you may not use this file except
 * in compliance with the License. You may obtain a copy of the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software distributed under the License
 * is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express
 * or implied. See the License for the specific language governing permissions and limitations under
 * the License.
 */
package org.odk.collect.androidshared.utils

import android.util.Base64
import java.io.ByteArrayOutputStream
import java.io.IOException
import java.lang.IllegalArgumentException
import java.util.zip.DataFormatException
import java.util.zip.Deflater
import java.util.zip.Inflater

object CompressionUtils {

    @Throws(IOException::class)
    fun compress(data: String?): String {
        if (data == null || data.isEmpty()) {
            return ""
        }

        // Encode string into bytes
        val input = data.toByteArray(charset("UTF-8"))
        val deflater = Deflater()
        deflater.setInput(input)

        // Compress the bytes
        val outputStream = ByteArrayOutputStream(data.length)
        deflater.finish()
        val buffer = ByteArray(1024)
        while (!deflater.finished()) {
            val count = deflater.deflate(buffer) // returns the generated code... index
            outputStream.write(buffer, 0, count)
        }
        outputStream.close()
        val output = outputStream.toByteArray()

        // Encode to base64
        return Base64.encodeToString(output, Base64.NO_WRAP)
    }

    @Throws(
        IOException::class,
        DataFormatException::class,
        IllegalArgumentException::class
    )
    fun decompress(compressedString: String?): String {
        if (compressedString == null || compressedString.isEmpty()) {
            return ""
        }

        // Decode from base64
        val output = Base64.decode(compressedString, Base64.NO_WRAP)
        val inflater = Inflater()
        inflater.setInput(output)

        // Decompresses the bytes
        val outputStream = ByteArrayOutputStream(output.size)
        val buffer = ByteArray(1024)
        while (!inflater.finished()) {
            val count = inflater.inflate(buffer)
            outputStream.write(buffer, 0, count)
        }
        outputStream.close()
        inflater.end()
        val result = outputStream.toByteArray()

        // Decode the bytes into a String
        return String(result, charset("UTF-8"))
    }
}


================================================
File: androidshared/src/main/java/org/odk/collect/androidshared/utils/PathUtils.kt
================================================
package org.odk.collect.androidshared.utils

import org.odk.collect.shared.files.FileExt.sanitizedCanonicalPath
import timber.log.Timber
import java.io.File
import java.io.IOException

object PathUtils {
    @JvmStatic
    fun getAbsoluteFilePath(dirPath: String, filePath: String): String {
        val absoluteFilePath =
            if (filePath.startsWith(dirPath)) filePath else dirPath + File.separator + filePath

        val absoluteFile = File(absoluteFilePath)
        return try {
            if (absoluteFile.sanitizedCanonicalPath().startsWith(File(dirPath).sanitizedCanonicalPath())) {
                absoluteFilePath
            } else {
                throw SecurityException("Contact support@getodk.org. Attempt to access file outside of Collect directory: $absoluteFilePath")
            }
        } catch (e: IOException) {
            Timber.e(
                "Failed attempt to access canonicalPath:\n" +
                    "dirPath: $dirPath\n" +
                    "filePath: $filePath\n" +
                    "absoluteFilePath: $absoluteFilePath\n" +
                    "absoluteFilePath exists: ${absoluteFile.exists()}\n"
            )
            absoluteFilePath
        }
    }
}


================================================
File: androidshared/src/main/java/org/odk/collect/androidshared/utils/PreferenceFragmentCompatUtils.kt
================================================
package org.odk.collect.androidshared.utils

import androidx.preference.Preference
import androidx.preference.PreferenceFragmentCompat

fun <T : Preference> PreferenceFragmentCompat.getPreference(key: String): T {
    return this.findPreference(key)!!
}


================================================
File: androidshared/src/main/java/org/odk/collect/androidshared/utils/ScreenUtils.java
================================================
/*
 * Copyright 2019 Nafundi
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

package org.odk.collect.androidshared.utils;

import android.content.Context;
import android.content.res.Configuration;
import android.util.DisplayMetrics;

public class ScreenUtils {

    private final Context context;

    public ScreenUtils(Context context) {
        this.context = context;
    }

    public static int getScreenWidth(Context context) {
        return getDisplayMetrics(context).widthPixels;
    }

    public static int getScreenHeight(Context context) {
        return getDisplayMetrics(context).heightPixels;
    }

    public static float xdpi(Context context) {
        return getDisplayMetrics(context).xdpi;
    }

    public static float ydpi(Context context) {
        return getDisplayMetrics(context).ydpi;
    }

    private static DisplayMetrics getDisplayMetrics(Context context) {
        return context.getResources().getDisplayMetrics();
    }

    public int getScreenSizeConfiguration() {
        return context.getResources().getConfiguration().screenLayout & Configuration.SCREENLAYOUT_SIZE_MASK;
    }
}


================================================
File: androidshared/src/main/java/org/odk/collect/androidshared/utils/Validator.kt
================================================
/*
 * Copyright 2016 Nafundi
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
package org.odk.collect.androidshared.utils

import android.util.Patterns
import android.webkit.URLUtil
import java.util.regex.Pattern

object Validator {
    /*
    There are lots of ways to validate email addresses and it's hard to find one perfect.
    That's why we use here a very simple approach just to confirm that passed string contains:
        -any number of characters before @ (at least one)
        -one @ char
        -any number of characters after @ (at least one)
     */
    @JvmStatic
    fun isEmailAddressValid(emailAddress: String): Boolean {
        return Pattern
            .compile(".+@.+")
            .matcher(emailAddress)
            .matches()
    }

    @JvmStatic
    fun isUrlValid(url: String): Boolean {
        return URLUtil.isValidUrl(url) && Patterns.WEB_URL.matcher(url).matches()
    }
}


================================================
File: androidshared/src/main/res/color/color_on_primary_low_emphasis.xml
================================================
<?xml version="1.0" encoding="utf-8"?>

<!--
Provides a medium emphasis version of the `colorOnPrimary` Material Theming attribute (found
here: https://m3.material.io/styles/color/the-color-system/tokens#7fd4440e-986d-443f-8b3a-4933bff16646).
-->

<selector xmlns:android="http://schemas.android.com/apk/res/android">
    <item android:alpha="@dimen/low_emphasis" android:color="?attr/colorOnPrimary" />
</selector>


================================================
File: androidshared/src/main/res/color/color_on_surface_high_emphasis.xml
================================================
<?xml version="1.0" encoding="utf-8"?>

<!--
Provides a medium emphasis version of the `colorOnSurface` Material Theming attribute (found
here: https://material.io/develop/android/theming/typography/). Material Themes suggest using
different emphasis/transparency values on text but Android doesn't have a way to set this on a
`TextView` itself.
-->

<selector xmlns:android="http://schemas.android.com/apk/res/android">
    <item android:alpha="@dimen/high_emphasis" android:color="?attr/colorOnSurface" />
</selector>


================================================
File: androidshared/src/main/res/color/color_on_surface_low_emphasis.xml
================================================
<?xml version="1.0" encoding="utf-8"?>

<!--
Provides a medium emphasis version of the `colorOnSurface` Material Theming attribute (found
here: https://material.io/develop/android/theming/typography/). Material Themes suggest using
different emphasis/transparency values on text but Android doesn't have a way to set this on a
`TextView` itself.
-->

<selector xmlns:android="http://schemas.android.com/apk/res/android">
    <item android:alpha="@dimen/low_emphasis" android:color="?attr/colorOnSurface" />
</selector>


================================================
File: androidshared/src/main/res/color/color_on_surface_medium_emphasis.xml
================================================
<?xml version="1.0" encoding="utf-8"?>

<!--
Provides a medium emphasis version of the `colorOnSurface` Material Theming attribute (found
here: https://material.io/develop/android/theming/typography/). Material Themes suggest using
different emphasis/transparency values on text but Android doesn't have a way to set this on a
`TextView` itself.
-->

<selector xmlns:android="http://schemas.android.com/apk/res/android">
    <item android:alpha="@dimen/medium_emphasis" android:color="?attr/colorOnSurface" />
</selector>


================================================
File: androidshared/src/main/res/color/color_primary_low_emphasis.xml
================================================
<?xml version="1.0" encoding="utf-8"?>

<!--
Provides a medium emphasis version of the `colorPrimary` Material Theming attribute (found
here: https://material.io/develop/android/theming/typography/). Material Themes suggest using
different emphasis/transparency values on text but Android doesn't have a way to set this on a
`TextView` itself.
-->

<selector xmlns:android="http://schemas.android.com/apk/res/android">
    <item android:alpha="@dimen/low_emphasis" android:color="?attr/colorPrimary" />
</selector>


================================================
File: androidshared/src/main/res/drawable/color_circle.xml
================================================
<?xml version="1.0" encoding="UTF-8"?>
<shape xmlns:android="http://schemas.android.com/apk/res/android"
    android:shape="oval" />

================================================
File: androidshared/src/main/res/drawable/ic_close_24.xml
================================================
<vector xmlns:android="http://schemas.android.com/apk/res/android"
    android:width="24dp"
    android:height="24dp"
    android:viewportHeight="24"
    android:viewportWidth="24"
    android:tint="?colorSurface">
    <path
        android:fillColor="?colorSurface"
        android:pathData="M19,6.41L17.59,5 12,10.59 6.41,5 5,6.41 10.59,12 5,17.59 6.41,19 12,13.41 17.59,19 19,17.59 13.41,12z"/>
</vector>


================================================
File: androidshared/src/main/res/drawable/list_item_divider.xml
================================================
<?xml version="1.0" encoding="utf-8"?>
<layer-list xmlns:android="http://schemas.android.com/apk/res/android">

    <!-- Material Design reference: https://material.io/design/components/dividers.html#specs -->

    <item>
        <shape android:shape="rectangle">
            <size android:height="1dp" />
            <solid android:color="@color/color_on_surface_low_emphasis"/>
        </shape>
    </item>

</layer-list>


================================================
File: androidshared/src/main/res/drawable/radio_button_inset.xml
================================================
<?xml version="1.0" encoding="utf-8"?>
<inset xmlns:android="http://schemas.android.com/apk/res/android"
    android:drawable="?android:attr/listChoiceIndicatorSingle"
    android:insetLeft="11dp"
    android:insetRight="@dimen/margin_standard"/>

================================================
File: androidshared/src/main/res/drawable/shadow_up.xml
================================================
<?xml version="1.0" encoding="utf-8"?>
<layer-list xmlns:android="http://schemas.android.com/apk/res/android">
    <item>
        <shape
            android:dither="true"
            android:shape="rectangle">
            <gradient
                android:angle="270"
                android:endColor="#22000000"
                android:startColor="#00000000"/>

            <size android:height="10dp"/>
        </shape>
    </item>
</layer-list>



================================================
File: androidshared/src/main/res/layout/app_bar_layout.xml
================================================
<?xml version="1.0" encoding="utf-8"?>
<!--
     When scrolling, the top app bar fills with a contrasting color to create a visual separation.
     This works automatically if your scrolling view (e.g., `RecyclerView`, `ListView`) is placed directly
     beneath the `AppBarLayout`. However, if the scrolling view is nested within another view
     (such as a `ConstraintLayout`, which is common in this app), you need to help the app bar determine
     whether it should lift by setting `app:liftOnScrollTargetViewId` to the ID of the scrolling view.
     Since this `AppBarLayout` is used throughout the app with various scrolling views, it’s best to
     use a shared ID like `scrollable_container`.
     If the scrollable view is added programmatically or it is displayed in a `ViewPager` with a
     shared id, it may not work as expected anyway, and `app:liftOnScrollTargetViewId` might
     need to be updated programmatically after adding such a view.
     The `ODKView` and its `odk_view_container` or `DeleteFormsActivity` are good examples of this scenario.
-->
<com.google.android.material.appbar.AppBarLayout xmlns:android="http://schemas.android.com/apk/res/android"
    xmlns:tools="http://schemas.android.com/tools"
    xmlns:app="http://schemas.android.com/apk/res-auto"
    android:id="@+id/appBarLayout"
    android:layout_width="match_parent"
    android:layout_height="wrap_content"
    app:liftOnScrollTargetViewId="@+id/scrollable_container">

    <androidx.constraintlayout.widget.ConstraintLayout
        android:layout_width="match_parent"
        android:layout_height="wrap_content">

        <com.google.android.material.appbar.MaterialToolbar
            android:id="@+id/toolbar"
            android:layout_width="match_parent"
            android:layout_height="?attr/actionBarSize"
            app:layout_constraintStart_toStartOf="parent"
            app:layout_constraintTop_toTopOf="parent"
            tools:title="Title" />

        <org.odk.collect.androidshared.ui.ObviousProgressBar
            android:id="@+id/progressBar"
            android:layout_width="match_parent"
            android:layout_height="wrap_content"
            app:layout_constraintStart_toStartOf="parent"
            app:layout_constraintBottom_toBottomOf="parent"/>
    </androidx.constraintlayout.widget.ConstraintLayout>
</com.google.android.material.appbar.AppBarLayout>


================================================
File: androidshared/src/main/res/layout/color_picker_dialog_layout.xml
================================================
<?xml version="1.0" encoding="utf-8"?>
<ScrollView xmlns:android="http://schemas.android.com/apk/res/android"
    xmlns:app="http://schemas.android.com/apk/res-auto"
    android:layout_height="match_parent"
    android:layout_width="match_parent">

    <androidx.constraintlayout.widget.ConstraintLayout
        android:layout_width="match_parent"
        android:layout_height="wrap_content"
        android:padding="@dimen/margin_standard">

        <!-- 1st row -->
        <androidx.constraintlayout.widget.ConstraintLayout
            android:id="@+id/color1"
            android:layout_width="0dp"
            android:layout_height="0dp"
            android:padding="@dimen/margin_extra_small"
            android:background="?attr/selectableItemBackgroundBorderless"
            app:layout_constraintWidth_percent="0.2"
            app:layout_constraintDimensionRatio="w,1:1"
            app:layout_constraintStart_toStartOf="parent"
            app:layout_constraintTop_toTopOf="parent" >

            <FrameLayout
                android:layout_width="match_parent"
                android:layout_height="match_parent"
                android:background="@drawable/color_circle"
                android:backgroundTint="@color/color1" />
        </androidx.constraintlayout.widget.ConstraintLayout>

        <androidx.constraintlayout.widget.ConstraintLayout
            android:id="@+id/color2"
            android:layout_width="0dp"
            android:layout_height="0dp"
            android:padding="@dimen/margin_extra_small"
            android:background="?attr/selectableItemBackgroundBorderless"
            app:layout_constraintWidth_percent="0.2"
            app:layout_constraintDimensionRatio="w,1:1"
            app:layout_constraintStart_toEndOf="@id/color1"
            app:layout_constraintTop_toTopOf="parent" >

            <FrameLayout
                android:layout_width="match_parent"
                android:layout_height="match_parent"
                android:background="@drawable/color_circle"
                android:backgroundTint="@color/color2" />
        </androidx.constraintlayout.widget.ConstraintLayout>

        <androidx.constraintlayout.widget.ConstraintLayout
            android:id="@+id/color3"
            android:layout_width="0dp"
            android:layout_height="0dp"
            android:padding="@dimen/margin_extra_small"
            android:background="?attr/selectableItemBackgroundBorderless"
            app:layout_constraintWidth_percent="0.2"
            app:layout_constraintDimensionRatio="w,1:1"
            app:layout_constraintStart_toEndOf="@id/color2"
            app:layout_constraintTop_toTopOf="parent" >

            <FrameLayout
                android:layout_width="match_parent"
                android:layout_height="match_parent"
                android:background="@drawable/color_circle"
                android:backgroundTint="@color/color3" />
        </androidx.constraintlayout.widget.ConstraintLayout>

        <androidx.constraintlayout.widget.ConstraintLayout
            android:id="@+id/color4"
            android:layout_width="0dp"
            android:layout_height="0dp"
            android:padding="@dimen/margin_extra_small"
            android:background="?attr/selectableItemBackgroundBorderless"
            app:layout_constraintWidth_percent="0.2"
            app:layout_constraintDimensionRatio="w,1:1"
            app:layout_constraintStart_toEndOf="@id/color3"
            app:layout_constraintTop_toTopOf="parent" >

            <FrameLayout
                android:layout_width="match_parent"
                android:layout_height="match_parent"
                android:background="@drawable/color_circle"
                android:backgroundTint="@color/color4" />
        </androidx.constraintlayout.widget.ConstraintLayout>

        <androidx.constraintlayout.widget.ConstraintLayout
            android:id="@+id/color5"
            android:layout_width="0dp"
            android:layout_height="0dp"
            android:padding="@dimen/margin_extra_small"
            android:background="?attr/selectableItemBackgroundBorderless"
            app:layout_constraintWidth_percent="0.2"
            app:layout_constraintDimensionRatio="w,1:1"
            app:layout_constraintStart_toEndOf="@id/color4"
            app:layout_constraintTop_toTopOf="parent" >

            <FrameLayout
                android:layout_width="match_parent"
                android:layout_height="match_parent"
                android:background="@drawable/color_circle"
                android:backgroundTint="@color/color5" />
        </androidx.constraintlayout.widget.ConstraintLayout>

        <!-- 2nd row -->
        <androidx.constraintlayout.widget.ConstraintLayout
            android:id="@+id/color6"
            android:layout_width="0dp"
            android:layout_height="0dp"
            android:padding="@dimen/margin_extra_small"
            android:background="?attr/selectableItemBackgroundBorderless"
            app:layout_constraintWidth_percent="0.2"
            app:layout_constraintDimensionRatio="w,1:1"
            app:layout_constraintStart_toStartOf="parent"
            app:layout_constraintTop_toBottomOf="@id/color1" >

            <FrameLayout
                android:layout_width="match_parent"
                android:layout_height="match_parent"
                android:background="@drawable/color_circle"
                android:backgroundTint="@color/color6" />
        </androidx.constraintlayout.widget.ConstraintLayout>

        <androidx.constraintlayout.widget.ConstraintLayout
            android:id="@+id/color7"
            android:layout_width="0dp"
            android:layout_height="0dp"
            android:padding="@dimen/margin_extra_small"
            android:background="?attr/selectableItemBackgroundBorderless"
            app:layout_constraintWidth_percent="0.2"
            app:layout_constraintDimensionRatio="w,1:1"
            app:layout_constraintStart_toEndOf="@id/color6"
            app:layout_constraintTop_toBottomOf="@id/color2" >

            <FrameLayout
                android:layout_width="match_parent"
                android:layout_height="match_parent"
                android:background="@drawable/color_circle"
                android:backgroundTint="@color/color7" />
        </androidx.constraintlayout.widget.ConstraintLayout>

        <androidx.constraintlayout.widget.ConstraintLayout
            android:id="@+id/color8"
            android:layout_width="0dp"
            android:layout_height="0dp"
            android:padding="@dimen/margin_extra_small"
            android:background="?attr/selectableItemBackgroundBorderless"
            app:layout_constraintWidth_percent="0.2"
            app:layout_constraintDimensionRatio="w,1:1"
            app:layout_constraintStart_toEndOf="@id/color7"
            app:layout_constraintTop_toBottomOf="@id/color3" >

            <FrameLayout
                android:layout_width="match_parent"
                android:layout_height="match_parent"
                android:background="@drawable/color_circle"
                android:backgroundTint="@color/color8" />
        </androidx.constraintlayout.widget.ConstraintLayout>

        <androidx.constraintlayout.widget.ConstraintLayout
            android:id="@+id/color9"
            android:layout_width="0dp"
            android:layout_height="0dp"
            android:padding="@dimen/margin_extra_small"
            android:background="?attr/selectableItemBackgroundBorderless"
            app:layout_constraintWidth_percent="0.2"
            app:layout_constraintDimensionRatio="w,1:1"
            app:layout_constraintStart_toEndOf="@id/color8"
            app:layout_constraintTop_toBottomOf="@id/color4" >

            <FrameLayout
                android:layout_width="match_parent"
                android:layout_height="match_parent"
                android:background="@drawable/color_circle"
                android:backgroundTint="@color/color9"/>
        </androidx.constraintlayout.widget.ConstraintLayout>

        <androidx.constraintlayout.widget.ConstraintLayout
            android:id="@+id/color10"
            android:layout_width="0dp"
            android:layout_height="0dp"
            android:padding="@dimen/margin_extra_small"
            android:background="?attr/selectableItemBackgroundBorderless"
            app:layout_constraintWidth_percent="0.2"
            app:layout_constraintDimensionRatio="w,1:1"
            app:layout_constraintStart_toEndOf="@id/color9"
            app:layout_constraintTop_toBottomOf="@id/color5" >

            <FrameLayout
                android:layout_width="match_parent"
                android:layout_height="match_parent"
                android:background="@drawable/color_circle"
                android:backgroundTint="@color/color10" />
        </androidx.constraintlayout.widget.ConstraintLayout>

        <!-- 3rd row -->
        <androidx.constraintlayout.widget.ConstraintLayout
            android:id="@+id/color11"
            android:layout_width="0dp"
            android:layout_height="0dp"
            android:padding="@dimen/margin_extra_small"
            android:background="?attr/selectableItemBackgroundBorderless"
            app:layout_constraintWidth_percent="0.2"
            app:layout_constraintDimensionRatio="w,1:1"
            app:layout_constraintStart_toStartOf="parent"
            app:layout_constraintTop_toBottomOf="@id/color6" >

            <FrameLayout
                android:layout_width="match_parent"
                android:layout_height="match_parent"
                android:background="@drawable/color_circle"
                android:backgroundTint="@color/color11"/>
        </androidx.constraintlayout.widget.ConstraintLayout>

        <androidx.constraintlayout.widget.ConstraintLayout
            android:id="@+id/color12"
            android:layout_width="0dp"
            android:layout_height="0dp"
            android:padding="@dimen/margin_extra_small"
            android:background="?attr/selectableItemBackgroundBorderless"
            app:layout_constraintWidth_percent="0.2"
            app:layout_constraintDimensionRatio="w,1:1"
            app:layout_constraintStart_toEndOf="@id/color11"
            app:layout_constraintTop_toBottomOf="@id/color7" >

            <FrameLayout
                android:layout_width="match_parent"
                android:layout_height="match_parent"
                android:background="@drawable/color_circle"
                android:backgroundTint="@color/color12" />
        </androidx.constraintlayout.widget.ConstraintLayout>

        <androidx.constraintlayout.widget.ConstraintLayout
            android:id="@+id/color13"
            android:layout_width="0dp"
            android:layout_height="0dp"
            android:padding="@dimen/margin_extra_small"
            android:background="?attr/selectableItemBackgroundBorderless"
            app:layout_constraintWidth_percent="0.2"
            app:layout_constraintDimensionRatio="w,1:1"
            app:layout_constraintStart_toEndOf="@id/color12"
            app:layout_constraintTop_toBottomOf="@id/color8" >

            <FrameLayout
                android:layout_width="match_parent"
                android:layout_height="match_parent"
                android:background="@drawable/color_circle"
                android:backgroundTint="@color/color13" />
        </androidx.constraintlayout.widget.ConstraintLayout>

        <androidx.constraintlayout.widget.ConstraintLayout
            android:id="@+id/color14"
            android:layout_width="0dp"
            android:layout_height="0dp"
            android:padding="@dimen/margin_extra_small"
            android:background="?attr/selectableItemBackgroundBorderless"
            app:layout_constraintWidth_percent="0.2"
            app:layout_constraintDimensionRatio="w,1:1"
            app:layout_constraintStart_toEndOf="@id/color13"
            app:layout_constraintTop_toBottomOf="@id/color9" >

            <FrameLayout
                android:layout_width="match_parent"
                android:layout_height="match_parent"
                android:background="@drawable/color_circle"
                android:backgroundTint="@color/color14" />
        </androidx.constraintlayout.widget.ConstraintLayout>

        <androidx.constraintlayout.widget.ConstraintLayout
            android:id="@+id/color15"
            android:layout_width="0dp"
            android:layout_height="0dp"
            android:padding="@dimen/margin_extra_small"
            android:background="?attr/selectableItemBackgroundBorderless"
            app:layout_constraintWidth_percent="0.2"
            app:layout_constraintDimensionRatio="w,1:1"
            app:layout_constraintStart_toEndOf="@id/color14"
            app:layout_constraintTop_toBottomOf="@id/color10" >

            <FrameLayout
                android:layout_width="match_parent"
                android:layout_height="match_parent"
                android:background="@drawable/color_circle"
                android:backgroundTint="@color/color15" />
        </androidx.constraintlayout.widget.ConstraintLayout>

        <androidx.constraintlayout.widget.ConstraintLayout
            android:id="@+id/current_color_container"
            android:layout_width="0dp"
            android:layout_height="0dp"
            android:padding="@dimen/margin_extra_small"
            android:layout_marginTop="@dimen/margin_extra_large"
            app:layout_constraintWidth_percent="0.2"
            app:layout_constraintDimensionRatio="w,1:1"
            app:layout_constraintStart_toStartOf="parent"
            app:layout_constraintTop_toBottomOf="@id/color11" >

            <TextView
                android:id="@+id/current_color"
                android:layout_width="match_parent"
                android:layout_height="match_parent"
                android:padding="@dimen/margin_extra_extra_small"
                android:background="@drawable/color_circle"
                android:textColor="@android:color/white"
                android:textAllCaps="true"
                android:gravity="center"
                app:autoSizeTextType="uniform" />
        </androidx.constraintlayout.widget.ConstraintLayout>

        <com.google.android.material.textview.MaterialTextView
            style="?textAppearanceBody1"
            android:layout_width="wrap_content"
            android:layout_height="wrap_content"
            android:text="@string/hex"
            app:layout_constraintBottom_toBottomOf="@+id/hex_color_layout"
            app:layout_constraintEnd_toStartOf="@+id/hex_color_layout"
            app:layout_constraintTop_toTopOf="@+id/hex_color_layout" />

        <FrameLayout
            android:id="@+id/hex_color_layout"
            android:layout_width="0dp"
            android:layout_height="0dp"
            android:padding="@dimen/margin_extra_small"
            app:layout_constraintTop_toTopOf="@+id/current_color_container"
            app:layout_constraintBottom_toBottomOf="@+id/current_color_container"
            app:layout_constraintStart_toStartOf="@+id/color13"
            app:layout_constraintEnd_toEndOf="parent">

            <com.google.android.material.textfield.TextInputLayout
                style="@style/Widget.MaterialComponents.TextInputLayout.OutlinedBox"
                android:layout_width="match_parent"
                android:layout_height="match_parent"
                app:hintEnabled="false"
                app:prefixText="@string/hash"
                app:prefixTextAppearance="?textAppearanceBody1"
                android:descendantFocusability="beforeDescendants"
                android:focusableInTouchMode="true">

                <com.google.android.material.textfield.TextInputEditText
                    android:id="@+id/hex_color"
                    style="?textAppearanceBody1"
                    android:layout_width="match_parent"
                    android:layout_height="match_parent"
                    android:contentDescription="@string/hex_color"
                    android:padding="0dp"
                    android:maxLength="6" />
            </com.google.android.material.textfield.TextInputLayout>
        </FrameLayout>
    </androidx.constraintlayout.widget.ConstraintLayout>
</ScrollView>


================================================
File: androidshared/src/main/res/values/attrs.xml
================================================
<?xml version="1.0" encoding="utf-8"?>
<resources>
    <declare-styleable name="MultiClickSafeMaterialButton">
        <attr name="screenName" format="string" />
    </declare-styleable>
</resources>


================================================
File: androidshared/src/main/res/values/color_picker_dialog_colors.xml
================================================
<?xml version="1.0" encoding="utf-8"?>
<resources>
    <!-- Color picker palette -->
    <color name="color1">#EA4633</color>
    <color name="color2">#E9527E</color>
    <color name="color3">#9F50B0</color>
    <color name="color4">#3F51B5</color>
    <color name="color5">#2296F3</color>
    <color name="color6">#53BDD4</color>
    <color name="color7">#489789</color>
    <color name="color8">#5DAF50</color>
    <color name="color9">#8BC34A</color>
    <color name="color10">#CDDC39</color>
    <color name="color11">#FFEB3B</color>
    <color name="color12">#F9C028</color>
    <color name="color13">#F2972C</color>
    <color name="color14">#795548</color>
    <color name="color15">#9E9E9E</color>
</resources>


================================================
File: androidshared/src/main/res/values/dimens.xml
================================================
<?xml version="1.0" encoding="utf-8"?>
<resources>
    <!-- "Standard" set of margin sizes for Android (pre and post Material) -->
    <dimen name="margin_extra_extra_small">4dp</dimen>
    <dimen name="margin_extra_small">8dp</dimen>
    <dimen name="margin_small">12dp</dimen>
    <dimen name="margin_standard">16dp</dimen>
    <dimen name="margin_large">24dp</dimen>
    <dimen name="margin_extra_large">32dp</dimen>
    <dimen name="margin_extra_extra_large">48dp</dimen>

    <dimen name="max_content_width">640dp</dimen>

    <dimen name="low_emphasis">0.12</dimen>
    <dimen name="medium_emphasis">0.6</dimen>
    <dimen name="high_emphasis">0.87</dimen>
</resources>


================================================
File: androidshared/src/main/res/values/styles.xml
================================================
<?xml version="1.0" encoding="utf-8"?>
<resources>
    <style name="Widget.AndroidShared.ButtonBar" parent="">
        <item name="android:background">?colorSurface</item>
        <item name="android:elevation">4dp</item>
        <item name="android:paddingTop">@dimen/margin_extra_small</item>
        <item name="android:paddingBottom">@dimen/margin_extra_small</item>
    </style>
</resources>


================================================
File: androidshared/src/test/java/org/odk/collect/androidshared/async/TrackableWorkerTest.kt
================================================
package org.odk.collect.androidshared.async

import androidx.test.ext.junit.runners.AndroidJUnit4
import org.hamcrest.CoreMatchers.equalTo
import org.hamcrest.MatcherAssert.assertThat
import org.junit.Test
import org.junit.runner.RunWith
import org.odk.collect.testshared.FakeScheduler

@RunWith(AndroidJUnit4::class)
class TrackableWorkerTest {
    private val scheduler = FakeScheduler()
    private val trackableWorker = TrackableWorker(scheduler)

    @Test
    fun `TrackableWorker counts work in progress`() {
        trackableWorker.immediate {}
        trackableWorker.immediate {}

        scheduler.runFirstBackground()
        scheduler.runFirstForeground()
        assertThat(trackableWorker.isWorking.value, equalTo(true))

        scheduler.runFirstBackground()
        scheduler.runFirstForeground()
        assertThat(trackableWorker.isWorking.value, equalTo(false))
    }
}


================================================
File: androidshared/src/test/java/org/odk/collect/androidshared/system/UriExtTest.kt
================================================
package org.odk.collect.androidshared.system

import android.app.Application
import androidx.core.net.toUri
import androidx.test.core.app.ApplicationProvider
import androidx.test.ext.junit.runners.AndroidJUnit4
import org.hamcrest.CoreMatchers.equalTo
import org.hamcrest.MatcherAssert.assertThat
import org.junit.Test
import org.junit.runner.RunWith
import org.odk.collect.shared.TempFiles

@RunWith(AndroidJUnit4::class)
class UriExtTest {
    private val context = ApplicationProvider.getApplicationContext<Application>()

    @Test
    fun `copyToFile copies the source file to the target file`() {
        val sourceFile = TempFiles.createTempFile().also {
            it.writeText("blah")
        }
        val sourceFileUri = sourceFile.toUri()
        val targetFile = TempFiles.createTempFile()

        sourceFileUri.copyToFile(context, targetFile)
        assertThat(targetFile.readText(), equalTo(sourceFile.readText()))
    }

    @Test
    fun `getFileExtension returns file extension`() {
        val file = TempFiles.createTempFile(".jpg")
        val fileUri = file.toUri()

        assertThat(fileUri.getFileExtension(context), equalTo(".jpg"))
    }

    @Test
    fun `getFileName returns file name`() {
        val file = TempFiles.createTempFile()
        val fileUri = file.toUri()

        assertThat(fileUri.getFileName(context), equalTo(file.name))
    }
}


================================================
File: androidshared/src/test/java/org/odk/collect/androidshared/ui/ColorPickerDialogTest.kt
================================================
package org.odk.collect.androidshared.ui

import android.graphics.Color
import android.graphics.drawable.GradientDrawable
import android.os.Bundle
import androidx.appcompat.app.AlertDialog
import androidx.fragment.app.testing.FragmentScenario
import androidx.test.espresso.Espresso.onView
import androidx.test.espresso.action.ViewActions.pressBack
import androidx.test.espresso.matcher.ViewMatchers.isRoot
import androidx.test.ext.junit.runners.AndroidJUnit4
import org.hamcrest.MatcherAssert.assertThat
import org.hamcrest.Matchers.equalToIgnoringCase
import org.hamcrest.Matchers.`is`
import org.hamcrest.Matchers.nullValue
import org.junit.Rule
import org.junit.Test
import org.junit.runner.RunWith
import org.odk.collect.androidshared.ColorPickerDialog
import org.odk.collect.fragmentstest.FragmentScenarioLauncherRule
import org.odk.collect.testshared.RobolectricHelpers

@RunWith(AndroidJUnit4::class)
class ColorPickerDialogTest {

    private val args = Bundle().apply {
        putString(ColorPickerDialog.CURRENT_COLOR, "#cccccc")
        putString(ColorPickerDialog.CURRENT_ICON, "P")
    }

    @get:Rule
    val launcherRule = FragmentScenarioLauncherRule()

    @Test
    fun `The dialog should be dismissed after clicking on a device back button`() {
        val scenario = launchFragment()
        scenario.onFragment {
            assertThat(it.dialog!!.isShowing, `is`(true))
            onView(isRoot()).perform(pressBack())
            assertThat(it.dialog, `is`(nullValue()))
        }
    }

    @Test
    fun `The dialog should be dismissed after clicking on the cancel button`() {
        val scenario = launchFragment()
        scenario.onFragment {
            assertThat(it.dialog!!.isShowing, `is`(true))
            (it.dialog!! as AlertDialog).getButton((AlertDialog.BUTTON_NEGATIVE)).performClick()
            RobolectricHelpers.runLooper()
            assertThat(it.dialog, `is`(nullValue()))
        }
    }

    @Test
    fun `No more than six characters should be accepted as hex color`() {
        val scenario = launchFragment()
        scenario.onFragment {
            assertThat(it.binding.hexColor.length(), `is`(6))
        }
    }

    @Test
    fun `Current color should be set properly after opening the dialog`() {
        val scenario = launchFragment()
        scenario.onFragment {
            assertCurrentColor(it, "cccccc")
        }
    }

    @Test
    fun `Current icon should be set properly after opening the dialog`() {
        val scenario = launchFragment()
        scenario.onFragment {
            assertThat(it.binding.currentColor.text.toString(), equalToIgnoringCase("P"))
        }
    }

    @Test
    fun `Selected color should be remembered after dialog recreation`() {
        val scenario = launchFragment()
        scenario.onFragment {
            it.binding.color5.performClick()
            assertCurrentColor(it, "2296F3")

            scenario.recreate()

            assertCurrentColor(it, "2296F3")
        }
    }

    @Test
    fun `Selecting any color should update the current color`() {
        val scenario = launchFragment()
        scenario.onFragment {
            it.binding.color1.performClick()
            assertCurrentColor(it, "EA4633")

            it.binding.color2.performClick()
            assertCurrentColor(it, "E9527E")

            it.binding.color3.performClick()
            assertCurrentColor(it, "9F50B0")

            it.binding.color4.performClick()
            assertCurrentColor(it, "3F51B5")

            it.binding.color5.performClick()
            assertCurrentColor(it, "2296F3")

            it.binding.color6.performClick()
            assertCurrentColor(it, "53BDD4")

            it.binding.color7.performClick()
            assertCurrentColor(it, "489789")

            it.binding.color8.performClick()
            assertCurrentColor(it, "5DAF50")

            it.binding.color9.performClick()
            assertCurrentColor(it, "8BC34A")

            it.binding.color10.performClick()
            assertCurrentColor(it, "CDDC39")

            it.binding.color11.performClick()
            assertCurrentColor(it, "FFEB3B")

            it.binding.color12.performClick()
            assertCurrentColor(it, "F9C028")

            it.binding.color13.performClick()
            assertCurrentColor(it, "F2972C")

            it.binding.color14.performClick()
            assertCurrentColor(it, "795548")

            it.binding.color15.performClick()
            assertCurrentColor(it, "9E9E9E")
        }
    }

    private fun launchFragment(): FragmentScenario<ColorPickerDialog> {
        return launcherRule.launch(ColorPickerDialog::class.java, args)
    }

    private fun assertCurrentColor(fragment: ColorPickerDialog, color: String) {
        assertThat(fragment.binding.hexColor.text.toString(), equalToIgnoringCase(color))

        val currentColor =
            (fragment.binding.currentColor.background as GradientDrawable).color!!.defaultColor

        assertThat(currentColor, `is`(Color.parseColor("#$color")))
    }
}


================================================
File: androidshared/src/test/java/org/odk/collect/androidshared/ui/OneSignTextWatcherTest.kt
================================================
package org.odk.collect.androidshared.ui

import android.widget.EditText
import androidx.test.platform.app.InstrumentationRegistry
import org.hamcrest.CoreMatchers.`is`
import org.hamcrest.MatcherAssert.assertThat
import org.junit.Before
import org.junit.Test
import org.junit.runner.RunWith
import org.robolectric.RobolectricTestRunner

@RunWith(RobolectricTestRunner::class)
class OneSignTextWatcherTest {

    lateinit var oneSignTextWatcher: OneSignTextWatcher
    lateinit var editText: EditText

    @Before
    fun setup() {
        editText = EditText(InstrumentationRegistry.getInstrumentation().targetContext)
        oneSignTextWatcher = OneSignTextWatcher(editText)
        editText.addTextChangedListener(oneSignTextWatcher)
    }

    @Test
    fun `Longer strings should not be accepted`() {
        editText.setText("1")
        editText.setText("12")
        assertThat(editText.text.toString(), `is`("1"))
    }
}


================================================
File: androidshared/src/test/java/org/odk/collect/androidshared/ui/ReturnToAppActivityTest.kt
================================================
package org.odk.collect.androidshared.ui

import androidx.lifecycle.Lifecycle
import androidx.test.ext.junit.rules.ActivityScenarioRule
import androidx.test.ext.junit.runners.AndroidJUnit4
import org.hamcrest.MatcherAssert.assertThat
import org.hamcrest.Matchers.equalTo
import org.junit.Rule
import org.junit.Test
import org.junit.runner.RunWith

@RunWith(AndroidJUnit4::class)
class ReturnToAppActivityTest {

    @get:Rule
    val rule = ActivityScenarioRule(ReturnToAppActivity::class.java)

    @Test
    fun finishesImmediately() {
        assertThat(rule.scenario.state, equalTo(Lifecycle.State.DESTROYED))
    }
}


================================================
File: androidshared/src/test/java/org/odk/collect/androidshared/utils/ColorUtilsTest.kt
================================================
package org.odk.collect.androidshared.utils

import androidx.test.ext.junit.runners.AndroidJUnit4
import org.hamcrest.MatcherAssert.assertThat
import org.hamcrest.Matchers.equalTo
import org.junit.Test
import org.junit.runner.RunWith

@RunWith(AndroidJUnit4::class)
class ColorUtilsTest {
    @Test
    fun `return null when color is empty`() {
        assertThat("".toColorInt(), equalTo(null))
    }

    @Test
    fun `return null when color is blank`() {
        assertThat(" ".toColorInt(), equalTo(null))
    }

    @Test
    fun `return null when color is invalid`() {
        assertThat("qwerty".toColorInt(), equalTo(null))
    }

    @Test
    fun `return color int for valid hex color with # prefix`() {
        assertThat("#aaccee".toColorInt(), equalTo(-5583634))
    }

    @Test
    fun `return color int for valid hex color without # prefix`() {
        assertThat("aaccee".toColorInt(), equalTo(-5583634))
    }

    @Test
    fun `return color int for valid shorthand hex color with # prefix`() {
        assertThat("#ace".toColorInt(), equalTo(-5583634))
    }

    @Test
    fun `return color int for valid shorthand hex color without # prefix`() {
        assertThat("ace".toColorInt(), equalTo(-5583634))
    }
}


================================================
File: androidshared/src/test/java/org/odk/collect/androidshared/utils/CompressionUtilsTest.kt
================================================
package org.odk.collect.androidshared.utils

import androidx.test.ext.junit.runners.AndroidJUnit4
import org.hamcrest.MatcherAssert.assertThat
import org.hamcrest.Matchers.equalTo
import org.junit.Assert.assertTrue
import org.junit.Test
import org.junit.runner.RunWith
import java.util.zip.DataFormatException

@RunWith(AndroidJUnit4::class)
class CompressionUtilsTest {
    @Test
    fun `compressed long text should be shorter than the original one`() {
        val text = "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor " +
            "incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis " +
            "nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat."

        val compressedText = CompressionUtils.compress(text)

        assertTrue(compressedText.length < text.length)
    }

    @Test
    fun `compressing an empty string returns an empty string`() {
        val nullText = ""
        val compressedText = CompressionUtils.compress(nullText)

        assertThat(nullText, equalTo(compressedText))
    }

    @Test
    fun `text after compressing and decompressing should be unchanged`() {
        val text = "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor"

        val compressedText = CompressionUtils.compress(text)
        val decompressedText = CompressionUtils.decompress(compressedText)

        assertThat(text, equalTo(decompressedText))
    }

    @Test
    fun `decompressing an empty string returns an empty string`() {
        val emptyText = ""
        val decompressedText = CompressionUtils.decompress(emptyText)

        assertThat(emptyText, equalTo(decompressedText))
    }

    @Test(expected = DataFormatException::class)
    fun `decompressing a not compressed text throws an exception`() {
        val input = "Decoding this will raise an error"
        CompressionUtils.decompress(input)
    }
}


================================================
File: androidshared/src/test/java/org/odk/collect/androidshared/utils/DialogFragmentUtilsTest.java
================================================
package org.odk.collect.androidshared.utils;

import static org.hamcrest.MatcherAssert.assertThat;
import static org.hamcrest.Matchers.equalTo;

import android.os.Bundle;

import androidx.fragment.app.DialogFragment;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentManager;
import androidx.test.ext.junit.runners.AndroidJUnit4;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.odk.collect.androidshared.ui.DialogFragmentUtils;
import org.robolectric.Robolectric;
import org.robolectric.android.controller.ActivityController;

@RunWith(AndroidJUnit4.class)
public class DialogFragmentUtilsTest {

    @Test
    public void showIfNotShowing_onlyEverOpensOneDialog() {
        FragmentActivity activity = Robolectric.setupActivity(FragmentActivity.class);
        FragmentManager fragmentManager = activity.getSupportFragmentManager();

        DialogFragmentUtils.showIfNotShowing(DialogFragment.class, fragmentManager);
        assertThat(fragmentManager.getFragments().size(), equalTo(1));
        Fragment dialog1 = fragmentManager.getFragments().get(0);

        DialogFragmentUtils.showIfNotShowing(DialogFragment.class, fragmentManager);
        assertThat(fragmentManager.getFragments().size(), equalTo(1));
        assertThat(fragmentManager.getFragments().get(0), equalTo(dialog1));
    }

    @Test
    public void showIfNotShowing_whenActivitySavedState_doesNotShowDialog() {
        ActivityController<FragmentActivity> activityController = Robolectric.buildActivity(FragmentActivity.class).setup();
        activityController.pause().stop().saveInstanceState(new Bundle());

        FragmentManager fragmentManager = activityController.get().getSupportFragmentManager();
        DialogFragmentUtils.showIfNotShowing(DialogFragment.class, fragmentManager);
        assertThat(fragmentManager.getFragments().size(), equalTo(0));
    }

    @Test
    public void showIfNotShowing_whenActivityDestroyed_doesNotShowDialog() {
        ActivityController<FragmentActivity> activityController = Robolectric.buildActivity(FragmentActivity.class).setup();
        activityController.pause().stop().destroy();

        FragmentManager fragmentManager = activityController.get().getSupportFragmentManager();
        DialogFragmentUtils.showIfNotShowing(DialogFragment.class, fragmentManager);
        assertThat(fragmentManager.getFragments().size(), equalTo(0));
    }
}


================================================
File: androidshared/src/test/java/org/odk/collect/androidshared/utils/IntentLauncherImplTest.kt
================================================
package org.odk.collect.androidshared.utils

import android.app.Activity
import android.content.Context
import android.content.Intent
import androidx.activity.result.ActivityResultLauncher
import org.junit.Test
import org.mockito.kotlin.mock
import org.mockito.kotlin.verify
import org.mockito.kotlin.verifyNoMoreInteractions
import org.mockito.kotlin.whenever
import org.odk.collect.androidshared.system.IntentLauncherImpl
import java.lang.Exception

class IntentLauncherImplTest {
    private val context = mock<Context>()
    private val activity = mock<Activity>()
    private val activityResultLauncher = mock<ActivityResultLauncher<Intent>>()
    private val intent = mock<Intent>()
    private val onError = mock<() -> Unit>()
    private val intentLauncher = IntentLauncherImpl

    @Test
    fun `startActivity with given intent should be called on the context when calling IntentLauncher#launch(context, intent, onError)`() {
        intentLauncher.launch(context, intent, onError)
        verify(context).startActivity(intent)
        verifyNoMoreInteractions(onError)
    }

    @Test
    fun `onError should be called if any exception occurs when calling IntentLauncher#launch(context, intent, onError)`() {
        whenever(context.startActivity(intent)).then {
            throw Exception()
        }
        intentLauncher.launch(context, intent, onError)
        verify(onError).invoke()
    }

    @Test
    fun `onError should be called if any error occurs when calling IntentLauncher#launch(context, intent, onError)`() {
        whenever(context.startActivity(intent)).then {
            throw Error()
        }
        intentLauncher.launch(context, intent, onError)
        verify(onError).invoke()
    }

    @Test
    fun `startActivityForResult with given intent should be called on the context when calling IntentLauncher#launchForResult(context, intent, requestCode, onError)`() {
        intentLauncher.launchForResult(activity, intent, 1, onError)
        verify(activity).startActivityForResult(intent, 1)
        verifyNoMoreInteractions(onError)
    }

    @Test
    fun `onError should be called if any exception occurs when calling IntentLauncher#launchForResult(context, intent, requestCode, onError)`() {
        whenever(activity.startActivityForResult(intent, 1)).then {
            throw Exception()
        }
        intentLauncher.launchForResult(activity, intent, 1, onError)
        verify(onError).invoke()
    }

    @Test
    fun `onError should be called if any error occurs when calling IntentLauncher#launchForResult(context, intent, requestCode, onError)`() {
        whenever(activity.startActivityForResult(intent, 1)).then {
            throw Error()
        }
        intentLauncher.launchForResult(activity, intent, 1, onError)
        verify(onError).invoke()
    }

    @Test
    fun `startActivityForResult with given intent should be called on the context when calling IntentLauncher#launchForResult(resultLauncher, intent, onError)`() {
        intentLauncher.launchForResult(activityResultLauncher, intent, onError)
        verify(activityResultLauncher).launch(intent)
        verifyNoMoreInteractions(onError)
    }

    @Test
    fun `onError should not be called if no exception occurs when calling IntentLauncher#launchForResult(resultLauncher, intent, onError)`() {
        intentLauncher.launchForResult(activityResultLauncher, intent, onError)
        verifyNoMoreInteractions(onError)
    }

    @Test
    fun `onError should be called if any exception occurs when calling IntentLauncher#launchForResult(resultLauncher, intent, onError)`() {
        whenever(activityResultLauncher.launch(intent)).then {
            throw Exception()
        }
        intentLauncher.launchForResult(activityResultLauncher, intent, onError)
        verify(onError).invoke()
    }

    @Test
    fun `onError should be called if any error occurs when calling IntentLauncher#launchForResult(resultLauncher, intent, onError)`() {
        whenever(activityResultLauncher.launch(intent)).then {
            throw Error()
        }
        intentLauncher.launchForResult(activityResultLauncher, intent, onError)
        verify(onError).invoke()
    }
}


================================================
File: androidshared/src/test/java/org/odk/collect/androidshared/utils/PathUtilsTest.kt
================================================
package org.odk.collect.androidshared.utils

import org.hamcrest.MatcherAssert.assertThat
import org.hamcrest.Matchers.equalTo
import org.junit.Test
import org.odk.collect.shared.TempFiles
import java.io.File

class PathUtilsTest {
    @Test
    fun `getAbsoluteFilePath() returns filePath prepended with dirPath`() {
        val path = PathUtils.getAbsoluteFilePath("/anotherRoot/anotherDir", "root/dir/file")
        assertThat(path, equalTo("/anotherRoot/anotherDir/root/dir/file"))
    }

    @Test
    fun `getAbsoluteFilePath() returns valid path when filePath does not start with seperator`() {
        val path = PathUtils.getAbsoluteFilePath("/root/dir", "file")
        assertThat(path, equalTo("/root/dir/file"))
    }

    @Test
    fun `getAbsoluteFilePath() returns filePath when it starts with dirPath`() {
        val path = PathUtils.getAbsoluteFilePath("/root/dir", "/root/dir/file")
        assertThat(path, equalTo("/root/dir/file"))
    }

    @Test
    fun `getAbsoluteFilePath() works when dirPath is not canonical`() {
        val tempDir = TempFiles.createTempDir()
        val nonCanonicalPath =
            tempDir.canonicalPath + File.separator + ".." + File.separator + tempDir.name
        assertThat(File(nonCanonicalPath).canonicalPath, equalTo(tempDir.canonicalPath))

        val path = PathUtils.getAbsoluteFilePath(nonCanonicalPath, "file")
        assertThat(path, equalTo(nonCanonicalPath + File.separator + "file"))
    }
}


================================================
File: androidshared/src/test/java/org/odk/collect/androidshared/utils/ValidatorTest.kt
================================================
/*
 * Copyright 2017 Nafundi
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
package org.odk.collect.androidshared.utils

import androidx.test.ext.junit.runners.AndroidJUnit4
import junit.framework.TestCase.assertFalse
import junit.framework.TestCase.assertTrue
import org.junit.Test
import org.junit.runner.RunWith

@RunWith(AndroidJUnit4::class)
class ValidatorTest {
    @Test
    fun emailValidationTestCase() {
        // https://en.wikipedia.org/wiki/Email_address
        assertTrue(Validator.isEmailAddressValid("prettyandsimple@example.com"))
        assertTrue(Validator.isEmailAddressValid("very.common@example.com"))
        assertTrue(Validator.isEmailAddressValid("disposable.style.email.with+symbol@example.com"))
        assertTrue(Validator.isEmailAddressValid("other.email-with-dash@example.com"))
        assertTrue(Validator.isEmailAddressValid("fully-qualified-domain@example.com."))
        assertTrue(Validator.isEmailAddressValid("x@example.com"))
        assertTrue(Validator.isEmailAddressValid("\"very.unusual.@.unusual.com\"@example.com"))
        assertTrue(Validator.isEmailAddressValid("\"very.(),:;<>[]\\\".VERY.\\\"very@\\\\ \\\"very\\\".unusual\"@strange.example.com"))
        assertTrue(Validator.isEmailAddressValid("example-indeed@strange-example.com"))
        assertTrue(Validator.isEmailAddressValid("admin@mailserver1"))
        assertTrue(Validator.isEmailAddressValid("#!$%&'*+-/=?^_`{}|~@example.org"))
        assertTrue(Validator.isEmailAddressValid("\"()<>[]:,;@\\\\\\\"!#$%&'-/=?^_`{}| ~.a\"@example.org"))
        assertTrue(Validator.isEmailAddressValid("\" \"@example.org"))
        assertTrue(Validator.isEmailAddressValid("example@s.solutions"))
        assertTrue(Validator.isEmailAddressValid("user@localserver"))
        assertTrue(Validator.isEmailAddressValid("user@[IPv6:2001:DB8::1"))
        assertFalse(Validator.isEmailAddressValid("plainaddress"))
        assertFalse(Validator.isEmailAddressValid("@domain.com"))
        assertFalse(Validator.isEmailAddressValid("@"))
        assertFalse(Validator.isEmailAddressValid("email@"))
        assertFalse(Validator.isEmailAddressValid("email.domain.com"))
    }

    @Test
    fun urlValidationTest() {
        //  https://en.wikipedia.org/wiki/Template:URL/testcases
        assertTrue(Validator.isUrlValid("http://www.example.com"))
        assertTrue(Validator.isUrlValid("https://www.example.com"))
        assertTrue(Validator.isUrlValid("http://www.example.com/"))
        assertTrue(Validator.isUrlValid("https://www.EXAMPLE.cOm"))
        assertTrue(Validator.isUrlValid("HTTPS://www.EXAMPLE.cOm/"))
        assertTrue(Validator.isUrlValid("https://www.example.com/"))
        assertTrue(Validator.isUrlValid("http://example.com"))
        assertTrue(Validator.isUrlValid("https://example.com"))
        assertTrue(Validator.isUrlValid("http://www.example.com/foo/bar"))
        assertTrue(Validator.isUrlValid("http://www.example.com/foo/bar/"))
        assertTrue(Validator.isUrlValid("http://www.example.com/foO/BaR"))
        assertTrue(Validator.isUrlValid("https://www.example.com/foo/bar"))
        assertTrue(Validator.isUrlValid("http://example.com/foo/bar"))
        assertTrue(Validator.isUrlValid("https://example.com/foo/bar"))
        assertTrue(Validator.isUrlValid("http://example.com/foo/bar"))
        assertTrue(Validator.isUrlValid("http://www.example.com?foo=BaR"))
        assertTrue(Validator.isUrlValid("http://www.example.com"))
        assertTrue(Validator.isUrlValid("http://www.example.com:8080"))
        assertTrue(Validator.isUrlValid("http://www.example.com:8080/foo/bar"))
        assertTrue(Validator.isUrlValid("http://www.example.com/#"))
        assertTrue(Validator.isUrlValid("http://www.example.com/?"))
        assertTrue(Validator.isUrlValid("http://www.example2.com"))
        assertTrue(Validator.isUrlValid("http://www.sho.com/site/dexter/home.sho"))
        assertTrue(Validator.isUrlValid("http://www.example.com/foo%20bar"))
        assertTrue(Validator.isUrlValid("http://example.com/foo/bar"))
        assertTrue(Validator.isUrlValid("https://example.com/foo/bar"))
        assertTrue(Validator.isUrlValid("http://عمان.icom.museum"))
        assertTrue(Validator.isUrlValid("http://www.example.com/foo/bar?a=b&c=d"))
        assertFalse(Validator.isUrlValid("http://www.example.com#fooBaR"))
        assertFalse(Validator.isUrlValid("http://"))
        assertFalse(Validator.isUrlValid("example.com"))
        assertFalse(Validator.isUrlValid("EXAMPLE.COM"))
        assertFalse(Validator.isUrlValid("www.example.com"))
        assertFalse(Validator.isUrlValid("WWW.EXAMPLE.COM"))
        assertFalse(Validator.isUrlValid("ftp://example.com"))
        assertFalse(Validator.isUrlValid("ftp://www.example.com"))
        assertFalse(Validator.isUrlValid("example.com/foo/bar"))
        assertFalse(Validator.isUrlValid("www.example.com/foo/bar"))
        assertFalse(Validator.isUrlValid("www.example.com:8080"))
        assertFalse(Validator.isUrlValid("www.example.com:8080/foo/bar"))
        assertFalse(Validator.isUrlValid("www.example.com/foo%20bar"))
        assertFalse(Validator.isUrlValid("example.com/foo/bar"))
        assertFalse(Validator.isUrlValid("www.example.com/foo/bar"))
        assertFalse(Validator.isUrlValid("www.example.com/foo/bar"))
        assertFalse(Validator.isUrlValid("www.example.com/foo/捦挺挎/bar"))
        assertFalse(Validator.isUrlValid("عمان.icom.museum"))
        assertFalse(Validator.isUrlValid("1964thetribute.com"))
        assertFalse(Validator.isUrlValid("http:/www.example.com"))
        assertFalse(Validator.isUrlValid("http:www.example.com"))
        assertFalse(Validator.isUrlValid("https:///."))
    }
}


================================================
File: androidshared/src/test/resources/robolectric.properties
================================================
sdk=33


================================================
File: androidtest/README.md
================================================
# androidtest

Includes helpers (arguably missing from `androidx.test:core`) for writing ["Local tests" and "Instrumented tests"](https://developer.android.com/training/testing/fundamentals#instrumented-vs-local).
```


================================================
File: androidtest/build.gradle.kts
================================================
plugins {
    alias(libs.plugins.androidLibrary)
    alias(libs.plugins.kotlinAndroid)
}

apply(from = "../config/quality.gradle")

android {
    compileSdk = libs.versions.compileSdk.get().toInt()

    defaultConfig {
        minSdk = libs.versions.minSdk.get().toInt()

        testInstrumentationRunner = "androidx.test.runner.AndroidJUnitRunner"
        consumerProguardFiles("consumer-rules.pro")
    }

    compileOptions {
        isCoreLibraryDesugaringEnabled = true
        sourceCompatibility = JavaVersion.VERSION_17
        targetCompatibility = JavaVersion.VERSION_17
    }

    buildTypes {
        release {
            isMinifyEnabled = false
        }
    }
    namespace = "org.odk.collect.androidtest"
}

dependencies {
    coreLibraryDesugaring(libs.desugar)

    implementation(libs.junit)
    implementation(libs.androidxTestCoreKtx)
    implementation(libs.androidxLifecycleLivedataKtx)
    implementation(libs.androidxLifecycleRuntimeKtx)
    implementation(libs.androidxTestEspressoCore)
    implementation(libs.androidxAppcompat)
    implementation(libs.androidxTestEspressoIntents)
    implementation(libs.timber)
}


================================================
File: androidtest/.gitignore
================================================
/build

================================================
File: androidtest/src/main/AndroidManifest.xml
================================================
<?xml version="1.0" encoding="utf-8"?>
<manifest xmlns:android="http://schemas.android.com/apk/res/android">

</manifest>


================================================
File: androidtest/src/main/java/org/odk/collect/androidtest/ActivityScenarioExtensions.kt
================================================
package org.odk.collect.androidtest

import android.app.Activity
import android.os.Bundle
import android.os.PersistableBundle
import androidx.test.core.app.ActivityScenario

object ActivityScenarioExtensions {

    /**
     * Calling finish() doesn't seem to move an Activity to the DESTROYED state when using
     * ActivityScenario but `isFinishing` appears to work correctly. Bug for this is tracked
     * at https://github.com/android/android-test/issues/978.
     */
    @JvmStatic
    val <T : Activity> ActivityScenario<T>.isFinishing: Boolean
        get() {
            var isFinishing = false
            this.onActivity {
                isFinishing = it.isFinishing
            }

            return isFinishing
        }

    fun <T : Activity> ActivityScenario<T>.saveInstanceState(): Bundle {
        val bundle = Bundle()
        onActivity { it.onSaveInstanceState(bundle, PersistableBundle()) }
        return bundle
    }
}


================================================
File: androidtest/src/main/java/org/odk/collect/androidtest/ActivityScenarioLauncherRule.kt
================================================
package org.odk.collect.androidtest

import android.app.Activity
import android.content.Intent
import androidx.test.core.app.ActivityScenario
import org.junit.rules.ExternalResource
import timber.log.Timber

/**
 * Alternative to [ActivityScenario] that allows tests to do work before launching the [Activity]
 * (like switch out dependencies, construct intents etc) and also allows creation of multiple
 * scenarios in a test.
 */
open class ActivityScenarioLauncherRule : ExternalResource() {

    private val scenarios = mutableListOf<ActivityScenario<*>>()

    fun <A : Activity> launch(activityClass: Class<A>): ActivityScenario<A> {
        return ActivityScenario.launch(activityClass).also {
            scenarios.add(it)
        }
    }

    fun <A : Activity> launch(intent: Intent): ActivityScenario<A> {
        return ActivityScenario.launch<A>(intent).also {
            scenarios.add(it)
        }
    }

    fun <A : Activity> launchForResult(intent: Intent): ActivityScenario<A> {
        return ActivityScenario.launchActivityForResult<A>(intent).also {
            scenarios.add(it)
        }
    }

    fun <A : Activity> launchForResult(activityClass: Class<A>): ActivityScenario<A> {
        return ActivityScenario.launchActivityForResult(activityClass).also {
            scenarios.add(it)
        }
    }

    override fun after() {
        scenarios.forEach {
            try {
                it.close()
            } catch (e: Throwable) {
                Timber.e(Error("Error closing ActivityScenario: $e"))
            }
        }
    }
}


================================================
File: androidtest/src/main/java/org/odk/collect/androidtest/DrawableMatcher.kt
================================================
package org.odk.collect.androidtest

import android.app.Application
import android.graphics.Bitmap
import android.graphics.drawable.BitmapDrawable
import android.graphics.drawable.PictureDrawable
import android.graphics.drawable.VectorDrawable
import android.os.StrictMode
import android.os.StrictMode.ThreadPolicy
import android.view.View
import android.widget.ImageView
import androidx.appcompat.content.res.AppCompatResources
import androidx.core.graphics.drawable.toBitmap
import androidx.test.core.app.ApplicationProvider
import androidx.test.espresso.matcher.BoundedMatcher
import org.hamcrest.Description
import org.hamcrest.Matcher

object DrawableMatcher {
    @JvmStatic
    fun withImageDrawable(expectedResourceId: Int): Matcher<View> {
        return object : BoundedMatcher<View, ImageView>(ImageView::class.java) {
            override fun describeTo(description: Description) {
                description.appendText("has image drawable resource $expectedResourceId")
            }

            public override fun matchesSafely(imageView: ImageView): Boolean {
                val context = ApplicationProvider.getApplicationContext<Application>()
                return imageView.drawable.toBitmap().rowBytes == (AppCompatResources.getDrawable(context, expectedResourceId) as VectorDrawable).toBitmap().rowBytes
            }
        }
    }

    @JvmStatic
    fun withBitmap(match: Bitmap?): Matcher<View> {
        return object : BoundedMatcher<View, ImageView>(ImageView::class.java) {
            override fun describeTo(description: Description) {
                description.appendText("bitmaps did not match")
            }

            override fun matchesSafely(imageView: ImageView): Boolean {
                if (match == null) {
                    return false
                }

                val actual: Bitmap? = when (val drawable = imageView.drawable) {
                    is BitmapDrawable -> drawable.bitmap
                    is PictureDrawable -> drawable.toBitmap(match.width, match.height)
                    else -> null
                }

                if (actual == null) {
                    return false
                } else {
                    val originalThreadPolicy = StrictMode.getThreadPolicy()

                    try {
                        // Permit slow calls to allow `sameAs` use
                        StrictMode.setThreadPolicy(
                            ThreadPolicy.Builder()
                                .permitCustomSlowCalls().build()
                        )

                        return match.sameAs(actual)
                    } finally {
                        StrictMode.setThreadPolicy(originalThreadPolicy)
                    }
                }
            }
        }
    }
}


================================================
File: androidtest/src/main/java/org/odk/collect/androidtest/FakeLifecycleOwner.kt
================================================
package org.odk.collect.androidtest

import androidx.lifecycle.Lifecycle
import androidx.lifecycle.LifecycleOwner
import androidx.lifecycle.LifecycleRegistry

class FakeLifecycleOwner : LifecycleOwner {
    private val lifecycleRegistry: LifecycleRegistry by lazy {
        LifecycleRegistry(this).also {
            it.handleLifecycleEvent(Lifecycle.Event.ON_RESUME)
        }
    }

    override val lifecycle: LifecycleRegistry = lifecycleRegistry

    fun destroy() {
        lifecycle.handleLifecycleEvent(Lifecycle.Event.ON_DESTROY)
    }
}


================================================
File: androidtest/src/main/java/org/odk/collect/androidtest/LiveDataTestUtils.kt
================================================
package org.odk.collect.androidtest

import androidx.lifecycle.LiveData
import androidx.lifecycle.Observer
import java.util.concurrent.CountDownLatch
import java.util.concurrent.TimeUnit
import java.util.concurrent.TimeoutException

/**
 * Gets the value of a [LiveData] or waits for it to have one, with a timeout.
 *
 * Use this extension from host-side (JVM) tests. It's recommended to use it alongside
 * `InstantTaskExecutorRule` or a similar mechanism to execute tasks synchronously.
 *
 * From: https://github.com/android/architecture-components-samples/blob/master/GithubBrowserSample/app/src/test-common/java/com/android/example/github/util/LiveDataTestUtil.kt
 */
@JvmOverloads
fun <T> LiveData<T>.getOrAwaitValue(
    time: Long = 2,
    timeUnit: TimeUnit = TimeUnit.SECONDS,
    afterObserve: () -> Unit = {}
): T {
    var data: T? = null
    val latch = CountDownLatch(1)
    val observer = Observer<T> { o ->
        data = o
        latch.countDown()
    }

    this.observeForever(observer)
    afterObserve.invoke()

    // Don't wait indefinitely if the LiveData is not set.
    if (latch.await(time, timeUnit)) {
        this.removeObserver(observer)
    } else {
        this.removeObserver(observer)
        throw TimeoutException("LiveData value was never set.")
    }

    @Suppress("UNCHECKED_CAST")
    return data as T
}

fun <T> LiveData<T>.recordValues(block: (List<T>) -> Unit) {
    val list = mutableListOf<T>()
    val observer = Observer<T> {
        list.add(it)
    }

    try {
        this.observeForever(observer)
        block(list)
    } finally {
        this.removeObserver(observer)
    }
}


================================================
File: androidtest/src/main/java/org/odk/collect/androidtest/RecordedIntentsRule.kt
================================================
package org.odk.collect.androidtest

import androidx.test.core.app.ActivityScenario
import androidx.test.espresso.intent.Intents
import androidx.test.espresso.intent.rule.IntentsTestRule
import androidx.test.rule.ActivityTestRule
import org.junit.rules.TestRule
import org.junit.runner.Description
import org.junit.runners.model.Statement

/**
 * Like [IntentsTestRule] but doesn't extend [ActivityTestRule] (and therefore works with
 * [ActivityScenario]/[FragmentScenario]
 *
 * Discussed in issue [here](https://github.com/android/android-test/issues/174).
 */
class RecordedIntentsRule : TestRule {
    override fun apply(base: Statement, description: Description): Statement {
        return object : Statement() {
            override fun evaluate() {
                try {
                    Intents.init()
                    base.evaluate()
                } finally {
                    Intents.release()
                }
            }
        }
    }
}


================================================
File: async/build.gradle.kts
================================================
plugins {
    alias(libs.plugins.androidLibrary)
    alias(libs.plugins.kotlinAndroid)
}

apply(from = "../config/quality.gradle")

android {
    compileSdk = libs.versions.compileSdk.get().toInt()

    defaultConfig {
        minSdk = libs.versions.minSdk.get().toInt()

        testInstrumentationRunner = "androidx.test.runner.AndroidJUnitRunner"
        consumerProguardFiles("consumer-rules.pro")
    }

    buildTypes {
        release {
            isMinifyEnabled = false
            proguardFiles(getDefaultProguardFile("proguard-android-optimize.txt"), "proguard-rules.pro")
        }
    }

    compileOptions {
        isCoreLibraryDesugaringEnabled = true
        sourceCompatibility = JavaVersion.VERSION_17
        targetCompatibility = JavaVersion.VERSION_17
    }

    namespace = "org.odk.collect.async"
}

dependencies {
    coreLibraryDesugaring(libs.desugar)

    implementation(fileTree(mapOf("dir" to "libs", "include" to listOf("*.jar"))))
    implementation(libs.kotlinStdlib)
    implementation(libs.androidxCoreKtx)
    implementation(libs.kotlinxCoroutinesAndroid)
    implementation(libs.androidxWorkRuntime)
    implementation(project(":analytics")) {
        exclude("com.google.firebase")
    }

    testImplementation(libs.hamcrest)
    testImplementation(libs.robolectric)
    testImplementation(libs.androidxTestExtJunit)
    testImplementation(libs.androidxWorkTesting)
    testImplementation(libs.mockitoKotlin)
}


================================================
File: async/proguard-rules.pro
================================================
# Add project specific ProGuard rules here.
# You can control the set of applied configuration files using the
# proguardFiles setting in build.gradle.
#
# For more details, see
#   http://developer.android.com/guide/developing/tools/proguard.html

# If your project uses WebView with JS, uncomment the following
# and specify the fully qualified class name to the JavaScript interface
# class:
#-keepclassmembers class fqcn.of.javascript.interface.for.webview {
#   public *;
#}

# Uncomment this to preserve the line number information for
# debugging stack traces.
#-keepattributes SourceFile,LineNumberTable

# If you keep the line number information, uncomment this to
# hide the original source file name.
#-renamesourcefileattribute SourceFile

================================================
File: async/.gitignore
================================================
/build

================================================
File: async/src/main/AndroidManifest.xml
================================================
<manifest xmlns:android="http://schemas.android.com/apk/res/android">
    <uses-permission android:name="android.permission.ACCESS_NETWORK_STATE" />
</manifest>


================================================
File: async/src/main/java/org/odk/collect/async/Cancellable.kt
================================================
package org.odk.collect.async

interface Cancellable {
    fun cancel(): Boolean
}


================================================
File: async/src/main/java/org/odk/collect/async/CoroutineAndWorkManagerScheduler.kt
================================================
package org.odk.collect.async

import androidx.work.Constraints
import androidx.work.Data
import androidx.work.ExistingPeriodicWorkPolicy
import androidx.work.ExistingWorkPolicy
import androidx.work.NetworkType
import androidx.work.OneTimeWorkRequest
import androidx.work.PeriodicWorkRequest
import androidx.work.WorkInfo
import androidx.work.WorkManager
import kotlinx.coroutines.Dispatchers
import java.util.concurrent.TimeUnit
import kotlin.coroutines.CoroutineContext

class CoroutineAndWorkManagerScheduler(
    foregroundContext: CoroutineContext,
    backgroundContext: CoroutineContext,
    private val workManager: WorkManager
) : CoroutineScheduler(foregroundContext, backgroundContext) {

    constructor(workManager: WorkManager) : this(
        Dispatchers.Main,
        Dispatchers.IO,
        workManager
    ) // Needed for Java construction

    override fun networkDeferred(
        tag: String,
        spec: TaskSpec,
        inputData: Map<String, String>,
        networkConstraint: Scheduler.NetworkType?
    ) {
        val constraintNetworkType = when (networkConstraint) {
            Scheduler.NetworkType.WIFI -> NetworkType.UNMETERED
            Scheduler.NetworkType.CELLULAR -> NetworkType.METERED
            else -> NetworkType.CONNECTED
        }

        val constraints = Constraints.Builder()
            .setRequiredNetworkType(constraintNetworkType)
            .build()

        val workManagerInputData = Data.Builder()
            .putString(TaskSpecWorker.DATA_TASK_SPEC_CLASS, spec.javaClass.name)
            .putBoolean(
                TaskSpecWorker.DATA_CELLULAR_ONLY,
                networkConstraint == Scheduler.NetworkType.CELLULAR
            )
            .putAll(inputData)
            .build()

        val workRequest = OneTimeWorkRequest.Builder(TaskSpecWorker::class.java)
            .addTag(tag)
            .setConstraints(constraints)
            .setInputData(workManagerInputData)
            .build()

        workManager.beginUniqueWork(tag, ExistingWorkPolicy.REPLACE, workRequest).enqueue()
    }

    override fun networkDeferredRepeat(
        tag: String,
        spec: TaskSpec,
        repeatPeriod: Long,
        inputData: Map<String, String>
    ) {
        val constraints = Constraints.Builder()
            .setRequiredNetworkType(NetworkType.CONNECTED)
            .build()

        val workManagerInputData = Data.Builder()
            .putString(TaskSpecWorker.DATA_TASK_SPEC_CLASS, spec.javaClass.name)
            .putAll(inputData)
            .build()

        val builder = PeriodicWorkRequest.Builder(
            TaskSpecWorker::class.java,
            repeatPeriod,
            TimeUnit.MILLISECONDS
        )
            .addTag(tag)
            .setInputData(workManagerInputData)
            .setConstraints(constraints)

        spec.backoffPolicy?.let { backoffPolicy ->
            spec.backoffDelay?.let { backoffDelay ->
                builder.setBackoffCriteria(backoffPolicy, backoffDelay, TimeUnit.MILLISECONDS)
            }
        }

        workManager.enqueueUniquePeriodicWork(
            tag,
            ExistingPeriodicWorkPolicy.REPLACE,
            builder.build()
        )
    }

    override fun cancelDeferred(tag: String) {
        workManager.cancelUniqueWork(tag)
    }

    override fun isDeferredRunning(tag: String): Boolean {
        return isWorkManagerWorkRunning(tag)
    }

    override fun cancelAllDeferred() {
        workManager.cancelAllWork()
    }

    private fun isWorkManagerWorkRunning(tag: String): Boolean {
        val statuses = workManager.getWorkInfosByTag(tag)
        for (workInfo in statuses.get()) {
            if (workInfo.state == WorkInfo.State.RUNNING) {
                return true
            }
        }

        return false
    }
}


================================================
File: async/src/main/java/org/odk/collect/async/CoroutineScheduler.kt
================================================
package org.odk.collect.async

import kotlinx.coroutines.CoroutineScope
import kotlinx.coroutines.delay
import kotlinx.coroutines.flow.Flow
import kotlinx.coroutines.flow.flowOn
import kotlinx.coroutines.isActive
import kotlinx.coroutines.launch
import kotlinx.coroutines.withContext
import java.util.function.Consumer
import java.util.function.Supplier
import kotlin.coroutines.CoroutineContext

open class CoroutineScheduler(private val foregroundContext: CoroutineContext, private val backgroundContext: CoroutineContext) : Scheduler {

    override fun <T> immediate(background: Supplier<T>, foreground: Consumer<T>) {
        CoroutineScope(foregroundContext).launch {
            val result = withContext(backgroundContext) { background.get() }
            foreground.accept(result)
        }
    }

    override fun immediate(foreground: Boolean, runnable: Runnable) {
        val context = if (!foreground) {
            backgroundContext
        } else {
            foregroundContext
        }

        CoroutineScope(context).launch {
            runnable.run()
        }
    }

    override fun repeat(foreground: Runnable, repeatPeriod: Long): Cancellable {
        val repeatScope = CoroutineScope(foregroundContext)

        repeatScope.launch {
            while (isActive) {
                foreground.run()
                delay(repeatPeriod)
            }
        }

        return ScopeCancellable(repeatScope)
    }

    override fun <T> flowOnBackground(flow: Flow<T>): Flow<T> {
        return flow.flowOn(backgroundContext)
    }

    override fun cancelAllDeferred() {
        throw UnsupportedOperationException()
    }

    override fun networkDeferred(tag: String, spec: TaskSpec, inputData: Map<String, String>, networkConstraint: Scheduler.NetworkType?) {
        throw UnsupportedOperationException()
    }

    override fun networkDeferredRepeat(tag: String, spec: TaskSpec, repeatPeriod: Long, inputData: Map<String, String>) {
        throw UnsupportedOperationException()
    }

    override fun cancelDeferred(tag: String) {
        throw UnsupportedOperationException()
    }

    override fun isDeferredRunning(tag: String): Boolean {
        throw UnsupportedOperationException()
    }
}


================================================
File: async/src/main/java/org/odk/collect/async/OngoingWorkListener.kt
================================================
/*
 * Copyright 2018 Nafundi
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
package org.odk.collect.async

/**
 * Allows a client of some ongoing work to receive updates on progress and to provide a signal
 * that the work should be cancelled.
 */
interface OngoingWorkListener {
    fun progressUpdate(progress: Int)
    val isCancelled: Boolean
}


================================================
File: async/src/main/java/org/odk/collect/async/Scheduler.kt
================================================
package org.odk.collect.async

import kotlinx.coroutines.flow.Flow
import java.util.function.Consumer
import java.util.function.Supplier

/**
 * Run and schedule tasks in the foreground (UI thread) and background. Based on terminology
 * used in Android's Background Processing documentation: https://developer.android.com/guide/background.
 *
 * This keeps the details of threading and job frameworks (which are very often in flux) away from
 * the UI code. An added advantage of this is the ability to use Kotlin's concurrency primitives from Java.
 */
interface Scheduler {

    /**
     * Run work in the background (off the UI thread) and then use the result of that work
     * in the foreground. Cancelled if application closed.
     *
     * @param background the task to be run
     * @param foreground run on the foreground once the task is complete
     */
    fun <T> immediate(background: Supplier<T>, foreground: Consumer<T>)

    /**
     * Run work in the foreground or background. Cancelled if application closed.
     */
    fun immediate(foreground: Boolean = false, runnable: Runnable)

    /**
     * Schedule a task to run in the background even if the app isn't running. The task
     * will only be run when the network is available.
     *
     * @param tag used to identify this task in future. If there is a previously scheduled task
     * with the same tag then that task will be cancelled and this will replace it
     * @param spec defines the task to be run
     * @param inputData a map of input data that can be accessed by the task
     * @param networkConstraint the specific kind of network required
     */
    fun networkDeferred(tag: String, spec: TaskSpec, inputData: Map<String, String>, networkConstraint: NetworkType? = null)

    /**
     * Schedule a task to run in the background repeatedly even if the app isn't running. The task
     * will only be run when the network is available.
     *
     * @param tag used to identify this task in future. Previously scheduled tasks using the same
     * tag will be replaced
     * @param spec defines the task to be run
     * @param repeatPeriod the period between each run of the task
     * @param inputData a map of input data that can be accessed by the task
     */
    fun networkDeferredRepeat(
        tag: String,
        spec: TaskSpec,
        repeatPeriod: Long,
        inputData: Map<String, String>
    )

    /**
     * Cancel deferred task scheduled with tag
     */
    fun cancelDeferred(tag: String)

    /**
     * Returns true if a deferred task scheduled with tag is currently running
     */
    fun isDeferredRunning(tag: String): Boolean

    /**
     * Run a task and then repeat in the foreground
     *
     * @param foreground the task to be run
     * @param repeatPeriod the period between each run of the task
     * @return object that allows task to be cancelled
     */
    fun repeat(foreground: Runnable, repeatPeriod: Long): Cancellable

    fun cancelAllDeferred()

    fun <T> flowOnBackground(flow: Flow<T>): Flow<T>

    enum class NetworkType {
        WIFI,
        CELLULAR,
        OTHER
    }
}

fun <T> Flow<T>.flowOnBackground(scheduler: Scheduler): Flow<T> {
    return scheduler.flowOnBackground(this)
}


================================================
File: async/src/main/java/org/odk/collect/async/SchedulerAsyncTaskMimic.kt
================================================
package org.odk.collect.async

import android.os.AsyncTask

/**
 * Basic reimplementation of the [AsyncTask] API that allows an [AsyncTask] implementation to
 * use [Scheduler] with minimal internal and external changes.
 */
abstract class SchedulerAsyncTaskMimic<Params, Progress, Result>(private val scheduler: Scheduler) {

    @Volatile
    private var status: AsyncTask.Status = AsyncTask.Status.PENDING

    @Volatile
    private var cancelled = false

    protected abstract fun onPreExecute()
    protected abstract fun doInBackground(vararg params: Params): Result
    protected abstract fun onProgressUpdate(vararg values: Progress)
    protected abstract fun onPostExecute(result: Result)
    protected abstract fun onCancelled()

    /**
     * Execute [doInBackground] on calling thread and return the [Result] value. Should probably
     * not be used as a replacement for [AsyncTask.get] (unless it's for testing purposes).
     */
    fun executeSynchronously(vararg params: Params): Result {
        return doInBackground(*params)
    }

    fun execute(vararg params: Params): SchedulerAsyncTaskMimic<Params, Progress, Result> {
        status = AsyncTask.Status.RUNNING
        onPreExecute()

        scheduler.immediate(
            background = {
                doInBackground(*params)
            },
            foreground = { result ->
                if (cancelled) {
                    onCancelled()
                } else {
                    onPostExecute(result)
                }

                status = AsyncTask.Status.FINISHED
            }
        )

        return this
    }

    fun getStatus(): AsyncTask.Status {
        return status
    }

    /**
     * Unlike [AsyncTask.cancel], this does not offer the option to attempt to interrupt the
     * background thread running [doInBackground]. Calling [cancel] will allow [doInBackground]
     * to finish, but will prevent [onPostExecute] from running ([onCancelled] will be run
     * instead).
     */
    fun cancel() {
        cancelled = true
    }

    fun isCancelled(): Boolean {
        return cancelled
    }

    protected fun publishProgress(vararg values: Progress) {
        scheduler.immediate(foreground = true) {
            onProgressUpdate(*values)
        }
    }
}


================================================
File: async/src/main/java/org/odk/collect/async/ScopeCancellable.kt
================================================
package org.odk.collect.async

import kotlinx.coroutines.CoroutineScope
import kotlinx.coroutines.cancel

internal class ScopeCancellable(private val scope: CoroutineScope) : Cancellable {

    override fun cancel(): Boolean {
        scope.cancel()
        return true
    }
}


================================================
File: async/src/main/java/org/odk/collect/async/TaskSpec.kt
================================================
package org.odk.collect.async

import android.content.Context
import androidx.work.BackoffPolicy
import java.util.function.Supplier

interface TaskSpec {
    val maxRetries: Int?
    val backoffPolicy: BackoffPolicy?
    val backoffDelay: Long?

    /**
     * Should return the work to be carried out by the task. The return value of the work
     * indicates whether the work completed (true) or needs to be run again later (false)
     *
     * @param isLastUniqueExecution if a task specifies maxRetries all retries form one logical
     * group. We want to know which task execution is the last one to for example notify a user only
     * once instead of doing that after every single execution.
     */
    fun getTask(context: Context, inputData: Map<String, String>, isLastUniqueExecution: Boolean): Supplier<Boolean>

    /**
     * Called if an exception is thrown while executing the work.
     */
    fun onException(exception: Throwable)
}


================================================
File: async/src/main/java/org/odk/collect/async/TaskSpecWorker.kt
================================================
package org.odk.collect.async

import android.content.Context
import androidx.work.Worker
import androidx.work.WorkerParameters
import org.odk.collect.analytics.Analytics
import org.odk.collect.async.network.ConnectivityProvider

class TaskSpecWorker(
    context: Context,
    workerParams: WorkerParameters
) : Worker(context, workerParams) {

    private val connectivityProvider: ConnectivityProvider = ConnectivityProvider(context)

    override fun doWork(): Result {
        val cellularOnly = inputData.getBoolean(DATA_CELLULAR_ONLY, false)
        if (cellularOnly && connectivityProvider.currentNetwork != Scheduler.NetworkType.CELLULAR) {
            Analytics.setUserProperty("SawMeteredNonCellular", "true")
            return Result.retry()
        }

        val specClass = inputData.getString(DATA_TASK_SPEC_CLASS)!!
        val spec = Class.forName(specClass).getConstructor().newInstance() as TaskSpec

        val stringInputData = inputData.keyValueMap.mapValues { it.value.toString() }

        try {
            val completed =
                spec.getTask(applicationContext, stringInputData, isLastUniqueExecution(spec)).get()
            val maxRetries = spec.maxRetries

            return if (completed) {
                Result.success()
            } else if (maxRetries == null || runAttemptCount < maxRetries) {
                Result.retry()
            } else {
                Result.failure()
            }
        } catch (t: Throwable) {
            spec.onException(t)
            return Result.failure()
        }
    }

    private fun isLastUniqueExecution(spec: TaskSpec) =
        spec.maxRetries?.let { runAttemptCount >= it } ?: true

    companion object {
        const val DATA_TASK_SPEC_CLASS = "taskSpecClass"
        const val DATA_CELLULAR_ONLY = "cellularOnly"
    }
}


================================================
File: async/src/main/java/org/odk/collect/async/network/ConnectivityProvider.kt
================================================
package org.odk.collect.async.network

import android.content.Context
import android.net.ConnectivityManager
import org.odk.collect.async.Scheduler

class ConnectivityProvider(private val context: Context) : NetworkStateProvider {
    override val currentNetwork: Scheduler.NetworkType?
        get() {
            return if (connectivityManager.activeNetworkInfo?.isConnected == true) {
                when (connectivityManager.activeNetworkInfo?.type) {
                    ConnectivityManager.TYPE_WIFI -> Scheduler.NetworkType.WIFI
                    ConnectivityManager.TYPE_MOBILE -> Scheduler.NetworkType.CELLULAR
                    else -> Scheduler.NetworkType.OTHER
                }
            } else {
                null
            }
        }

    private val connectivityManager: ConnectivityManager
        get() = context.getSystemService(Context.CONNECTIVITY_SERVICE) as ConnectivityManager
}


================================================
File: async/src/main/java/org/odk/collect/async/network/NetworkStateProvider.kt
================================================
package org.odk.collect.async.network

import org.odk.collect.async.Scheduler

interface NetworkStateProvider {
    val currentNetwork: Scheduler.NetworkType?

    val isDeviceOnline: Boolean
        get() {
            return currentNetwork != null
        }
}


================================================
File: async/src/test/java/org/odk/collect/async/TaskSpecWorkerTest.kt
================================================
package org.odk.collect.async

import android.content.Context
import androidx.test.core.app.ApplicationProvider
import androidx.test.ext.junit.runners.AndroidJUnit4
import androidx.work.BackoffPolicy
import androidx.work.Data
import androidx.work.ListenableWorker
import androidx.work.Worker
import androidx.work.testing.TestWorkerBuilder
import org.hamcrest.CoreMatchers.`is`
import org.hamcrest.MatcherAssert.assertThat
import org.hamcrest.Matchers.equalTo
import org.junit.Before
import org.junit.Test
import org.junit.runner.RunWith
import java.util.concurrent.Executors
import java.util.function.Supplier

@RunWith(AndroidJUnit4::class)
class TaskSpecWorkerTest {
    private lateinit var worker: Worker

    @Before
    fun setup() {
        worker = TestWorkerBuilder<TaskSpecWorker>(
            context = ApplicationProvider.getApplicationContext(),
            executor = Executors.newSingleThreadExecutor(),
            inputData = Data.Builder()
                .putString(TaskSpecWorker.DATA_TASK_SPEC_CLASS, TestTaskSpec::class.java.name)
                .build(),
            runAttemptCount = 0 // without setting this explicitly attempts in tests are counted starting from 1 instead of 0 like in production code
        ).build()

        TestTaskSpec.reset()
    }

    @Test
    fun `when task returns true work should succeed`() {
        TestTaskSpec.doReturn(true)
        assertThat(worker.doWork(), `is`(ListenableWorker.Result.success()))
    }

    @Test
    fun `when task returns false, retries if maxRetries not specified`() {
        TestTaskSpec.doReturn(false)
        assertThat(worker.doWork(), `is`(ListenableWorker.Result.retry()))
    }

    @Test
    fun `when task returns false, retries if maxRetries is specified and is higher than runAttemptCount`() {
        TestTaskSpec
            .withMaxRetries(1)
            .doReturn(false)

        assertThat(worker.doWork(), `is`(ListenableWorker.Result.retry()))
    }

    @Test
    fun `when task returns false, fails if maxRetries is specified and is equal to runAttemptCount`() {
        TestTaskSpec
            .withMaxRetries(0)
            .doReturn(false)

        assertThat(worker.doWork(), `is`(ListenableWorker.Result.failure()))
    }

    @Test
    fun `when task returns false, fails if maxRetries is specified and is lower than runAttemptCount`() {
        TestTaskSpec
            .withMaxRetries(-1)
            .doReturn(false)

        assertThat(worker.doWork(), `is`(ListenableWorker.Result.failure()))
    }

    @Test
    fun `when maxRetries is not specified, task called with isLastUniqueExecution true`() {
        TestTaskSpec
            .doReturn(false)

        worker.doWork()
        assertThat(TestTaskSpec.wasLastUniqueExecution, equalTo(true))
    }

    @Test
    fun `when maxRetries is specified and it is higher than runAttemptCount, task called with isLastUniqueExecution false`() {
        TestTaskSpec
            .withMaxRetries(1)
            .doReturn(false)

        worker.doWork()
        assertThat(TestTaskSpec.wasLastUniqueExecution, equalTo(false))
    }

    @Test
    fun `when maxRetries is specified and it is equal to runAttemptCount, task called with isLastUniqueExecution true`() {
        TestTaskSpec
            .withMaxRetries(0)
            .doReturn(false)

        worker.doWork()
        assertThat(TestTaskSpec.wasLastUniqueExecution, equalTo(true))
    }

    @Test
    fun `when maxRetries is specified and it is lower than runAttemptCount, task called with isLastUniqueExecution true`() {
        TestTaskSpec
            .withMaxRetries(-1)
            .doReturn(false)

        worker.doWork()
        assertThat(TestTaskSpec.wasLastUniqueExecution, equalTo(true))
    }

    @Test
    fun `when there is an exception, calls onException`() {
        val exception = IllegalStateException()

        TestTaskSpec
            .doThrow(exception)

        worker.doWork()
        assertThat(TestTaskSpec.onExceptionCalledWith, equalTo(exception))
    }
}

private class TestTaskSpec : TaskSpec {

    companion object {

        private var maxRetries: Int? = null
        private var returnValue = true
        private var exception: Throwable? = null

        var wasLastUniqueExecution = false
            private set

        var onExceptionCalledWith: Throwable? = null
            private set

        fun reset() {
            returnValue = true
            maxRetries = null
            exception = null
            wasLastUniqueExecution = false
            onExceptionCalledWith = null
        }

        fun doReturn(value: Boolean): Companion {
            returnValue = value
            return this
        }

        fun withMaxRetries(maxRetries: Int): Companion {
            this.maxRetries = maxRetries
            return this
        }

        fun doThrow(exception: Throwable) {
            this.exception = exception
        }
    }

    override val maxRetries: Int? = Companion.maxRetries
    override val backoffPolicy: BackoffPolicy? = null
    override val backoffDelay: Long? = null

    override fun getTask(
        context: Context,
        inputData: Map<String, String>,
        isLastUniqueExecution: Boolean
    ): Supplier<Boolean> {
        wasLastUniqueExecution = isLastUniqueExecution

        return Supplier {
            exception?.let {
                throw it
            }

            returnValue
        }
    }

    override fun onException(exception: Throwable) {
        onExceptionCalledWith = exception
    }
}


================================================
File: audio-clips/build.gradle.kts
================================================
plugins {
    alias(libs.plugins.androidLibrary)
    alias(libs.plugins.kotlinAndroid)
}

apply(from = "../config/quality.gradle")

android {
    compileSdk = libs.versions.compileSdk.get().toInt()

    defaultConfig {
        minSdk = libs.versions.minSdk.get().toInt()

        testInstrumentationRunner = "androidx.test.runner.AndroidJUnitRunner"
        consumerProguardFiles("consumer-rules.pro")
    }

    compileOptions {
        isCoreLibraryDesugaringEnabled = true
        sourceCompatibility = JavaVersion.VERSION_17
        targetCompatibility = JavaVersion.VERSION_17
    }

    buildTypes {
        release {
            isMinifyEnabled = false
        }
    }
    namespace = "org.odk.collect.audioclips"
}

dependencies {
    coreLibraryDesugaring(libs.desugar)

    implementation(fileTree(mapOf("dir" to "libs", "include" to listOf("*.jar"))))
    implementation(project(":async"))
    implementation(libs.kotlinStdlib)
    implementation(libs.androidxCoreKtx)
    implementation(libs.androidxLifecycleViewmodelKtx)
    implementation(libs.androidxLifecycleLivedataKtx)

    testImplementation(project(":androidtest"))
    testImplementation(project(":test-shared"))
    testImplementation(libs.junit)
    testImplementation(libs.mockitoKotlin)
    testImplementation(libs.androidxTestExtJunit)
    testImplementation(libs.androidxArchCoreTesting)
    testImplementation(libs.hamcrest)
}


================================================
File: audio-clips/.gitignore
================================================
/build

================================================
File: audio-clips/src/main/AndroidManifest.xml
================================================
<manifest xmlns:android="http://schemas.android.com/apk/res/android">

    /
</manifest>

================================================
File: audio-clips/src/main/java/org/odk/collect/audioclips/AudioClipViewModel.kt
================================================
package org.odk.collect.audioclips

import android.media.MediaPlayer
import android.os.StrictMode
import androidx.lifecycle.LiveData
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import androidx.lifecycle.ViewModelProvider
import androidx.lifecycle.map
import org.odk.collect.async.Cancellable
import org.odk.collect.async.Scheduler
import java.io.File
import java.io.IOException
import java.util.LinkedList
import java.util.Queue
import java.util.function.Supplier

class AudioClipViewModel(private val mediaPlayerFactory: Supplier<MediaPlayer>, private val scheduler: Scheduler) : ViewModel(), MediaPlayer.OnCompletionListener {

    private var _mediaPlayer: MediaPlayer? = null

    private val currentlyPlaying = MutableLiveData<CurrentlyPlaying?>(null)
    private val error = MutableLiveData<Exception?>()
    private val positions: MutableMap<String, MutableLiveData<Int>?> = HashMap()
    private var positionUpdatesCancellable: Cancellable? = null
    private val isLoading = MutableLiveData(false)

    fun play(clip: Clip) {
        val playlist = LinkedList<Clip>()
        playlist.add(clip)
        playNext(playlist)
    }

    fun playInOrder(clips: List<Clip>) {
        val playlist: Queue<Clip> = LinkedList(clips)
        playNext(playlist)
    }

    fun stop() {
        if (currentlyPlaying.value != null) {
            _mediaPlayer?.stop()
        }

        cleanUpAfterClip()
    }

    fun pause() {
        _mediaPlayer?.pause()
        val currentlyPlayingValue = currentlyPlaying.value
        if (currentlyPlayingValue != null) {
            currentlyPlaying.value = currentlyPlayingValue.paused()
        }
    }

    fun isPlaying(clipID: String): LiveData<Boolean> {
        return currentlyPlaying.map { value ->
            if (isCurrentPlayingClip(clipID, value)) {
                !value!!.isPaused
            } else {
                false
            }
        }
    }

    fun getPosition(clipID: String): LiveData<Int> {
        return getPositionForClip(clipID)
    }

    fun setPosition(clipID: String, newPosition: Int) {
        if (isCurrentPlayingClip(clipID, currentlyPlaying.value)) {
            _mediaPlayer?.seekTo(newPosition)
        }
        getPositionForClip(clipID).value = newPosition
    }

    fun background() {
        cleanUpAfterClip()
        releaseMediaPlayer()
    }

    public override fun onCleared() {
        background()
    }

    private fun playNext(playlist: Queue<Clip>) {
        val nextClip = playlist.poll()
        if (nextClip != null) {
            if (!isCurrentPlayingClip(nextClip.clipID, currentlyPlaying.value)) {
                loadNewClip(
                    nextClip.uRI,
                    onLoaded = {
                        startPlayBack(nextClip, playlist)
                    },
                    onLoadFailure = {
                        error.value =
                            PlaybackFailedException(nextClip.uRI, getExceptionMsg(nextClip.uRI))
                        playNext(playlist)
                    }
                )
            } else {
                startPlayBack(nextClip, playlist)
            }
        }
    }

    private fun startPlayBack(
        nextClip: Clip,
        playlist: Queue<Clip>
    ) {
        _mediaPlayer?.seekTo(getPositionForClip(nextClip.clipID).value!!)
        _mediaPlayer?.start()
        currentlyPlaying.value = CurrentlyPlaying(
            Clip(nextClip.clipID, nextClip.uRI),
            false,
            playlist
        )

        schedulePositionUpdates()
    }

    private fun getExceptionMsg(uri: String): Int {
        return if (File(uri).exists()) 1 else 0
    }

    override fun onCompletion(mediaPlayer: MediaPlayer) {
        val wasPlaying = cleanUpAfterClip()
        if (wasPlaying != null) {
            if (!wasPlaying.playlist.isEmpty()) {
                playNext(wasPlaying.playlist)
            }
        }
    }

    private fun cleanUpAfterClip(): CurrentlyPlaying? {
        val wasPlaying = currentlyPlaying.value
        cancelPositionUpdates()
        currentlyPlaying.value = null
        if (wasPlaying != null) {
            getPositionForClip(wasPlaying.clipID).value = 0
        }
        return wasPlaying
    }

    private fun getPositionForClip(clipID: String): MutableLiveData<Int> {
        val liveData: MutableLiveData<Int>
        if (positions.containsKey(clipID)) {
            liveData = positions[clipID]!!
        } else {
            liveData = MutableLiveData()
            liveData.value = 0
            positions[clipID] = liveData
        }
        return liveData
    }

    fun getError(): LiveData<Exception?> {
        return error
    }

    fun errorDisplayed() {
        error.value = null
    }

    private fun schedulePositionUpdates() {
        positionUpdatesCancellable = scheduler.repeat(
            {
                _mediaPlayer?.let {
                    val currentlyPlaying = currentlyPlaying.value
                    if (currentlyPlaying != null) {
                        val position = getPositionForClip(currentlyPlaying.clip.clipID)
                        position.postValue(it.currentPosition)
                    }
                }
            },
            1000 / 12
        ) // 12fps
    }

    private fun cancelPositionUpdates() {
        positionUpdatesCancellable?.cancel()
    }

    private fun releaseMediaPlayer() {
        _mediaPlayer?.release()
        _mediaPlayer = null
    }

    private fun setupNewMediaPlayer(): MediaPlayer {
        StrictMode.noteSlowCall("MediaPlayer instantiation can be slow")

        val newMediaPlayer: MediaPlayer = mediaPlayerFactory.get()
        newMediaPlayer.setOnCompletionListener(this)
        return newMediaPlayer
    }

    private fun isCurrentPlayingClip(clipID: String, currentlyPlayingValue: CurrentlyPlaying?): Boolean {
        return currentlyPlayingValue != null && currentlyPlayingValue.clip.clipID == clipID
    }

    private fun loadNewClip(uri: String, onLoaded: () -> Unit, onLoadFailure: () -> Unit) {
        isLoading.value = true

        scheduler.immediate(
            background = {
                val mediaPlayer = _mediaPlayer ?: run {
                    val newMediaPlayer = setupNewMediaPlayer()
                    _mediaPlayer = newMediaPlayer
                    newMediaPlayer
                }

                try {
                    mediaPlayer.reset()
                    mediaPlayer.setDataSource(uri)
                    mediaPlayer.prepare()
                    true
                } catch (e: IOException) {
                    false
                }
            },
            foreground = { success ->
                if (success) {
                    onLoaded()
                } else {
                    onLoadFailure()
                }

                isLoading.value = false
            }
        )
    }

    fun isLoading(): LiveData<Boolean> {
        return isLoading
    }

    private class CurrentlyPlaying(val clip: Clip, val isPaused: Boolean, val playlist: Queue<Clip>) {

        val clipID: String
            get() = clip.clipID

        fun paused(): CurrentlyPlaying {
            return CurrentlyPlaying(clip, true, playlist)
        }
    }

    class Factory(private val mediaPlayerFactory: Supplier<MediaPlayer>, private val scheduler: Scheduler) : ViewModelProvider.Factory {

        @Suppress("UNCHECKED_CAST")
        override fun <T : ViewModel> create(modelClass: Class<T>): T {
            return AudioClipViewModel(mediaPlayerFactory, scheduler) as T
        }
    }
}


================================================
File: audio-clips/src/main/java/org/odk/collect/audioclips/Clip.kt
================================================
package org.odk.collect.audioclips

data class Clip(val clipID: String, val uRI: String)


================================================
File: audio-clips/src/main/java/org/odk/collect/audioclips/PlaybackFailedException.kt
================================================
package org.odk.collect.audioclips

data class PlaybackFailedException(val uRI: String, val exceptionMsg: Int) : Exception()


================================================
File: audio-clips/src/test/java/org/odk/collect/audioclips/AudioClipViewModelTest.kt
================================================
package org.odk.collect.audioclips

import android.media.MediaPlayer
import androidx.arch.core.executor.testing.InstantTaskExecutorRule
import androidx.test.ext.junit.runners.AndroidJUnit4
import org.hamcrest.MatcherAssert.assertThat
import org.hamcrest.Matchers.equalTo
import org.junit.Rule
import org.junit.Test
import org.junit.runner.RunWith
import org.mockito.ArgumentCaptor
import org.mockito.ArgumentMatchers
import org.mockito.Mockito.doThrow
import org.mockito.Mockito.inOrder
import org.mockito.Mockito.mock
import org.mockito.Mockito.never
import org.mockito.Mockito.times
import org.mockito.Mockito.verify
import org.mockito.Mockito.`when`
import org.odk.collect.androidtest.getOrAwaitValue
import org.odk.collect.testshared.FakeScheduler
import java.io.File
import java.io.IOException
import java.util.function.Supplier

@RunWith(AndroidJUnit4::class)
class AudioClipViewModelTest {

    @get:Rule
    val instantTaskExecutorRule = InstantTaskExecutorRule()

    private val mediaPlayer = mock(MediaPlayer::class.java)
    private val fakeScheduler = FakeScheduler()
    private var viewModel: AudioClipViewModel = AudioClipViewModel(Supplier { mediaPlayer }, fakeScheduler)

    @Test
    fun play_resetsAndPreparesAndStartsMediaPlayer() {
        viewModel.play(Clip("clip1", "file://audio.mp3"))
        fakeScheduler.flush()

        val inOrder = inOrder(mediaPlayer)
        inOrder.verify(mediaPlayer).reset()
        inOrder.verify(mediaPlayer).setDataSource("file://audio.mp3")
        inOrder.verify(mediaPlayer).prepare()
        inOrder.verify(mediaPlayer).start()
    }

    @Test
    fun play_whenAlreadyingPlayingClip_startsMediaPlayer() {
        viewModel.play(Clip("clip1", "file://audio.mp3"))
        fakeScheduler.flush()
        viewModel.play(Clip("clip1", "file://audio.mp3"))
        fakeScheduler.flush()

        verify(mediaPlayer, times(1)).reset()
        verify(mediaPlayer, times(2)).start()
    }

    @Test
    fun play_whenClipHasPositionSet_startsAtPosition() {
        viewModel.setPosition("clip1", 4321)
        viewModel.play(Clip("clip1", "file://audio.mp3"))
        fakeScheduler.flush()

        val inOrder = inOrder(mediaPlayer)
        inOrder.verify(mediaPlayer).seekTo(4321)
        inOrder.verify(mediaPlayer).start()
    }

    @Test
    fun playMultipleClips_updatesProgress_forAllClips() {
        viewModel.play(Clip("clip1", "file://audio.mp3"))
        fakeScheduler.flush()

        assertThat(fakeScheduler.isRepeatRunning(), equalTo(true))

        viewModel.onCleared()
        viewModel.play(Clip("clip1", "file://audio.mp3"))
        fakeScheduler.flush()
        assertThat(fakeScheduler.isRepeatRunning(), equalTo(true))
    }

    @Test
    fun playInOrder_playsClipsOneAfterTheOther_andUpdatesProgress() {
        viewModel.playInOrder(
            listOf(
                Clip("clip1", "file://audio1.mp3"),
                Clip("clip2", "file://audio2.mp3")
            )
        )
        fakeScheduler.flush()

        val captor = ArgumentCaptor.forClass(MediaPlayer.OnCompletionListener::class.java)
        verify(mediaPlayer).setOnCompletionListener(captor.capture())
        val onCompletionListener = captor.value

        verify(mediaPlayer).setDataSource("file://audio1.mp3")
        verify(mediaPlayer, times(1)).start()
        assertThat(fakeScheduler.isRepeatRunning(), equalTo(true))

        onCompletionListener.onCompletion(mediaPlayer)
        fakeScheduler.flush()
        verify(mediaPlayer).setDataSource("file://audio2.mp3")
        verify(mediaPlayer, times(2)).start()
        assertThat(fakeScheduler.isRepeatRunning(), equalTo(true))

        onCompletionListener.onCompletion(mediaPlayer)
        fakeScheduler.flush()
        verify(mediaPlayer, times(2)).start()
        assertThat(fakeScheduler.isRepeatRunning(), equalTo(false))
    }

    @Test
    fun playInOrder_whenThereIsAnErrorContinuesWithNextClip() {
        doThrow(IOException::class.java).`when`(mediaPlayer).setDataSource("file://missing.mp3")
        viewModel.playInOrder(
            listOf(
                Clip("clip1", "file://missing.mp3"),
                Clip("clip2", "file://not-missing.mp3")
            )
        )
        fakeScheduler.flush()
        fakeScheduler.flush()

        verify(mediaPlayer).setDataSource("file://not-missing.mp3")
        verify(mediaPlayer, times(1)).start()
    }

    @Test
    fun play_afterAPlayInOrder_doesNotContinuePlayingClips() {
        viewModel.playInOrder(
            listOf(
                Clip("clip1", "file://audio1.mp3"),
                Clip("clip2", "file://audio2.mp3")
            )
        )
        fakeScheduler.flush()

        viewModel.play(Clip("clip3", "file://audio3.mp3"))
        fakeScheduler.flush()

        verify(mediaPlayer, times(2)).start()
        verify(mediaPlayer).setDataSource("file://audio1.mp3")
        verify(mediaPlayer).setDataSource("file://audio3.mp3")

        val captor = ArgumentCaptor.forClass(MediaPlayer.OnCompletionListener::class.java)
        verify(mediaPlayer).setOnCompletionListener(captor.capture())
        val onCompletionListener = captor.value
        onCompletionListener.onCompletion(mediaPlayer)
        fakeScheduler.flush()

        verify(mediaPlayer, never()).setDataSource("file://audio2.mp3")
        verify(mediaPlayer, times(2)).start()
    }

    @Test
    fun isPlaying_whenNothingPlaying_is_false() {
        val isPlaying = viewModel.isPlaying("clip1")
        assertThat(isPlaying.getOrAwaitValue(), equalTo(false))
    }

    @Test
    fun isPlaying_whenClipIDPlaying_is_PLAYING() {
        val isPlaying = viewModel.isPlaying("clip1")

        viewModel.play(Clip("clip1", "file://audio.mp3"))
        fakeScheduler.flush()
        assertThat(isPlaying.getOrAwaitValue(), equalTo(true))
    }

    @Test
    fun isPlaying_whenDifferentClipIDPlaying_is_false() {
        val isPlaying = viewModel.isPlaying("clip2")

        viewModel.play(Clip("clip1", "file://other.mp3"))
        fakeScheduler.flush()
        assertThat(isPlaying.getOrAwaitValue(), equalTo(false))
    }

    @Test
    fun isPlaying_whenClipIDPlaying_thenCompleted_is_false() {
        val isPlaying = viewModel.isPlaying("clip1")
        viewModel.play(Clip("clip1", "file://audio.mp3"))
        fakeScheduler.flush()

        val captor = ArgumentCaptor.forClass(MediaPlayer.OnCompletionListener::class.java)
        verify(mediaPlayer).setOnCompletionListener(captor.capture())
        captor.value.onCompletion(mediaPlayer)
        assertThat(isPlaying.getOrAwaitValue(), equalTo(false))
    }

    @Test
    fun isPlaying_whenPlaybackFails_is_false() {
        doThrow(IOException::class.java).`when`(mediaPlayer).setDataSource("file://missing.mp3")
        val isPlaying = viewModel.isPlaying("clip1")

        viewModel.play(Clip("clip1", "file://missing.mp3"))
        fakeScheduler.flush()
        assertThat(isPlaying.getOrAwaitValue(), equalTo(false))
    }

    @Test
    fun stop_stopsMediaPlayer() {
        viewModel.play(Clip("clip1", "file://audio.mp3"))
        fakeScheduler.flush()

        viewModel.stop()
        verify(mediaPlayer).stop()
    }

    @Test
    fun stop_beforePlay_doesntCallStopOnMediaPlayer() {
        viewModel.stop()
        verify(mediaPlayer, never()).stop()
    }

    @Test
    fun stop_resetsPosition() {
        val position = viewModel.getPosition("clip1")
        viewModel.play(Clip("clip1", "file://audio.mp3"))
        fakeScheduler.flush()

        `when`(mediaPlayer.currentPosition).thenReturn(1000)
        fakeScheduler.runForeground()
        viewModel.stop()
        assertThat(position.getOrAwaitValue(), equalTo(0))
    }

    @Test
    fun background_releasesMediaPlayer() {
        viewModel.play(Clip("clip1", "file://audio.mp3"))
        fakeScheduler.flush()

        viewModel.background()
        verify(mediaPlayer).release()
    }

    @Test
    fun background_cancelsScheduler() {
        viewModel.play(Clip("clip1", "file://audio.mp3"))
        fakeScheduler.flush()

        viewModel.background()
        assertThat(fakeScheduler.isRepeatRunning(), equalTo(false))
    }

    @Test
    fun isPlaying_whenPlayingAndThenBackgrounding_is_false() {
        val isPlaying = viewModel.isPlaying("clip1")
        viewModel.play(Clip("clip1", "file://audio.mp3"))
        fakeScheduler.flush()

        viewModel.background()
        assertThat(isPlaying.getOrAwaitValue(), equalTo(false))
    }

    @Test
    fun play_afterBackground_createsANewMediaPlayer() {
        val factory = RecordingMockMediaPlayerFactory()
        val scheduler = FakeScheduler()
        val viewModel = AudioClipViewModel(factory, scheduler)
        viewModel.play(Clip("clip1", "file://audio.mp3"))
        scheduler.flush()
        assertThat(factory.createdInstances.size, equalTo(1))
        verify(factory.createdInstances[0]).start()

        viewModel.background()
        viewModel.play(Clip("clip1", "file://audio.mp3"))
        scheduler.flush()
        assertThat(factory.createdInstances.size, equalTo(2))
        verify(factory.createdInstances[1]).start()
    }

    @Test
    fun pause_pausesMediaPlayer() {
        viewModel.play(Clip("clip1", "file://audio.mp3"))
        fakeScheduler.flush()

        viewModel.pause()
        verify(mediaPlayer).pause()
    }

    @Test
    fun isPlaying_afterPause_is_false() {
        val isPlaying = viewModel.isPlaying("clip1")
        viewModel.play(Clip("clip1", "file://audio.mp3"))
        fakeScheduler.flush()

        viewModel.pause()
        assertThat(isPlaying.getOrAwaitValue(), equalTo(false))
    }

    @Test
    fun isPlaying_afterPause_andThenPlay_is_true() {
        val isPlaying = viewModel.isPlaying("clip1")
        viewModel.play(Clip("clip1", "file://audio.mp3"))
        fakeScheduler.flush()

        viewModel.pause()
        viewModel.play(Clip("clip1", "file://audio.mp3"))
        fakeScheduler.flush()

        assertThat(isPlaying.getOrAwaitValue(), equalTo(true))
    }

    @Test
    fun position_returnsMediaPlayerPositionInMilliseconds() {
        `when`(mediaPlayer.currentPosition).thenReturn(0)
        val position = viewModel.getPosition("clip1")
        assertThat(position.getOrAwaitValue(), equalTo(0))

        viewModel.play(Clip("clip1", "file://audio.mp3"))
        fakeScheduler.flush()

        `when`(mediaPlayer.currentPosition).thenReturn(1000)
        fakeScheduler.runForeground()
        assertThat(position.value, equalTo(1000))

        `when`(mediaPlayer.currentPosition).thenReturn(24135)
        fakeScheduler.runForeground()
        assertThat(position.value, equalTo(24135))
    }

    @Test
    fun position_worksWhenMultipleClipsArePlayed() {
        `when`(mediaPlayer.currentPosition).thenReturn(0)
        val position1 = viewModel.getPosition("clip1")
        val position2 = viewModel.getPosition("clip2")

        viewModel.play(Clip("clip1", "file://audio.mp3"))
        fakeScheduler.flush()

        `when`(mediaPlayer.currentPosition).thenReturn(1000)
        fakeScheduler.runForeground()
        assertThat(position1.getOrAwaitValue(), equalTo(1000))
        assertThat(position2.getOrAwaitValue(), equalTo(0))

        viewModel.play(Clip("clip2", "file://audio.mp3"))
        fakeScheduler.flush()

        `when`(mediaPlayer.currentPosition).thenReturn(2500)
        fakeScheduler.runForeground()
        assertThat(position1.getOrAwaitValue(), equalTo(1000))
        assertThat(position2.getOrAwaitValue(), equalTo(2500))
    }

    @Test
    fun setPosition_whenClipIsPlaying_seeksMediaPlayer() {
        `when`(mediaPlayer.duration).thenReturn(100000)
        viewModel.play(Clip("clip1", "file://audio.mp3"))
        fakeScheduler.flush()

        viewModel.setPosition("clip1", 54321)
        verify(mediaPlayer).seekTo(54321)
    }

    @Test
    fun setPosition_whenClipIsNotPlaying_doesNothing() {
        viewModel.setPosition("clip1", 54321)
        verify(mediaPlayer, never()).seekTo(ArgumentMatchers.anyInt())
    }

    @Test
    fun setPosition_updatesPosition() {
        val duration = viewModel.getPosition("clip1")
        viewModel.setPosition("clip1", 54321)
        assertThat(duration.getOrAwaitValue(), equalTo(54321))
    }

    @Test
    fun onCleared_releasesMediaPlayer() {
        viewModel.play(Clip("clip1", "file://audio.mp3"))
        fakeScheduler.flush()

        viewModel.onCleared()
        verify(mediaPlayer).release()
    }

    @Test
    fun onCleared_cancelsScheduler() {
        viewModel.play(Clip("clip1", "file://audio.mp3"))
        fakeScheduler.flush()

        viewModel.onCleared()
        assertThat(fakeScheduler.isRepeatRunning(), equalTo(false))
    }

    @Test
    fun whenPlaybackCompletes_cancelsScheduler() {
        viewModel.play(Clip("clip1", "file://audio.mp3"))
        fakeScheduler.flush()

        val captor = ArgumentCaptor.forClass(MediaPlayer.OnCompletionListener::class.java)
        verify(mediaPlayer).setOnCompletionListener(captor.capture())
        captor.value.onCompletion(mediaPlayer)
        assertThat(fakeScheduler.isRepeatRunning(), equalTo(false))
    }

    @Test
    fun whenPlaybackCompletes_resetsPosition() {
        val position = viewModel.getPosition("clip1")
        viewModel.play(Clip("clip1", "file://audio.mp3"))
        fakeScheduler.flush()

        `when`(mediaPlayer.currentPosition).thenReturn(1000)
        fakeScheduler.runForeground()
        val captor = ArgumentCaptor.forClass(MediaPlayer.OnCompletionListener::class.java)
        verify(mediaPlayer).setOnCompletionListener(captor.capture())
        captor.value.onCompletion(mediaPlayer)
        assertThat(position.getOrAwaitValue(), equalTo(0))
    }

    @Test
    fun error_whenPlaybackFailsBecauseOfMissingFile_is_PlaybackFailed() {
        val error = viewModel.getError()
        doThrow(IOException::class.java).`when`(mediaPlayer).setDataSource("file://missing.mp3")
        viewModel.play(Clip("clip1", "file://missing.mp3"))
        fakeScheduler.flush()

        assertThat(error.getOrAwaitValue(), equalTo<Exception?>(PlaybackFailedException("file://missing.mp3", 0)))
    }

    @Test
    fun error_whenPlaybackFailsBecauseOfInvalidFile_is_PlaybackFailed() {
        val error = viewModel.getError()
        val invalid = File.createTempFile("invalid", ".mp3")
        doThrow(IOException::class.java).`when`(mediaPlayer).setDataSource(invalid.absolutePath)
        viewModel.play(Clip("clip1", invalid.absolutePath))
        fakeScheduler.flush()

        assertThat(error.getOrAwaitValue(), equalTo<Exception?>(PlaybackFailedException(invalid.absolutePath, 1)))
    }

    @Test
    fun dismissError_removesErrorValue() {
        val error = viewModel.getError()
        doThrow(IOException::class.java).`when`(mediaPlayer).setDataSource("file://missing.mp3")
        viewModel.play(Clip("clip1", "file://missing.mp3"))
        fakeScheduler.flush()

        viewModel.errorDisplayed()
        assertThat(error.getOrAwaitValue(), equalTo<Exception?>(null))
    }

    @Test
    fun isLoading_isTrueWhenLoadingClip() {
        val loading = viewModel.isLoading()
        assertThat(loading.getOrAwaitValue(), equalTo(false))

        viewModel.play(Clip("clip1", "file://missing.mp3"))
        assertThat(loading.getOrAwaitValue(), equalTo(true))

        fakeScheduler.flush()
        assertThat(loading.getOrAwaitValue(), equalTo(false))
    }

    private class RecordingMockMediaPlayerFactory : Supplier<MediaPlayer> {
        var createdInstances: MutableList<MediaPlayer> = ArrayList()
        override fun get(): MediaPlayer {
            val mock = mock(MediaPlayer::class.java)
            createdInstances.add(mock)
            return mock
        }
    }
}


================================================
File: audio-recorder/build.gradle.kts
================================================
plugins {
    alias(libs.plugins.androidLibrary)
    alias(libs.plugins.kotlinAndroid)
    alias(libs.plugins.kotlinKapt)
}

apply(from = "../config/quality.gradle")

android {
    compileSdk = libs.versions.compileSdk.get().toInt()

    defaultConfig {
        minSdk = libs.versions.minSdk.get().toInt()

        testInstrumentationRunner = "androidx.test.runner.AndroidJUnitRunner"
        consumerProguardFiles("consumer-rules.pro")
    }

    buildTypes {
        release {
            isMinifyEnabled = false
        }
    }

    compileOptions {
        isCoreLibraryDesugaringEnabled = true
        sourceCompatibility = JavaVersion.VERSION_17
        targetCompatibility = JavaVersion.VERSION_17
    }

    testOptions {
        unitTests.isIncludeAndroidResources = true
    }
    namespace = "org.odk.collect.audiorecorder"
}

dependencies {
    coreLibraryDesugaring(libs.desugar)

    implementation(fileTree(mapOf("dir" to "libs", "include" to listOf("*.jar"))))
    implementation(project(":icons"))
    implementation(project(":strings"))
    implementation(project(":async"))
    implementation(project(":androidshared"))
    implementation(libs.kotlinStdlib)
    implementation(libs.androidxCoreKtx)
    implementation(libs.androidxAppcompat)
    implementation(libs.androidxLifecycleLivedataKtx)
    implementation(libs.dagger)
    kapt(libs.daggerCompiler)
    implementation(libs.timber)

    testImplementation(project(":androidtest"))
    testImplementation(project(":test-shared"))
    testImplementation(project(":service-test"))
    testImplementation(libs.junit)
    testImplementation(libs.robolectric)
    testImplementation(libs.androidxTestExtJunit)
    testImplementation(libs.androidxTestCoreKtx)
    testImplementation(libs.androidxTestRules)
    testImplementation(libs.androidxArchCoreTesting)
    testImplementation(libs.mockitoKotlin)
    testImplementation(libs.hamcrest)
}


================================================
File: audio-recorder/.gitignore
================================================
/build

================================================
File: audio-recorder/src/main/AndroidManifest.xml
================================================
<?xml version="1.0" encoding="utf-8"?>
<manifest xmlns:android="http://schemas.android.com/apk/res/android">

    <uses-permission android:name="android.permission.FOREGROUND_SERVICE_MICROPHONE" />

    <application>
        <service android:name=".recording.AudioRecorderService"
            android:foregroundServiceType="microphone"/>
    </application>

</manifest>


================================================
File: audio-recorder/src/main/java/org/odk/collect/audiorecorder/DaggerSetup.kt
================================================
package org.odk.collect.audiorecorder

import android.app.Application
import android.media.MediaRecorder
import dagger.BindsInstance
import dagger.Component
import dagger.Module
import dagger.Provides
import kotlinx.coroutines.Dispatchers
import org.odk.collect.async.CoroutineScheduler
import org.odk.collect.async.Scheduler
import org.odk.collect.audiorecorder.mediarecorder.AACRecordingResource
import org.odk.collect.audiorecorder.mediarecorder.AMRRecordingResource
import org.odk.collect.audiorecorder.recorder.Output
import org.odk.collect.audiorecorder.recorder.Recorder
import org.odk.collect.audiorecorder.recorder.RecordingResourceRecorder
import org.odk.collect.audiorecorder.recording.AudioRecorderService
import java.io.File
import javax.inject.Singleton

/**
 * This module follows the Android docs's multi-module example for Dagger. Any application that
 * depends on this module should implement the provider interface and return a constructed
 * component. This gives the application the opportunity to override dependencies if it wants to.
 *
 * @see [Using Dagger in multi-module apps](https://developer.android.com/training/dependency-injection/dagger-multi-module)
 */

interface AudioRecorderDependencyComponentProvider {
    val audioRecorderDependencyComponent: AudioRecorderDependencyComponent
}

@Component(modules = [AudioRecorderDependencyModule::class])
@Singleton
interface AudioRecorderDependencyComponent {

    @Component.Builder
    interface Builder {

        @BindsInstance
        fun application(application: Application): Builder

        fun dependencyModule(audioRecorderDependencyModule: AudioRecorderDependencyModule): Builder

        fun build(): AudioRecorderDependencyComponent
    }

    fun inject(activity: AudioRecorderService)
}

@Module
open class AudioRecorderDependencyModule {

    @Provides
    open fun providesCacheDir(application: Application): File {
        val externalFilesDir = application.getExternalFilesDir(null)
        return File(externalFilesDir, "recordings").also { it.mkdirs() }
    }

    @Provides
    open fun providesRecorder(cacheDir: File): Recorder {
        return RecordingResourceRecorder(cacheDir) { output ->
            when (output) {
                Output.AMR -> {
                    AMRRecordingResource(MediaRecorder(), android.os.Build.VERSION.SDK_INT)
                }

                Output.AAC -> {
                    AACRecordingResource(MediaRecorder(), android.os.Build.VERSION.SDK_INT, 64)
                }

                Output.AAC_LOW -> {
                    AACRecordingResource(MediaRecorder(), android.os.Build.VERSION.SDK_INT, 24)
                }
            }
        }
    }

    @Provides
    open fun providesScheduler(application: Application): Scheduler {
        return CoroutineScheduler(Dispatchers.Main, Dispatchers.IO)
    }
}


================================================
File: audio-recorder/src/main/java/org/odk/collect/audiorecorder/mediarecorder/MediaRecorderRecordingResource.kt
================================================
package org.odk.collect.audiorecorder.mediarecorder

import android.annotation.SuppressLint
import android.media.MediaRecorder
import org.odk.collect.audiorecorder.recorder.RecordingResource

internal abstract class MediaRecorderRecordingResource(private val mediaRecorder: MediaRecorder, private val sdk: Int) : RecordingResource {

    protected abstract fun beforePrepare(mediaRecorder: MediaRecorder)

    override fun setOutputFile(path: String) {
        mediaRecorder.setOutputFile(path)
    }

    override fun prepare() {
        beforePrepare(mediaRecorder)
        mediaRecorder.prepare()
    }

    @Throws(IllegalStateException::class)
    override fun start() {
        mediaRecorder.start()
    }

    override fun pause() {
        @SuppressLint("NewApi")
        if (sdk >= android.os.Build.VERSION_CODES.N) {
            mediaRecorder.pause()
        }
    }

    override fun resume() {
        @SuppressLint("NewApi")
        if (sdk >= android.os.Build.VERSION_CODES.N) {
            mediaRecorder.resume()
        }
    }

    override fun stop() {
        mediaRecorder.stop()
    }

    override fun release() {
        mediaRecorder.release()
    }

    override fun getMaxAmplitude(): Int {
        return mediaRecorder.maxAmplitude
    }
}

internal class AACRecordingResource(mediaRecorder: MediaRecorder, sdk: Int, private val kbitRate: Int) : MediaRecorderRecordingResource(mediaRecorder, sdk) {

    override fun beforePrepare(mediaRecorder: MediaRecorder) {
        mediaRecorder.setAudioSource(MediaRecorder.AudioSource.MIC)
        mediaRecorder.setOutputFormat(MediaRecorder.OutputFormat.MPEG_4)
        mediaRecorder.setAudioEncoder(MediaRecorder.AudioEncoder.AAC)
        mediaRecorder.setAudioSamplingRate(32000)
        mediaRecorder.setAudioEncodingBitRate(kbitRate * 1000)
    }
}

internal class AMRRecordingResource(mediaRecorder: MediaRecorder, sdk: Int) : MediaRecorderRecordingResource(mediaRecorder, sdk) {

    override fun beforePrepare(mediaRecorder: MediaRecorder) {
        mediaRecorder.setAudioSource(MediaRecorder.AudioSource.MIC)
        mediaRecorder.setOutputFormat(MediaRecorder.OutputFormat.AMR_NB)
        mediaRecorder.setAudioEncoder(MediaRecorder.AudioEncoder.AMR_NB)
        mediaRecorder.setAudioSamplingRate(8000)
        mediaRecorder.setAudioEncodingBitRate(12200)
    }

    override fun stop() {
        resume()
        super.stop()
    }
}


================================================
File: audio-recorder/src/main/java/org/odk/collect/audiorecorder/recorder/Recorder.kt
================================================
package org.odk.collect.audiorecorder.recorder

import org.odk.collect.audiorecorder.recording.MicInUseException
import org.odk.collect.audiorecorder.recording.SetupException
import java.io.File

interface Recorder {

    @Throws(SetupException::class, MicInUseException::class)
    fun start(output: Output)
    fun pause()
    fun resume()
    fun stop(): File
    fun cancel()

    val amplitude: Int
    fun isRecording(): Boolean
}

enum class Output {
    AMR,
    AAC,
    AAC_LOW
}


================================================
File: audio-recorder/src/main/java/org/odk/collect/audiorecorder/recorder/RecordingResource.kt
================================================
package org.odk.collect.audiorecorder.recorder

import java.io.IOException

/**
 * Allows faking/stubbing/mocking with our interactions with Android's MediaRecorder. Could also
 * wrap multiple implementations in the future.
 */

internal interface RecordingResource {
    fun setOutputFile(path: String)

    @Throws(IOException::class)
    fun prepare()

    @Throws(IllegalStateException::class)
    fun start()

    fun pause()
    fun resume()
    fun stop()
    fun release()
    fun getMaxAmplitude(): Int
}


================================================
File: audio-recorder/src/main/java/org/odk/collect/audiorecorder/recorder/RecordingResourceRecorder.kt
================================================
package org.odk.collect.audiorecorder.recorder

import org.odk.collect.audiorecorder.recording.MicInUseException
import org.odk.collect.audiorecorder.recording.SetupException
import timber.log.Timber
import java.io.File
import java.io.IOException

internal class RecordingResourceRecorder(private val cacheDir: File, private val recordingResourceFactory: (Output) -> RecordingResource) : Recorder {

    override val amplitude: Int
        get() = recordingResource?.getMaxAmplitude() ?: 0

    private var recordingResource: RecordingResource? = null
    private var file: File? = null

    @Throws(SetupException::class, MicInUseException::class)
    override fun start(output: Output) {
        recordingResource = recordingResourceFactory(output).also {
            val suffix = when (output) {
                Output.AMR -> ".amr"
                Output.AAC -> ".m4a"
                Output.AAC_LOW -> ".m4a"
            }

            val tempFile = try {
                File.createTempFile("recording", suffix, cacheDir)
            } catch (e: IOException) {
                throw SetupException()
            }

            it.setOutputFile(tempFile.absolutePath)
            file = tempFile

            try {
                it.prepare()
            } catch (e: IOException) {
                Timber.e(e)
                throw SetupException()
            }

            try {
                it.start()
            } catch (e: IllegalStateException) {
                throw MicInUseException()
            }
        }
    }

    override fun pause() {
        recordingResource?.pause()
    }

    override fun resume() {
        recordingResource?.resume()
    }

    override fun stop(): File {
        stopAndReleaseMediaRecorder()
        return file!!
    }

    override fun cancel() {
        stopAndReleaseMediaRecorder()
        file?.delete()
    }

    override fun isRecording(): Boolean {
        return recordingResource != null
    }

    private fun stopAndReleaseMediaRecorder() {
        recordingResource?.apply {
            stop()
            release()
        }

        recordingResource = null
    }
}


================================================
File: audio-recorder/src/main/java/org/odk/collect/audiorecorder/recording/AudioRecorder.kt
================================================
package org.odk.collect.audiorecorder.recording

import androidx.lifecycle.LiveData
import org.odk.collect.androidshared.data.Consumable
import org.odk.collect.audiorecorder.recorder.Output
import java.io.File
import java.io.Serializable

/**
 * Interface for a component that records audio. Can only record once session
 * at a time.
 */
abstract class AudioRecorder {
    abstract fun isRecording(): Boolean
    abstract fun getCurrentSession(): LiveData<RecordingSession?>
    abstract fun failedToStart(): LiveData<Consumable<Exception?>>

    abstract fun start(sessionId: Serializable, output: Output)
    abstract fun pause()
    abstract fun resume()
    abstract fun stop()

    /**
     * Stops any in progress recordings, clears recordings (returned from `getRecordings`). Should
     * be called after in-progress or finished recordings are no longer needed
     */
    abstract fun cleanUp()
}

data class RecordingSession(val id: Serializable, val file: File?, val duration: Long, val amplitude: Int, val paused: Boolean)

class SetupException : java.lang.Exception()
class MicInUseException : java.lang.Exception()


================================================
File: audio-recorder/src/main/java/org/odk/collect/audiorecorder/recording/AudioRecorderFactory.kt
================================================
package org.odk.collect.audiorecorder.recording

import android.app.Application
import org.odk.collect.androidshared.data.getState
import org.odk.collect.audiorecorder.recording.internal.ForegroundServiceAudioRecorder
import org.odk.collect.audiorecorder.recording.internal.RecordingRepository

open class AudioRecorderFactory(private val application: Application) {

    open fun create(): AudioRecorder {
        return ForegroundServiceAudioRecorder(application, RecordingRepository(application.getState()))
    }
}


================================================
File: audio-recorder/src/main/java/org/odk/collect/audiorecorder/recording/AudioRecorderService.kt
================================================
package org.odk.collect.audiorecorder.recording

import android.app.Application
import android.app.Service
import android.content.Intent
import android.os.IBinder
import org.odk.collect.androidshared.data.getState
import org.odk.collect.async.Cancellable
import org.odk.collect.async.Scheduler
import org.odk.collect.audiorecorder.AudioRecorderDependencyComponentProvider
import org.odk.collect.audiorecorder.recorder.Output
import org.odk.collect.audiorecorder.recorder.Recorder
import org.odk.collect.audiorecorder.recording.internal.RecordingForegroundServiceNotification
import org.odk.collect.audiorecorder.recording.internal.RecordingRepository
import java.io.Serializable
import javax.inject.Inject

class AudioRecorderService : Service() {

    @Inject
    internal lateinit var recorder: Recorder

    @Inject
    internal lateinit var scheduler: Scheduler

    private lateinit var recordingRepository: RecordingRepository
    private lateinit var notification: RecordingForegroundServiceNotification

    private var duration = 0L
    private var durationUpdates: Cancellable? = null
    private var amplitudeUpdates: Cancellable? = null

    override fun onCreate() {
        super.onCreate()
        val provider = applicationContext as AudioRecorderDependencyComponentProvider
        provider.audioRecorderDependencyComponent.inject(this)

        recordingRepository = RecordingRepository((applicationContext as Application).getState())
        notification = RecordingForegroundServiceNotification(this, recordingRepository)
    }

    override fun onStartCommand(intent: Intent?, flags: Int, startId: Int): Int {
        when (intent?.action) {
            ACTION_START -> {
                val sessionId 