package com.google.android.gms.measurement.internal;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement@@20.1.2 */
/* JADX INFO: loaded from: classes2.dex */
final class r0 implements Runnable {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    final /* synthetic */ zzav f24265o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    final /* synthetic */ String f24266p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    final /* synthetic */ zzha f24267q;

    r0(zzha zzhaVar, zzav zzavVar, String str) {
        this.f24267q = zzhaVar;
        this.f24265o = zzavVar;
        this.f24266p = str;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f24267q.f24735o.a();
        this.f24267q.f24735o.e(this.f24265o, this.f24266p);
    }
}
