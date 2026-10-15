package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzaay {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final zzaay f8353c = new zzaay(0, 0);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final long f8354a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final long f8355b;

    public zzaay(long j10, long j11) {
        this.f8354a = j10;
        this.f8355b = j11;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && zzaay.class == obj.getClass()) {
            zzaay zzaayVar = (zzaay) obj;
            if (this.f8354a == zzaayVar.f8354a && this.f8355b == zzaayVar.f8355b) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return (((int) this.f8354a) * 31) + ((int) this.f8355b);
    }

    public final String toString() {
        return "[timeUs=" + this.f8354a + ", position=" + this.f8355b + "]";
    }
}
