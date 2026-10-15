package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzapo implements Runnable {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    final /* synthetic */ zzapp f9671o;

    zzapo(zzapp zzappVar) {
        this.f9671o = zzappVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        synchronized (this.f9671o.B) {
            if (this.f9671o.C) {
                return;
            }
            this.f9671o.C = true;
            try {
                zzapp.n(this.f9671o);
            } catch (Exception e10) {
                this.f9671o.f9677t.c(2023, -1L, e10);
            }
            synchronized (this.f9671o.B) {
                this.f9671o.C = false;
            }
        }
    }
}
