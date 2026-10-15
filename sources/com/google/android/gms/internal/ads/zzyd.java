package com.google.android.gms.internal.ads;

import android.content.Context;
import android.view.Display;
import android.view.Surface;
import java.util.Objects;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzyd {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzxn f21083a = new zzxn();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final zzxz f21084b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final zzyc f21085c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f21086d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private Surface f21087e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private float f21088f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private float f21089g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private float f21090h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private float f21091i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private int f21092j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private long f21093k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private long f21094l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private long f21095m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private long f21096n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private long f21097o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private long f21098p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private long f21099q;

    public zzyd(Context context) {
        zzxz zzxzVarB;
        if (context != null) {
            Context applicationContext = context.getApplicationContext();
            int i10 = zzew.f17494a;
            zzxzVarB = zzyb.b(applicationContext);
            if (zzxzVarB == null) {
                zzxzVarB = zzya.b(applicationContext);
            }
        } else {
            zzxzVarB = null;
        }
        this.f21084b = zzxzVarB;
        this.f21085c = zzxzVarB != null ? zzyc.a() : null;
        this.f21093k = -9223372036854775807L;
        this.f21094l = -9223372036854775807L;
        this.f21088f = -1.0f;
        this.f21091i = 1.0f;
        this.f21092j = 0;
    }

    public static /* synthetic */ void b(zzyd zzydVar, Display display) {
        if (display == null) {
            zzee.e("VideoFrameReleaseHelper", "Unable to query display refresh rate");
            zzydVar.f21093k = -9223372036854775807L;
            zzydVar.f21094l = -9223372036854775807L;
        } else {
            double refreshRate = display.getRefreshRate();
            Double.isNaN(refreshRate);
            long j10 = (long) (1.0E9d / refreshRate);
            zzydVar.f21093k = j10;
            zzydVar.f21094l = (j10 * 80) / 100;
        }
    }

    private final void k() {
        Surface surface;
        if (zzew.f17494a < 30 || (surface = this.f21087e) == null || this.f21092j == Integer.MIN_VALUE || this.f21090h == 0.0f) {
            return;
        }
        this.f21090h = 0.0f;
        zzxy.a(surface, 0.0f);
    }

    private final void l() {
        this.f21095m = 0L;
        this.f21098p = -1L;
        this.f21096n = -1L;
    }

    /* JADX WARN: Removed duplicated region for block: B:31:0x0065  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0069 A[RETURN] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private final void m() {
        /*
            r9 = this;
            int r0 = com.google.android.gms.internal.ads.zzew.f17494a
            r1 = 30
            if (r0 < r1) goto L6f
            android.view.Surface r0 = r9.f21087e
            if (r0 != 0) goto Lb
            goto L6f
        Lb:
            com.google.android.gms.internal.ads.zzxn r0 = r9.f21083a
            boolean r0 = r0.g()
            if (r0 == 0) goto L1a
            com.google.android.gms.internal.ads.zzxn r0 = r9.f21083a
            float r0 = r0.a()
            goto L1c
        L1a:
            float r0 = r9.f21088f
        L1c:
            float r2 = r9.f21089g
            int r3 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
            if (r3 != 0) goto L23
            return
        L23:
            r3 = 1
            r4 = 0
            r5 = -1082130432(0xffffffffbf800000, float:-1.0)
            int r6 = (r0 > r5 ? 1 : (r0 == r5 ? 0 : -1))
            if (r6 == 0) goto L58
            int r2 = (r2 > r5 ? 1 : (r2 == r5 ? 0 : -1))
            if (r2 == 0) goto L58
            com.google.android.gms.internal.ads.zzxn r1 = r9.f21083a
            boolean r1 = r1.g()
            r2 = 1065353216(0x3f800000, float:1.0)
            if (r1 == 0) goto L4b
            com.google.android.gms.internal.ads.zzxn r1 = r9.f21083a
            long r5 = r1.d()
            r7 = 5000000000(0x12a05f200, double:2.470328229E-314)
            int r1 = (r5 > r7 ? 1 : (r5 == r7 ? 0 : -1))
            if (r1 < 0) goto L4b
            r2 = 1017370378(0x3ca3d70a, float:0.02)
        L4b:
            float r1 = r9.f21089g
            float r1 = r0 - r1
            float r1 = java.lang.Math.abs(r1)
            int r1 = (r1 > r2 ? 1 : (r1 == r2 ? 0 : -1))
            if (r1 < 0) goto L65
            goto L66
        L58:
            int r2 = (r0 > r5 ? 1 : (r0 == r5 ? 0 : -1))
            if (r2 != 0) goto L6a
            com.google.android.gms.internal.ads.zzxn r2 = r9.f21083a
            int r2 = r2.b()
            if (r2 < r1) goto L65
            goto L66
        L65:
            r3 = 0
        L66:
            if (r3 == 0) goto L69
            goto L6a
        L69:
            return
        L6a:
            r9.f21089g = r0
            r9.n(r4)
        L6f:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzyd.m():void");
    }

    private final void n(boolean z10) {
        Surface surface;
        if (zzew.f17494a < 30 || (surface = this.f21087e) == null || this.f21092j == Integer.MIN_VALUE) {
            return;
        }
        float f10 = 0.0f;
        if (this.f21086d) {
            float f11 = this.f21089g;
            if (f11 != -1.0f) {
                f10 = this.f21091i * f11;
            }
        }
        if (z10 || this.f21090h != f10) {
            this.f21090h = f10;
            zzxy.a(surface, f10);
        }
    }

    public final long a(long j10) {
        long j11;
        if (this.f21098p != -1 && this.f21083a.g()) {
            long jC = this.f21083a.c();
            long j12 = this.f21099q + ((long) ((jC * (this.f21095m - this.f21098p)) / this.f21091i));
            if (Math.abs(j10 - j12) > 20000000) {
                l();
            } else {
                j10 = j12;
            }
        }
        this.f21096n = this.f21095m;
        this.f21097o = j10;
        zzyc zzycVar = this.f21085c;
        if (zzycVar == null || this.f21093k == -9223372036854775807L) {
            return j10;
        }
        long j13 = zzycVar.f21078o;
        if (j13 == -9223372036854775807L) {
            return j10;
        }
        long j14 = this.f21093k;
        long j15 = j13 + (((j10 - j13) / j14) * j14);
        if (j10 <= j15) {
            j11 = j15 - j14;
        } else {
            j15 = j14 + j15;
            j11 = j15;
        }
        long j16 = this.f21094l;
        if (j15 - j10 >= j10 - j11) {
            j15 = j11;
        }
        return j15 - j16;
    }

    public final void c(float f10) {
        this.f21088f = f10;
        this.f21083a.f();
        m();
    }

    public final void d(long j10) {
        long j11 = this.f21096n;
        if (j11 != -1) {
            this.f21098p = j11;
            this.f21099q = this.f21097o;
        }
        this.f21095m++;
        this.f21083a.e(j10 * 1000);
        m();
    }

    public final void e(float f10) {
        this.f21091i = f10;
        l();
        n(false);
    }

    public final void f() {
        l();
    }

    public final void g() {
        this.f21086d = true;
        l();
        if (this.f21084b != null) {
            zzyc zzycVar = this.f21085c;
            Objects.requireNonNull(zzycVar);
            zzycVar.b();
            this.f21084b.a(new zzxx(this));
        }
        n(false);
    }

    public final void h() {
        this.f21086d = false;
        zzxz zzxzVar = this.f21084b;
        if (zzxzVar != null) {
            zzxzVar.zza();
            zzyc zzycVar = this.f21085c;
            Objects.requireNonNull(zzycVar);
            zzycVar.c();
        }
        k();
    }

    public final void i(Surface surface) {
        if (true == (surface instanceof zzxv)) {
            surface = null;
        }
        if (this.f21087e == surface) {
            return;
        }
        k();
        this.f21087e = surface;
        n(true);
    }

    public final void j(int i10) {
        if (this.f21092j == i10) {
            return;
        }
        this.f21092j = i10;
        n(true);
    }
}
