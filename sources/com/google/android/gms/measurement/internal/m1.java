package com.google.android.gms.measurement.internal;

import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-impl@@20.1.2 */
/* JADX INFO: loaded from: classes2.dex */
final class m1 implements Runnable {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    final /* synthetic */ AtomicReference f24213o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    final /* synthetic */ String f24214p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    final /* synthetic */ String f24215q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    final /* synthetic */ boolean f24216r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    final /* synthetic */ zzin f24217s;

    m1(zzin zzinVar, AtomicReference atomicReference, String str, String str2, String str3, boolean z10) {
        this.f24217s = zzinVar;
        this.f24213o = atomicReference;
        this.f24214p = str2;
        this.f24215q = str3;
        this.f24216r = z10;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f24217s.f24394a.J().V(this.f24213o, null, this.f24214p, this.f24215q, this.f24216r);
    }
}
