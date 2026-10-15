package com.google.android.gms.ads.internal.overlay;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes.dex */
final class a extends Exception {
    public a(String str) {
        super(str);
    }

    public a(String str, Throwable th) {
        super("Could not obtain webview for the overlay.", th);
    }
}
