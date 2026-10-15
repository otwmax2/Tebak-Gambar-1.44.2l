package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzaun {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final long f9985a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final String f9986b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final int f9987c;

    zzaun(long j10, String str, int i10) {
        this.f9985a = j10;
        this.f9986b = str;
        this.f9987c = i10;
    }

    public final boolean equals(Object obj) {
        if (obj != null && (obj instanceof zzaun)) {
            zzaun zzaunVar = (zzaun) obj;
            if (zzaunVar.f9985a == this.f9985a && zzaunVar.f9987c == this.f9987c) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return (int) this.f9985a;
    }
}
