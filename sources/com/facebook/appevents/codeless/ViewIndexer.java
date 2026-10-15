package com.facebook.appevents.codeless;

import android.app.Activity;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.util.Base64;
import android.util.Log;
import android.view.View;
import com.facebook.AccessToken;
import com.facebook.FacebookSdk;
import com.facebook.GraphRequest;
import com.facebook.GraphResponse;
import com.facebook.LoggingBehavior;
import com.facebook.appevents.codeless.ViewIndexer;
import com.facebook.appevents.codeless.internal.Constants;
import com.facebook.appevents.codeless.internal.UnityReflection;
import com.facebook.appevents.codeless.internal.ViewHierarchy;
import com.facebook.appevents.internal.AppEventUtility;
import com.facebook.appevents.internal.ViewHierarchyConstants;
import com.facebook.internal.InternalSettings;
import com.facebook.internal.Logger;
import com.facebook.internal.ServerProtocol;
import com.facebook.internal.Utility;
import com.facebook.internal.instrument.crashshield.CrashShieldHandler;
import com.vungle.mediation.BuildConfig;
import java.io.ByteArrayOutputStream;
import java.lang.ref.WeakReference;
import java.util.Arrays;
import java.util.Locale;
import java.util.Timer;
import java.util.TimerTask;
import java.util.concurrent.Callable;
import java.util.concurrent.FutureTask;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.TimeUnit;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import t9.b0;
import t9.m;

/* JADX INFO: compiled from: ViewIndexer.kt */
/* JADX INFO: loaded from: classes.dex */
public final class ViewIndexer {
    private static final String APP_VERSION_PARAM = "app_version";
    public static final Companion Companion = new Companion(null);
    private static final String PLATFORM_PARAM = "platform";
    private static final String REQUEST_TYPE = "request_type";
    private static final String SUCCESS = "success";
    private static final String TAG;
    private static final String TREE_PARAM = "tree";
    private static ViewIndexer instance;
    private final WeakReference<Activity> activityReference;
    private Timer indexingTimer;
    private String previousDigest;
    private final Handler uiThreadHandler;

    /* JADX INFO: compiled from: ViewIndexer.kt */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(t9.g gVar) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX INFO: renamed from: buildAppIndexingRequest$lambda-0, reason: not valid java name */
        public static final void m53buildAppIndexingRequest$lambda0(GraphResponse graphResponse) {
            m.e(graphResponse, "it");
            Logger.Companion.log(LoggingBehavior.APP_EVENTS, ViewIndexer.access$getTAG$cp(), "App index sent to FB!");
        }

        public final GraphRequest buildAppIndexingRequest(String str, AccessToken accessToken, String str2, String str3) {
            m.e(str3, "requestType");
            if (str == null) {
                return null;
            }
            GraphRequest.Companion companion = GraphRequest.Companion;
            b0 b0Var = b0.f35528a;
            String str4 = String.format(Locale.US, "%s/app_indexing", Arrays.copyOf(new Object[]{str2}, 1));
            m.d(str4, "java.lang.String.format(locale, format, *args)");
            GraphRequest graphRequestNewPostRequest = companion.newPostRequest(accessToken, str4, null, null);
            Bundle parameters = graphRequestNewPostRequest.getParameters();
            if (parameters == null) {
                parameters = new Bundle();
            }
            parameters.putString(ViewIndexer.TREE_PARAM, str);
            AppEventUtility appEventUtility = AppEventUtility.INSTANCE;
            parameters.putString(ViewIndexer.APP_VERSION_PARAM, AppEventUtility.getAppVersion());
            parameters.putString(ViewIndexer.PLATFORM_PARAM, "android");
            parameters.putString(ViewIndexer.REQUEST_TYPE, str3);
            if (m.a(str3, Constants.APP_INDEXING)) {
                CodelessManager codelessManager = CodelessManager.INSTANCE;
                parameters.putString(Constants.DEVICE_SESSION_ID, CodelessManager.getCurrentDeviceSessionID$facebook_core_release());
            }
            graphRequestNewPostRequest.setParameters(parameters);
            graphRequestNewPostRequest.setCallback(new GraphRequest.Callback() { // from class: com.facebook.appevents.codeless.g
                @Override // com.facebook.GraphRequest.Callback
                public final void onCompleted(GraphResponse graphResponse) {
                    ViewIndexer.Companion.m53buildAppIndexingRequest$lambda0(graphResponse);
                }
            });
            return graphRequestNewPostRequest;
        }

