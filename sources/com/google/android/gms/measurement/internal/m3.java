package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.internal.measurement.zzol;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-impl@@20.1.2 */
/* JADX INFO: loaded from: classes2.dex */
final class m3 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    @VisibleForTesting
    protected long f24220a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @VisibleForTesting
    protected long f24221b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final g f24222c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    final /* synthetic */ zzkr f24223d;

    public m3(zzkr zzkrVar) {
        this.f24223d = zzkrVar;
        this.f24222c = new l3(this, zzkrVar.f24394a);
        long jB = zzkrVar.f24394a.x().b();
        this.f24220a = jB;
        this.f24221b = jB;
    }

    final void a() {
        this.f24222c.b();
        this.f24220a = 0L;
        this.f24221b = 0L;
    }

    final void b(long j10) {
        this.f24222c.b();
    }

    final void c(long j10) {
        this.f24223d.c();
        this.f24222c.b();
        this.f24220a = j10;
        this.f24221b = j10;
    }

    public final boolean d(boolean z10, boolean z11, long j10) {
        this.f24223d.c();
        this.f24223d.d();
        zzol.b();
        if (!this.f24223d.f24394a.v().y(null, zzel.f24570g0) || this.f24223d.f24394a.j()) {
            this.f24223d.f24394a.D().f24370o.b(this.f24223d.f24394a.x().a());
        }
        long j11 = j10 - this.f24220a;
        if (!z10 && j11 < 1000) {
            this.f24223d.f24394a.U().q().b("Screen exposed for less than 1000 ms. Event not sent. time", Long.valueOf(j11));
            return false;
        }
        if (!z11) {
            j11 = j10 - this.f24221b;
            this.f24221b = j10;
        }
        this.f24223d.f24394a.U().q().b("Recording user engagement, ms", Long.valueOf(j11));
        Bundle bundle = new Bundle();
        bundle.putLong("_et", j11);
        zzlp.u(this.f24223d.f24394a.I().o(!this.f24223d.f24394a.v().A()), bundle, true);
        if (!z11) {
            this.f24223d.f24394a.G().q("auto", "_e", bundle);
        }
        this.f24220a = j10;
        this.f24222c.b();
        this.f24222c.d(3600000L);
        return true;
    }
}
