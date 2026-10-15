package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzeo {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final zzeo f17031c = new zzeo(-1, -1);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final zzeo f17032d = new zzeo(0, 0);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f17033a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f17034b;

    public zzeo(int i10, int i11) {
        boolean z10 = false;
        if ((i10 == -1 || i10 >= 0) && (i11 == -1 || i11 >= 0)) {
            z10 = true;
        }
        zzdl.d(z10);
        this.f17033a = i10;
        this.f17034b = i11;
    }

    public final int a() {
        return this.f17034b;
    }

    public final int b() {
        return this.f17033a;
    }

    public final boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        if (this == obj) {
            return true;
        }
        if (obj instanceof zzeo) {
            zzeo zzeoVar = (zzeo) obj;
            if (this.f17033a == zzeoVar.f17033a && this.f17034b == zzeoVar.f17034b) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int i10 = this.f17034b;
        int i11 = this.f17033a;
        return i10 ^ ((i11 >>> 16) | (i11 << 16));
    }

    public final String toString() {
        return this.f17033a + "x" + this.f17034b;
    }
}
