package com.google.android.gms.internal.ads;

import android.os.Handler;
import java.io.IOException;
import java.util.concurrent.CopyOnWriteArrayList;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zztb {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f20672a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final zzss f20673b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final CopyOnWriteArrayList f20674c;

    public zztb() {
        this(new CopyOnWriteArrayList(), 0, null, 0L);
    }

    private zztb(CopyOnWriteArrayList copyOnWriteArrayList, int i10, zzss zzssVar, long j10) {
        this.f20674c = copyOnWriteArrayList;
        this.f20672a = 0;
        this.f20673b = zzssVar;
    }

    private static final long n(long j10) {
        long jK0 = zzew.k0(j10);
        if (jK0 == -9223372036854775807L) {
            return -9223372036854775807L;
        }
        return jK0;
    }

    public final zztb a(int i10, zzss zzssVar, long j10) {
        return new zztb(this.f20674c, 0, zzssVar, 0L);
    }

    public final void b(Handler handler, zztc zztcVar) {
        this.f20674c.add(new zzta(handler, zztcVar));
    }

    public final void c(final zzso zzsoVar) {
        for (zzta zztaVar : this.f20674c) {
            final zztc zztcVar = zztaVar.f20671b;
            zzew.z(zztaVar.f20670a, new Runnable() { // from class: com.google.android.gms.internal.ads.zzsv
                @Override // java.lang.Runnable
                public final void run() {
                    zztb zztbVar = this.f20641o;
                    zztcVar.p(0, zztbVar.f20673b, zzsoVar);
                }
            });
        }
    }

    public final void d(int i10, zzaf zzafVar, int i11, Object obj, long j10) {
        c(new zzso(1, i10, zzafVar, 0, null, n(j10), -9223372036854775807L));
    }

    public final void e(final zzsj zzsjVar, final zzso zzsoVar) {
        for (zzta zztaVar : this.f20674c) {
            final zztc zztcVar = zztaVar.f20671b;
            zzew.z(zztaVar.f20670a, new Runnable() { // from class: com.google.android.gms.internal.ads.zzsw
                @Override // java.lang.Runnable
                public final void run() {
                    zztb zztbVar = this.f20644o;
                    zztcVar.i(0, zztbVar.f20673b, zzsjVar, zzsoVar);
                }
            });
        }
    }

    public final void f(zzsj zzsjVar, int i10, int i11, zzaf zzafVar, int i12, Object obj, long j10, long j11) {
        e(zzsjVar, new zzso(1, -1, null, 0, null, n(j10), n(j11)));
    }

    public final void g(final zzsj zzsjVar, final zzso zzsoVar) {
        for (zzta zztaVar : this.f20674c) {
            final zztc zztcVar = zztaVar.f20671b;
            zzew.z(zztaVar.f20670a, new Runnable() { // from class: com.google.android.gms.internal.ads.zzsz
                @Override // java.lang.Runnable
                public final void run() {
                    zztb zztbVar = this.f20658o;
                    zztcVar.b(0, zztbVar.f20673b, zzsjVar, zzsoVar);
                }
            });
        }
    }

    public final void h(zzsj zzsjVar, int i10, int i11, zzaf zzafVar, int i12, Object obj, long j10, long j11) {
        g(zzsjVar, new zzso(1, -1, null, 0, null, n(j10), n(j11)));
    }

    public final void i(final zzsj zzsjVar, final zzso zzsoVar, final IOException iOException, final boolean z10) {
        for (zzta zztaVar : this.f20674c) {
            final zztc zztcVar = zztaVar.f20671b;
            zzew.z(zztaVar.f20670a, new Runnable() { // from class: com.google.android.gms.internal.ads.zzsx
                @Override // java.lang.Runnable
                public final void run() {
                    zztb zztbVar = this.f20648o;
                    zztcVar.B(0, zztbVar.f20673b, zzsjVar, zzsoVar, iOException, z10);
                }
            });
        }
    }

    public final void j(zzsj zzsjVar, int i10, int i11, zzaf zzafVar, int i12, Object obj, long j10, long j11, IOException iOException, boolean z10) {
        i(zzsjVar, new zzso(1, -1, null, 0, null, n(j10), n(j11)), iOException, z10);
    }

    public final void k(final zzsj zzsjVar, final zzso zzsoVar) {
        for (zzta zztaVar : this.f20674c) {
            final zztc zztcVar = zztaVar.f20671b;
            zzew.z(zztaVar.f20670a, new Runnable() { // from class: com.google.android.gms.internal.ads.zzsy
                @Override // java.lang.Runnable
                public final void run() {
                    zztb zztbVar = this.f20654o;
                    zztcVar.v(0, zztbVar.f20673b, zzsjVar, zzsoVar);
                }
            });
        }
    }

    public final void l(zzsj zzsjVar, int i10, int i11, zzaf zzafVar, int i12, Object obj, long j10, long j11) {
        k(zzsjVar, new zzso(1, -1, null, 0, null, n(j10), n(j11)));
    }

    public final void m(zztc zztcVar) {
        for (zzta zztaVar : this.f20674c) {
            if (zztaVar.f20671b == zztcVar) {
                this.f20674c.remove(zztaVar);
            }
        }
    }
}
