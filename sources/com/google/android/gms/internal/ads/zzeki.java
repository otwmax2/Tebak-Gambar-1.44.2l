package com.google.android.gms.internal.ads;

import java.util.concurrent.Callable;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzeki implements zzepn {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzfuu f16828a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final zzeyx f16829b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final zzbzg f16830c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final zzbyn f16831d;

    public zzeki(zzfuu zzfuuVar, zzeyx zzeyxVar, zzbzg zzbzgVar, zzbyn zzbynVar) {
        this.f16828a = zzfuuVar;
        this.f16829b = zzeyxVar;
        this.f16830c = zzbzgVar;
        this.f16831d = zzbynVar;
    }

    final /* synthetic */ zzekj a() throws Exception {
        return new zzekj(this.f16829b.f17737j, this.f16830c, this.f16831d.i());
    }

    @Override // com.google.android.gms.internal.ads.zzepn
    public final int zza() {
        return 9;
    }

    @Override // com.google.android.gms.internal.ads.zzepn
    public final zzfut zzb() {
        return this.f16828a.e(new Callable() { // from class: com.google.android.gms.internal.ads.zzekh
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.f16827a.a();
            }
        });
    }
}
