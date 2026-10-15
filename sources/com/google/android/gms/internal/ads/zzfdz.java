package com.google.android.gms.internal.ads;

import android.content.Context;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzfdz implements zzdbl, zzcve, zzdbp {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final zzfen f17980o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final zzfec f17981p;

    zzfdz(Context context, zzfen zzfenVar) {
        this.f17980o = zzfenVar;
        this.f17981p = zzfeb.a(context, 13);
    }

    @Override // com.google.android.gms.internal.ads.zzcve
    public final void W0(com.google.android.gms.ads.internal.client.zze zzeVar) {
        if (((Boolean) zzbcd.f10515d.e()).booleanValue()) {
            zzfen zzfenVar = this.f17980o;
            zzfec zzfecVar = this.f17981p;
            zzfecVar.D(zzeVar.V3().toString());
            zzfecVar.y0(false);
            zzfenVar.a(zzfecVar);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdbl
    public final void c() {
    }

    @Override // com.google.android.gms.internal.ads.zzdbl
    public final void e() {
        if (((Boolean) zzbcd.f10515d.e()).booleanValue()) {
            this.f17981p.f();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdbp
    public final void zza() {
    }

    @Override // com.google.android.gms.internal.ads.zzdbp
    public final void zzb() {
        if (((Boolean) zzbcd.f10515d.e()).booleanValue()) {
            zzfen zzfenVar = this.f17980o;
            zzfec zzfecVar = this.f17981p;
            zzfecVar.y0(true);
            zzfenVar.a(zzfecVar);
        }
    }
}
