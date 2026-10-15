package com.facebook.internal;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.app.Dialog;
import android.app.ProgressDialog;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.net.http.SslError;
import android.os.AsyncTask;
import android.os.Bundle;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import android.webkit.SslErrorHandler;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import com.facebook.AccessToken;
import com.facebook.FacebookDialogException;
import com.facebook.FacebookException;
import com.facebook.FacebookGraphResponseException;
import com.facebook.FacebookOperationCanceledException;
import com.facebook.FacebookRequestError;
import com.facebook.FacebookSdk;
import com.facebook.FacebookServiceException;
import com.facebook.GraphRequest;
import com.facebook.GraphRequestAsyncTask;
import com.facebook.GraphResponse;
import com.facebook.appevents.internal.ViewHierarchyConstants;
import com.facebook.common.R;
import com.facebook.internal.WebDialog;
import com.facebook.internal.instrument.crashshield.CrashShieldHandler;
import com.facebook.login.LoginTargetApp;
import com.facebook.share.internal.ShareConstants;
import com.facebook.share.internal.ShareInternalUtility;
import com.facebook.share.widget.ShareDialog;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Objects;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.CountDownLatch;
import java.util.regex.Pattern;
import org.json.JSONArray;
import org.json.JSONObject;
import t9.b0;

/* JADX INFO: compiled from: WebDialog.kt */
/* JADX INFO: loaded from: classes.dex */
public class WebDialog extends Dialog {
    private static final int API_EC_DIALOG_CANCEL = 4201;
    private static final int BACKGROUND_GRAY = -872415232;
    public static final Companion Companion = new Companion(null);
    private static final int DEFAULT_THEME = R.style.com_facebook_activity_theme;
    public static final boolean DISABLE_SSL_CHECK_FOR_TESTING = false;
    private static final String DISPLAY_TOUCH = "touch";
    private static final String LOG_TAG = "FacebookSDK.WebDialog";
    private static final int MAX_PADDING_SCREEN_HEIGHT = 1280;
    private static final int MAX_PADDING_SCREEN_WIDTH = 800;
    private static final double MIN_SCALE_FACTOR = 0.5d;
    private static final int NO_PADDING_SCREEN_HEIGHT = 800;
    private static final int NO_PADDING_SCREEN_WIDTH = 480;
    private static final String PLATFORM_DIALOG_PATH_REGEX = "^/(v\\d+\\.\\d+/)??dialog/.*";
    private static InitCallback initCallback;
    private static volatile int webDialogTheme;
    private FrameLayout contentFrameLayout;
    private ImageView crossImageView;
    private String expectedRedirectUrl;
    private boolean isDetached;
    private boolean isListenerCalled;
    private boolean isPageFinished;
    private OnCompleteListener onCompleteListener;
    private ProgressDialog spinner;
    private UploadStagingResourcesTask uploadTask;
    private String url;
    private WebView webView;
    private WindowManager.LayoutParams windowParams;

    /* JADX INFO: compiled from: WebDialog.kt */
    private final class DialogWebViewClient extends WebViewClient {
        final /* synthetic */ WebDialog this$0;

        public DialogWebViewClient(WebDialog webDialog) {
            t9.m.e(webDialog, "this$0");
            this.this$0 = webDialog;
        }

        @Override // android.webkit.WebViewClient
        public void onPageFinished(WebView webView, String str) {
            ProgressDialog progressDialog;
            t9.m.e(webView, ViewHierarchyConstants.VIEW_KEY);
            t9.m.e(str, "url");
            super.onPageFinished(webView, str);
            if (!this.this$0.isDetached && (progressDialog = this.this$0.spinner) != null) {
                progressDialog.dismiss();
            }
            FrameLayout frameLayout = this.this$0.contentFrameLayout;
            if (frameLayout != null) {
                frameLayout.setBackgroundColor(0);
            }
            WebView webView2 = this.this$0.getWebView();
            if (webView2 != null) {
                webView2.setVisibility(0);
            }
            ImageView imageView = this.this$0.crossImageView;
            if (imageView != null) {
                imageView.setVisibility(0);
            }
            this.this$0.isPageFinished = true;
        }

        @Override // android.webkit.WebViewClient
        public void onPageStarted(WebView webView, String str, Bitmap bitmap) {
            ProgressDialog progressDialog;
            t9.m.e(webView, ViewHierarchyConstants.VIEW_KEY);
            t9.m.e(str, "url");
            Utility utility = Utility.INSTANCE;
            Utility.logd(WebDialog.LOG_TAG, t9.m.k("Webview loading URL: ", str));
            super.onPageStarted(webView, str, bitmap);
            if (this.this$0.isDetached || (progressDialog = this.this$0.spinner) == null) {
                return;
            }
            progressDialog.show();
        }

        @Override // android.webkit.WebViewClient
        public void onReceivedError(WebView webView, int i10, String str, String str2) {
            t9.m.e(webView, ViewHierarchyConstants.VIEW_KEY);
            t9.m.e(str, "description");
            t9.m.e(str2, "failingUrl");
            super.onReceivedError(webView, i10, str, str2);
            this.this$0.sendErrorToListener(new FacebookDialogException(str, i10, str2));
        }

