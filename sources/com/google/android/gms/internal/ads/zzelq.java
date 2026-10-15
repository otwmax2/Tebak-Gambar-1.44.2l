package com.google.android.gms.internal.ads;

import java.util.concurrent.Callable;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzelq implements zzepn {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzfuu f16917a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final zzdni f16918b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final String f16919c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final zzeyx f16920d;

    public zzelq(zzfuu zzfuuVar, zzdni zzdniVar, zzeyx zzeyxVar, String str) {
        this.f16917a = zzfuuVar;
        this.f16918b = zzdniVar;
        this.f16920d = zzeyxVar;
        this.f16919c = str;
    }

    final /* synthetic */ zzelr a() throws Exception {
        return new zzelr(this.f16918b.b(this.f16920d.f17733f, this.f16919c), this.f16918b.a());
    }

    @Override // com.google.android.gms.internal.ads.zzepn
    public final int zza() {
        return 17;
    }

    @Override // com.google.android.gms.internal.ads.zzepn
    public final zzfut zzb() {
        return this.f16917a.e(new Callable() { // from class: com.google.android.gms.internal.ads.zzelp
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.f16916a.a();
            }
        });
    }
}
