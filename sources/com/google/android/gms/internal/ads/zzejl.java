package com.google.android.gms.internal.ads;

import java.util.concurrent.Callable;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzejl implements zzepn {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzfuu f16780a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final zzeyx f16781b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final zzezj f16782c;

    zzejl(zzfuu zzfuuVar, zzeyx zzeyxVar, zzezj zzezjVar) {
        this.f16780a = zzfuuVar;
        this.f16781b = zzeyxVar;
        this.f16782c = zzezjVar;
    }

    final /* synthetic */ zzejm a() throws Exception {
        String strA = null;
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.L6)).booleanValue() && "requester_type_2".equals(com.google.android.gms.ads.nonagon.signalgeneration.zzf.b(this.f16781b.f17731d))) {
            strA = zzezj.a();
        }
        return new zzejm(strA);
    }

    @Override // com.google.android.gms.internal.ads.zzepn
    public final int zza() {
        return 5;
    }

    @Override // com.google.android.gms.internal.ads.zzepn
    public final zzfut zzb() {
        return this.f16780a.e(new Callable() { // from class: com.google.android.gms.internal.ads.zzejk
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.f16779a.a();
            }
        });
    }
}
