package com.google.android.gms.internal.ads;

import android.os.RemoteException;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public class zzeex extends zzefy {

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private final zzdcl f16475y;

    public zzeex(zzcum zzcumVar, zzdca zzdcaVar, zzcvg zzcvgVar, zzcvv zzcvvVar, zzcwa zzcwaVar, zzcvb zzcvbVar, zzczi zzcziVar, zzdcs zzdcsVar, zzcwu zzcwuVar, zzdcl zzdclVar, zzcze zzczeVar) {
        super(zzcumVar, zzdcaVar, zzcvgVar, zzcvvVar, zzcwaVar, zzcziVar, zzcwuVar, zzdcsVar, zzczeVar, zzcvbVar);
        this.f16475y = zzdclVar;
    }

    @Override // com.google.android.gms.internal.ads.zzefy, com.google.android.gms.internal.ads.zzbnl
    public final void E() {
        this.f16475y.a();
    }

    @Override // com.google.android.gms.internal.ads.zzefy, com.google.android.gms.internal.ads.zzbnl
    public final void V3(zzbup zzbupVar) {
        this.f16475y.I(zzbupVar);
    }

    @Override // com.google.android.gms.internal.ads.zzefy, com.google.android.gms.internal.ads.zzbnl
    public final void t() {
        this.f16475y.zzb();
    }

    @Override // com.google.android.gms.internal.ads.zzefy, com.google.android.gms.internal.ads.zzbnl
    public final void u6(zzbut zzbutVar) throws RemoteException {
        this.f16475y.I(new zzbup(zzbutVar.c(), zzbutVar.b()));
    }

    @Override // com.google.android.gms.internal.ads.zzefy, com.google.android.gms.internal.ads.zzbnl
    public final void v() throws RemoteException {
        this.f16475y.zzb();
    }
}
