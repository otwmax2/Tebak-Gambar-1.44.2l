package com.google.android.gms.internal.ads;

import android.os.ParcelFileDescriptor;
import android.os.RemoteException;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzdxl implements zzfuf {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ zzbtj f15875a;

    zzdxl(zzdxp zzdxpVar, zzbtj zzbtjVar) {
        this.f15875a = zzbtjVar;
    }

    @Override // com.google.android.gms.internal.ads.zzfuf
    public final void a(Throwable th) {
        try {
            this.f15875a.q1(com.google.android.gms.ads.internal.util.zzaz.W3(th));
        } catch (RemoteException e10) {
            com.google.android.gms.ads.internal.util.zze.l("Service can't call client", e10);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzfuf
    public final /* bridge */ /* synthetic */ void c(Object obj) {
        try {
            this.f15875a.S0((ParcelFileDescriptor) obj);
        } catch (RemoteException e10) {
            com.google.android.gms.ads.internal.util.zze.l("Service can't call client", e10);
        }
    }
}
