package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzahd implements zzahn {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzem f9008a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final zzen f9009b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final String f9010c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f9011d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private zzabb f9012e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f9013f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f9014g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private boolean f9015h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private long f9016i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private zzaf f9017j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private int f9018k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private long f9019l;

    public zzahd() {
        this(null);
    }

    @Override // com.google.android.gms.internal.ads.zzahn
    public final void a() {
    }

    @Override // com.google.android.gms.internal.ads.zzahn
    public final void b() {
        this.f9013f = 0;
        this.f9014g = 0;
        this.f9015h = false;
        this.f9019l = -9223372036854775807L;
    }

    @Override // com.google.android.gms.internal.ads.zzahn
    public final void c(zzen zzenVar) {
        zzdl.b(this.f9012e);
        while (zzenVar.i() > 0) {
            int i10 = this.f9013f;
            if (i10 == 0) {
                while (true) {
                    if (zzenVar.i() <= 0) {
                        break;
                    }
                    if (this.f9015h) {
                        int iS = zzenVar.s();
                        if (iS == 119) {
                            this.f9015h = false;
                            this.f9013f = 1;
                            zzen zzenVar2 = this.f9009b;
                            zzenVar2.h()[0] = 11;
                            zzenVar2.h()[1] = 119;
                            this.f9014g = 2;
                            break;
                        }
                        this.f9015h = iS == 11;
                    } else {
                        this.f9015h = zzenVar.s() == 11;
                    }
                }
            } else if (i10 != 1) {
                int iMin = Math.min(zzenVar.i(), this.f9018k - this.f9014g);
                this.f9012e.d(zzenVar, iMin);
                int i11 = this.f9014g + iMin;
                this.f9014g = i11;
                int i12 = this.f9018k;
                if (i11 == i12) {
                    long j10 = this.f9019l;
                    if (j10 != -9223372036854775807L) {
                        this.f9012e.f(j10, 1, i12, 0, null);
                        this.f9019l += this.f9016i;
                    }
                    this.f9013f = 0;
                }
            } else {
                byte[] bArrH = this.f9009b.h();
                int iMin2 = Math.min(zzenVar.i(), 128 - this.f9014g);
                zzenVar.b(bArrH, this.f9014g, iMin2);
                int i13 = this.f9014g + iMin2;
                this.f9014g = i13;
                if (i13 == 128) {
                    this.f9008a.j(0);
                    zzyu zzyuVarE = zzyv.e(this.f9008a);
                    zzaf zzafVar = this.f9017j;
                    if (zzafVar == null || zzyuVarE.f21136c != zzafVar.f8744y || zzyuVarE.f21135b != zzafVar.f8745z || !zzew.u(zzyuVarE.f21134a, zzafVar.f8731l)) {
                        zzad zzadVar = new zzad();
                        zzadVar.h(this.f9011d);
                        zzadVar.s(zzyuVarE.f21134a);
                        zzadVar.e0(zzyuVarE.f21136c);
                        zzadVar.t(zzyuVarE.f21135b);
                        zzadVar.k(this.f9010c);
                        zzadVar.o(zzyuVarE.f21139f);
                        if ("audio/ac3".equals(zzyuVarE.f21134a)) {
                            zzadVar.d0(zzyuVarE.f21139f);
                        }
                        zzaf zzafVarY = zzadVar.y();
                        this.f9017j = zzafVarY;
                        this.f9012e.e(zzafVarY);
                    }
                    this.f9018k = zzyuVarE.f21137d;
                    this.f9016i = (((long) zzyuVarE.f21138e) * 1000000) / ((long) this.f9017j.f8745z);
                    this.f9009b.f(0);
                    this.f9012e.d(this.f9009b, 128);
                    this.f9013f = 2;
                }
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzahn
    public final void d(zzzx zzzxVar, zzaiz zzaizVar) {
        zzaizVar.c();
        this.f9011d = zzaizVar.b();
        this.f9012e = zzzxVar.q(zzaizVar.a(), 1);
    }

    @Override // com.google.android.gms.internal.ads.zzahn
    public final void e(long j10, int i10) {
        if (j10 != -9223372036854775807L) {
            this.f9019l = j10;
        }
    }

    public zzahd(String str) {
        zzem zzemVar = new zzem(new byte[128], 128);
        this.f9008a = zzemVar;
        this.f9009b = new zzen(zzemVar.f16938a);
        this.f9013f = 0;
        this.f9019l = -9223372036854775807L;
        this.f9010c = str;
    }
}
