package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzbyr extends Thread {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    final /* synthetic */ String f11578o;

    zzbyr(zzbyt zzbytVar, String str) {
        this.f11578o = str;
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public final void run() {
        new zzbzf(null).o(this.f11578o);
    }
}