        @Override // android.webkit.WebViewClient
        public void onReceivedSslError(WebView webView, SslErrorHandler sslErrorHandler, SslError sslError) {
            t9.m.e(webView, ViewHierarchyConstants.VIEW_KEY);
            t9.m.e(sslErrorHandler, "handler");
            t9.m.e(sslError, "error");
            super.onReceivedSslError(webView, sslErrorHandler, sslError);
            sslErrorHandler.cancel();
            this.this$0.sendErrorToListener(new FacebookDialogException(null, -11, null));
        }

        @Override // android.webkit.WebViewClient
        public boolean shouldOverrideUrlLoading(WebView webView, String str) {
            int i10;
            t9.m.e(webView, ViewHierarchyConstants.VIEW_KEY);
            t9.m.e(str, "url");
            Utility utility = Utility.INSTANCE;
            Utility.logd(WebDialog.LOG_TAG, t9.m.k("Redirect URL: ", str));
            Uri uri = Uri.parse(str);
            boolean z10 = uri.getPath() != null && Pattern.matches(WebDialog.PLATFORM_DIALOG_PATH_REGEX, uri.getPath());
            if (!ba.p.u(str, this.this$0.expectedRedirectUrl, false, 2, null)) {
                if (ba.p.u(str, ServerProtocol.DIALOG_CANCEL_URI, false, 2, null)) {
                    this.this$0.cancel();
                    return true;
                }
                if (z10 || ba.q.x(str, "touch", false, 2, null)) {
                    return false;
                }
                try {
                    this.this$0.getContext().startActivity(new Intent("android.intent.action.VIEW", Uri.parse(str)));
                    return true;
                } catch (ActivityNotFoundException unused) {
                    return false;
                }
            }
            Bundle responseUri = this.this$0.parseResponseUri(str);
            String string = responseUri.getString("error");
            if (string == null) {
                string = responseUri.getString("error_type");
            }
            String string2 = responseUri.getString("error_msg");
            if (string2 == null) {
                string2 = responseUri.getString("error_message");
            }
            if (string2 == null) {
                string2 = responseUri.getString(NativeProtocol.BRIDGE_ARG_ERROR_DESCRIPTION);
            }
            String string3 = responseUri.getString("error_code");
            if (string3 == null || Utility.isNullOrEmpty(string3)) {
                i10 = -1;
            } else {
                try {
                    i10 = Integer.parseInt(string3);
                } catch (NumberFormatException unused2) {
                    i10 = -1;
                }
            }
            Utility utility2 = Utility.INSTANCE;
            if (Utility.isNullOrEmpty(string) && Utility.isNullOrEmpty(string2) && i10 == -1) {
                this.this$0.sendSuccessToListener(responseUri);
            } else if ((string == null || !(t9.m.a(string, "access_denied") || t9.m.a(string, "OAuthAccessDeniedException"))) && i10 != WebDialog.API_EC_DIALOG_CANCEL) {
                this.this$0.sendErrorToListener(new FacebookServiceException(new FacebookRequestError(i10, string, string2), string2));
            } else {
                this.this$0.cancel();
            }
            return true;
        }
    }

    /* JADX INFO: compiled from: WebDialog.kt */
    public interface InitCallback {
        void onInit(WebView webView);
    }

    /* JADX INFO: compiled from: WebDialog.kt */
    public interface OnCompleteListener {
        void onComplete(Bundle bundle, FacebookException facebookException);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: compiled from: WebDialog.kt */
    final class UploadStagingResourcesTask extends AsyncTask<Void, Void, String[]> {
        private final String action;
        private Exception[] exceptions;
        private final Bundle parameters;
        final /* synthetic */ WebDialog this$0;

