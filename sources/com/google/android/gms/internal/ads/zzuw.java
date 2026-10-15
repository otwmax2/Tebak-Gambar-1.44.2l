package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzuw {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final long f20824a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final long f20825b;

    public zzuw(long j10, long j11) {
        this.f20824a = j10;
        this.f20825b = j11;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzuw)) {
            return false;
        }
        zzuw zzuwVar = (zzuw) obj;
        return this.f20824a == zzuwVar.f20824a && this.f20825b == zzuwVar.f20825b;
    }

    public final int hashCode() {
        return (((int) this.f20824a) * 31) + ((int) this.f20825b);
    }
}
