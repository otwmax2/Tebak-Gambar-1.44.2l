package com.google.android.gms.common.images;

/* JADX INFO: compiled from: com.google.android.gms:play-services-base@@18.0.1 */
/* JADX INFO: loaded from: classes.dex */
public final class Size {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f7336a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f7337b;

    public boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        if (this == obj) {
            return true;
        }
        if (obj instanceof Size) {
            Size size = (Size) obj;
            if (this.f7336a == size.f7336a && this.f7337b == size.f7337b) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        int i10 = this.f7337b;
        int i11 = this.f7336a;
        return i10 ^ ((i11 >>> 16) | (i11 << 16));
    }

    public String toString() {
        int i10 = this.f7336a;
        int i11 = this.f7337b;
        StringBuilder sb = new StringBuilder(23);
        sb.append(i10);
        sb.append("x");
        sb.append(i11);
        return sb.toString();
    }
}
