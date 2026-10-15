package com.google.android.gms.internal.ads;

import java.util.concurrent.Callable;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzeml implements zzepn {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzfuu f16958a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final zzeyx f16959b;

    zzeml(zzfuu zzfuuVar, zzeyx zzeyxVar) {
        this.f16958a = zzfuuVar;
        this.f16959b = zzeyxVar;
    }

    final /* synthetic */ zzemm a() throws Exception {
        return new zzemm("requester_type_2".equals(com.google.android.gms.ads.nonagon.signalgeneration.zzf.b(this.f16959b.f17731d)));
    }

    @Override // com.google.android.gms.internal.ads.zzepn
    public final int zza() {
        return 21;
    }

    @Override // com.google.android.gms.internal.ads.zzepn
    public final zzfut zzb() {
        return this.f16958a.e(new Callable() { // from class: com.google.android.gms.internal.ads.zzemk
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.f16957a.a();
            }
        });
    }
}
