package com.google.android.gms.measurement.internal;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-impl@@20.1.2 */
/* JADX INFO: loaded from: classes2.dex */
final class s1 implements Runnable {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    final /* synthetic */ Boolean f24275o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    final /* synthetic */ zzin f24276p;

    s1(zzin zzinVar, Boolean bool) {
        this.f24276p = zzinVar;
        this.f24275o = bool;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f24276p.P(this.f24275o, true);
    }
}
