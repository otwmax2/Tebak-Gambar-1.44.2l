package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzck {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static final String f13158h = zzew.p(0);

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static final String f13159i = zzew.p(1);

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private static final String f13160j = zzew.p(2);

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private static final String f13161k = zzew.p(3);

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private static final String f13162l = zzew.p(4);

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public static final zzn f13163m = new zzn() { // from class: com.google.android.gms.internal.ads.zzcj
    };

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public Object f13164a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Object f13165b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f13166c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public long f13167d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public long f13168e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public boolean f13169f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private zzd f13170g = zzd.f14247d;

    public final int a(int i10) {
        return this.f13170g.a(i10).f11639b;
    }

    public final int b() {
        int i10 = this.f13170g.f14254a;
        return 0;
    }

    public final int c(long j10) {
        return -1;
    }

    public final int d(long j10) {
        return -1;
    }

    public final int e(int i10) {
        return this.f13170g.a(i10).a(-1);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && zzck.class.equals(obj.getClass())) {
            zzck zzckVar = (zzck) obj;
            if (zzew.u(this.f13164a, zzckVar.f13164a) && zzew.u(this.f13165b, zzckVar.f13165b) && this.f13166c == zzckVar.f13166c && this.f13167d == zzckVar.f13167d && this.f13169f == zzckVar.f13169f && zzew.u(this.f13170g, zzckVar.f13170g)) {
                return true;
            }
        }
        return false;
    }

    public final int f(int i10, int i11) {
        return this.f13170g.a(i10).a(i11);
    }

    public final long g(int i10, int i11) {
        zzc zzcVarA = this.f13170g.a(i10);
        if (zzcVarA.f11639b != -1) {
            return zzcVarA.f11642e[i11];
        }
        return -9223372036854775807L;
    }

    public final long h(int i10) {
        long j10 = this.f13170g.a(i10).f11638a;
        return 0L;
    }

    public final int hashCode() {
        Object obj = this.f13164a;
        int iHashCode = obj == null ? 0 : obj.hashCode();
        Object obj2 = this.f13165b;
        int iHashCode2 = ((((iHashCode + 217) * 31) + (obj2 != null ? obj2.hashCode() : 0)) * 31) + this.f13166c;
        long j10 = this.f13167d;
        return (((((iHashCode2 * 31) + ((int) (j10 ^ (j10 >>> 32)))) * 961) + (this.f13169f ? 1 : 0)) * 31) + this.f13170g.hashCode();
    }

    public final long i() {
        long j10 = this.f13170g.f14255b;
        return 0L;
    }

    public final long j(int i10) {
        long j10 = this.f13170g.a(i10).f11643f;
        return 0L;
    }

    public final zzck k(Object obj, Object obj2, int i10, long j10, long j11, zzd zzdVar, boolean z10) {
        this.f13164a = obj;
        this.f13165b = obj2;
        this.f13166c = 0;
        this.f13167d = j10;
        this.f13168e = 0L;
        this.f13170g = zzdVar;
        this.f13169f = z10;
        return this;
    }

    public final boolean l(int i10) {
        boolean z10 = this.f13170g.a(i10).f11644g;
        return false;
    }
}
