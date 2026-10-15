package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzcaw implements Runnable {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    final /* synthetic */ boolean f11682o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    final /* synthetic */ zzcax f11683p;

    zzcaw(zzcax zzcaxVar, boolean z10) {
        this.f11683p = zzcaxVar;
        this.f11682o = z10;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f11683p.t("windowVisibilityChanged", "isVisible", String.valueOf(this.f11682o));
    }
}
