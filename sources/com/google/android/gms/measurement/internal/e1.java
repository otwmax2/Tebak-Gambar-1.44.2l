package com.google.android.gms.measurement.internal;

import android.os.Bundle;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-impl@@20.1.2 */
/* JADX INFO: loaded from: classes2.dex */
final class e1 implements Runnable {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    final /* synthetic */ String f24057o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    final /* synthetic */ String f24058p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    final /* synthetic */ long f24059q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    final /* synthetic */ Bundle f24060r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    final /* synthetic */ boolean f24061s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    final /* synthetic */ boolean f24062t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    final /* synthetic */ boolean f24063u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    final /* synthetic */ String f24064v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    final /* synthetic */ zzin f24065w;

    e1(zzin zzinVar, String str, String str2, long j10, Bundle bundle, boolean z10, boolean z11, boolean z12, String str3) {
        this.f24065w = zzinVar;
        this.f24057o = str;
        this.f24058p = str2;
        this.f24059q = j10;
        this.f24060r = bundle;
        this.f24061s = z10;
        this.f24062t = z11;
        this.f24063u = z12;
        this.f24064v = str3;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f24065w.s(this.f24057o, this.f24058p, this.f24059q, this.f24060r, this.f24061s, this.f24062t, this.f24063u, this.f24064v);
    }
}
