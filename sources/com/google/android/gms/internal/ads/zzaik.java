package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzaik {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzahn f9259a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final zzeu f9260b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final zzem f9261c = new zzem(new byte[64], 64);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f9262d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f9263e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f9264f;

    public zzaik(zzahn zzahnVar, zzeu zzeuVar) {
        this.f9259a = zzahnVar;
        this.f9260b = zzeuVar;
    }

    public final void a(zzen zzenVar) throws zzbu {
        long jB;
        zzenVar.b(this.f9261c.f16938a, 0, 3);
        this.f9261c.j(0);
        this.f9261c.l(8);
        this.f9262d = this.f9261c.n();
        this.f9263e = this.f9261c.n();
        this.f9261c.l(6);
        zzenVar.b(this.f9261c.f16938a, 0, this.f9261c.d(8));
        this.f9261c.j(0);
        if (this.f9262d) {
            this.f9261c.l(4);
            long jD = this.f9261c.d(3);
            this.f9261c.l(1);
            int iD = this.f9261c.d(15) << 15;
            this.f9261c.l(1);
            long jD2 = this.f9261c.d(15);
            this.f9261c.l(1);
            if (!this.f9264f && this.f9263e) {
                this.f9261c.l(4);
                long jD3 = ((long) this.f9261c.d(3)) << 30;
                this.f9261c.l(1);
                int iD2 = this.f9261c.d(15) << 15;
                this.f9261c.l(1);
                long jD4 = this.f9261c.d(15);
                this.f9261c.l(1);
                this.f9260b.b(((long) iD2) | jD3 | jD4);
                this.f9264f = true;
            }
            jB = this.f9260b.b((jD << 30) | ((long) iD) | jD2);
        } else {
            jB = 0;
        }
        this.f9259a.e(jB, 4);
        this.f9259a.c(zzenVar);
        this.f9259a.a();
    }

    public final void b() {
        this.f9264f = false;
        this.f9259a.b();
    }
}
