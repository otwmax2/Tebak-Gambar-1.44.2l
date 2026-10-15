package com.google.android.gms.internal.measurement;

import android.os.RemoteException;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-sdk-api@@20.1.2 */
/* JADX INFO: loaded from: classes2.dex */
abstract class zzdt implements Runnable {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    final long f23451o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    final long f23452p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    final boolean f23453q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    final /* synthetic */ zzee f23454r;

    zzdt(zzee zzeeVar, boolean z10) {
        this.f23454r = zzeeVar;
        this.f23451o = zzeeVar.f23477b.a();
        this.f23452p = zzeeVar.f23477b.b();
        this.f23453q = z10;
    }

    abstract void a() throws RemoteException;

    protected void b() {
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (this.f23454r.f23482g) {
            b();
            return;
        }
        try {
            a();
        } catch (Exception e10) {
            this.f23454r.l(e10, false, this.f23453q);
            b();
        }
    }
}
