package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzzq {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f21207a;

    private zzzq(int i10, int i11, String str) {
        this.f21207a = str;
    }

    public static zzzq a(zzen zzenVar) {
        String str;
        zzenVar.g(2);
        int iS = zzenVar.s();
        int i10 = iS >> 1;
        int i11 = iS & 1;
        int iS2 = zzenVar.s() >> 3;
        if (i10 == 4 || i10 == 5 || i10 == 7) {
            str = "dvhe";
        } else if (i10 == 8) {
            str = "hev1";
        } else {
            if (i10 != 9) {
                return null;
            }
            str = "avc3";
        }
        int i12 = iS2 | (i11 << 5);
        StringBuilder sb = new StringBuilder();
        sb.append(str);
        sb.append(".0");
        sb.append(i10);
        sb.append(i12 >= 10 ? "." : ".0");
        sb.append(i12);
        return new zzzq(i10, i12, sb.toString());
    }
}
