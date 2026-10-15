package com.vungle.warren.ui;

import android.util.Log;
import android.webkit.JavascriptInterface;

/* JADX INFO: loaded from: classes2.dex */
public class JavascriptBridge {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private MraidHandler f28386a;

    public interface MraidHandler {
        public static final String CLOSE_ACTION = "close";
        public static final String DOWNLOAD_ACTION = "download";
        public static final String PRIVACY_ACTION = "privacy";

        void onMraidAction(String str);
    }

    public JavascriptBridge(MraidHandler mraidHandler) {
        this.f28386a = mraidHandler;
    }

    @JavascriptInterface
    public void performAction(String str) {
        Log.d("JavascriptBridge", "actionClicked(" + str + ")");
        this.f28386a.onMraidAction(str);
    }
}
