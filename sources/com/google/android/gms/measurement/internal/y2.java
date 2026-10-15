package com.google.android.gms.measurement.internal;

import android.os.RemoteException;
import android.text.TextUtils;
import com.google.android.gms.common.internal.Preconditions;
import java.util.Collections;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-impl@@20.1.2 */
/* JADX INFO: loaded from: classes2.dex */
final class y2 implements Runnable {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    final /* synthetic */ AtomicReference f24399o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    final /* synthetic */ String f24400p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    final /* synthetic */ String f24401q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    final /* synthetic */ zzp f24402r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    final /* synthetic */ boolean f24403s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    final /* synthetic */ zzkb f24404t;

    y2(zzkb zzkbVar, AtomicReference atomicReference, String str, String str2, String str3, zzp zzpVar, boolean z10) {
        this.f24404t = zzkbVar;
        this.f24399o = atomicReference;
        this.f24400p = str2;
        this.f24401q = str3;
        this.f24402r = zzpVar;
        this.f24403s = z10;
    }

    @Override // java.lang.Runnable
    public final void run() {
        AtomicReference atomicReference;
        zzkb zzkbVar;
        zzeo zzeoVar;
        synchronized (this.f24399o) {
            try {
                try {
                    zzkbVar = this.f24404t;
                    zzeoVar = zzkbVar.f24807d;
                } catch (RemoteException e10) {
                    this.f24404t.f24394a.U().m().d("(legacy) Failed to get user properties; remote exception", null, this.f24400p, e10);
                    this.f24399o.set(Collections.emptyList());
                    atomicReference = this.f24399o;
                }
                if (zzeoVar == null) {
                    zzkbVar.f24394a.U().m().d("(legacy) Failed to get user properties; not connected to service", null, this.f24400p, this.f24401q);
                    this.f24399o.set(Collections.emptyList());
                    return;
                }
                if (TextUtils.isEmpty(null)) {
                    Preconditions.k(this.f24402r);
                    this.f24399o.set(zzeoVar.P6(this.f24400p, this.f24401q, this.f24403s, this.f24402r));
                } else {
                    this.f24399o.set(zzeoVar.x2(null, this.f24400p, this.f24401q, this.f24403s));
                }
                this.f24404t.C();
                atomicReference = this.f24399o;
                atomicReference.notify();
            } finally {
                this.f24399o.notify();
            }
        }
    }
}
