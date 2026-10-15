package com.google.android.gms.common.api.internal;

/* JADX INFO: compiled from: com.google.android.gms:play-services-base@@18.0.1 */
/* JADX INFO: loaded from: classes.dex */
final class e0 implements Runnable {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    final /* synthetic */ com.google.android.gms.signin.internal.zak f7099o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    final /* synthetic */ zact f7100p;

    e0(zact zactVar, com.google.android.gms.signin.internal.zak zakVar) {
        this.f7100p = zactVar;
        this.f7099o = zakVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zact.Sa(this.f7100p, this.f7099o);
    }
}
