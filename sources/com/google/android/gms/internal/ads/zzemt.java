package com.google.android.gms.internal.ads;

import java.util.concurrent.Callable;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzemt implements zzepn {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzfuu f16974a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final zzdsf f16975b;

    zzemt(zzfuu zzfuuVar, zzdsf zzdsfVar) {
        this.f16974a = zzfuuVar;
        this.f16975b = zzdsfVar;
    }

    final /* synthetic */ zzemu a() throws Exception {
        return new zzemu(this.f16975b.c(), this.f16975b.p(), com.google.android.gms.ads.internal.zzt.u().l(), this.f16975b.n());
    }

    @Override // com.google.android.gms.internal.ads.zzepn
    public final int zza() {
        return 23;
    }

    @Override // com.google.android.gms.internal.ads.zzepn
    public final zzfut zzb() {
        return this.f16974a.e(new Callable() { // from class: com.google.android.gms.internal.ads.zzems
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.f16973a.a();
            }
        });
    }
}
