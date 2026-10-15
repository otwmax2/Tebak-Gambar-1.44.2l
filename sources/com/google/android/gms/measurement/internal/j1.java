package com.google.android.gms.measurement.internal;

import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-impl@@20.1.2 */
/* JADX INFO: loaded from: classes2.dex */
final class j1 implements Runnable {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    final /* synthetic */ AtomicReference f24162o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    final /* synthetic */ String f24163p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    final /* synthetic */ String f24164q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    final /* synthetic */ zzin f24165r;

    j1(zzin zzinVar, AtomicReference atomicReference, String str, String str2, String str3) {
        this.f24165r = zzinVar;
        this.f24162o = atomicReference;
        this.f24163p = str2;
        this.f24164q = str3;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f24165r.f24394a.J().S(this.f24162o, null, this.f24163p, this.f24164q);
    }
}
