package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzcav implements Runnable {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    final /* synthetic */ zzcax f11681o;

    zzcav(zzcax zzcaxVar) {
        this.f11681o = zzcaxVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f11681o.t("surfaceDestroyed", new String[0]);
    }
}
