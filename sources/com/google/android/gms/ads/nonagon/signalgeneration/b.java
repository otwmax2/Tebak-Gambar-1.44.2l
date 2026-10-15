package com.google.android.gms.ads.nonagon.signalgeneration;

import android.util.Pair;
import com.google.android.gms.internal.ads.zzbza;
import com.google.android.gms.internal.ads.zzfuf;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes.dex */
final class b implements zzfuf {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ zzac f6356a;

    b(zzac zzacVar) {
        this.f6356a = zzacVar;
    }

    @Override // com.google.android.gms.internal.ads.zzfuf
    public final void a(Throwable th) {
        com.google.android.gms.ads.internal.zzt.q().u(th, "SignalGeneratorImpl.initializeWebViewForSignalCollection");
        zzac zzacVar = this.f6356a;
        zzf.c(zzacVar.A, zzacVar.f6380s, "sgf", new Pair("sgf_reason", th.getMessage()));
        zzbza.e("Failed to initialize webview for loading SDKCore. ", th);
    }

    @Override // com.google.android.gms.internal.ads.zzfuf
    public final /* synthetic */ void c(Object obj) {
        zzbza.b("Initialized webview successfully for SDKCore.");
    }
}
