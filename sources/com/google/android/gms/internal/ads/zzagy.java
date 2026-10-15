package com.google.android.gms.internal.ads;

import java.io.IOException;
import org.checkerframework.checker.nullness.qual.EnsuresNonNullIf;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes.dex */
abstract class zzagy {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private zzabb f8980b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private zzzx f8981c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private zzagt f8982d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private long f8983e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private long f8984f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private long f8985g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int f8986h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private int f8987i;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private long f8989k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private boolean f8990l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private boolean f8991m;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzagr f8979a = new zzagr();

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private zzagv f8988j = new zzagv();

    protected abstract long a(zzen zzenVar);

    protected void b(boolean z10) {
        int i10;
        if (z10) {
            this.f8988j = new zzagv();
            this.f8984f = 0L;
            i10 = 0;
        } else {
            i10 = 1;
        }
        this.f8986h = i10;
        this.f8983e = -1L;
        this.f8985g = 0L;
    }

    @EnsuresNonNullIf(expression = {"#3.format"}, result = false)
    protected abstract boolean c(zzen zzenVar, long j10, zzagv zzagvVar) throws IOException;

    final int d(zzzv zzzvVar, zzaau zzaauVar) throws IOException {
        zzdl.b(this.f8980b);
        int i10 = zzew.f17494a;
        int i11 = this.f8986h;
        if (i11 == 0) {
            while (this.f8979a.e(zzzvVar)) {
                long jC = zzzvVar.c();
                long j10 = this.f8984f;
                this.f8989k = jC - j10;
                if (!c(this.f8979a.a(), j10, this.f8988j)) {
                    zzaf zzafVar = this.f8988j.f8977a;
                    this.f8987i = zzafVar.f8745z;
                    if (!this.f8991m) {
                        this.f8980b.e(zzafVar);
                        this.f8991m = true;
                    }
                    zzagt zzagtVar = this.f8988j.f8978b;
                    if (zzagtVar != null) {
                        this.f8982d = zzagtVar;
                    } else if (zzzvVar.d() == -1) {
                        this.f8982d = new zzagx(null);
                    } else {
                        zzags zzagsVarB = this.f8979a.b();
                        this.f8982d = new zzagm(this, this.f8984f, zzzvVar.d(), zzagsVarB.f8970d + zzagsVarB.f8971e, zzagsVarB.f8968b, (zzagsVarB.f8967a & 4) != 0);
                    }
                    this.f8986h = 2;
                    this.f8979a.d();
                    return 0;
                }
                this.f8984f = zzzvVar.c();
            }
            this.f8986h = 3;
            return -1;
        }
        if (i11 == 1) {
            ((zzzk) zzzvVar).o((int) this.f8984f, false);
            this.f8986h = 2;
            return 0;
        }
        if (i11 != 2) {
            return -1;
        }
        long jA = this.f8982d.a(zzzvVar);
        if (jA >= 0) {
            zzaauVar.f8348a = jA;
            return 1;
        }
        if (jA < -1) {
            h(-(jA + 2));
        }
        if (!this.f8990l) {
            zzaax zzaaxVarB = this.f8982d.b();
            zzdl.b(zzaaxVarB);
            this.f8981c.e(zzaaxVarB);
            this.f8990l = true;
        }
        if (this.f8989k <= 0 && !this.f8979a.e(zzzvVar)) {
            this.f8986h = 3;
            return -1;
        }
        this.f8989k = 0L;
        zzen zzenVarA = this.f8979a.a();
        long jA2 = a(zzenVarA);
        if (jA2 >= 0) {
            long j11 = this.f8985g;
            if (j11 + jA2 >= this.f8983e) {
                long jE = e(j11);
                zzaaz.b(this.f8980b, zzenVarA, zzenVarA.l());
                this.f8980b.f(jE, 1, zzenVarA.l(), 0, null);
                this.f8983e = -1L;
            }
        }
        this.f8985g += jA2;
        return 0;
    }

    protected final long e(long j10) {
        return (j10 * 1000000) / ((long) this.f8987i);
    }

    protected final long f(long j10) {
        return (((long) this.f8987i) * j10) / 1000000;
    }

    final void g(zzzx zzzxVar, zzabb zzabbVar) {
        this.f8981c = zzzxVar;
        this.f8980b = zzabbVar;
        b(true);
    }

    protected void h(long j10) {
        this.f8985g = j10;
    }

    final void i(long j10, long j11) {
        this.f8979a.c();
        if (j10 == 0) {
            b(!this.f8990l);
            return;
        }
        if (this.f8986h != 0) {
            long jF = f(j11);
            this.f8983e = jF;
            zzagt zzagtVar = this.f8982d;
            int i10 = zzew.f17494a;
            zzagtVar.c(jF);
            this.f8986h = 2;
        }
    }
}
