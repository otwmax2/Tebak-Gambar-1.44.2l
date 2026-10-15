package com.google.android.gms.internal.ads;

import java.util.concurrent.Callable;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzccm extends com.google.android.gms.ads.internal.util.zzb {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final zzcbj f11818c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    final zzccu f11819d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final String f11820e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final String[] f11821f;

    zzccm(zzcbj zzcbjVar, zzccu zzccuVar, String str, String[] strArr) {
        this.f11818c = zzcbjVar;
        this.f11819d = zzccuVar;
        this.f11820e = str;
        this.f11821f = strArr;
        com.google.android.gms.ads.internal.zzt.A().g(this);
    }

    @Override // com.google.android.gms.ads.internal.util.zzb
    public final void a() {
        try {
            this.f11819d.w(this.f11820e, this.f11821f);
        } finally {
            com.google.android.gms.ads.internal.util.zzs.f6190i.post(new zzccl(this));
        }
    }

    @Override // com.google.android.gms.ads.internal.util.zzb
    public final zzfut b() {
        return (((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.M1)).booleanValue() && (this.f11819d instanceof zzcdd)) ? zzbzn.f11618e.e(new Callable() { // from class: com.google.android.gms.internal.ads.zzcck
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.f11816a.d();
            }
        }) : super.b();
    }

    final /* synthetic */ Boolean d() throws Exception {
        return Boolean.valueOf(this.f11819d.x(this.f11820e, this.f11821f, this));
    }

    public final String e() {
        return this.f11820e;
    }
}
