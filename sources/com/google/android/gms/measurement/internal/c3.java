package com.google.android.gms.measurement.internal;

import android.content.ComponentName;
import android.content.Context;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-impl@@20.1.2 */
/* JADX INFO: loaded from: classes2.dex */
final class c3 implements Runnable {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    final /* synthetic */ zzka f24032o;

    c3(zzka zzkaVar) {
        this.f24032o = zzkaVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzkb zzkbVar = this.f24032o.f24805q;
        Context contextN0 = zzkbVar.f24394a.N0();
        this.f24032o.f24805q.f24394a.t();
        zzkb.K(zzkbVar, new ComponentName(contextN0, "com.google.android.gms.measurement.AppMeasurementService"));
    }
}
