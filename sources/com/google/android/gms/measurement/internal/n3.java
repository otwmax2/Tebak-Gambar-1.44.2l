package com.google.android.gms.measurement.internal;

import android.app.ActivityManager;
import android.os.Bundle;
import android.text.TextUtils;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.internal.measurement.zzoc;
import com.google.android.gms.internal.measurement.zzpp;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-impl@@20.1.2 */
/* JADX INFO: loaded from: classes2.dex */
final class n3 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ zzkr f24230a;

    n3(zzkr zzkrVar) {
        this.f24230a = zzkrVar;
    }

    final void a() {
        this.f24230a.c();
        if (this.f24230a.f24394a.D().q(this.f24230a.f24394a.x().a())) {
            this.f24230a.f24394a.D().f24367l.a(true);
            ActivityManager.RunningAppProcessInfo runningAppProcessInfo = new ActivityManager.RunningAppProcessInfo();
            ActivityManager.getMyMemoryState(runningAppProcessInfo);
            if (runningAppProcessInfo.importance == 100) {
                this.f24230a.f24394a.U().q().a("Detected application was in foreground");
                c(this.f24230a.f24394a.x().a(), false);
            }
        }
    }

    final void b(long j10, boolean z10) {
        this.f24230a.c();
        this.f24230a.n();
        if (this.f24230a.f24394a.D().q(j10)) {
            this.f24230a.f24394a.D().f24367l.a(true);
            zzpp.b();
            if (this.f24230a.f24394a.v().y(null, zzel.K0)) {
                this.f24230a.f24394a.y().q();
            }
        }
        this.f24230a.f24394a.D().f24370o.b(j10);
        if (this.f24230a.f24394a.D().f24367l.b()) {
            c(j10, z10);
        }
    }

    @VisibleForTesting
    final void c(long j10, boolean z10) {
        this.f24230a.c();
        if (this.f24230a.f24394a.j()) {
            this.f24230a.f24394a.D().f24370o.b(j10);
            this.f24230a.f24394a.U().q().b("Session started, time", Long.valueOf(this.f24230a.f24394a.x().b()));
            Long lValueOf = Long.valueOf(j10 / 1000);
            this.f24230a.f24394a.G().M("auto", "_sid", lValueOf, j10);
            this.f24230a.f24394a.D().f24367l.a(false);
            Bundle bundle = new Bundle();
            bundle.putLong("_sid", lValueOf.longValue());
            if (this.f24230a.f24394a.v().y(null, zzel.f24562c0) && z10) {
                bundle.putLong("_aib", 1L);
            }
            this.f24230a.f24394a.G().r("auto", "_s", j10, bundle);
            zzoc.b();
            if (this.f24230a.f24394a.v().y(null, zzel.f24568f0)) {
                String strA = this.f24230a.f24394a.D().f24375t.a();
                if (TextUtils.isEmpty(strA)) {
                    return;
                }
                Bundle bundle2 = new Bundle();
                bundle2.putString("_ffr", strA);
                this.f24230a.f24394a.G().r("auto", "_ssr", j10, bundle2);
            }
        }
    }
}
