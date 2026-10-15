package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzov {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzde[] f20369a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final zzpm f20370b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final zzdh f20371c;

    public zzov(zzde... zzdeVarArr) {
        zzpm zzpmVar = new zzpm();
        zzdh zzdhVar = new zzdh();
        zzde[] zzdeVarArr2 = {zzpmVar, zzdhVar};
        this.f20369a = zzdeVarArr2;
        System.arraycopy(zzdeVarArr, 0, zzdeVarArr2, 0, 0);
        this.f20370b = zzpmVar;
        this.f20371c = zzdhVar;
    }

    public final long a(long j10) {
        return this.f20371c.h(j10);
    }

    public final long b() {
        return this.f20370b.n();
    }

    public final zzby c(zzby zzbyVar) {
        this.f20371c.j(zzbyVar.f11507a);
        this.f20371c.i(zzbyVar.f11508b);
        return zzbyVar;
    }

    public final boolean d(boolean z10) {
        this.f20370b.o(z10);
        return z10;
    }

    public final zzde[] e() {
        return this.f20369a;
    }
}
