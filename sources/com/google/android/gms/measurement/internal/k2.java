package com.google.android.gms.measurement.internal;

import android.os.RemoteException;
import com.google.android.gms.common.internal.Preconditions;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-impl@@20.1.2 */
/* JADX INFO: loaded from: classes2.dex */
final class k2 implements Runnable {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    final /* synthetic */ AtomicReference f24185o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    final /* synthetic */ zzp f24186p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    final /* synthetic */ zzkb f24187q;

    k2(zzkb zzkbVar, AtomicReference atomicReference, zzp zzpVar) {
        this.f24187q = zzkbVar;
        this.f24185o = atomicReference;
        this.f24186p = zzpVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        AtomicReference atomicReference;
        synchronized (this.f24185o) {
            try {
                try {
                } catch (RemoteException e10) {
                    this.f24187q.f24394a.U().m().b("Failed to get app instance id", e10);
                    atomicReference = this.f24185o;
                }
                if (!this.f24187q.f24394a.D().l().i(zzag.ANALYTICS_STORAGE)) {
                    this.f24187q.f24394a.U().s().a("Analytics storage consent denied; will not get app instance id");
                    this.f24187q.f24394a.G().A(null);
                    this.f24187q.f24394a.D().f24362g.b(null);
                    this.f24185o.set(null);
                    return;
                }
                zzkb zzkbVar = this.f24187q;
                zzeo zzeoVar = zzkbVar.f24807d;
                if (zzeoVar == null) {
                    zzkbVar.f24394a.U().m().a("Failed to get app instance id");
                    return;
                }
                Preconditions.k(this.f24186p);
                this.f24185o.set(zzeoVar.i3(this.f24186p));
                String str = (String) this.f24185o.get();
                if (str != null) {
                    this.f24187q.f24394a.G().A(str);
                    this.f24187q.f24394a.D().f24362g.b(str);
                }
                this.f24187q.C();
                atomicReference = this.f24185o;
                atomicReference.notify();
            } finally {
                this.f24185o.notify();
            }
        }
    }
}
