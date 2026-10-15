package com.google.android.gms.internal.ads;

import android.os.ParcelFileDescriptor;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzdwy extends zzbtf {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    final /* synthetic */ zzdwz f15846o;

    protected zzdwy(zzdwz zzdwzVar) {
        this.f15846o = zzdwzVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbtg
    public final void S0(ParcelFileDescriptor parcelFileDescriptor) {
        this.f15846o.f15847o.c(new ParcelFileDescriptor.AutoCloseInputStream(parcelFileDescriptor));
    }

    @Override // com.google.android.gms.internal.ads.zzbtg
    public final void q1(com.google.android.gms.ads.internal.util.zzaz zzazVar) {
        this.f15846o.f15847o.d(zzazVar.V3());
    }
}