        public final void sendToServerUnityInstance(String str) {
            m.e(str, ViewIndexer.TREE_PARAM);
            ViewIndexer viewIndexerAccess$getInstance$cp = ViewIndexer.access$getInstance$cp();
            if (viewIndexerAccess$getInstance$cp == null) {
                return;
            }
            ViewIndexer.access$sendToServer(viewIndexerAccess$getInstance$cp, str);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: compiled from: ViewIndexer.kt */
    static final class ScreenshotTaker implements Callable<String> {
        private final WeakReference<View> rootView;

        public ScreenshotTaker(View view) {
            m.e(view, "rootView");
            this.rootView = new WeakReference<>(view);
        }

        @Override // java.util.concurrent.Callable
        public String call() {
            View view = this.rootView.get();
            if (view == null || view.getWidth() == 0 || view.getHeight() == 0) {
                return BuildConfig.FLAVOR;
            }
            Bitmap bitmapCreateBitmap = Bitmap.createBitmap(view.getWidth(), view.getHeight(), Bitmap.Config.RGB_565);
            view.draw(new Canvas(bitmapCreateBitmap));
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            bitmapCreateBitmap.compress(Bitmap.CompressFormat.JPEG, 10, byteArrayOutputStream);
            String strEncodeToString = Base64.encodeToString(byteArrayOutputStream.toByteArray(), 2);
            m.d(strEncodeToString, "encodeToString(outputStream.toByteArray(), Base64.NO_WRAP)");
            return strEncodeToString;
        }
    }

    static {
        String canonicalName = ViewIndexer.class.getCanonicalName();
        if (canonicalName == null) {
            canonicalName = BuildConfig.FLAVOR;
        }
        TAG = canonicalName;
    }

    public ViewIndexer(Activity activity) {
        m.e(activity, "activity");
        this.activityReference = new WeakReference<>(activity);
        this.previousDigest = null;
        this.uiThreadHandler = new Handler(Looper.getMainLooper());
        instance = this;
    }

    public static final /* synthetic */ WeakReference access$getActivityReference$p(ViewIndexer viewIndexer) {
        if (CrashShieldHandler.isObjectCrashing(ViewIndexer.class)) {
            return null;
        }
        try {
            return viewIndexer.activityReference;
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, ViewIndexer.class);
            return null;
        }
    }

