package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzcc {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final zzcc f11785b = new zzca().e();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final String f11786c = zzew.p(0);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final zzn f11787d = new zzn() { // from class: com.google.android.gms.internal.ads.zzbz
    };

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzaa f11788a;

    /* synthetic */ zzcc(zzaa zzaaVar, zzcb zzcbVar) {
        this.f11788a = zzaaVar;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof zzcc) {
            return this.f11788a.equals(((zzcc) obj).f11788a);
        }
        return false;
    }

    public final int hashCode() {
        return this.f11788a.hashCode();
    }
}
