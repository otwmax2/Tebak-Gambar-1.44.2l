package com.google.android.gms.measurement.internal;

import android.os.Bundle;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-impl@@20.1.2 */
/* JADX INFO: loaded from: classes2.dex */
final class a2 implements Runnable {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    final /* synthetic */ Bundle f23977o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    final /* synthetic */ zziu f23978p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    final /* synthetic */ zziu f23979q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    final /* synthetic */ long f23980r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    final /* synthetic */ zzjb f23981s;

    a2(zzjb zzjbVar, Bundle bundle, zziu zziuVar, zziu zziuVar2, long j10) {
        this.f23981s = zzjbVar;
        this.f23977o = bundle;
        this.f23978p = zziuVar;
        this.f23979q = zziuVar2;
        this.f23980r = j10;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzjb.s(this.f23981s, this.f23977o, this.f23978p, this.f23979q, this.f23980r);
    }
}
