package com.google.android.gms.measurement.internal;

import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-impl@@20.1.2 */
/* JADX INFO: loaded from: classes2.dex */
final class k1 implements Runnable {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    final /* synthetic */ AtomicReference f24183o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    final /* synthetic */ zzin f24184p;

    k1(zzin zzinVar, AtomicReference atomicReference) {
        this.f24184p = zzinVar;
        this.f24183o = atomicReference;
    }

    @Override // java.lang.Runnable
    public final void run() {
        synchronized (this.f24183o) {
            try {
                this.f24183o.set(Boolean.valueOf(this.f24184p.f24394a.v().y(this.f24184p.f24394a.y().n(), zzel.L)));
            } finally {
                this.f24183o.notify();
            }
        }
    }
}
