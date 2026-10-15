package com.google.android.gms.measurement.internal;

import android.content.ComponentName;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-impl@@20.1.2 */
/* JADX INFO: loaded from: classes2.dex */
final class a3 implements Runnable {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    final /* synthetic */ ComponentName f23982o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    final /* synthetic */ zzka f23983p;

    a3(zzka zzkaVar, ComponentName componentName) {
        this.f23983p = zzkaVar;
        this.f23982o = componentName;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzkb.K(this.f23983p.f24805q, this.f23982o);
    }
}
