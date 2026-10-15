package com.google.android.gms.measurement.internal;

import android.os.RemoteException;
import android.text.TextUtils;
import com.google.android.gms.common.internal.Preconditions;
import java.util.Collections;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-impl@@20.1.2 */
/* JADX INFO: loaded from: classes2.dex */
final class w2 implements Runnable {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    final /* synthetic */ AtomicReference f24350o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    final /* synthetic */ String f24351p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    final /* synthetic */ String f24352q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    final /* synthetic */ zzp f24353r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    final /* synthetic */ zzkb f24354s;

    w2(zzkb zzkbVar, AtomicReference atomicReference, String str, String str2, String str3, zzp zzpVar) {
        this.f24354s = zzkbVar;
        this.f24350o = atomicReference;
        this.f24351p = str2;
        this.f24352q = str3;
        this.f24353r = zzpVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        AtomicReference atomicReference;
        zzkb zzkbVar;
        zzeo zzeoVar;
        synchronized (this.f24350o) {
            try {
                try {
                    zzkbVar = this.f24354s;
                    zzeoVar = zzkbVar.f24807d;
                } catch (RemoteException e10) {
                    this.f24354s.f24394a.U().m().d("(legacy) Failed to get conditional properties; remote exception", null, this.f24351p, e10);
                    this.f24350o.set(Collections.emptyList());
                    atomicReference = this.f24350o;
                }
                if (zzeoVar == null) {
                    zzkbVar.f24394a.U().m().d("(legacy) Failed to get conditional properties; not connected to service", null, this.f24351p, this.f24352q);
                    this.f24350o.set(Collections.emptyList());
                    return;
                }
                if (TextUtils.isEmpty(null)) {
                    Preconditions.k(this.f24353r);
                    this.f24350o.set(zzeoVar.b5(this.f24351p, this.f24352q, this.f24353r));
                } else {
                    this.f24350o.set(zzeoVar.c4(null, this.f24351p, this.f24352q));
                }
                this.f24354s.C();
                atomicReference = this.f24350o;
                atomicReference.notify();
            } finally {
                this.f24350o.notify();
            }
        }
    }
}
