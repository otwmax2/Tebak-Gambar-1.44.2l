package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzfdo {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f17958a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f17959b;

    public zzfdo(String str, String str2) {
        this.f17958a = str;
        this.f17959b = str2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzfdo)) {
            return false;
        }
        zzfdo zzfdoVar = (zzfdo) obj;
        return this.f17958a.equals(zzfdoVar.f17958a) && this.f17959b.equals(zzfdoVar.f17959b);
    }

    public final int hashCode() {
        return String.valueOf(this.f17958a).concat(String.valueOf(this.f17959b)).hashCode();
    }
}
