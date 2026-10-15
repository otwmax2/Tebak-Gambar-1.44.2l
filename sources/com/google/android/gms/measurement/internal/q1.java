package com.google.android.gms.measurement.internal;

import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-impl@@20.1.2 */
/* JADX INFO: loaded from: classes2.dex */
final class q1 implements Runnable {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    final /* synthetic */ AtomicReference f24257o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    final /* synthetic */ zzin f24258p;

    q1(zzin zzinVar, AtomicReference atomicReference) {
        this.f24258p = zzinVar;
        this.f24257o = atomicReference;
    }

    @Override // java.lang.Runnable
    public final void run() {
        synchronized (this.f24257o) {
            try {
                this.f24257o.set(Integer.valueOf(this.f24258p.f24394a.v().j(this.f24258p.f24394a.y().n(), zzel.O)));
            } finally {
                this.f24257o.notify();
            }
        }
    }
}
