package com.google.android.gms.measurement.internal;

import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-impl@@20.1.2 */
/* JADX INFO: loaded from: classes2.dex */
final class g1 implements Runnable {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    final /* synthetic */ long f24100o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    final /* synthetic */ zzin f24101p;

    g1(zzin zzinVar, long j10) {
        this.f24101p = zzinVar;
        this.f24100o = j10;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f24101p.w(this.f24100o, true);
        this.f24101p.f24394a.J().Q(new AtomicReference());
    }
}
