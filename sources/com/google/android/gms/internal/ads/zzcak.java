package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzcak implements Runnable {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    final /* synthetic */ zzcan f11661o;

    zzcak(zzcan zzcanVar) {
        this.f11661o = zzcanVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzcan zzcanVar = this.f11661o;
        if (zzcanVar.E != null) {
            zzcanVar.E.d();
            this.f11661o.E.g();
        }
    }
}