        public UploadStagingResourcesTask(WebDialog webDialog, String str, Bundle bundle) {
            t9.m.e(webDialog, "this$0");
            t9.m.e(str, "action");
            t9.m.e(bundle, "parameters");
            this.this$0 = webDialog;
            this.action = str;
            this.parameters = bundle;
            this.exceptions = new Exception[0];
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX INFO: renamed from: doInBackground$lambda-0, reason: not valid java name */
        public static final void m122doInBackground$lambda0(String[] strArr, int i10, UploadStagingResourcesTask uploadStagingResourcesTask, CountDownLatch countDownLatch, GraphResponse graphResponse) {
            FacebookRequestError error;
            String str;
            t9.m.e(strArr, "$results");
            t9.m.e(uploadStagingResourcesTask, "this$0");
            t9.m.e(countDownLatch, "$latch");
            t9.m.e(graphResponse, "response");
            try {
                error = graphResponse.getError();
                str = "Error staging photo.";
            } catch (Exception e10) {
                uploadStagingResourcesTask.exceptions[i10] = e10;
            }
            if (error != null) {
                String errorMessage = error.getErrorMessage();
                if (errorMessage != null) {
                    str = errorMessage;
                }
                throw new FacebookGraphResponseException(graphResponse, str);
            }
            JSONObject jSONObject = graphResponse.getJSONObject();
            if (jSONObject == null) {
                throw new FacebookException("Error staging photo.");
            }
            String strOptString = jSONObject.optString(ShareConstants.MEDIA_URI);
            if (strOptString == null) {
                throw new FacebookException("Error staging photo.");
            }
            strArr[i10] = strOptString;
            countDownLatch.countDown();
        }

        @Override // android.os.AsyncTask
        public /* bridge */ /* synthetic */ String[] doInBackground(Void[] voidArr) {
            if (CrashShieldHandler.isObjectCrashing(this)) {
                return null;
            }
            try {
                if (CrashShieldHandler.isObjectCrashing(this)) {
                    return null;
                }
                try {
                    return doInBackground2(voidArr);
                } catch (Throwable th) {
                    CrashShieldHandler.handleThrowable(th, this);
                    return null;
                }
            } catch (Throwable th2) {
                CrashShieldHandler.handleThrowable(th2, this);
                return null;
            }
        }

        @Override // android.os.AsyncTask
        public /* bridge */ /* synthetic */ void onPostExecute(String[] strArr) {
            if (CrashShieldHandler.isObjectCrashing(this)) {
                return;
            }
            try {
                if (CrashShieldHandler.isObjectCrashing(this)) {
                    return;
                }
                try {
                    onPostExecute2(strArr);
                } catch (Throwable th) {
                    CrashShieldHandler.handleThrowable(th, this);
                }
            } catch (Throwable th2) {
                CrashShieldHandler.handleThrowable(th2, this);
            }
        }

        /* JADX INFO: renamed from: doInBackground, reason: avoid collision after fix types in other method */
        protected String[] doInBackground2(Void... voidArr) {
            if (CrashShieldHandler.isObjectCrashing(this)) {
                return null;
            }
            try {
                if (CrashShieldHandler.isObjectCrashing(this)) {
                    return null;
                }
                try {
                    t9.m.e(voidArr, "p0");
                    String[] stringArray = this.parameters.getStringArray(ShareConstants.WEB_DIALOG_PARAM_MEDIA);
                    if (stringArray == null) {
                        return null;
                    }
                    final String[] strArr = new String[stringArray.length];
                    this.exceptions = new Exception[stringArray.length];
                    final CountDownLatch countDownLatch = new CountDownLatch(stringArray.length);
                    ConcurrentLinkedQueue concurrentLinkedQueue = new ConcurrentLinkedQueue();
                    AccessToken currentAccessToken = AccessToken.Companion.getCurrentAccessToken();
                    final int i10 = 0;
                    try {
                        int length = stringArray.length - 1;
                        if (length >= 0) {
                            while (true) {
                                int i11 = i10 + 1;
                                if (isCancelled()) {
                                    Iterator it = concurrentLinkedQueue.iterator();
                                    while (it.hasNext()) {
                                        ((GraphRequestAsyncTask) it.next()).cancel(true);
                                    }
                                    return null;
                                }
                                Uri uri = Uri.parse(stringArray[i10]);
                                Utility utility = Utility.INSTANCE;
                                if (Utility.isWebUri(uri)) {
                                    strArr[i10] = uri.toString();
                                    countDownLatch.countDown();
                                } else {
                                    GraphRequest.Callback callback = new GraphRequest.Callback() { // from class: com.facebook.internal.v
                                        @Override // com.facebook.GraphRequest.Callback
                                        public final void onCompleted(GraphResponse graphResponse) {
                                            WebDialog.UploadStagingResourcesTask.m122doInBackground$lambda0(strArr, i10, this, countDownLatch, graphResponse);
                                        }
                                    };
                                    ShareInternalUtility shareInternalUtility = ShareInternalUtility.INSTANCE;
                                    t9.m.d(uri, ShareConstants.MEDIA_URI);
                                    concurrentLinkedQueue.add(ShareInternalUtility.newUploadStagingResourceWithImageRequest(currentAccessToken, uri, callback).executeAsync());
                                }
                                if (i11 > length) {
                                    break;
                                }
                                i10 = i11;
                            }
                        }
                        countDownLatch.await();
                        return strArr;
                    } catch (Exception unused) {
                        Iterator it2 = concurrentLinkedQueue.iterator();
                        while (it2.hasNext()) {
                            ((GraphRequestAsyncTask) it2.next()).cancel(true);
                        }
                        return null;
                    }
                } catch (Throwable th) {
                    CrashShieldHandler.handleThrowable(th, this);
                    return null;
                }
            } catch (Throwable th2) {
                CrashShieldHandler.handleThrowable(th2, this);
                return null;
            }
        }

        /* JADX INFO: renamed from: onPostExecute, reason: avoid collision after fix types in other method */
        protected void onPostExecute2(String[] strArr) {
            if (CrashShieldHandler.isObjectCrashing(this)) {
                return;
            }
            try {
                if (CrashShieldHandler.isObjectCrashing(this)) {
                    return;
                }
                try {
                    ProgressDialog progressDialog = this.this$0.spinner;
                    if (progressDialog != null) {
                        progressDialog.dismiss();
                    }
                    Exception[] excArr = this.exceptions;
                    int i10 = 0;
                    int length = excArr.length;
                    while (i10 < length) {
                        Exception exc = excArr[i10];
                        i10++;
                        if (exc != null) {
                            this.this$0.sendErrorToListener(exc);
                            return;
                        }
                    }
                    if (strArr == null) {
                        this.this$0.sendErrorToListener(new FacebookException("Failed to stage photos for web dialog"));
                        return;
                    }
                    List listA = i9.f.a(strArr);
                    if (listA.contains(null)) {
                        this.this$0.sendErrorToListener(new FacebookException("Failed to stage photos for web dialog"));
                        return;
                    }
                    Utility utility = Utility.INSTANCE;
                    Utility.putJSONValueInBundle(this.parameters, ShareConstants.WEB_DIALOG_PARAM_MEDIA, new JSONArray((Collection) listA));
                    ServerProtocol serverProtocol = ServerProtocol.INSTANCE;
                    String dialogAuthority = ServerProtocol.getDialogAuthority();
                    StringBuilder sb = new StringBuilder();
                    FacebookSdk facebookSdk = FacebookSdk.INSTANCE;
                    sb.append(FacebookSdk.getGraphApiVersion());
                    sb.append("/dialog/");
                    sb.append(this.action);
                    Uri uriBuildUri = Utility.buildUri(dialogAuthority, sb.toString(), this.parameters);
                    this.this$0.url = uriBuildUri.toString();
                    ImageView imageView = this.this$0.crossImageView;
                    if (imageView == null) {
                        throw new IllegalStateException("Required value was null.".toString());
                    }
                    this.this$0.setUpWebView((imageView.getDrawable().getIntrinsicWidth() / 2) + 1);
                } catch (Throwable th) {
                    CrashShieldHandler.handleThrowable(th, this);
                }
            } catch (Throwable th2) {
                CrashShieldHandler.handleThrowable(th2, this);
            }
        }
    }

