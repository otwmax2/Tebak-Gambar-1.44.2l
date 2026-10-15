package com.google.android.gms.internal.ads;

import java.io.IOException;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzts implements zzuj {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f20720a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final /* synthetic */ zztv f20721b;

    public zzts(zztv zztvVar, int i10) {
        this.f20721b = zztvVar;
        this.f20720a = i10;
    }

    @Override // com.google.android.gms.internal.ads.zzuj
    public final int W(long j10) {
        return this.f20721b.N(this.f20720a, j10);
    }

    @Override // com.google.android.gms.internal.ads.zzuj
    public final int a(zzjo zzjoVar, zzgr zzgrVar, int i10) {
        return this.f20721b.M(this.f20720a, zzjoVar, zzgrVar, i10);
    }

    @Override // com.google.android.gms.internal.ads.zzuj
    public final boolean b() {
        return this.f20721b.A(this.f20720a);
    }

    @Override // com.google.android.gms.internal.ads.zzuj
    public final void d() throws IOException {
        this.f20721b.y(this.f20720a);
    }
}
