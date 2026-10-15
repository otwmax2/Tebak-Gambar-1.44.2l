package com.facebook;

import android.app.Application;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.Signature;
import android.os.AsyncTask;
import android.util.Base64;
import android.util.Log;
import com.facebook.GraphRequest;
import com.facebook.Profile;
import com.facebook.appevents.AppEventsLogger;
import com.facebook.appevents.AppEventsManager;
import com.facebook.appevents.internal.ActivityLifecycleTracker;
import com.facebook.appevents.internal.AppEventsLoggerUtility;
import com.facebook.appevents.ondeviceprocessing.OnDeviceProcessingManager;
import com.facebook.internal.AttributionIdentifiers;
import com.facebook.internal.BoltsMeasurementEventListener;
import com.facebook.internal.FeatureManager;
import com.facebook.internal.FetchedAppSettingsManager;
import com.facebook.internal.LockOnGetVariable;
import com.facebook.internal.NativeProtocol;
import com.facebook.internal.ServerProtocol;
import com.facebook.internal.Utility;
import com.facebook.internal.Validate;
import com.facebook.internal.instrument.InstrumentManager;
import com.facebook.internal.instrument.crashshield.CrashShieldHandler;
import i9.i0;
import java.io.File;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import java.util.Locale;
import java.util.Set;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
import java.util.concurrent.FutureTask;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.locks.ReentrantLock;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import t9.b0;

/* JADX INFO: compiled from: FacebookSdk.kt */
/* JADX INFO: loaded from: classes.dex */
public final class FacebookSdk {
    public static final String ADVERTISER_ID_COLLECTION_ENABLED_PROPERTY = "com.facebook.sdk.AdvertiserIDCollectionEnabled";
    public static final String APPLICATION_ID_PROPERTY = "com.facebook.sdk.ApplicationId";
    public static final String APPLICATION_NAME_PROPERTY = "com.facebook.sdk.ApplicationName";
    public static final String APP_EVENT_PREFERENCES = "com.facebook.sdk.appEventPreferences";
    private static final String ATTRIBUTION_PREFERENCES = "com.facebook.sdk.attributionTracking";
    public static final String AUTO_INIT_ENABLED_PROPERTY = "com.facebook.sdk.AutoInitEnabled";
    public static final String AUTO_LOG_APP_EVENTS_ENABLED_PROPERTY = "com.facebook.sdk.AutoLogAppEventsEnabled";
    public static final String CALLBACK_OFFSET_CHANGED_AFTER_INIT = "The callback request code offset can't be updated once the SDK is initialized. Call FacebookSdk.setCallbackRequestCodeOffset inside your Application.onCreate method";
    public static final String CALLBACK_OFFSET_NEGATIVE = "The callback request code offset can't be negative.";
    public static final String CALLBACK_OFFSET_PROPERTY = "com.facebook.sdk.CallbackOffset";
    public static final String CLIENT_TOKEN_PROPERTY = "com.facebook.sdk.ClientToken";
    public static final String CLOUDBRIDGE_SAVED_CREDENTIALS = "com.facebook.sdk.CloudBridgeSavedCredentials";
    public static final String CODELESS_DEBUG_LOG_ENABLED_PROPERTY = "com.facebook.sdk.CodelessDebugLogEnabled";
    public static final String DATA_PROCESSING_OPTIONS_PREFERENCES = "com.facebook.sdk.DataProcessingOptions";
    public static final String DATA_PROCESSION_OPTIONS = "data_processing_options";
    public static final String DATA_PROCESSION_OPTIONS_COUNTRY = "data_processing_options_country";
    public static final String DATA_PROCESSION_OPTIONS_STATE = "data_processing_options_state";
    public static final String FACEBOOK_COM = "facebook.com";
    public static final String FB_GG = "fb.gg";
    public static final String GAMING = "gaming";
    public static final String INSTAGRAM = "instagram";
    public static final String INSTAGRAM_COM = "instagram.com";
    private static final int MAX_REQUEST_CODE_RANGE = 100;
    public static final String MONITOR_ENABLED_PROPERTY = "com.facebook.sdk.MonitorEnabled";
    private static final String PUBLISH_ACTIVITY_PATH = "%s/activities";
    public static final String WEB_DIALOG_THEME = "com.facebook.sdk.WebDialogTheme";
    private static volatile String appClientToken;
    private static Context applicationContext;
    private static volatile String applicationId;
    private static volatile String applicationName;
    public static boolean bypassAppSwitch;
    private static LockOnGetVariable<File> cacheDir;
    private static volatile Boolean codelessDebugLogEnabled;
    private static Executor executor;
    private static volatile String facebookDomain;
    private static String graphApiVersion;
    private static GraphRequestCreator graphRequestCreator;
    public static boolean hasCustomTabsPrefetching;
    public static boolean ignoreAppSwitchToLoggedOut;
    private static volatile String instagramDomain;
    private static volatile boolean isDebugEnabledField;
    private static boolean isFullyInitialized;
    private static boolean isLegacyTokenUpgradeSupported;
    private static final AtomicBoolean sdkInitialized;
    public static final FacebookSdk INSTANCE = new FacebookSdk();
    private static final String TAG = FacebookSdk.class.getCanonicalName();
    private static final HashSet<LoggingBehavior> loggingBehaviors = i0.c(LoggingBehavior.DEVELOPER_ERRORS);
    private static AtomicLong onProgressThreshold = new AtomicLong(65536);
    private static final int DEFAULT_CALLBACK_REQUEST_CODE_OFFSET = 64206;
    private static int callbackRequestCodeOffset = DEFAULT_CALLBACK_REQUEST_CODE_OFFSET;
    private static final ReentrantLock LOCK = new ReentrantLock();

