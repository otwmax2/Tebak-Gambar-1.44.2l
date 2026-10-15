package com.twitter.sdk.android.core.identity;

import android.webkit.ConsoleMessage;
import android.webkit.WebChromeClient;

/* JADX INFO: compiled from: OAuthWebChromeClient.java */
/* JADX INFO: loaded from: classes2.dex */
class b extends WebChromeClient {
    b() {
    }

    @Override // android.webkit.WebChromeClient
    public boolean onConsoleMessage(ConsoleMessage consoleMessage) {
        return true;
    }
}
