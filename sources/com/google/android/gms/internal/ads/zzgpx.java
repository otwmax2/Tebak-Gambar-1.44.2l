package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzgpx {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Object f19434a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f19435b;

    zzgpx(Object obj, int i10) {
        this.f19434a = obj;
        this.f19435b = i10;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof zzgpx)) {
            return false;
        }
        zzgpx zzgpxVar = (zzgpx) obj;
        return this.f19434a == zzgpxVar.f19434a && this.f19435b == zzgpxVar.f19435b;
    }

    public final int hashCode() {
        return (System.identityHashCode(this.f19434a) * 65535) + this.f19435b;
    }
}
