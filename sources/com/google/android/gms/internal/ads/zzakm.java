package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzakm implements Runnable {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    final /* synthetic */ String f9434o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    final /* synthetic */ long f9435p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    final /* synthetic */ zzako f9436q;

    zzakm(zzako zzakoVar, String str, long j10) {
        this.f9436q = zzakoVar;
        this.f9434o = str;
        this.f9435p = j10;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f9436q.f9437o.a(this.f9434o, this.f9435p);
        zzako zzakoVar = this.f9436q;
        zzakoVar.f9437o.b(zzakoVar.toString());
    }
}
