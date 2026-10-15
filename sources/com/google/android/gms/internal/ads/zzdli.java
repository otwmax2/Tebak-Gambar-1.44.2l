package com.google.android.gms.internal.ads;

import com.google.android.gms.common.util.VisibleForTesting;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
@VisibleForTesting
public final class zzdli extends zzdks implements zzdcc {

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private zzdcc f15091t;

    protected final synchronized void c(com.google.android.gms.ads.internal.client.zza zzaVar, zzbgi zzbgiVar, com.google.android.gms.ads.internal.overlay.zzo zzoVar, zzbgk zzbgkVar, com.google.android.gms.ads.internal.overlay.zzz zzzVar, zzdcc zzdccVar) {
        super.a(zzaVar, zzbgiVar, zzoVar, zzbgkVar, zzzVar);
        this.f15091t = zzdccVar;
    }

    @Override // com.google.android.gms.internal.ads.zzdcc
    public final synchronized void p() {
        zzdcc zzdccVar = this.f15091t;
        if (zzdccVar != null) {
            zzdccVar.p();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdcc
    public final synchronized void q() {
        zzdcc zzdccVar = this.f15091t;
        if (zzdccVar != null) {
            zzdccVar.q();
        }
    }
}
