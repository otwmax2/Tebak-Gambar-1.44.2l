package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzbyf extends com.google.android.gms.ads.internal.util.zzb {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final /* synthetic */ zzbyj f11535c;

    zzbyf(zzbyj zzbyjVar) {
        this.f11535c = zzbyjVar;
    }

    @Override // com.google.android.gms.ads.internal.util.zzb
    public final void a() {
        zzbyj zzbyjVar = this.f11535c;
        zzbax zzbaxVar = new zzbax(zzbyjVar.f11544e, zzbyjVar.f11545f.f11605o);
        synchronized (this.f11535c.f11540a) {
            try {
                com.google.android.gms.ads.internal.zzt.g();
                zzbba.a(this.f11535c.f11547h, zzbaxVar);
            } catch (IllegalArgumentException e10) {
                zzbza.h("Cannot config CSI reporter.", e10);
            }
        }
    }
}
