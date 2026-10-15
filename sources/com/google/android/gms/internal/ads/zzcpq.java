package com.google.android.gms.internal.ads;

import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class zzcpq implements Runnable {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final /* synthetic */ AtomicReference f13721o;

    public /* synthetic */ zzcpq(AtomicReference atomicReference) {
        this.f13721o = atomicReference;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzcps.o(this.f13721o);
    }
}
