package com.google.android.gms.internal.ads;

import android.os.ParcelFileDescriptor;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzdus extends zzbti {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    final /* synthetic */ zzdut f15725o;

    protected zzdus(zzdut zzdutVar) {
        this.f15725o = zzdutVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbtj
    public final void S0(ParcelFileDescriptor parcelFileDescriptor) {
        this.f15725o.f15726o.c(new ParcelFileDescriptor.AutoCloseInputStream(parcelFileDescriptor));
    }

    @Override // com.google.android.gms.internal.ads.zzbtj
    public final void q1(com.google.android.gms.ads.internal.util.zzaz zzazVar) {
        this.f15725o.f15726o.d(zzazVar.V3());
    }
}
