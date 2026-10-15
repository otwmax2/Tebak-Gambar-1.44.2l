package com.google.android.gms.common.api.internal;

import com.google.android.gms.common.ConnectionResult;

/* JADX INFO: compiled from: com.google.android.gms:play-services-base@@18.0.1 */
/* JADX INFO: loaded from: classes.dex */
final class d0 implements Runnable {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    final /* synthetic */ zact f7097o;

    d0(zact zactVar) {
        this.f7097o = zactVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f7097o.f7255u.b(new ConnectionResult(4));
    }
}
