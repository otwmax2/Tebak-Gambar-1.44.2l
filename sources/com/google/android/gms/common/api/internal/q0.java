package com.google.android.gms.common.api.internal;

/* JADX INFO: compiled from: com.google.android.gms:play-services-base@@18.0.1 */
/* JADX INFO: loaded from: classes.dex */
final class q0 implements Runnable {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    final /* synthetic */ a f7135o;

    q0(a aVar) {
        this.f7135o = aVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f7135o.A.lock();
        try {
            a.x(this.f7135o);
        } finally {
            this.f7135o.A.unlock();
        }
    }
}
