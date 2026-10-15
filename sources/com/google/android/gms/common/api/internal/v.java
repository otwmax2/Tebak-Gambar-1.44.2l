package com.google.android.gms.common.api.internal;

/* JADX INFO: compiled from: com.google.android.gms:play-services-base@@18.0.1 */
/* JADX INFO: loaded from: classes.dex */
final class v implements Runnable {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    final /* synthetic */ int f7148o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    final /* synthetic */ zabq f7149p;

    v(zabq zabqVar, int i10) {
        this.f7149p = zabqVar;
        this.f7148o = i10;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f7149p.h(this.f7148o);
    }
}
