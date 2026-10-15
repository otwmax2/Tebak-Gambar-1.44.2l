package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzavd extends zzasv implements zzavf {
    zzavd(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.appopen.client.IAppOpenFullScreenContentCallback");
    }

    @Override // com.google.android.gms.internal.ads.zzavf
    public final void L0(com.google.android.gms.ads.internal.client.zze zzeVar) throws RemoteException {
        Parcel parcelP0 = P0();
        zzasx.e(parcelP0, zzeVar);
        t1(3, parcelP0);
    }

    @Override // com.google.android.gms.internal.ads.zzavf
    public final void a() throws RemoteException {
        t1(2, P0());
    }

    @Override // com.google.android.gms.internal.ads.zzavf
    public final void b() throws RemoteException {
        t1(4, P0());
    }

    @Override // com.google.android.gms.internal.ads.zzavf
    public final void c() throws RemoteException {
        t1(1, P0());
    }

    @Override // com.google.android.gms.internal.ads.zzavf
    public final void zzb() throws RemoteException {
        t1(5, P0());
    }
}
