package com.google.android.gms.ads.internal.util;

import com.google.android.gms.internal.ads.zzaks;
import com.google.android.gms.internal.ads.zzakx;
import com.google.android.gms.internal.ads.zzbza;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes.dex */
final class f implements zzaks {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ String f6043a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final /* synthetic */ h f6044b;

    f(zzbo zzboVar, String str, h hVar) {
        this.f6043a = str;
        this.f6044b = hVar;
    }

    @Override // com.google.android.gms.internal.ads.zzaks
    public final void a(zzakx zzakxVar) {
        zzbza.g("Failed to load URL: " + this.f6043a + "\n" + zzakxVar.toString());
        this.f6044b.a(null);
    }
}
