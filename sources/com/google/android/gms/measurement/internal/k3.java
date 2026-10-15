package com.google.android.gms.measurement.internal;

import com.vungle.warren.AdLoader;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-impl@@20.1.2 */
/* JADX INFO: loaded from: classes2.dex */
final class k3 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private j3 f24188a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final /* synthetic */ zzkr f24189b;

    k3(zzkr zzkrVar) {
        this.f24189b = zzkrVar;
    }

    final void a(long j10) {
        this.f24188a = new j3(this, this.f24189b.f24394a.x().a(), j10);
        this.f24189b.f24831c.postDelayed(this.f24188a, AdLoader.RETRY_DELAY);
    }

    final void b() {
        this.f24189b.c();
        j3 j3Var = this.f24188a;
        if (j3Var != null) {
            this.f24189b.f24831c.removeCallbacks(j3Var);
        }
        this.f24189b.f24394a.D().f24372q.a(false);
    }
}
