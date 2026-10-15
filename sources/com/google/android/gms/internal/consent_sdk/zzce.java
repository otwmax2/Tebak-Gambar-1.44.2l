package com.google.android.gms.internal.consent_sdk;

import android.annotation.TargetApi;
import android.os.Build;
import android.webkit.WebView;

/* JADX INFO: compiled from: com.google.android.ump:user-messaging-platform@@2.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzce {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static Boolean f21774a;

    private zzce() {
    }

    @TargetApi(19)
    public static void a(WebView webView, String str) {
        boolean zBooleanValue;
        if (Build.VERSION.SDK_INT >= 19) {
            synchronized (zzce.class) {
                if (f21774a == null) {
                    try {
                        webView.evaluateJavascript("(function(){})()", null);
                        f21774a = Boolean.TRUE;
                    } catch (IllegalStateException unused) {
                        f21774a = Boolean.FALSE;
                    }
                }
                zBooleanValue = f21774a.booleanValue();
            }
            if (zBooleanValue) {
                webView.evaluateJavascript(str, null);
                return;
            }
        }
        String strValueOf = String.valueOf(str);
        webView.loadUrl(strValueOf.length() != 0 ? "javascript:".concat(strValueOf) : new String("javascript:"));
    }
}
