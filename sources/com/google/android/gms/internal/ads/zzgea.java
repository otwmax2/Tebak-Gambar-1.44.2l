package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzgea implements zzgeb {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzgoj f19079a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final zzgld f19080b;

    private zzgea(zzgld zzgldVar) {
        this.f19080b = zzgldVar;
        this.f19079a = zzgek.b(zzgldVar.N());
    }

    public static zzgea a(zzgld zzgldVar) {
        return new zzgea(zzgldVar);
    }

    public final zzgld b() {
        return this.f19080b;
    }

    @Override // com.google.android.gms.internal.ads.zzgeb
    public final zzgoj d() {
        return this.f19079a;
    }
}
