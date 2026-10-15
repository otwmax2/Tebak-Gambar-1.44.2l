package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzxn {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f21028c;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f21030e;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private zzxm f21026a = new zzxm();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private zzxm f21027b = new zzxm();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private long f21029d = -9223372036854775807L;

    public final float a() {
        if (!this.f21026a.f()) {
            return -1.0f;
        }
        double dA = this.f21026a.a();
        Double.isNaN(dA);
        return (float) (1.0E9d / dA);
    }

    public final int b() {
        return this.f21030e;
    }

    public final long c() {
        if (this.f21026a.f()) {
            return this.f21026a.a();
        }
        return -9223372036854775807L;
    }

    public final long d() {
        if (this.f21026a.f()) {
            return this.f21026a.b();
        }
        return -9223372036854775807L;
    }

    public final void e(long j10) {
        this.f21026a.c(j10);
        if (this.f21026a.f()) {
            this.f21028c = false;
        } else if (this.f21029d != -9223372036854775807L) {
            if (!this.f21028c || this.f21027b.e()) {
                this.f21027b.d();
                this.f21027b.c(this.f21029d);
            }
            this.f21028c = true;
            this.f21027b.c(j10);
        }
        if (this.f21028c && this.f21027b.f()) {
            zzxm zzxmVar = this.f21026a;
            this.f21026a = this.f21027b;
            this.f21027b = zzxmVar;
            this.f21028c = false;
        }
        this.f21029d = j10;
        this.f21030e = this.f21026a.f() ? 0 : this.f21030e + 1;
    }

    public final void f() {
        this.f21026a.d();
        this.f21027b.d();
        this.f21028c = false;
        this.f21029d = -9223372036854775807L;
        this.f21030e = 0;
    }

    public final boolean g() {
        return this.f21026a.f();
    }
}
