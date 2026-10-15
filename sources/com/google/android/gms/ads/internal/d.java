package com.google.android.gms.ads.internal;

import com.google.android.gms.internal.ads.zzapv;
import com.google.android.gms.internal.ads.zzapw;
import java.util.concurrent.Callable;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes.dex */
final class d implements Callable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ zzs f5959a;

    d(zzs zzsVar) {
        this.f5959a = zzsVar;
    }

    @Override // java.util.concurrent.Callable
    public final /* bridge */ /* synthetic */ Object call() throws Exception {
        zzs zzsVar = this.f5959a;
        return new zzapw(zzapv.x(zzsVar.f6234o.f11605o, zzsVar.f6237r, false));
    }
}