    /* JADX INFO: compiled from: WebDialog.kt */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[LoginTargetApp.valuesCustom().length];
            iArr[LoginTargetApp.INSTAGRAM.ordinal()] = 1;
            $EnumSwitchMapping$0 = iArr;
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    protected WebDialog(Context context, String str) {
        this(context, str, Companion.getWebDialogTheme());
        t9.m.e(context, "context");
        t9.m.e(str, "url");
    }

    public /* synthetic */ WebDialog(Context context, String str, Bundle bundle, int i10, LoginTargetApp loginTargetApp, OnCompleteListener onCompleteListener, t9.g gVar) {
        this(context, str, bundle, i10, loginTargetApp, onCompleteListener);
    }

    private final void createCrossImage() {
        ImageView imageView = new ImageView(getContext());
        this.crossImageView = imageView;
        imageView.setOnClickListener(new View.OnClickListener() { // from class: com.facebook.internal.t
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                WebDialog.m119createCrossImage$lambda5(this.f5412o, view);
            }
        });
        Drawable drawable = getContext().getResources().getDrawable(R.drawable.com_facebook_close);
        ImageView imageView2 = this.crossImageView;
        if (imageView2 != null) {
            imageView2.setImageDrawable(drawable);
        }
        ImageView imageView3 = this.crossImageView;
        if (imageView3 == null) {
            return;
        }
        imageView3.setVisibility(4);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: createCrossImage$lambda-5, reason: not valid java name */
    public static final void m119createCrossImage$lambda5(WebDialog webDialog, View view) {
        t9.m.e(webDialog, "this$0");
        webDialog.cancel();
    }

    private final int getScaledSize(int i10, float f10, int i11, int i12) {
        int i13 = (int) (i10 / f10);
        double d10 = MIN_SCALE_FACTOR;
        if (i13 <= i11) {
            d10 = 1.0d;
        } else if (i13 < i12) {
            double d11 = i12 - i13;
            double d12 = i12 - i11;
            Double.isNaN(d11);
            Double.isNaN(d12);
            d10 = MIN_SCALE_FACTOR + ((d11 / d12) * MIN_SCALE_FACTOR);
        }
        double d13 = i10;
        Double.isNaN(d13);
        return (int) (d13 * d10);
    }

    public static final int getWebDialogTheme() {
        return Companion.getWebDialogTheme();
    }

    protected static final void initDefaultTheme(Context context) {
        Companion.initDefaultTheme(context);
    }

    public static final WebDialog newInstance(Context context, String str, Bundle bundle, int i10, OnCompleteListener onCompleteListener) {
        return Companion.newInstance(context, str, bundle, i10, onCompleteListener);
    }

