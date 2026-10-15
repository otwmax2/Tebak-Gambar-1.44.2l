package com.google.android.gms.internal.appset;

import com.google.android.gms.common.util.DefaultClock;

/* JADX INFO: compiled from: com.google.android.gms:play-services-appset@@16.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzj implements Runnable {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    final /* synthetic */ zzl f21224o;

    /* synthetic */ zzj(zzl zzlVar, zzi zziVar) {
        this.f21224o = zzlVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        long jB = this.f21224o.b();
        if (jB == -1 || DefaultClock.d().a() <= jB) {
            return;
        }
        zzl.f(this.f21224o.f21226a);
    }
}
