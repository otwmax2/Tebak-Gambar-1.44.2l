package com.google.android.gms.internal.ads;

import android.webkit.WebView;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzfgn implements Runnable {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final WebView f18176o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    final /* synthetic */ zzfgo f18177p;

    zzfgn(zzfgo zzfgoVar) {
        this.f18177p = zzfgoVar;
        this.f18176o = zzfgoVar.f18178d;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f18176o.destroy();
    }
}