    public static final /* synthetic */ ViewIndexer access$getInstance$cp() {
        if (CrashShieldHandler.isObjectCrashing(ViewIndexer.class)) {
            return null;
        }
        try {
            return instance;
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, ViewIndexer.class);
            return null;
        }
    }

    public static final /* synthetic */ String access$getTAG$cp() {
        if (CrashShieldHandler.isObjectCrashing(ViewIndexer.class)) {
            return null;
        }
        try {
            return TAG;
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, ViewIndexer.class);
            return null;
        }
    }

    public static final /* synthetic */ Handler access$getUiThreadHandler$p(ViewIndexer viewIndexer) {
        if (CrashShieldHandler.isObjectCrashing(ViewIndexer.class)) {
            return null;
        }
        try {
            return viewIndexer.uiThreadHandler;
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, ViewIndexer.class);
            return null;
        }
    }

    public static final /* synthetic */ void access$sendToServer(ViewIndexer viewIndexer, String str) {
        if (CrashShieldHandler.isObjectCrashing(ViewIndexer.class)) {
            return;
        }
        try {
            viewIndexer.sendToServer(str);
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, ViewIndexer.class);
        }
    }

    public static final GraphRequest buildAppIndexingRequest(String str, AccessToken accessToken, String str2, String str3) {
        if (CrashShieldHandler.isObjectCrashing(ViewIndexer.class)) {
            return null;
        }
        try {
            return Companion.buildAppIndexingRequest(str, accessToken, str2, str3);
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, ViewIndexer.class);
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: schedule$lambda-0, reason: not valid java name */
    public static final void m51schedule$lambda0(ViewIndexer viewIndexer, TimerTask timerTask) {
        if (CrashShieldHandler.isObjectCrashing(ViewIndexer.class)) {
            return;
        }
        try {
            m.e(viewIndexer, "this$0");
            m.e(timerTask, "$indexingTask");
            try {
                Timer timer = viewIndexer.indexingTimer;
                if (timer != null) {
                    timer.cancel();
                }
                viewIndexer.previousDigest = null;
                Timer timer2 = new Timer();
                timer2.scheduleAtFixedRate(timerTask, 0L, 1000L);
                viewIndexer.indexingTimer = timer2;
            } catch (Exception e10) {
                Log.e(TAG, "Error scheduling indexing job", e10);
            }
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, ViewIndexer.class);
        }
    }

    private final void sendToServer(final String str) {
        if (CrashShieldHandler.isObjectCrashing(this)) {
            return;
        }
        try {
            FacebookSdk facebookSdk = FacebookSdk.INSTANCE;
            FacebookSdk.getExecutor().execute(new Runnable() { // from class: com.facebook.appevents.codeless.f
                @Override // java.lang.Runnable
                public final void run() {
                    ViewIndexer.m52sendToServer$lambda1(str, this);
                }
            });
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, this);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: sendToServer$lambda-1, reason: not valid java name */
    public static final void m52sendToServer$lambda1(String str, ViewIndexer viewIndexer) {
        if (CrashShieldHandler.isObjectCrashing(ViewIndexer.class)) {
            return;
        }
        try {
            m.e(str, "$tree");
            m.e(viewIndexer, "this$0");
            Utility utility = Utility.INSTANCE;
            String strMd5hash = Utility.md5hash(str);
            AccessToken currentAccessToken = AccessToken.Companion.getCurrentAccessToken();
            if (strMd5hash == null || !m.a(strMd5hash, viewIndexer.previousDigest)) {
                Companion companion = Companion;
                FacebookSdk facebookSdk = FacebookSdk.INSTANCE;
                viewIndexer.processRequest(companion.buildAppIndexingRequest(str, currentAccessToken, FacebookSdk.getApplicationId(), Constants.APP_INDEXING), strMd5hash);
            }
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, ViewIndexer.class);
        }
    }

    public static final void sendToServerUnityInstance(String str) {
        if (CrashShieldHandler.isObjectCrashing(ViewIndexer.class)) {
            return;
        }
        try {
            Companion.sendToServerUnityInstance(str);
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, ViewIndexer.class);
        }
    }

    public final void processRequest(GraphRequest graphRequest, String str) {
        if (CrashShieldHandler.isObjectCrashing(this) || graphRequest == null) {
            return;
        }
        try {
            GraphResponse graphResponseExecuteAndWait = graphRequest.executeAndWait();
            try {
                JSONObject jSONObject = graphResponseExecuteAndWait.getJSONObject();
                if (jSONObject == null) {
                    Log.e(TAG, m.k("Error sending UI component tree to Facebook: ", graphResponseExecuteAndWait.getError()));
                    return;
                }
                if (m.a(ServerProtocol.DIALOG_RETURN_SCOPES_TRUE, jSONObject.optString("success"))) {
                    Logger.Companion.log(LoggingBehavior.APP_EVENTS, TAG, "Successfully send UI component tree to server");
                    this.previousDigest = str;
                }
                if (jSONObject.has(Constants.APP_INDEXING_ENABLED)) {
                    boolean z10 = jSONObject.getBoolean(Constants.APP_INDEXING_ENABLED);
                    CodelessManager codelessManager = CodelessManager.INSTANCE;
                    CodelessManager.updateAppIndexing$facebook_core_release(z10);
                }
            } catch (JSONException e10) {
                Log.e(TAG, "Error decoding server response.", e10);
            }
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, this);
        }
    }

    public final void schedule() {
        if (CrashShieldHandler.isObjectCrashing(this)) {
            return;
        }
        try {
            final TimerTask timerTask = new TimerTask() { // from class: com.facebook.appevents.codeless.ViewIndexer$schedule$indexingTask$1
                @Override // java.util.TimerTask, java.lang.Runnable
                public void run() {
                    try {
                        Activity activity = (Activity) ViewIndexer.access$getActivityReference$p(this.this$0).get();
                        AppEventUtility appEventUtility = AppEventUtility.INSTANCE;
                        View rootView = AppEventUtility.getRootView(activity);
                        if (activity != null && rootView != null) {
                            String simpleName = activity.getClass().getSimpleName();
                            CodelessManager codelessManager = CodelessManager.INSTANCE;
                            if (CodelessManager.getIsAppIndexingEnabled$facebook_core_release()) {
                                InternalSettings internalSettings = InternalSettings.INSTANCE;
                                if (InternalSettings.isUnityApp()) {
                                    UnityReflection unityReflection = UnityReflection.INSTANCE;
                                    UnityReflection.captureViewHierarchy();
                                    return;
                                }
                                FutureTask futureTask = new FutureTask(new ViewIndexer.ScreenshotTaker(rootView));
                                ViewIndexer.access$getUiThreadHandler$p(this.this$0).post(futureTask);
                                String str = BuildConfig.FLAVOR;
                                try {
                                    str = (String) futureTask.get(1L, TimeUnit.SECONDS);
                                } catch (Exception e10) {
                                    Log.e(ViewIndexer.access$getTAG$cp(), "Failed to take screenshot.", e10);
                                }
                                JSONObject jSONObject = new JSONObject();
                                try {
                                    jSONObject.put(ViewHierarchyConstants.SCREEN_NAME_KEY, simpleName);
                                    jSONObject.put("screenshot", str);
                                    JSONArray jSONArray = new JSONArray();
                                    ViewHierarchy viewHierarchy = ViewHierarchy.INSTANCE;
                                    jSONArray.put(ViewHierarchy.getDictionaryOfView(rootView));
                                    jSONObject.put(ViewHierarchyConstants.VIEW_KEY, jSONArray);
                                } catch (JSONException unused) {
                                    Log.e(ViewIndexer.access$getTAG$cp(), "Failed to create JSONObject");
                                }
                                String string = jSONObject.toString();
                                m.d(string, "viewTree.toString()");
                                ViewIndexer.access$sendToServer(this.this$0, string);
                            }
                        }
                    } catch (Exception e11) {
                        Log.e(ViewIndexer.access$getTAG$cp(), "UI Component tree indexing failure!", e11);
                    }
                }
            };
            try {
                FacebookSdk facebookSdk = FacebookSdk.INSTANCE;
                FacebookSdk.getExecutor().execute(new Runnable() { // from class: com.facebook.appevents.codeless.e
                    @Override // java.lang.Runnable
                    public final void run() {
                        ViewIndexer.m51schedule$lambda0(this.f5268o, timerTask);
                    }
                });
            } catch (RejectedExecutionException e10) {
                Log.e(TAG, "Error scheduling indexing job", e10);
            }
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, this);
        }
    }

    public final void unschedule() {
        if (CrashShieldHandler.isObjectCrashing(this)) {
            return;
        }
        try {
            if (this.activityReference.get() == null) {
                return;
            }
            try {
                Timer timer = this.indexingTimer;
                if (timer != null) {
                    timer.cancel();
                }
                this.indexingTimer = null;
            } catch (Exception e10) {
                Log.e(TAG, "Error unscheduling indexing job", e10);
            }
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, this);
        }
    }
}
