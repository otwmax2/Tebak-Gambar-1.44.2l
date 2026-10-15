package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzeux implements zzfbd {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzevt f17448a;

    public zzeux(zzevt zzevtVar) {
        this.f17448a = zzevtVar;
    }

    @Override // com.google.android.gms.internal.ads.zzfbd
    public final void a(zzfas zzfasVar) {
        zzfasVar.f17832a = ((zzeuu) this.f17448a).b();
    }

    @Override // com.google.android.gms.internal.ads.zzfbd
    public final zzfut b(zzfbe zzfbeVar) {
        zzeuy zzeuyVar = (zzeuy) zzfbeVar;
        return ((zzeuu) this.f17448a).c(zzeuyVar.f17450b, zzeuyVar.f17449a, null);
    }
}
