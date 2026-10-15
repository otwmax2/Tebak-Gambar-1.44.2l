package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzafk {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f8781a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f8782b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f8783c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public long f8784d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final boolean f8785e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final zzen f8786f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final zzen f8787g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int f8788h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private int f8789i;

    public zzafk(zzen zzenVar, zzen zzenVar2, boolean z10) throws zzbu {
        this.f8787g = zzenVar;
        this.f8786f = zzenVar2;
        this.f8785e = z10;
        zzenVar2.f(12);
        this.f8781a = zzenVar2.v();
        zzenVar.f(12);
        this.f8789i = zzenVar.v();
        zzzy.b(zzenVar.m() == 1, "first_chunk must be 1");
        this.f8782b = -1;
    }

    public final boolean a() {
        int i10 = this.f8782b + 1;
        this.f8782b = i10;
        if (i10 == this.f8781a) {
            return false;
        }
        this.f8784d = this.f8785e ? this.f8786f.B() : this.f8786f.A();
        if (this.f8782b == this.f8788h) {
            this.f8783c = this.f8787g.v();
            this.f8787g.g(4);
            int i11 = this.f8789i - 1;
            this.f8789i = i11;
            this.f8788h = i11 > 0 ? (-1) + this.f8787g.v() : -1;
        }
        return true;
    }
}
