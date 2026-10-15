package com.google.android.gms.internal.ads;

import android.net.Uri;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzcm {
    private static final String A;
    private static final String B;
    private static final String C;
    private static final String D;
    public static final zzn E;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public static final Object f13450o = new Object();

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private static final Object f13451p = new Object();

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private static final zzbg f13452q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private static final String f13453r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private static final String f13454s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private static final String f13455t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private static final String f13456u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private static final String f13457v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private static final String f13458w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private static final String f13459x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private static final String f13460y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private static final String f13461z;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public Object f13462a = f13450o;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public zzbg f13463b = f13452q;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public long f13464c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public long f13465d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public long f13466e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public boolean f13467f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public boolean f13468g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @Deprecated
    public boolean f13469h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public zzaw f13470i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public boolean f13471j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public long f13472k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public long f13473l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public int f13474m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public int f13475n;

    static {
        zzaj zzajVar = new zzaj();
        zzajVar.a("androidx.media3.common.Timeline");
        zzajVar.b(Uri.EMPTY);
        f13452q = zzajVar.c();
        f13453r = zzew.p(1);
        f13454s = zzew.p(2);
        f13455t = zzew.p(3);
        f13456u = zzew.p(4);
        f13457v = zzew.p(5);
        f13458w = zzew.p(6);
        f13459x = zzew.p(7);
        f13460y = zzew.p(8);
        f13461z = zzew.p(9);
        A = zzew.p(10);
        B = zzew.p(11);
        C = zzew.p(12);
        D = zzew.p(13);
        E = new zzn() { // from class: com.google.android.gms.internal.ads.zzcl
        };
    }

    public final zzcm a(Object obj, zzbg zzbgVar, Object obj2, long j10, long j11, long j12, boolean z10, boolean z11, zzaw zzawVar, long j13, long j14, int i10, int i11, long j15) {
        this.f13462a = obj;
        this.f13463b = zzbgVar == null ? f13452q : zzbgVar;
        this.f13464c = -9223372036854775807L;
        this.f13465d = -9223372036854775807L;
        this.f13466e = -9223372036854775807L;
        this.f13467f = z10;
        this.f13468g = z11;
        this.f13469h = zzawVar != null;
        this.f13470i = zzawVar;
        this.f13472k = 0L;
        this.f13473l = j14;
        this.f13474m = 0;
        this.f13475n = 0;
        this.f13471j = false;
        return this;
    }

    public final boolean b() {
        zzdl.f(this.f13469h == (this.f13470i != null));
        return this.f13470i != null;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && zzcm.class.equals(obj.getClass())) {
            zzcm zzcmVar = (zzcm) obj;
            if (zzew.u(this.f13462a, zzcmVar.f13462a) && zzew.u(this.f13463b, zzcmVar.f13463b) && zzew.u(null, null) && zzew.u(this.f13470i, zzcmVar.f13470i) && this.f13464c == zzcmVar.f13464c && this.f13465d == zzcmVar.f13465d && this.f13466e == zzcmVar.f13466e && this.f13467f == zzcmVar.f13467f && this.f13468g == zzcmVar.f13468g && this.f13471j == zzcmVar.f13471j && this.f13473l == zzcmVar.f13473l && this.f13474m == zzcmVar.f13474m && this.f13475n == zzcmVar.f13475n) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int iHashCode = ((this.f13462a.hashCode() + 217) * 31) + this.f13463b.hashCode();
        zzaw zzawVar = this.f13470i;
        int iHashCode2 = ((iHashCode * 961) + (zzawVar == null ? 0 : zzawVar.hashCode())) * 31;
        long j10 = this.f13464c;
        int i10 = (iHashCode2 + ((int) (j10 ^ (j10 >>> 32)))) * 31;
        long j11 = this.f13465d;
        int i11 = (i10 + ((int) (j11 ^ (j11 >>> 32)))) * 31;
        long j12 = this.f13466e;
        int i12 = ((((((i11 + ((int) (j12 ^ (j12 >>> 32)))) * 31) + (this.f13467f ? 1 : 0)) * 31) + (this.f13468g ? 1 : 0)) * 31) + (this.f13471j ? 1 : 0);
        long j13 = this.f13473l;
        return ((((((i12 * 961) + ((int) (j13 ^ (j13 >>> 32)))) * 31) + this.f13474m) * 31) + this.f13475n) * 31;
    }
}
