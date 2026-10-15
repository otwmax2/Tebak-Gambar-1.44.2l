package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zztf implements zzwe {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzwe f20675a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final zzcp f20676b;

    public zztf(zzwe zzweVar, zzcp zzcpVar) {
        this.f20675a = zzweVar;
        this.f20676b = zzcpVar;
    }

    @Override // com.google.android.gms.internal.ads.zzwi
    public final zzaf K(int i10) {
        return this.f20675a.K(i10);
    }

    @Override // com.google.android.gms.internal.ads.zzwi
    public final int a() {
        return this.f20675a.a();
    }

    @Override // com.google.android.gms.internal.ads.zzwi
    public final zzcp b() {
        return this.f20676b;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zztf)) {
            return false;
        }
        zztf zztfVar = (zztf) obj;
        return this.f20675a.equals(zztfVar.f20675a) && this.f20676b.equals(zztfVar.f20676b);
    }

    @Override // com.google.android.gms.internal.ads.zzwi
    public final int h(int i10) {
        return this.f20675a.h(0);
    }

    public final int hashCode() {
        return ((this.f20676b.hashCode() + 527) * 31) + this.f20675a.hashCode();
    }

    @Override // com.google.android.gms.internal.ads.zzwi
    public final int z(int i10) {
        return this.f20675a.z(i10);
    }
}
