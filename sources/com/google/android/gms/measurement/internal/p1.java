package com.google.android.gms.measurement.internal;

import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-impl@@20.1.2 */
/* JADX INFO: loaded from: classes2.dex */
final class p1 implements Runnable {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    final /* synthetic */ AtomicReference f24249o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    final /* synthetic */ zzin f24250p;

    p1(zzin zzinVar, AtomicReference atomicReference) {
        this.f24250p = zzinVar;
        this.f24249o = atomicReference;
    }

    @Override // java.lang.Runnable
    public final void run() {
        synchronized (this.f24249o) {
            try {
                this.f24249o.set(Long.valueOf(this.f24250p.f24394a.v().m(this.f24250p.f24394a.y().n(), zzel.N)));
            } finally {
                this.f24249o.notify();
            }
        }
    }
}
