package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzfav implements zzfat {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f17837a;

    public zzfav(String str) {
        this.f17837a = str;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof zzfav) {
            return this.f17837a.equals(((zzfav) obj).f17837a);
        }
        return false;
    }

    public final int hashCode() {
        return this.f17837a.hashCode();
    }

    public final String toString() {
        return this.f17837a;
    }
}
