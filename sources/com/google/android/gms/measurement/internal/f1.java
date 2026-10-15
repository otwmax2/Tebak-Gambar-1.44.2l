package com.google.android.gms.measurement.internal;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-impl@@20.1.2 */
/* JADX INFO: loaded from: classes2.dex */
final class f1 implements Runnable {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    final /* synthetic */ String f24079o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    final /* synthetic */ String f24080p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    final /* synthetic */ Object f24081q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    final /* synthetic */ long f24082r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    final /* synthetic */ zzin f24083s;

    f1(zzin zzinVar, String str, String str2, Object obj, long j10) {
        this.f24083s = zzinVar;
        this.f24079o = str;
        this.f24080p = str2;
        this.f24081q = obj;
        this.f24082r = j10;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f24083s.M(this.f24079o, this.f24080p, this.f24081q, this.f24082r);
    }
}
