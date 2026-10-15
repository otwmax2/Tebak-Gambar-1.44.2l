package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzahg implements zzahn {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzem f9025a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final zzen f9026b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final String f9027c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f9028d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private zzabb f9029e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f9030f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f9031g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private boolean f9032h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private long f9033i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private zzaf f9034j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private int f9035k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private long f9036l;

    public zzahg() {
        this(null);
    }

    @Override // com.google.android.gms.internal.ads.zzahn
    public final void a() {
    }

    @Override // com.google.android.gms.internal.ads.zzahn
    public final void b() {
        this.f9030f = 0;
        this.f9031g = 0;
        this.f9032h = false;
        this.f9036l = -9223372036854775807L;
    }

    @Override // com.google.android.gms.internal.ads.zzahn
    public final void c(zzen zzenVar) {
        zzdl.b(this.f9029e);
        while (zzenVar.i() > 0) {
            int i10 = this.f9030f;
            if (i10 == 0) {
                while (zzenVar.i() > 0) {
                    if (this.f9032h) {
                        int iS = zzenVar.s();
                        this.f9032h = iS == 172;
                        if (iS != 64) {
                            if (iS == 65) {
                                iS = 65;
                            }
                        }
                        this.f9030f = 1;
                        zzen zzenVar2 = this.f9026b;
                        zzenVar2.h()[0] = -84;
                        zzenVar2.h()[1] = iS == 65 ? (byte) 65 : (byte) 64;
                        this.f9031g = 2;
                    } else {
                        this.f9032h = zzenVar.s() == 172;
                    }
                }
            } else if (i10 != 1) {
                int iMin = Math.min(zzenVar.i(), this.f9035k - this.f9031g);
                this.f9029e.d(zzenVar, iMin);
                int i11 = this.f9031g + iMin;
                this.f9031g = i11;
                int i12 = this.f9035k;
                if (i11 == i12) {
                    long j10 = this.f9036l;
                    if (j10 != -9223372036854775807L) {
                        this.f9029e.f(j10, 1, i12, 0, null);
                        this.f9036l += this.f9033i;
                    }
                    this.f9030f = 0;
                }
            } else {
                byte[] bArrH = this.f9026b.h();
                int iMin2 = Math.min(zzenVar.i(), 16 - this.f9031g);
                zzenVar.b(bArrH, this.f9031g, iMin2);
                int i13 = this.f9031g + iMin2;
                this.f9031g = i13;
                if (i13 == 16) {
                    this.f9025a.j(0);
                    zzyx zzyxVarA = zzyy.a(this.f9025a);
                    zzaf zzafVar = this.f9034j;
                    if (zzafVar == null || zzafVar.f8744y != 2 || zzyxVarA.f21147a != zzafVar.f8745z || !"audio/ac4".equals(zzafVar.f8731l)) {
                        zzad zzadVar = new zzad();
                        zzadVar.h(this.f9028d);
                        zzadVar.s("audio/ac4");
                        zzadVar.e0(2);
                        zzadVar.t(zzyxVarA.f21147a);
                        zzadVar.k(this.f9027c);
                        zzaf zzafVarY = zzadVar.y();
                        this.f9034j = zzafVarY;
                        this.f9029e.e(zzafVarY);
                    }
                    this.f9035k = zzyxVarA.f21148b;
                    this.f9033i = (((long) zzyxVarA.f21149c) * 1000000) / ((long) this.f9034j.f8745z);
                    this.f9026b.f(0);
                    this.f9029e.d(this.f9026b, 16);
                    this.f9030f = 2;
                }
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzahn
    public final void d(zzzx zzzxVar, zzaiz zzaizVar) {
        zzaizVar.c();
        this.f9028d = zzaizVar.b();
        this.f9029e = zzzxVar.q(zzaizVar.a(), 1);
    }

    @Override // com.google.android.gms.internal.ads.zzahn
    public final void e(long j10, int i10) {
        if (j10 != -9223372036854775807L) {
            this.f9036l = j10;
        }
    }

    public zzahg(String str) {
        zzem zzemVar = new zzem(new byte[16], 16);
        this.f9025a = zzemVar;
        this.f9026b = new zzen(zzemVar.f16938a);
        this.f9030f = 0;
        this.f9031g = 0;
        this.f9032h = false;
        this.f9036l = -9223372036854775807L;
        this.f9027c = str;
    }
}
