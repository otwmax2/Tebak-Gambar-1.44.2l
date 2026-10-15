package com.google.android.gms.ads.internal.client;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.internal.ads.zzasv;
import com.google.android.gms.internal.ads.zzasx;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.0.0 */
/* JADX INFO: loaded from: classes.dex */
public final class zzcg extends zzasv implements zzci {
    zzcg(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.client.IFullScreenContentCallback");
    }

    @Override // com.google.android.gms.ads.internal.client.zzci
    public final void L0(zze zzeVar) throws RemoteException {
        Parcel parcelP0 = P0();
        zzasx.e(parcelP0, zzeVar);
        t1(1, parcelP0);
    }

    @Override // com.google.android.gms.ads.internal.client.zzci
    public final void a() throws RemoteException {
        t1(3, P0());
    }

    @Override // com.google.android.gms.ads.internal.client.zzci
    public final void b() throws RemoteException {
        t1(4, P0());
    }

    @Override // com.google.android.gms.ads.internal.client.zzci
    public final void c() throws RemoteException {
        t1(2, P0());
    }

    @Override // com.google.android.gms.ads.internal.client.zzci
    public final void zzb() throws RemoteException {
        t1(5, P0());
    }
}
