package com.google.android.gms.internal.ads;

import java.util.concurrent.Callable;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzenb implements zzepn {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzfuu f16991a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final zzeyb f16992b;

    public zzenb(zzfuu zzfuuVar, zzeyb zzeybVar) {
        this.f16991a = zzfuuVar;
        this.f16992b = zzeybVar;
    }

    final /* synthetic */ zzenc a() throws Exception {
        return new zzenc(this.f16992b);
    }

    @Override // com.google.android.gms.internal.ads.zzepn
    public final int zza() {
        return 25;
    }

    @Override // com.google.android.gms.internal.ads.zzepn
    public final zzfut zzb() {
        return this.f16991a.e(new Callable() { // from class: com.google.android.gms.internal.ads.zzena
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.f16990a.a();
            }
        });
    }
}