    public static final WebDialog newInstance(Context context, String str, Bundle bundle, int i10, LoginTargetApp loginTargetApp, OnCompleteListener onCompleteListener) {
        return Companion.newInstance(context, str, bundle, i10, loginTargetApp, onCompleteListener);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: onCreate$lambda-4, reason: not valid java name */
    public static final void m120onCreate$lambda4(WebDialog webDialog, DialogInterface dialogInterface) {
        t9.m.e(webDialog, "this$0");
        webDialog.cancel();
    }

    public static final void setInitCallback(InitCallback initCallback2) {
        Companion.setInitCallback(initCallback2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    @SuppressLint({"SetJavaScriptEnabled"})
    public final void setUpWebView(int i10) {
        LinearLayout linearLayout = new LinearLayout(getContext());
        this.webView = new WebView(getContext()) { // from class: com.facebook.internal.WebDialog.setUpWebView.1
            @Override // android.webkit.WebView, android.view.View
            public void onWindowFocusChanged(boolean z10) {
                try {
                    super.onWindowFocusChanged(z10);
                } catch (NullPointerException unused) {
                }
            }
        };
        InitCallback initCallback2 = initCallback;
        if (initCallback2 != null) {
            initCallback2.onInit(getWebView());
        }
        WebView webView = this.webView;
        if (webView != null) {
            webView.setVerticalScrollBarEnabled(false);
        }
        WebView webView2 = this.webView;
        if (webView2 != null) {
            webView2.setHorizontalScrollBarEnabled(false);
        }
        WebView webView3 = this.webView;
        if (webView3 != null) {
            webView3.setWebViewClient(new DialogWebViewClient(this));
        }
        WebView webView4 = this.webView;
        WebSettings settings = webView4 == null ? null : webView4.getSettings();
        if (settings != null) {
            settings.setJavaScriptEnabled(true);
        }
        WebView webView5 = this.webView;
        if (webView5 != null) {
            String str = this.url;
            if (str == null) {
                throw new IllegalStateException("Required value was null.".toString());
            }
            webView5.loadUrl(str);
        }
        WebView webView6 = this.webView;
        if (webView6 != null) {
            webView6.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
        }
        WebView webView7 = this.webView;
        if (webView7 != null) {
            webView7.setVisibility(4);
        }
        WebView webView8 = this.webView;
        WebSettings settings2 = webView8 == null ? null : webView8.getSettings();
        if (settings2 != null) {
            settings2.setSavePassword(false);
        }
        WebView webView9 = this.webView;
        WebSettings settings3 = webView9 != null ? webView9.getSettings() : null;
        if (settings3 != null) {
            settings3.setSaveFormData(false);
        }
        WebView webView10 = this.webView;
        if (webView10 != null) {
            webView10.setFocusable(true);
        }
        WebView webView11 = this.webView;
        if (webView11 != null) {
            webView11.setFocusableInTouchMode(true);
        }
        WebView webView12 = this.webView;
        if (webView12 != null) {
            webView12.setOnTouchListener(new View.OnTouchListener() { // from class: com.facebook.internal.u
                @Override // android.view.View.OnTouchListener
                public final boolean onTouch(View view, MotionEvent motionEvent) {
                    return WebDialog.m121setUpWebView$lambda7(view, motionEvent);
                }
            });
        }
        linearLayout.setPadding(i10, i10, i10, i10);
        linearLayout.addView(this.webView);
        linearLayout.setBackgroundColor(BACKGROUND_GRAY);
        FrameLayout frameLayout = this.contentFrameLayout;
        if (frameLayout == null) {
            return;
        }
        frameLayout.addView(linearLayout);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: setUpWebView$lambda-7, reason: not valid java name */
    public static final boolean m121setUpWebView$lambda7(View view, MotionEvent motionEvent) {
        if (view.hasFocus()) {
            return false;
        }
        view.requestFocus();
        return false;
    }

    public static final void setWebDialogTheme(int i10) {
        Companion.setWebDialogTheme(i10);
    }

    @Override // android.app.Dialog, android.content.DialogInterface
    public void cancel() {
        if (this.onCompleteListener == null || this.isListenerCalled) {
            return;
        }
        sendErrorToListener(new FacebookOperationCanceledException());
    }

    @Override // android.app.Dialog, android.content.DialogInterface
    public void dismiss() {
        ProgressDialog progressDialog;
        WebView webView = this.webView;
        if (webView != null) {
            webView.stopLoading();
        }
        if (!this.isDetached && (progressDialog = this.spinner) != null && progressDialog.isShowing()) {
            progressDialog.dismiss();
        }
        super.dismiss();
    }

    public final OnCompleteListener getOnCompleteListener() {
        return this.onCompleteListener;
    }

    protected final WebView getWebView() {
        return this.webView;
    }

    protected final boolean isListenerCalled() {
        return this.isListenerCalled;
    }

    protected final boolean isPageFinished() {
        return this.isPageFinished;
    }

    @Override // android.app.Dialog, android.view.Window.Callback
    public void onAttachedToWindow() {
        WindowManager.LayoutParams layoutParams;
        WindowManager.LayoutParams attributes;
        this.isDetached = false;
        Utility utility = Utility.INSTANCE;
        Context context = getContext();
        t9.m.d(context, "context");
        if (Utility.mustFixWindowParamsForAutofill(context) && (layoutParams = this.windowParams) != null) {
            if ((layoutParams == null ? null : layoutParams.token) == null) {
                if (layoutParams != null) {
                    Activity ownerActivity = getOwnerActivity();
                    Window window = ownerActivity == null ? null : ownerActivity.getWindow();
                    layoutParams.token = (window == null || (attributes = window.getAttributes()) == null) ? null : attributes.token;
                }
                WindowManager.LayoutParams layoutParams2 = this.windowParams;
                Utility.logd(LOG_TAG, t9.m.k("Set token on onAttachedToWindow(): ", layoutParams2 != null ? layoutParams2.token : null));
            }
        }
        super.onAttachedToWindow();
    }

    @Override // android.app.Dialog
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        ProgressDialog progressDialog = new ProgressDialog(getContext());
        this.spinner = progressDialog;
        progressDialog.requestWindowFeature(1);
        ProgressDialog progressDialog2 = this.spinner;
        if (progressDialog2 != null) {
            progressDialog2.setMessage(getContext().getString(R.string.com_facebook_loading));
        }
        ProgressDialog progressDialog3 = this.spinner;
        if (progressDialog3 != null) {
            progressDialog3.setCanceledOnTouchOutside(false);
        }
        ProgressDialog progressDialog4 = this.spinner;
        if (progressDialog4 != null) {
            progressDialog4.setOnCancelListener(new DialogInterface.OnCancelListener() { // from class: com.facebook.internal.s
                @Override // android.content.DialogInterface.OnCancelListener
                public final void onCancel(DialogInterface dialogInterface) {
                    WebDialog.m120onCreate$lambda4(this.f5411o, dialogInterface);
                }
            });
        }
        requestWindowFeature(1);
        this.contentFrameLayout = new FrameLayout(getContext());
        resize();
        Window window = getWindow();
        if (window != null) {
            window.setGravity(17);
        }
        Window window2 = getWindow();
        if (window2 != null) {
            window2.setSoftInputMode(16);
        }
        createCrossImage();
        if (this.url != null) {
            ImageView imageView = this.crossImageView;
            if (imageView == null) {
                throw new IllegalStateException("Required value was null.".toString());
            }
            setUpWebView((imageView.getDrawable().getIntrinsicWidth() / 2) + 1);
        }
        FrameLayout frameLayout = this.contentFrameLayout;
        if (frameLayout != null) {
            frameLayout.addView(this.crossImageView, new ViewGroup.LayoutParams(-2, -2));
        }
        FrameLayout frameLayout2 = this.contentFrameLayout;
        if (frameLayout2 == null) {
            throw new IllegalStateException("Required value was null.".toString());
        }
        setContentView(frameLayout2);
    }

    @Override // android.app.Dialog, android.view.Window.Callback
    public void onDetachedFromWindow() {
        this.isDetached = true;
        super.onDetachedFromWindow();
    }

    @Override // android.app.Dialog, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i10, KeyEvent keyEvent) {
        t9.m.e(keyEvent, "event");
        if (i10 == 4) {
            WebView webView = this.webView;
            if (webView != null) {
                if (t9.m.a(webView == null ? null : Boolean.valueOf(webView.canGoBack()), Boolean.TRUE)) {
                    WebView webView2 = this.webView;
                    if (webView2 == null) {
                        return true;
                    }
                    webView2.goBack();
                    return true;
                }
            }
            cancel();
        }
        return super.onKeyDown(i10, keyEvent);
    }

    @Override // android.app.Dialog
    protected void onStart() {
        super.onStart();
        UploadStagingResourcesTask uploadStagingResourcesTask = this.uploadTask;
        if (uploadStagingResourcesTask != null) {
            if ((uploadStagingResourcesTask == null ? null : uploadStagingResourcesTask.getStatus()) == AsyncTask.Status.PENDING) {
                UploadStagingResourcesTask uploadStagingResourcesTask2 = this.uploadTask;
                if (uploadStagingResourcesTask2 != null) {
                    uploadStagingResourcesTask2.execute(new Void[0]);
                }
                ProgressDialog progressDialog = this.spinner;
                if (progressDialog == null) {
                    return;
                }
                progressDialog.show();
                return;
            }
        }
        resize();
    }

    @Override // android.app.Dialog
    protected void onStop() {
        UploadStagingResourcesTask uploadStagingResourcesTask = this.uploadTask;
        if (uploadStagingResourcesTask != null) {
            uploadStagingResourcesTask.cancel(true);
            ProgressDialog progressDialog = this.spinner;
            if (progressDialog != null) {
                progressDialog.dismiss();
            }
        }
        super.onStop();
    }

    @Override // android.app.Dialog, android.view.Window.Callback
    public void onWindowAttributesChanged(WindowManager.LayoutParams layoutParams) {
        t9.m.e(layoutParams, NativeProtocol.WEB_DIALOG_PARAMS);
        if (layoutParams.token == null) {
            this.windowParams = layoutParams;
        }
        super.onWindowAttributesChanged(layoutParams);
    }

    public Bundle parseResponseUri(String str) {
        Uri uri = Uri.parse(str);
        Utility utility = Utility.INSTANCE;
        Bundle urlQueryString = Utility.parseUrlQueryString(uri.getQuery());
        urlQueryString.putAll(Utility.parseUrlQueryString(uri.getFragment()));
        return urlQueryString;
    }

    public final void resize() {
        Object systemService = getContext().getSystemService("window");
        Objects.requireNonNull(systemService, "null cannot be cast to non-null type android.view.WindowManager");
        Display defaultDisplay = ((WindowManager) systemService).getDefaultDisplay();
        DisplayMetrics displayMetrics = new DisplayMetrics();
        defaultDisplay.getMetrics(displayMetrics);
        int i10 = displayMetrics.widthPixels;
        int i11 = displayMetrics.heightPixels;
        int i12 = i10 < i11 ? i10 : i11;
        if (i10 < i11) {
            i10 = i11;
        }
        int iMin = Math.min(getScaledSize(i12, displayMetrics.density, NO_PADDING_SCREEN_WIDTH, 800), displayMetrics.widthPixels);
        int iMin2 = Math.min(getScaledSize(i10, displayMetrics.density, 800, MAX_PADDING_SCREEN_HEIGHT), displayMetrics.heightPixels);
        Window window = getWindow();
        if (window == null) {
            return;
        }
        window.setLayout(iMin, iMin2);
    }

    protected final void sendErrorToListener(Throwable th) {
        if (this.onCompleteListener == null || this.isListenerCalled) {
            return;
        }
        this.isListenerCalled = true;
        FacebookException facebookException = th instanceof FacebookException ? (FacebookException) th : new FacebookException(th);
        OnCompleteListener onCompleteListener = this.onCompleteListener;
        if (onCompleteListener != null) {
            onCompleteListener.onComplete(null, facebookException);
        }
        dismiss();
    }

    protected final void sendSuccessToListener(Bundle bundle) {
        OnCompleteListener onCompleteListener = this.onCompleteListener;
        if (onCompleteListener == null || this.isListenerCalled) {
            return;
        }
        this.isListenerCalled = true;
        if (onCompleteListener != null) {
            onCompleteListener.onComplete(bundle, null);
        }
        dismiss();
    }

    protected final void setExpectedRedirectUrl(String str) {
        t9.m.e(str, "expectedRedirectUrl");
        this.expectedRedirectUrl = str;
    }

    public final void setOnCompleteListener(OnCompleteListener onCompleteListener) {
        this.onCompleteListener = onCompleteListener;
    }

    /* JADX INFO: compiled from: WebDialog.kt */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(t9.g gVar) {
            this();
        }

        public final int getWebDialogTheme() {
            Validate validate = Validate.INSTANCE;
            Validate.sdkInitialized();
            return WebDialog.webDialogTheme;
        }

        protected final void initDefaultTheme(Context context) {
            if (context == null) {
                return;
            }
            try {
                ApplicationInfo applicationInfo = context.getPackageManager().getApplicationInfo(context.getPackageName(), 128);
                if ((applicationInfo == null ? null : applicationInfo.metaData) != null && WebDialog.webDialogTheme == 0) {
                    setWebDialogTheme(applicationInfo.metaData.getInt(FacebookSdk.WEB_DIALOG_THEME));
                }
            } catch (PackageManager.NameNotFoundException unused) {
            }
        }

        public final WebDialog newInstance(Context context, String str, Bundle bundle, int i10, OnCompleteListener onCompleteListener) {
            t9.m.e(context, "context");
            WebDialog.initDefaultTheme(context);
            return new WebDialog(context, str, bundle, i10, LoginTargetApp.FACEBOOK, onCompleteListener, null);
        }

        public final void setInitCallback(InitCallback initCallback) {
            WebDialog.initCallback = initCallback;
        }

        public final void setWebDialogTheme(int i10) {
            if (i10 == 0) {
                i10 = WebDialog.DEFAULT_THEME;
            }
            WebDialog.webDialogTheme = i10;
        }

        public final WebDialog newInstance(Context context, String str, Bundle bundle, int i10, LoginTargetApp loginTargetApp, OnCompleteListener onCompleteListener) {
            t9.m.e(context, "context");
            t9.m.e(loginTargetApp, "targetApp");
            WebDialog.initDefaultTheme(context);
            return new WebDialog(context, str, bundle, i10, loginTargetApp, onCompleteListener, null);
        }
    }

    private WebDialog(Context context, String str, int i10) {
        super(context, i10 == 0 ? Companion.getWebDialogTheme() : i10);
        this.expectedRedirectUrl = ServerProtocol.DIALOG_REDIRECT_URI;
        this.url = str;
    }

    private WebDialog(Context context, String str, Bundle bundle, int i10, LoginTargetApp loginTargetApp, OnCompleteListener onCompleteListener) {
        Uri uriBuildUri;
        super(context, i10 == 0 ? Companion.getWebDialogTheme() : i10);
        String str2 = ServerProtocol.DIALOG_REDIRECT_URI;
        this.expectedRedirectUrl = ServerProtocol.DIALOG_REDIRECT_URI;
        bundle = bundle == null ? new Bundle() : bundle;
        Utility utility = Utility.INSTANCE;
        str2 = Utility.isChromeOS(context) ? ServerProtocol.DIALOG_REDIRECT_CHROME_OS_URI : str2;
        this.expectedRedirectUrl = str2;
        bundle.putString(ServerProtocol.DIALOG_PARAM_REDIRECT_URI, str2);
        bundle.putString(ServerProtocol.DIALOG_PARAM_DISPLAY, "touch");
        FacebookSdk facebookSdk = FacebookSdk.INSTANCE;
        bundle.putString("client_id", FacebookSdk.getApplicationId());
        b0 b0Var = b0.f35528a;
        String str3 = String.format(Locale.ROOT, "android-%s", Arrays.copyOf(new Object[]{FacebookSdk.getSdkVersion()}, 1));
        t9.m.d(str3, "java.lang.String.format(locale, format, *args)");
        bundle.putString(ServerProtocol.DIALOG_PARAM_SDK_VERSION, str3);
        this.onCompleteListener = onCompleteListener;
        if (t9.m.a(str, ShareDialog.WEB_SHARE_DIALOG) && bundle.containsKey(ShareConstants.WEB_DIALOG_PARAM_MEDIA)) {
            this.uploadTask = new UploadStagingResourcesTask(this, str, bundle);
            return;
        }
        if (WhenMappings.$EnumSwitchMapping$0[loginTargetApp.ordinal()] == 1) {
            ServerProtocol serverProtocol = ServerProtocol.INSTANCE;
            uriBuildUri = Utility.buildUri(ServerProtocol.getInstagramDialogAuthority(), ServerProtocol.INSTAGRAM_OAUTH_PATH, bundle);
        } else {
            ServerProtocol serverProtocol2 = ServerProtocol.INSTANCE;
            uriBuildUri = Utility.buildUri(ServerProtocol.getDialogAuthority(), FacebookSdk.getGraphApiVersion() + "/dialog/" + ((Object) str), bundle);
        }
        this.url = uriBuildUri.toString();
    }

    /* JADX INFO: compiled from: WebDialog.kt */
    public static class Builder {
        private AccessToken accessToken;
        private String action;
        private String applicationId;
        private Context context;
        private OnCompleteListener listener;
        private Bundle parameters;
        private int theme;

        public Builder(Context context, String str, Bundle bundle) {
            t9.m.e(context, "context");
            t9.m.e(str, "action");
            AccessToken.Companion companion = AccessToken.Companion;
            this.accessToken = companion.getCurrentAccessToken();
            if (!companion.isCurrentAccessTokenActive()) {
                Utility utility = Utility.INSTANCE;
                String metadataApplicationId = Utility.getMetadataApplicationId(context);
                if (metadataApplicationId == null) {
                    throw new FacebookException("Attempted to create a builder without a valid access token or a valid default Application ID.");
                }
                this.applicationId = metadataApplicationId;
            }
            finishInit(context, str, bundle);
        }

        private final void finishInit(Context context, String str, Bundle bundle) {
            this.context = context;
            this.action = str;
            if (bundle != null) {
                this.parameters = bundle;
            } else {
                this.parameters = new Bundle();
            }
        }

        public WebDialog build() {
            AccessToken accessToken = this.accessToken;
            if (accessToken != null) {
                Bundle bundle = this.parameters;
                if (bundle != null) {
                    bundle.putString("app_id", accessToken == null ? null : accessToken.getApplicationId());
                }
                Bundle bundle2 = this.parameters;
                if (bundle2 != null) {
                    AccessToken accessToken2 = this.accessToken;
                    bundle2.putString("access_token", accessToken2 != null ? accessToken2.getToken() : null);
                }
            } else {
                Bundle bundle3 = this.parameters;
                if (bundle3 != null) {
                    bundle3.putString("app_id", this.applicationId);
                }
            }
            Companion companion = WebDialog.Companion;
            Context context = this.context;
            if (context != null) {
                return companion.newInstance(context, this.action, this.parameters, this.theme, this.listener);
            }
            throw new IllegalStateException("Required value was null.".toString());
        }

        public final String getApplicationId() {
            return this.applicationId;
        }

        public final Context getContext() {
            return this.context;
        }

        public final OnCompleteListener getListener() {
            return this.listener;
        }

        public final Bundle getParameters() {
            return this.parameters;
        }

        public final int getTheme() {
            return this.theme;
        }

        public final Builder setOnCompleteListener(OnCompleteListener onCompleteListener) {
            this.listener = onCompleteListener;
            return this;
        }

        public final Builder setTheme(int i10) {
            this.theme = i10;
            return this;
        }

        public Builder(Context context, String str, String str2, Bundle bundle) {
            t9.m.e(context, "context");
            t9.m.e(str2, "action");
            if (str == null) {
                Utility utility = Utility.INSTANCE;
                str = Utility.getMetadataApplicationId(context);
            }
            Validate validate = Validate.INSTANCE;
            this.applicationId = Validate.notNullOrEmpty(str, "applicationId");
            finishInit(context, str2, bundle);
        }
    }
}
