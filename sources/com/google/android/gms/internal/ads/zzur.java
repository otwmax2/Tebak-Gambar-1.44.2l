package com.google.android.gms.internal.ads;

import com.vungle.mediation.BuildConfig;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzur {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final zzur f20816d = new zzur(new zzcp[0]);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final String f20817e = zzew.p(0);

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final zzn f20818f = new zzn() { // from class: com.google.android.gms.internal.ads.zzuq
    };

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f20819a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final zzfqk f20820b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f20821c;

    public zzur(zzcp... zzcpVarArr) {
        this.f20820b = zzfqk.t(zzcpVarArr);
        this.f20819a = zzcpVarArr.length;
        int i10 = 0;
        while (i10 < this.f20820b.size()) {
            int i11 = i10 + 1;
            for (int i12 = i11; i12 < this.f20820b.size(); i12++) {
                if (((zzcp) this.f20820b.get(i10)).equals(this.f20820b.get(i12))) {
                    zzee.c("TrackGroupArray", BuildConfig.FLAVOR, new IllegalArgumentException("Multiple identical TrackGroups added to one TrackGroupArray."));
                }
            }
            i10 = i11;
        }
    }

    public final int a(zzcp zzcpVar) {
        int iIndexOf = this.f20820b.indexOf(zzcpVar);
        if (iIndexOf >= 0) {
            return iIndexOf;
        }
        return -1;
    }

    public final zzcp b(int i10) {
        return (zzcp) this.f20820b.get(i10);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && zzur.class == obj.getClass()) {
            zzur zzurVar = (zzur) obj;
            if (this.f20819a == zzurVar.f20819a && this.f20820b.equals(zzurVar.f20820b)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int i10 = this.f20821c;
        if (i10 != 0) {
            return i10;
        }
        int iHashCode = this.f20820b.hashCode();
        this.f20821c = iHashCode;
        return iHashCode;
    }
}
