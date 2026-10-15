package com.google.android.gms.measurement.internal;

import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-impl@@20.1.2 */
/* JADX INFO: loaded from: classes2.dex */
final class r1 implements Runnable {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    final /* synthetic */ AtomicReference f24268o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    final /* synthetic */ zzin f24269p;

    r1(zzin zzinVar, AtomicReference atomicReference) {
        this.f24269p = zzinVar;
        this.f24268o = atomicReference;
    }

    @Override // java.lang.Runnable
    public final void run() {
        synchronized (this.f24268o) {
            try {
                this.f24268o.set(Double.valueOf(this.f24269p.f24394a.v().f(this.f24269p.f24394a.y().n(), zzel.P)));
            } finally {
                this.f24268o.notify();
            }
        }
    }
}
