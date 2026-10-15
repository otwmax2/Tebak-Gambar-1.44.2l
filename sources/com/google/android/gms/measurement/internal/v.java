package com.google.android.gms.measurement.internal;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement@@20.1.2 */
/* JADX INFO: loaded from: classes2.dex */
final class v implements Runnable {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    final /* synthetic */ boolean f24324o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    final /* synthetic */ w f24325p;

    v(w wVar, boolean z10) {
        this.f24325p = wVar;
        this.f24324o = z10;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f24325p.f24337a.i(this.f24324o);
    }
}
