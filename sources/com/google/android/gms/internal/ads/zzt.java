package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzt {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final zzt f20662d = new zzt(0, 0, 0);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final String f20663e = zzew.p(0);

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final String f20664f = zzew.p(1);

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final String f20665g = zzew.p(2);

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final zzn f20666h = new zzn() { // from class: com.google.android.gms.internal.ads.zzs
    };

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f20667a = 0;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f20668b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f20669c;

    public zzt(int i10, int i11, int i12) {
        this.f20668b = i11;
        this.f20669c = i12;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzt)) {
            return false;
        }
        zzt zztVar = (zzt) obj;
        int i10 = zztVar.f20667a;
        return this.f20668b == zztVar.f20668b && this.f20669c == zztVar.f20669c;
    }

    public final int hashCode() {
        return ((this.f20668b + 16337) * 31) + this.f20669c;
    }
}