    /* JADX INFO: compiled from: FacebookSdk.kt */
    public interface GraphRequestCreator {
        GraphRequest createPostRequest(AccessToken accessToken, String str, JSONObject jSONObject, GraphRequest.Callback callback);
    }

    /* JADX INFO: compiled from: FacebookSdk.kt */
    public interface InitializeCallback {
        void onInitialized();
    }

    static {
        ServerProtocol serverProtocol = ServerProtocol.INSTANCE;
        graphApiVersion = ServerProtocol.getDefaultAPIVersion();
        sdkInitialized = new AtomicBoolean(false);
        instagramDomain = INSTAGRAM_COM;
        facebookDomain = FACEBOOK_COM;
        graphRequestCreator = new GraphRequestCreator() { // from class: com.facebook.h
            @Override // com.facebook.FacebookSdk.GraphRequestCreator
            public final GraphRequest createPostRequest(AccessToken accessToken, String str, JSONObject jSONObject, GraphRequest.Callback callback) {
                return FacebookSdk.m6graphRequestCreator$lambda0(accessToken, str, jSONObject, callback);
            }
        };
    }

    private FacebookSdk() {
    }

    public static final void addLoggingBehavior(LoggingBehavior loggingBehavior) {
        t9.m.e(loggingBehavior, "behavior");
        HashSet<LoggingBehavior> hashSet = loggingBehaviors;
        synchronized (hashSet) {
            hashSet.add(loggingBehavior);
            INSTANCE.updateGraphDebugBehavior();
            h9.t tVar = h9.t.f30301a;
        }
    }

    public static final void clearLoggingBehaviors() {
        HashSet<LoggingBehavior> hashSet = loggingBehaviors;
        synchronized (hashSet) {
            hashSet.clear();
            h9.t tVar = h9.t.f30301a;
        }
    }

    public static final void fullyInitialize() {
        isFullyInitialized = true;
    }

    public static final boolean getAdvertiserIDCollectionEnabled() {
        UserSettingsManager userSettingsManager = UserSettingsManager.INSTANCE;
        return UserSettingsManager.getAdvertiserIDCollectionEnabled();
    }

    public static final Context getApplicationContext() {
        Validate validate = Validate.INSTANCE;
        Validate.sdkInitialized();
        Context context = applicationContext;
        if (context != null) {
            return context;
        }
        t9.m.p("applicationContext");
        throw null;
    }

    public static final String getApplicationId() {
        Validate validate = Validate.INSTANCE;
        Validate.sdkInitialized();
        String str = applicationId;
        if (str != null) {
            return str;
        }
        throw new FacebookException("A valid Facebook app id must be set in the AndroidManifest.xml or set by calling FacebookSdk.setApplicationId before initializing the sdk.");
    }

    public static final String getApplicationName() {
        Validate validate = Validate.INSTANCE;
        Validate.sdkInitialized();
        return applicationName;
    }

