package com.google.android.gms.measurement.internal;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement@@20.1.2 */
/* JADX INFO: loaded from: classes2.dex */
final class s3 implements Runnable {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    final /* synthetic */ zzlj f24279o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    final /* synthetic */ zzli f24280p;

    s3(zzli zzliVar, zzlj zzljVar) {
        this.f24280p = zzliVar;
        this.f24279o = zzljVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzli.i0(this.f24280p, this.f24279o);
        this.f24280p.r();
    }
}
