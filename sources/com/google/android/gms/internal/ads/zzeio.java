package com.google.android.gms.internal.ads;

import android.os.RemoteException;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzeio {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzdgt f16735a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final zzeib f16736b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final zzcur f16737c;

    public zzeio(zzdgt zzdgtVar, zzfdk zzfdkVar) {
        this.f16735a = zzdgtVar;
        final zzeib zzeibVar = new zzeib(zzfdkVar);
        this.f16736b = zzeibVar;
        final zzbkg zzbkgVarG = zzdgtVar.g();
        this.f16737c = new zzcur() { // from class: com.google.android.gms.internal.ads.zzein
            @Override // com.google.android.gms.internal.ads.zzcur
            public final void v(com.google.android.gms.ads.internal.client.zze zzeVar) {
                zzeib zzeibVar2 = zzeibVar;
                zzbkg zzbkgVar = zzbkgVarG;
                zzeibVar2.v(zzeVar);
                if (zzbkgVar != null) {
                    try {
                        zzbkgVar.A(zzeVar);
                    } catch (RemoteException e10) {
                        zzbza.i("#007 Could not call remote method.", e10);
                    }
                }
                if (zzbkgVar != null) {
                    try {
                        zzbkgVar.F(zzeVar.f5841o);
                    } catch (RemoteException e11) {
                        zzbza.i("#007 Could not call remote method.", e11);
                    }
                }
            }
        };
    }

    public final zzcur a() {
        return this.f16737c;
    }

    public final zzcwc b() {
        return this.f16736b;
    }

    public final zzden c() {
        return new zzden(this.f16735a, this.f16736b.a());
    }

    public final zzeib d() {
        return this.f16736b;
    }

    public final void e(com.google.android.gms.ads.internal.client.zzbh zzbhVar) {
        this.f16736b.e(zzbhVar);
    }
}
