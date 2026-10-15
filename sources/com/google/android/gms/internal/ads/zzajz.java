package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzajz implements Runnable {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    final /* synthetic */ zzako f9405o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    final /* synthetic */ zzaka f9406p;

    zzajz(zzaka zzakaVar, zzako zzakoVar) {
        this.f9406p = zzakaVar;
        this.f9405o = zzakoVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            this.f9406p.f9410p.put(this.f9405o);
        } catch (InterruptedException unused) {
            Thread.currentThread().interrupt();
        }
    }
}
