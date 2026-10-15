package com.facebook.internal;

import android.content.Context;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.webkit.WebView;
import com.facebook.internal.WebDialog;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: FacebookWebFallbackDialog.kt */
/* JADX INFO: loaded from: classes.dex */
public final class FacebookWebFallbackDialog extends WebDialog {
    private static final int OS_BACK_BUTTON_RESPONSE_TIMEOUT_MILLISECONDS = 1500;
    private boolean waitingForDialogToClose;
    public static final Companion Companion = new Companion(null);
    private static final String TAG = FacebookWebFallbackDialog.class.getName();

    /* JADX INFO: compiled from: FacebookWebFallbackDialog.kt */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(t9.g gVar) {
            this();
        }

        public final FacebookWebFallbackDialog newInstance(Context context, String str, String str2) {
            t9.m.e(context, "context");
            t9.m.e(str, "url");
            t9.m.e(str2, "expectedRedirectUrl");
            WebDialog.Companion companion = WebDialog.Companion;
            WebDialog.initDefaultTheme(context);
            return new FacebookWebFallbackDialog(context, str, str2, null);
        }
    }

    private FacebookWebFallbackDialog(Context context, String str, String str2) {
        super(context, str);
        setExpectedRedirectUrl(str2);
    }

    public /* synthetic */ FacebookWebFallbackDialog(Context context, String str, String str2, t9.g gVar) {
        this(context, str, str2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: cancel$lambda-0, reason: not valid java name */
    public static final void m102cancel$lambda0(FacebookWebFallbackDialog facebookWebFallbackDialog) {
        t9.m.e(facebookWebFallbackDialog, "this$0");
        super.cancel();
    }

    public static final FacebookWebFallbackDialog newInstance(Context context, String str, String str2) {
        return Companion.newInstance(context, str, str2);
    }

    @Override // com.facebook.internal.WebDialog, android.app.Dialog, android.content.DialogInterface
    public void cancel() {
        WebView webView = getWebView();
        if (!isPageFinished() || isListenerCalled() || webView == null || !webView.isShown()) {
            super.cancel();
        } else {
            if (this.waitingForDialogToClose) {
                return;
            }
            this.waitingForDialogToClose = true;
            webView.loadUrl(t9.m.k("javascript:", "(function() {  var event = document.createEvent('Event');  event.initEvent('fbPlatformDialogMustClose',true,true);  document.dispatchEvent(event);})();"));
            new Handler(Looper.getMainLooper()).postDelayed(new Runnable() { // from class: com.facebook.internal.d
                @Override // java.lang.Runnable
                public final void run() {
                    FacebookWebFallbackDialog.m102cancel$lambda0(this.f5385o);
                }
            }, 1500L);
        }
    }

    @Override // com.facebook.internal.WebDialog
    public Bundle parseResponseUri(String str) {
        Uri uri = Uri.parse(str);
        Utility utility = Utility.INSTANCE;
        Bundle urlQueryString = Utility.parseUrlQueryString(uri.getQuery());
        String string = urlQueryString.getString(ServerProtocol.FALLBACK_DIALOG_PARAM_BRIDGE_ARGS);
        urlQueryString.remove(ServerProtocol.FALLBACK_DIALOG_PARAM_BRIDGE_ARGS);
        if (!Utility.isNullOrEmpty(string)) {
            try {
                JSONObject jSONObject = new JSONObject(string);
                BundleJSONConverter bundleJSONConverter = BundleJSONConverter.INSTANCE;
                urlQueryString.putBundle(NativeProtocol.EXTRA_PROTOCOL_BRIDGE_ARGS, BundleJSONConverter.convertToBundle(jSONObject));
            } catch (JSONException e10) {
                Utility utility2 = Utility.INSTANCE;
                Utility.logd(TAG, "Unable to parse bridge_args JSON", e10);
            }
        }
        String string2 = urlQueryString.getString(ServerProtocol.FALLBACK_DIALOG_PARAM_METHOD_RESULTS);
        urlQueryString.remove(ServerProtocol.FALLBACK_DIALOG_PARAM_METHOD_RESULTS);
        Utility utility3 = Utility.INSTANCE;
        if (!Utility.isNullOrEmpty(string2)) {
            try {
                JSONObject jSONObject2 = new JSONObject(string2);
                BundleJSONConverter bundleJSONConverter2 = BundleJSONConverter.INSTANCE;
                urlQueryString.putBundle(NativeProtocol.EXTRA_PROTOCOL_METHOD_RESULTS, BundleJSONConverter.convertToBundle(jSONObject2));
            } catch (JSONException e11) {
                Utility utility4 = Utility.INSTANCE;
                Utility.logd(TAG, "Unable to parse bridge_args JSON", e11);
            }
        }
        urlQueryString.remove(ServerProtocol.FALLBACK_DIALOG_PARAM_VERSION);
        NativeProtocol nativeProtocol = NativeProtocol.INSTANCE;
        urlQueryString.putInt(NativeProtocol.EXTRA_PROTOCOL_VERSION, NativeProtocol.getLatestKnownVersion());
        return urlQueryString;
    }
}
