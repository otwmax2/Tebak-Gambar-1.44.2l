package com.google.android.gms.internal.ads;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.UUID;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzaf {
    private static final zzaf G = new zzaf(new zzad());
    private static final String H = zzew.p(0);
    private static final String I = zzew.p(1);
    private static final String J = zzew.p(2);
    private static final String K = zzew.p(3);
    private static final String L = zzew.p(4);
    private static final String M = zzew.p(5);
    private static final String N = zzew.p(6);
    private static final String O = zzew.p(7);
    private static final String P = zzew.p(8);
    private static final String Q = zzew.p(9);
    private static final String R = zzew.p(10);
    private static final String S = zzew.p(11);
    private static final String T = zzew.p(12);
    private static final String U = zzew.p(13);
    private static final String V = zzew.p(14);
    private static final String W = zzew.p(15);
    private static final String X = zzew.p(16);
    private static final String Y = zzew.p(17);
    private static final String Z = zzew.p(18);

    /* JADX INFO: renamed from: a0, reason: collision with root package name */
    private static final String f8708a0 = zzew.p(19);

    /* JADX INFO: renamed from: b0, reason: collision with root package name */
    private static final String f8709b0 = zzew.p(20);

    /* JADX INFO: renamed from: c0, reason: collision with root package name */
    private static final String f8710c0 = zzew.p(21);

    /* JADX INFO: renamed from: d0, reason: collision with root package name */
    private static final String f8711d0 = zzew.p(22);

    /* JADX INFO: renamed from: e0, reason: collision with root package name */
    private static final String f8712e0 = zzew.p(23);

    /* JADX INFO: renamed from: f0, reason: collision with root package name */
    private static final String f8713f0 = zzew.p(24);

    /* JADX INFO: renamed from: g0, reason: collision with root package name */
    private static final String f8714g0 = zzew.p(25);

    /* JADX INFO: renamed from: h0, reason: collision with root package name */
    private static final String f8715h0 = zzew.p(26);

    /* JADX INFO: renamed from: i0, reason: collision with root package name */
    private static final String f8716i0 = zzew.p(27);

    /* JADX INFO: renamed from: j0, reason: collision with root package name */
    private static final String f8717j0 = zzew.p(28);

    /* JADX INFO: renamed from: k0, reason: collision with root package name */
    private static final String f8718k0 = zzew.p(29);

    /* JADX INFO: renamed from: l0, reason: collision with root package name */
    public static final zzn f8719l0 = new zzn() { // from class: com.google.android.gms.internal.ads.zzab
    };
    public final int A;
    public final int B;
    public final int C;
    public final int D;
    public final int E;
    private int F;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f8720a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f8721b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f8722c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final int f8723d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f8724e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final int f8725f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final int f8726g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final int f8727h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final String f8728i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final zzbq f8729j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final String f8730k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final String f8731l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final int f8732m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final List f8733n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final zzx f8734o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final long f8735p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public final int f8736q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public final int f8737r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public final float f8738s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public final int f8739t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public final float f8740u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public final byte[] f8741v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public final int f8742w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public final zzq f8743x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public final int f8744y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public final int f8745z;

    private zzaf(zzad zzadVar) {
        this.f8720a = zzadVar.f8546a;
        this.f8721b = zzadVar.f8547b;
        this.f8722c = zzew.q(zzadVar.f8548c);
        this.f8723d = zzadVar.f8549d;
        this.f8724e = 0;
        int i10 = zzadVar.f8550e;
        this.f8725f = i10;
        int i11 = zzadVar.f8551f;
        this.f8726g = i11;
        this.f8727h = i11 != -1 ? i11 : i10;
        this.f8728i = zzadVar.f8552g;
        this.f8729j = zzadVar.f8553h;
        this.f8730k = zzadVar.f8554i;
        this.f8731l = zzadVar.f8555j;
        this.f8732m = zzadVar.f8556k;
        this.f8733n = zzadVar.f8557l == null ? Collections.emptyList() : zzadVar.f8557l;
        zzx zzxVar = zzadVar.f8558m;
        this.f8734o = zzxVar;
        this.f8735p = zzadVar.f8559n;
        this.f8736q = zzadVar.f8560o;
        this.f8737r = zzadVar.f8561p;
        this.f8738s = zzadVar.f8562q;
        this.f8739t = zzadVar.f8563r == -1 ? 0 : zzadVar.f8563r;
        this.f8740u = zzadVar.f8564s == -1.0f ? 1.0f : zzadVar.f8564s;
        this.f8741v = zzadVar.f8565t;
        this.f8742w = zzadVar.f8566u;
        this.f8743x = zzadVar.f8567v;
        this.f8744y = zzadVar.f8568w;
        this.f8745z = zzadVar.f8569x;
        this.A = zzadVar.f8570y;
        this.B = zzadVar.f8571z == -1 ? 0 : zzadVar.f8571z;
        this.C = zzadVar.A != -1 ? zzadVar.A : 0;
        this.D = zzadVar.B;
        this.E = (zzadVar.C != 0 || zzxVar == null) ? zzadVar.C : 1;
    }

    public static String d(zzaf zzafVar) {
        if (zzafVar == null) {
            return "null";
        }
        StringBuilder sb = new StringBuilder();
        sb.append("id=");
        sb.append(zzafVar.f8720a);
        sb.append(", mimeType=");
        sb.append(zzafVar.f8731l);
        if (zzafVar.f8727h != -1) {
            sb.append(", bitrate=");
            sb.append(zzafVar.f8727h);
        }
        if (zzafVar.f8728i != null) {
            sb.append(", codecs=");
            sb.append(zzafVar.f8728i);
        }
        if (zzafVar.f8734o != null) {
            LinkedHashSet linkedHashSet = new LinkedHashSet();
            int i10 = 0;
            while (true) {
                zzx zzxVar = zzafVar.f8734o;
                if (i10 >= zzxVar.f20985r) {
                    break;
                }
                UUID uuid = zzxVar.h(i10).f20916p;
                if (uuid.equals(zzo.f20297b)) {
                    linkedHashSet.add("cenc");
                } else if (uuid.equals(zzo.f20298c)) {
                    linkedHashSet.add("clearkey");
                } else if (uuid.equals(zzo.f20300e)) {
                    linkedHashSet.add("playready");
                } else if (uuid.equals(zzo.f20299d)) {
                    linkedHashSet.add("widevine");
                } else if (uuid.equals(zzo.f20296a)) {
                    linkedHashSet.add("universal");
                } else {
                    linkedHashSet.add("unknown (" + uuid.toString() + ")");
                }
                i10++;
            }
            sb.append(", drm=[");
            zzfnk.b(sb, linkedHashSet, ",");
            sb.append(']');
        }
        if (zzafVar.f8736q != -1 && zzafVar.f8737r != -1) {
            sb.append(", res=");
            sb.append(zzafVar.f8736q);
            sb.append("x");
            sb.append(zzafVar.f8737r);
        }
        if (zzafVar.f8738s != -1.0f) {
            sb.append(", fps=");
            sb.append(zzafVar.f8738s);
        }
        if (zzafVar.f8744y != -1) {
            sb.append(", channels=");
            sb.append(zzafVar.f8744y);
        }
        if (zzafVar.f8745z != -1) {
            sb.append(", sample_rate=");
            sb.append(zzafVar.f8745z);
        }
        if (zzafVar.f8722c != null) {
            sb.append(", language=");
            sb.append(zzafVar.f8722c);
        }
        if (zzafVar.f8721b != null) {
            sb.append(", label=");
            sb.append(zzafVar.f8721b);
        }
        if (zzafVar.f8723d != 0) {
            ArrayList arrayList = new ArrayList();
            if ((zzafVar.f8723d & 1) != 0) {
                arrayList.add("default");
            }
            if ((zzafVar.f8723d & 2) != 0) {
                arrayList.add("forced");
            }
            sb.append(", selectionFlags=[");
            zzfnk.b(sb, arrayList, ",");
            sb.append("]");
        }
        return sb.toString();
    }

    public final int a() {
        int i10;
        int i11 = this.f8736q;
        if (i11 == -1 || (i10 = this.f8737r) == -1) {
            return -1;
        }
        return i11 * i10;
    }

    public final zzad b() {
        return new zzad(this, null);
    }

    public final zzaf c(int i10) {
        zzad zzadVar = new zzad(this, null);
        zzadVar.a(i10);
        return new zzaf(zzadVar);
    }

    public final boolean e(zzaf zzafVar) {
        if (this.f8733n.size() != zzafVar.f8733n.size()) {
            return false;
        }
        for (int i10 = 0; i10 < this.f8733n.size(); i10++) {
            if (!Arrays.equals((byte[]) this.f8733n.get(i10), (byte[]) zzafVar.f8733n.get(i10))) {
                return false;
            }
        }
        return true;
    }

    public final boolean equals(Object obj) {
        int i10;
        if (this == obj) {
            return true;
        }
        if (obj != null && zzaf.class == obj.getClass()) {
            zzaf zzafVar = (zzaf) obj;
            int i11 = this.F;
            if ((i11 == 0 || (i10 = zzafVar.F) == 0 || i11 == i10) && this.f8723d == zzafVar.f8723d && this.f8725f == zzafVar.f8725f && this.f8726g == zzafVar.f8726g && this.f8732m == zzafVar.f8732m && this.f8735p == zzafVar.f8735p && this.f8736q == zzafVar.f8736q && this.f8737r == zzafVar.f8737r && this.f8739t == zzafVar.f8739t && this.f8742w == zzafVar.f8742w && this.f8744y == zzafVar.f8744y && this.f8745z == zzafVar.f8745z && this.A == zzafVar.A && this.B == zzafVar.B && this.C == zzafVar.C && this.D == zzafVar.D && this.E == zzafVar.E && Float.compare(this.f8738s, zzafVar.f8738s) == 0 && Float.compare(this.f8740u, zzafVar.f8740u) == 0 && zzew.u(this.f8720a, zzafVar.f8720a) && zzew.u(this.f8721b, zzafVar.f8721b) && zzew.u(this.f8728i, zzafVar.f8728i) && zzew.u(this.f8730k, zzafVar.f8730k) && zzew.u(this.f8731l, zzafVar.f8731l) && zzew.u(this.f8722c, zzafVar.f8722c) && Arrays.equals(this.f8741v, zzafVar.f8741v) && zzew.u(this.f8729j, zzafVar.f8729j) && zzew.u(this.f8743x, zzafVar.f8743x) && zzew.u(this.f8734o, zzafVar.f8734o) && e(zzafVar)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int i10 = this.F;
        if (i10 != 0) {
            return i10;
        }
        String str = this.f8720a;
        int iHashCode = str == null ? 0 : str.hashCode();
        String str2 = this.f8721b;
        int iHashCode2 = str2 != null ? str2.hashCode() : 0;
        int i11 = iHashCode + 527;
        String str3 = this.f8722c;
        int iHashCode3 = (((((((((i11 * 31) + iHashCode2) * 31) + (str3 == null ? 0 : str3.hashCode())) * 31) + this.f8723d) * 961) + this.f8725f) * 31) + this.f8726g;
        String str4 = this.f8728i;
        int iHashCode4 = ((iHashCode3 * 31) + (str4 == null ? 0 : str4.hashCode())) * 31;
        zzbq zzbqVar = this.f8729j;
        int iHashCode5 = (iHashCode4 + (zzbqVar == null ? 0 : zzbqVar.hashCode())) * 31;
        String str5 = this.f8730k;
        int iHashCode6 = (iHashCode5 + (str5 == null ? 0 : str5.hashCode())) * 31;
        String str6 = this.f8731l;
        int iHashCode7 = ((((((((((((((((((((((((((((((iHashCode6 + (str6 != null ? str6.hashCode() : 0)) * 31) + this.f8732m) * 31) + ((int) this.f8735p)) * 31) + this.f8736q) * 31) + this.f8737r) * 31) + Float.floatToIntBits(this.f8738s)) * 31) + this.f8739t) * 31) + Float.floatToIntBits(this.f8740u)) * 31) + this.f8742w) * 31) + this.f8744y) * 31) + this.f8745z) * 31) + this.A) * 31) + this.B) * 31) + this.C) * 31) + this.D) * 31) + this.E;
        this.F = iHashCode7;
        return iHashCode7;
    }

    public final String toString() {
        return "Format(" + this.f8720a + ", " + this.f8721b + ", " + this.f8730k + ", " + this.f8731l + ", " + this.f8728i + ", " + this.f8727h + ", " + this.f8722c + ", [" + this.f8736q + ", " + this.f8737r + ", " + this.f8738s + "], [" + this.f8744y + ", " + this.f8745z + "])";
    }
}
