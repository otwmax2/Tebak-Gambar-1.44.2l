package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzcah implements Runnable {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    final /* synthetic */ String f11654o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    final /* synthetic */ String f11655p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    final /* synthetic */ zzcan f11656q;

    zzcah(zzcan zzcanVar, String str, String str2) {
        this.f11656q = zzcanVar;
        this.f11654o = str;
        this.f11655p = str2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzcan zzcanVar = this.f11656q;
        if (zzcanVar.E != null) {
            zzcanVar.E.n(this.f11654o, this.f11655p);
        }
    }
}
