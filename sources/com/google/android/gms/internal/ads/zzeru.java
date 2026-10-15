package com.google.android.gms.internal.ads;

import java.util.concurrent.Callable;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzeru implements zzepn {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final zzfuu f17273a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final String f17274b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final zzbxx f17275c;

    public zzeru(zzbxx zzbxxVar, zzfuu zzfuuVar, String str, byte[] bArr) {
        this.f17275c = zzbxxVar;
        this.f17273a = zzfuuVar;
        this.f17274b = str;
    }

    @Override // com.google.android.gms.internal.ads.zzepn
    public final int zza() {
        return 47;
    }

    @Override // com.google.android.gms.internal.ads.zzepn
    public final zzfut zzb() {
        final zzfut zzfutVarH = zzfuj.h(null);
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.f10351r5)).booleanValue()) {
            zzfutVarH = zzfuj.h(null);
        }
        final zzfut zzfutVarH2 = zzfuj.h(null);
        return zzfuj.c(zzfutVarH, zzfutVarH2).a(new Callable() { // from class: com.google.android.gms.internal.ads.zzert
            /* JADX WARN: Multi-variable type inference failed */
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return new zzerv((String) zzfutVarH.get(), (String) zzfutVarH2.get());
            }
        }, zzbzn.f11614a);
    }
}
