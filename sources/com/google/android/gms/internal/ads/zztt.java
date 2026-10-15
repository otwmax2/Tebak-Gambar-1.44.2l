package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zztt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f20722a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final boolean f20723b;

    public zztt(int i10, boolean z10) {
        this.f20722a = i10;
        this.f20723b = z10;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && zztt.class == obj.getClass()) {
            zztt zzttVar = (zztt) obj;
            if (this.f20722a == zzttVar.f20722a && this.f20723b == zzttVar.f20723b) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return (this.f20722a * 31) + (this.f20723b ? 1 : 0);
    }
}
