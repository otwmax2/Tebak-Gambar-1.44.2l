package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
class zzafj {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f8780a;

    public zzafj(int i10) {
        this.f8780a = i10;
    }

    public static int a(int i10) {
        return (i10 >> 24) & 255;
    }

    public static String b(int i10) {
        StringBuilder sb = new StringBuilder();
        sb.append((char) ((i10 >> 24) & 255));
        sb.append((char) ((i10 >> 16) & 255));
        sb.append((char) ((i10 >> 8) & 255));
        sb.append((char) (i10 & 255));
        return sb.toString();
    }

    public String toString() {
        return b(this.f8780a);
    }
}
