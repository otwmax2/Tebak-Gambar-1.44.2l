package com.google.android.gms.measurement.internal;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-impl@@20.1.2 */
/* JADX INFO: loaded from: classes2.dex */
final class b3 implements Runnable {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    final /* synthetic */ zzeo f23994o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    final /* synthetic */ zzka f23995p;

    b3(zzka zzkaVar, zzeo zzeoVar) {
        this.f23995p = zzkaVar;
        this.f23994o = zzeoVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        synchronized (this.f23995p) {
            this.f23995p.f24803o = false;
            if (!this.f23995p.f24805q.v()) {
                this.f23995p.f24805q.f24394a.U().l().a("Connected to remote service");
                this.f23995p.f24805q.s(this.f23994o);
            }
        }
    }
}
