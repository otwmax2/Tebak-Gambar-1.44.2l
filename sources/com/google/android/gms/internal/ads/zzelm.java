package com.google.android.gms.internal.ads;

import java.util.concurrent.Callable;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzelm implements zzepn {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzfuu f16913a;

    zzelm(zzfuu zzfuuVar) {
        this.f16913a = zzfuuVar;
    }

    @Override // com.google.android.gms.internal.ads.zzepn
    public final int zza() {
        return 55;
    }

    @Override // com.google.android.gms.internal.ads.zzepn
    public final zzfut zzb() {
        return this.f16913a.e(new Callable() { // from class: com.google.android.gms.internal.ads.zzell
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return new zzeln(Long.valueOf(com.google.android.gms.ads.internal.zzt.b().a() - com.google.android.gms.ads.internal.zzt.q().h().f().a()).longValue());
            }
        });
    }
}
