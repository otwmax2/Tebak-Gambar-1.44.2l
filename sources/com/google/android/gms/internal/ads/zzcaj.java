package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzcaj implements Runnable {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    final /* synthetic */ int f11658o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    final /* synthetic */ int f11659p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    final /* synthetic */ zzcan f11660q;

    zzcaj(zzcan zzcanVar, int i10, int i11) {
        this.f11660q = zzcanVar;
        this.f11658o = i10;
        this.f11659p = i11;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzcan zzcanVar = this.f11660q;
        if (zzcanVar.E != null) {
            zzcanVar.E.a(this.f11658o, this.f11659p);
        }
    }
}
