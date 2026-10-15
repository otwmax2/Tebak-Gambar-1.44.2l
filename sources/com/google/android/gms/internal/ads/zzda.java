package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzda {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final zzda f14257e = new zzda(0, 0, 0, 1.0f);

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final String f14258f = zzew.p(0);

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final String f14259g = zzew.p(1);

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static final String f14260h = zzew.p(2);

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static final String f14261i = zzew.p(3);

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final zzn f14262j = new zzn() { // from class: com.google.android.gms.internal.ads.zzcz
    };

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f14263a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f14264b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f14265c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final float f14266d;

    public zzda(int i10, int i11, int i12, float f10) {
        this.f14263a = i10;
        this.f14264b = i11;
        this.f14265c = i12;
        this.f14266d = f10;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof zzda) {
            zzda zzdaVar = (zzda) obj;
            if (this.f14263a == zzdaVar.f14263a && this.f14264b == zzdaVar.f14264b && this.f14265c == zzdaVar.f14265c && this.f14266d == zzdaVar.f14266d) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return ((((((this.f14263a + 217) * 31) + this.f14264b) * 31) + this.f14265c) * 31) + Float.floatToRawIntBits(this.f14266d);
    }
}