    public static final String getApplicationSignature(Context context) {
        PackageManager packageManager;
        if (CrashShieldHandler.isObjectCrashing(FacebookSdk.class)) {
            return null;
        }
        try {
            Validate validate = Validate.INSTANCE;
            Validate.sdkInitialized();
            if (context == null || (packageManager = context.getPackageManager()) == null) {
                return null;
            }
            try {
                PackageInfo packageInfo = packageManager.getPackageInfo(context.getPackageName(), 64);
                Signature[] signatureArr = packageInfo.signatures;
                if (signatureArr != null) {
                    if (!(signatureArr.length == 0)) {
                        MessageDigest messageDigest = MessageDigest.getInstance("SHA-1");
                        messageDigest.update(packageInfo.signatures[0].toByteArray());
                        return Base64.encodeToString(messageDigest.digest(), 9);
                    }
                }
            } catch (PackageManager.NameNotFoundException | NoSuchAlgorithmException unused) {
            }
            return null;
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, FacebookSdk.class);
            return null;
        }
    }

    public static final boolean getAutoInitEnabled() {
        UserSettingsManager userSettingsManager = UserSettingsManager.INSTANCE;
        return UserSettingsManager.getAutoInitEnabled();
    }

    public static final boolean getAutoLogAppEventsEnabled() {
        UserSettingsManager userSettingsManager = UserSettingsManager.INSTANCE;
        return UserSettingsManager.getAutoLogAppEventsEnabled();
    }

    public static final File getCacheDir() {
        Validate validate = Validate.INSTANCE;
        Validate.sdkInitialized();
        LockOnGetVariable<File> lockOnGetVariable = cacheDir;
        if (lockOnGetVariable != null) {
            return lockOnGetVariable.getValue();
        }
        t9.m.p("cacheDir");
        throw null;
    }

    public static final int getCallbackRequestCodeOffset() {
        Validate validate = Validate.INSTANCE;
        Validate.sdkInitialized();
        return callbackRequestCodeOffset;
    }

    public static final String getClientToken() {
        Validate validate = Validate.INSTANCE;
        Validate.sdkInitialized();
        String str = appClientToken;
        if (str != null) {
            return str;
        }
        throw new FacebookException("A valid Facebook client token must be set in the AndroidManifest.xml or set by calling FacebookSdk.setClientToken before initializing the sdk. Visit https://developers.facebook.com/docs/android/getting-started#add-app_id for more information.");
    }

    public static final boolean getCodelessDebugLogEnabled() {
        Validate validate = Validate.INSTANCE;
        Validate.sdkInitialized();
        Boolean bool = codelessDebugLogEnabled;
        if (bool == null) {
            return false;
        }
        return bool.booleanValue();
    }

    public static final boolean getCodelessSetupEnabled() {
        UserSettingsManager userSettingsManager = UserSettingsManager.INSTANCE;
        return UserSettingsManager.getCodelessSetupEnabled();
    }

    public static final Executor getExecutor() {
        ReentrantLock reentrantLock = LOCK;
        reentrantLock.lock();
        try {
            if (executor == null) {
                executor = AsyncTask.THREAD_POOL_EXECUTOR;
            }
            h9.t tVar = h9.t.f30301a;
            reentrantLock.unlock();
            Executor executor2 = executor;
            if (executor2 != null) {
                return executor2;
            }
            throw new IllegalStateException("Required value was null.".toString());
        } catch (Throwable th) {
            reentrantLock.unlock();
            throw th;
        }
    }

    public static final String getFacebookDomain() {
        return facebookDomain;
    }

    public static final String getFacebookGamingDomain() {
        return "fb.gg";
    }

    public static final String getGraphApiVersion() {
        Utility utility = Utility.INSTANCE;
        String str = TAG;
        b0 b0Var = b0.f35528a;
        String str2 = String.format("getGraphApiVersion: %s", Arrays.copyOf(new Object[]{graphApiVersion}, 1));
        t9.m.d(str2, "java.lang.String.format(format, *args)");
        Utility.logd(str, str2);
        return graphApiVersion;
    }

    public static final String getGraphDomain() {
        AccessToken currentAccessToken = AccessToken.Companion.getCurrentAccessToken();
        String graphDomain = currentAccessToken != null ? currentAccessToken.getGraphDomain() : null;
        Utility utility = Utility.INSTANCE;
        return Utility.getGraphDomainFromTokenDomain(graphDomain);
    }

    public static final String getInstagramDomain() {
        return instagramDomain;
    }

    public static final boolean getLimitEventAndDataUsage(Context context) {
        t9.m.e(context, "context");
        Validate validate = Validate.INSTANCE;
        Validate.sdkInitialized();
        return context.getSharedPreferences(APP_EVENT_PREFERENCES, 0).getBoolean("limitEventUsage", false);
    }

    public static final Set<LoggingBehavior> getLoggingBehaviors() {
        Set<LoggingBehavior> setUnmodifiableSet;
        HashSet<LoggingBehavior> hashSet = loggingBehaviors;
        synchronized (hashSet) {
            setUnmodifiableSet = Collections.unmodifiableSet(new HashSet(hashSet));
            t9.m.d(setUnmodifiableSet, "unmodifiableSet(HashSet(loggingBehaviors))");
        }
        return setUnmodifiableSet;
    }

    public static final boolean getMonitorEnabled() {
        UserSettingsManager userSettingsManager = UserSettingsManager.INSTANCE;
        return UserSettingsManager.getMonitorEnabled();
    }

    public static final long getOnProgressThreshold() {
        Validate validate = Validate.INSTANCE;
        Validate.sdkInitialized();
        return onProgressThreshold.get();
    }

    public static final String getSdkVersion() {
        return FacebookSdkVersion.BUILD;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: graphRequestCreator$lambda-0, reason: not valid java name */
    public static final GraphRequest m6graphRequestCreator$lambda0(AccessToken accessToken, String str, JSONObject jSONObject, GraphRequest.Callback callback) {
        return GraphRequest.Companion.newPostRequest(accessToken, str, jSONObject, callback);
    }

    public static final boolean isDebugEnabled() {
        return isDebugEnabledField;
    }

    public static final boolean isFacebookRequestCode(int i10) {
        int i11 = callbackRequestCodeOffset;
        return i10 >= i11 && i10 < i11 + 100;
    }

    public static final synchronized boolean isFullyInitialized() {
        return isFullyInitialized;
    }

    public static final boolean isInitialized() {
        return sdkInitialized.get();
    }

    public static final boolean isLegacyTokenUpgradeSupported() {
        return isLegacyTokenUpgradeSupported;
    }

    /* JADX WARN: Removed duplicated region for block: B:9:0x0016  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static final boolean isLoggingBehaviorEnabled(com.facebook.LoggingBehavior r2) {
        /*
            java.lang.String r0 = "behavior"
            t9.m.e(r2, r0)
            java.util.HashSet<com.facebook.LoggingBehavior> r0 = com.facebook.FacebookSdk.loggingBehaviors
            monitor-enter(r0)
            boolean r1 = isDebugEnabled()     // Catch: java.lang.Throwable -> L19
            if (r1 == 0) goto L16
            boolean r2 = r0.contains(r2)     // Catch: java.lang.Throwable -> L19
            if (r2 == 0) goto L16
            r2 = 1
            goto L17
        L16:
            r2 = 0
        L17:
            monitor-exit(r0)
            return r2
        L19:
            r2 = move-exception
            monitor-exit(r0)
            throw r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.FacebookSdk.isLoggingBehaviorEnabled(com.facebook.LoggingBehavior):boolean");
    }

    public static final void loadDefaultsFromMetadata$facebook_core_release(Context context) {
        if (context == null) {
            return;
        }
        try {
            ApplicationInfo applicationInfo = context.getPackageManager().getApplicationInfo(context.getPackageName(), 128);
            t9.m.d(applicationInfo, "try {\n          context.packageManager.getApplicationInfo(\n              context.packageName, PackageManager.GET_META_DATA)\n        } catch (e: PackageManager.NameNotFoundException) {\n          return\n        }");
            if (applicationInfo.metaData == null) {
                return;
            }
            if (applicationId == null) {
                Object obj = applicationInfo.metaData.get(APPLICATION_ID_PROPERTY);
                if (obj instanceof String) {
                    String str = (String) obj;
                    Locale locale = Locale.ROOT;
                    t9.m.d(locale, "ROOT");
                    String lowerCase = str.toLowerCase(locale);
                    t9.m.d(lowerCase, "(this as java.lang.String).toLowerCase(locale)");
                    if (ba.p.u(lowerCase, "fb", false, 2, null)) {
                        String strSubstring = str.substring(2);
                        t9.m.d(strSubstring, "(this as java.lang.String).substring(startIndex)");
                        applicationId = strSubstring;
                    } else {
                        applicationId = str;
                    }
                } else if (obj instanceof Number) {
                    throw new FacebookException("App Ids cannot be directly placed in the manifest.They must be prefixed by 'fb' or be placed in the string resource file.");
                }
            }
            if (applicationName == null) {
                applicationName = applicationInfo.metaData.getString(APPLICATION_NAME_PROPERTY);
            }
            if (appClientToken == null) {
                appClientToken = applicationInfo.metaData.getString(CLIENT_TOKEN_PROPERTY);
            }
            if (callbackRequestCodeOffset == DEFAULT_CALLBACK_REQUEST_CODE_OFFSET) {
                callbackRequestCodeOffset = applicationInfo.metaData.getInt(CALLBACK_OFFSET_PROPERTY, DEFAULT_CALLBACK_REQUEST_CODE_OFFSET);
            }
            if (codelessDebugLogEnabled == null) {
                codelessDebugLogEnabled = Boolean.valueOf(applicationInfo.metaData.getBoolean(CODELESS_DEBUG_LOG_ENABLED_PROPERTY, false));
            }
        } catch (PackageManager.NameNotFoundException unused) {
        }
    }

    private final void publishInstallAndWaitForResponse(Context context, String str) {
        try {
            if (CrashShieldHandler.isObjectCrashing(this)) {
                return;
            }
            try {
                AttributionIdentifiers attributionIdentifiers = AttributionIdentifiers.Companion.getAttributionIdentifiers(context);
                SharedPreferences sharedPreferences = context.getSharedPreferences(ATTRIBUTION_PREFERENCES, 0);
                String strK = t9.m.k(str, "ping");
                long j10 = sharedPreferences.getLong(strK, 0L);
                try {
                    AppEventsLoggerUtility appEventsLoggerUtility = AppEventsLoggerUtility.INSTANCE;
                    JSONObject jSONObjectForGraphAPICall = AppEventsLoggerUtility.getJSONObjectForGraphAPICall(AppEventsLoggerUtility.GraphAPIActivityType.MOBILE_INSTALL_EVENT, attributionIdentifiers, AppEventsLogger.Companion.getAnonymousAppDeviceGUID(context), getLimitEventAndDataUsage(context), context);
                    b0 b0Var = b0.f35528a;
                    String str2 = String.format(PUBLISH_ACTIVITY_PATH, Arrays.copyOf(new Object[]{str}, 1));
                    t9.m.d(str2, "java.lang.String.format(format, *args)");
                    GraphRequest graphRequestCreatePostRequest = graphRequestCreator.createPostRequest(null, str2, jSONObjectForGraphAPICall, null);
                    if (j10 == 0 && graphRequestCreatePostRequest.executeAndWait().getError() == null) {
                        SharedPreferences.Editor editorEdit = sharedPreferences.edit();
                        editorEdit.putLong(strK, System.currentTimeMillis());
                        editorEdit.apply();
                    }
                } catch (JSONException e10) {
                    throw new FacebookException("An error occurred while publishing install.", e10);
                }
            } catch (Exception e11) {
                Utility utility = Utility.INSTANCE;
                Utility.logd("Facebook-publish", e11);
            }
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, this);
        }
    }

    public static final void publishInstallAsync(Context context, final String str) {
        if (CrashShieldHandler.isObjectCrashing(FacebookSdk.class)) {
            return;
        }
        try {
            t9.m.e(context, "context");
            t9.m.e(str, "applicationId");
            final Context applicationContext2 = context.getApplicationContext();
            getExecutor().execute(new Runnable() { // from class: com.facebook.n
                @Override // java.lang.Runnable
                public final void run() {
                    FacebookSdk.m7publishInstallAsync$lambda15(applicationContext2, str);
                }
            });
            FeatureManager featureManager = FeatureManager.INSTANCE;
            if (FeatureManager.isEnabled(FeatureManager.Feature.OnDeviceEventProcessing)) {
                OnDeviceProcessingManager onDeviceProcessingManager = OnDeviceProcessingManager.INSTANCE;
                if (OnDeviceProcessingManager.isOnDeviceProcessingEnabled()) {
                    OnDeviceProcessingManager.sendInstallEventAsync(str, ATTRIBUTION_PREFERENCES);
                }
            }
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, FacebookSdk.class);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: publishInstallAsync$lambda-15, reason: not valid java name */
    public static final void m7publishInstallAsync$lambda15(Context context, String str) {
        t9.m.e(str, "$applicationId");
        FacebookSdk facebookSdk = INSTANCE;
        t9.m.d(context, "applicationContext");
        facebookSdk.publishInstallAndWaitForResponse(context, str);
    }

    public static final void removeLoggingBehavior(LoggingBehavior loggingBehavior) {
        t9.m.e(loggingBehavior, "behavior");
        HashSet<LoggingBehavior> hashSet = loggingBehaviors;
        synchronized (hashSet) {
            hashSet.remove(loggingBehavior);
        }
    }

    public static final synchronized void sdkInitialize(Context context, int i10) {
        t9.m.e(context, "applicationContext");
        sdkInitialize(context, i10, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: sdkInitialize$lambda-3, reason: not valid java name */
    public static final File m8sdkInitialize$lambda3() {
        Context context = applicationContext;
        if (context != null) {
            return context.getCacheDir();
        }
        t9.m.p("applicationContext");
        throw null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: sdkInitialize$lambda-4, reason: not valid java name */
    public static final void m9sdkInitialize$lambda4(boolean z10) {
        if (z10) {
            InstrumentManager instrumentManager = InstrumentManager.INSTANCE;
            InstrumentManager.start();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: sdkInitialize$lambda-5, reason: not valid java name */
    public static final void m10sdkInitialize$lambda5(boolean z10) {
        if (z10) {
            AppEventsManager appEventsManager = AppEventsManager.INSTANCE;
            AppEventsManager.start();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: sdkInitialize$lambda-6, reason: not valid java name */
    public static final void m11sdkInitialize$lambda6(boolean z10) {
        if (z10) {
            hasCustomTabsPrefetching = true;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: sdkInitialize$lambda-7, reason: not valid java name */
    public static final void m12sdkInitialize$lambda7(boolean z10) {
        if (z10) {
            ignoreAppSwitchToLoggedOut = true;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: sdkInitialize$lambda-8, reason: not valid java name */
    public static final void m13sdkInitialize$lambda8(boolean z10) {
        if (z10) {
            bypassAppSwitch = true;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: sdkInitialize$lambda-9, reason: not valid java name */
    public static final Void m14sdkInitialize$lambda9(InitializeCallback initializeCallback) {
        AccessTokenManager.Companion.getInstance().loadCurrentAccessToken();
        ProfileManager.Companion.getInstance().loadCurrentProfile();
        if (AccessToken.Companion.isCurrentAccessTokenActive()) {
            Profile.Companion companion = Profile.Companion;
            if (companion.getCurrentProfile() == null) {
                companion.fetchProfileForCurrentAccessToken();
            }
        }
        if (initializeCallback != null) {
            initializeCallback.onInitialized();
        }
        AppEventsLogger.Companion companion2 = AppEventsLogger.Companion;
        companion2.initializeLib(getApplicationContext(), applicationId);
        UserSettingsManager userSettingsManager = UserSettingsManager.INSTANCE;
        UserSettingsManager.logIfAutoAppLinkEnabled();
        Context applicationContext2 = getApplicationContext().getApplicationContext();
        t9.m.d(applicationContext2, "getApplicationContext().applicationContext");
        companion2.newLogger(applicationContext2).flush();
        return null;
    }

    public static final void setAdvertiserIDCollectionEnabled(boolean z10) {
        UserSettingsManager userSettingsManager = UserSettingsManager.INSTANCE;
        UserSettingsManager.setAdvertiserIDCollectionEnabled(z10);
    }

    public static final void setApplicationId(String str) {
        t9.m.e(str, "applicationId");
        Validate validate = Validate.INSTANCE;
        Validate.notEmpty(str, "applicationId");
        applicationId = str;
    }

    public static final void setApplicationName(String str) {
        applicationName = str;
    }

    public static final void setAutoInitEnabled(boolean z10) {
        UserSettingsManager userSettingsManager = UserSettingsManager.INSTANCE;
        UserSettingsManager.setAutoInitEnabled(z10);
        if (z10) {
            fullyInitialize();
        }
    }

    public static final void setAutoLogAppEventsEnabled(boolean z10) {
        UserSettingsManager userSettingsManager = UserSettingsManager.INSTANCE;
        UserSettingsManager.setAutoLogAppEventsEnabled(z10);
        if (z10) {
            Application application = (Application) getApplicationContext();
            ActivityLifecycleTracker activityLifecycleTracker = ActivityLifecycleTracker.INSTANCE;
            ActivityLifecycleTracker.startTracking(application, getApplicationId());
        }
    }

    public static final void setCacheDir(File file) {
        t9.m.e(file, "cacheDir");
        cacheDir = new LockOnGetVariable<>(file);
    }

    public static final void setClientToken(String str) {
        appClientToken = str;
    }

    public static final void setCodelessDebugLogEnabled(boolean z10) {
        codelessDebugLogEnabled = Boolean.valueOf(z10);
    }

    public static final void setDataProcessingOptions(String[] strArr) {
        if (CrashShieldHandler.isObjectCrashing(FacebookSdk.class)) {
            return;
        }
        try {
            setDataProcessingOptions(strArr, 0, 0);
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, FacebookSdk.class);
        }
    }

    public static final void setExecutor(Executor executor2) {
        t9.m.e(executor2, "executor");
        ReentrantLock reentrantLock = LOCK;
        reentrantLock.lock();
        try {
            executor = executor2;
            h9.t tVar = h9.t.f30301a;
        } finally {
            reentrantLock.unlock();
        }
    }

    public static final void setFacebookDomain(String str) {
        t9.m.e(str, "facebookDomain");
        Log.w(TAG, "WARNING: Calling setFacebookDomain from non-DEBUG code.");
        facebookDomain = str;
    }

    public static final void setGraphApiVersion(String str) {
        t9.m.e(str, "graphApiVersion");
        Log.w(TAG, "WARNING: Calling setGraphApiVersion from non-DEBUG code.");
        Utility utility = Utility.INSTANCE;
        if (Utility.isNullOrEmpty(str) || t9.m.a(graphApiVersion, str)) {
            return;
        }
        graphApiVersion = str;
    }

    public static final void setGraphRequestCreator$facebook_core_release(GraphRequestCreator graphRequestCreator2) {
        t9.m.e(graphRequestCreator2, "graphRequestCreator");
        graphRequestCreator = graphRequestCreator2;
    }

    public static final void setIsDebugEnabled(boolean z10) {
        isDebugEnabledField = z10;
    }

    public static final void setLegacyTokenUpgradeSupported(boolean z10) {
        isLegacyTokenUpgradeSupported = z10;
    }

    public static final void setLimitEventAndDataUsage(Context context, boolean z10) {
        t9.m.e(context, "context");
        context.getSharedPreferences(APP_EVENT_PREFERENCES, 0).edit().putBoolean("limitEventUsage", z10).apply();
    }

    public static final void setMonitorEnabled(boolean z10) {
        UserSettingsManager userSettingsManager = UserSettingsManager.INSTANCE;
        UserSettingsManager.setMonitorEnabled(z10);
    }

    public static final void setOnProgressThreshold(long j10) {
        onProgressThreshold.set(j10);
    }

    private final void updateGraphDebugBehavior() {
        HashSet<LoggingBehavior> hashSet = loggingBehaviors;
        if (hashSet.contains(LoggingBehavior.GRAPH_API_DEBUG_INFO)) {
            LoggingBehavior loggingBehavior = LoggingBehavior.GRAPH_API_DEBUG_WARNING;
            if (hashSet.contains(loggingBehavior)) {
                return;
            }
            hashSet.add(loggingBehavior);
        }
    }

    public static final synchronized void sdkInitialize(Context context, int i10, InitializeCallback initializeCallback) {
        t9.m.e(context, "applicationContext");
        if (sdkInitialized.get() && i10 != callbackRequestCodeOffset) {
            throw new FacebookException(CALLBACK_OFFSET_CHANGED_AFTER_INIT);
        }
        if (i10 >= 0) {
            callbackRequestCodeOffset = i10;
            sdkInitialize(context, initializeCallback);
        } else {
            throw new FacebookException(CALLBACK_OFFSET_NEGATIVE);
        }
    }

    public static final void setDataProcessingOptions(String[] strArr, int i10, int i11) {
        if (CrashShieldHandler.isObjectCrashing(FacebookSdk.class)) {
            return;
        }
        if (strArr == null) {
            try {
                strArr = new String[0];
            } catch (Throwable th) {
                CrashShieldHandler.handleThrowable(th, FacebookSdk.class);
                return;
            }
        }
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put(DATA_PROCESSION_OPTIONS, new JSONArray((Collection) i9.g.s(strArr)));
            jSONObject.put(DATA_PROCESSION_OPTIONS_COUNTRY, i10);
            jSONObject.put(DATA_PROCESSION_OPTIONS_STATE, i11);
            Context context = applicationContext;
            if (context != null) {
                context.getSharedPreferences(DATA_PROCESSING_OPTIONS_PREFERENCES, 0).edit().putString(DATA_PROCESSION_OPTIONS, jSONObject.toString()).apply();
            } else {
                t9.m.p("applicationContext");
                throw null;
            }
        } catch (JSONException unused) {
        }
    }

    public static final synchronized void sdkInitialize(Context context) {
        t9.m.e(context, "applicationContext");
        sdkInitialize(context, (InitializeCallback) null);
    }

    public static final synchronized void sdkInitialize(Context context, final InitializeCallback initializeCallback) {
        t9.m.e(context, "applicationContext");
        AtomicBoolean atomicBoolean = sdkInitialized;
        if (atomicBoolean.get()) {
            if (initializeCallback != null) {
                initializeCallback.onInitialized();
            }
            return;
        }
        Validate validate = Validate.INSTANCE;
        Validate.hasFacebookActivity(context, false);
        Validate.hasInternetPermissions(context, false);
        Context applicationContext2 = context.getApplicationContext();
        t9.m.d(applicationContext2, "applicationContext.applicationContext");
        applicationContext = applicationContext2;
        AppEventsLogger.Companion.getAnonymousAppDeviceGUID(context);
        Context context2 = applicationContext;
        if (context2 != null) {
            loadDefaultsFromMetadata$facebook_core_release(context2);
            String str = applicationId;
            if (!(str == null || str.length() == 0)) {
                String str2 = appClientToken;
                if (!(str2 == null || str2.length() == 0)) {
                    atomicBoolean.set(true);
                    if (getAutoInitEnabled()) {
                        fullyInitialize();
                    }
                    Context context3 = applicationContext;
                    if (context3 != null) {
                        if (context3 instanceof Application) {
                            UserSettingsManager userSettingsManager = UserSettingsManager.INSTANCE;
                            if (UserSettingsManager.getAutoLogAppEventsEnabled()) {
                                ActivityLifecycleTracker activityLifecycleTracker = ActivityLifecycleTracker.INSTANCE;
                                Context context4 = applicationContext;
                                if (context4 == null) {
                                    t9.m.p("applicationContext");
                                    throw null;
                                }
                                ActivityLifecycleTracker.startTracking((Application) context4, applicationId);
                            }
                        }
                        FetchedAppSettingsManager fetchedAppSettingsManager = FetchedAppSettingsManager.INSTANCE;
                        FetchedAppSettingsManager.loadAppSettingsAsync();
                        NativeProtocol nativeProtocol = NativeProtocol.INSTANCE;
                        NativeProtocol.updateAllAvailableProtocolVersionsAsync();
                        BoltsMeasurementEventListener.Companion companion = BoltsMeasurementEventListener.Companion;
                        Context context5 = applicationContext;
                        if (context5 != null) {
                            companion.getInstance(context5);
                            cacheDir = new LockOnGetVariable<>((Callable) new Callable() { // from class: com.facebook.p
                                @Override // java.util.concurrent.Callable
                                public final Object call() {
                                    return FacebookSdk.m8sdkInitialize$lambda3();
                                }
                            });
                            FeatureManager featureManager = FeatureManager.INSTANCE;
                            FeatureManager.checkFeature(FeatureManager.Feature.Instrument, new FeatureManager.Callback() { // from class: com.facebook.i
                                @Override // com.facebook.internal.FeatureManager.Callback
                                public final void onCompleted(boolean z10) {
                                    FacebookSdk.m9sdkInitialize$lambda4(z10);
                                }
                            });
                            FeatureManager.checkFeature(FeatureManager.Feature.AppEvents, new FeatureManager.Callback() { // from class: com.facebook.l
                                @Override // com.facebook.internal.FeatureManager.Callback
                                public final void onCompleted(boolean z10) {
                                    FacebookSdk.m10sdkInitialize$lambda5(z10);
                                }
                            });
                            FeatureManager.checkFeature(FeatureManager.Feature.ChromeCustomTabsPrefetching, new FeatureManager.Callback() { // from class: com.facebook.m
                                @Override // com.facebook.internal.FeatureManager.Callback
                                public final void onCompleted(boolean z10) {
                                    FacebookSdk.m11sdkInitialize$lambda6(z10);
                                }
                            });
                            FeatureManager.checkFeature(FeatureManager.Feature.IgnoreAppSwitchToLoggedOut, new FeatureManager.Callback() { // from class: com.facebook.j
                                @Override // com.facebook.internal.FeatureManager.Callback
                                public final void onCompleted(boolean z10) {
                                    FacebookSdk.m12sdkInitialize$lambda7(z10);
                                }
                            });
                            FeatureManager.checkFeature(FeatureManager.Feature.BypassAppSwitch, new FeatureManager.Callback() { // from class: com.facebook.k
                                @Override // com.facebook.internal.FeatureManager.Callback
                                public final void onCompleted(boolean z10) {
                                    FacebookSdk.m13sdkInitialize$lambda8(z10);
                                }
                            });
                            getExecutor().execute(new FutureTask(new Callable() { // from class: com.facebook.o
                                @Override // java.util.concurrent.Callable
                                public final Object call() {
                                    return FacebookSdk.m14sdkInitialize$lambda9(initializeCallback);
                                }
                            }));
                            return;
                        }
                        t9.m.p("applicationContext");
                        throw null;
                    }
                    t9.m.p("applicationContext");
                    throw null;
                }
                throw new FacebookException("A valid Facebook app client token must be set in the AndroidManifest.xml or set by calling FacebookSdk.setClientToken before initializing the sdk.");
            }
            throw new FacebookException("A valid Facebook app id must be set in the AndroidManifest.xml or set by calling FacebookSdk.setApplicationId before initializing the sdk.");
        }
        t9.m.p("applicationContext");
        throw null;
    }
}
