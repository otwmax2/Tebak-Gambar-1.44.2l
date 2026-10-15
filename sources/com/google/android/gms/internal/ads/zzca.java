package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzca {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzy f11645a = new zzy();

    public final zzca a(int i10) {
        this.f11645a.a(i10);
        return this;
    }

    public final zzca b(zzcc zzccVar) {
        zzy zzyVar = this.f11645a;
        zzaa zzaaVar = zzccVar.f11788a;
        for (int i10 = 0; i10 < zzaaVar.b(); i10++) {
            zzyVar.a(zzaaVar.a(i10));
        }
        return this;
    }

    public final zzca c(int... iArr) {
        zzy zzyVar = this.f11645a;
        for (int i10 = 0; i10 < 21; i10++) {
            zzyVar.a(iArr[i10]);
        }
        return this;
    }

    public final zzca d(int i10, boolean z10) {
        zzy zzyVar = this.f11645a;
        if (z10) {
            zzyVar.a(i10);
        }
        return this;
    }

    public final zzcc e() {
        return new zzcc(this.f11645a.b(), null);
    }
}
