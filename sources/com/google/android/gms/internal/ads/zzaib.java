package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzaib implements zzahn {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzen f9217a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final zzaan f9218b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final String f9219c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private zzabb f9220d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private String f9221e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f9222f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f9223g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private boolean f9224h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private boolean f9225i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private long f9226j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private int f9227k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private long f9228l;

    public zzaib() {
        this(null);
    }

    @Override // com.google.android.gms.internal.ads.zzahn
    public final void a() {
    }

    @Override // com.google.android.gms.internal.ads.zzahn
    public final void b() {
        this.f9222f = 0;
        this.f9223g = 0;
        this.f9225i = false;
        this.f9228l = -9223372036854775807L;
    }

    @Override // com.google.android.gms.internal.ads.zzahn
    public final void c(zzen zzenVar) {
        zzdl.b(this.f9220d);
        while (zzenVar.i() > 0) {
            int i10 = this.f9222f;
            if (i10 == 0) {
                byte[] bArrH = zzenVar.h();
                int iK = zzenVar.k();
                int iL = zzenVar.l();
                while (true) {
                    if (iK >= iL) {
                        zzenVar.f(iL);
                        break;
                    }
                    byte b10 = bArrH[iK];
                    boolean z10 = (b10 & 255) == 255;
                    boolean z11 = this.f9225i && (b10 & 224) == 224;
                    this.f9225i = z10;
                    if (z11) {
                        zzenVar.f(iK + 1);
                        this.f9225i = false;
                        this.f9217a.h()[1] = bArrH[iK];
                        this.f9223g = 2;
                        this.f9222f = 1;
                        break;
                    }
                    iK++;
                }
            } else if (i10 != 1) {
                int iMin = Math.min(zzenVar.i(), this.f9227k - this.f9223g);
                this.f9220d.d(zzenVar, iMin);
                int i11 = this.f9223g + iMin;
                this.f9223g = i11;
                int i12 = this.f9227k;
                if (i11 >= i12) {
                    long j10 = this.f9228l;
                    if (j10 != -9223372036854775807L) {
                        this.f9220d.f(j10, 1, i12, 0, null);
                        this.f9228l += this.f9226j;
                    }
                    this.f9223g = 0;
                    this.f9222f = 0;
                }
            } else {
                int iMin2 = Math.min(zzenVar.i(), 4 - this.f9223g);
                zzenVar.b(this.f9217a.h(), this.f9223g, iMin2);
                int i13 = this.f9223g + iMin2;
                this.f9223g = i13;
                if (i13 >= 4) {
                    this.f9217a.f(0);
                    if (this.f9218b.a(this.f9217a.m())) {
                        zzaan zzaanVar = this.f9218b;
                        this.f9227k = zzaanVar.f8320c;
                        if (!this.f9224h) {
                            this.f9226j = (((long) zzaanVar.f8324g) * 1000000) / ((long) zzaanVar.f8321d);
                            zzad zzadVar = new zzad();
                            zzadVar.h(this.f9221e);
                            zzadVar.s(this.f9218b.f8319b);
                            zzadVar.l(4096);
                            zzadVar.e0(this.f9218b.f8322e);
                            zzadVar.t(this.f9218b.f8321d);
                            zzadVar.k(this.f9219c);
                            this.f9220d.e(zzadVar.y());
                            this.f9224h = true;
                        }
                        this.f9217a.f(0);
                        this.f9220d.d(this.f9217a, 4);
                        this.f9222f = 2;
                    } else {
                        this.f9223g = 0;
                        this.f9222f = 1;
                    }
                }
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzahn
    public final void d(zzzx zzzxVar, zzaiz zzaizVar) {
        zzaizVar.c();
        this.f9221e = zzaizVar.b();
        this.f9220d = zzzxVar.q(zzaizVar.a(), 1);
    }

    @Override // com.google.android.gms.internal.ads.zzahn
    public final void e(long j10, int i10) {
        if (j10 != -9223372036854775807L) {
            this.f9228l = j10;
        }
    }

    public zzaib(String str) {
        this.f9222f = 0;
        zzen zzenVar = new zzen(4);
        this.f9217a = zzenVar;
        zzenVar.h()[0] = -1;
        this.f9218b = new zzaan();
        this.f9228l = -9223372036854775807L;
        this.f9219c = str;
    }
}
