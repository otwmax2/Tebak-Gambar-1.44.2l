package com.google.android.gms.measurement.internal;

import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-impl@@20.1.2 */
/* JADX INFO: loaded from: classes2.dex */
final class o1 implements Runnable {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    final /* synthetic */ AtomicReference f24234o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    final /* synthetic */ zzin f24235p;

    o1(zzin zzinVar, AtomicReference atomicReference) {
        this.f24235p = zzinVar;
        this.f24234o = atomicReference;
    }

    @Override // java.lang.Runnable
    public final void run() {
        synchronized (this.f24234o) {
            try {
                this.f24234o.set(this.f24235p.f24394a.v().s(this.f24235p.f24394a.y().n(), zzel.M));
            } finally {
                this.f24234o.notify();
            }
        }
    }
}
