package com.google.android.gms.ads.internal.client;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.internal.ads.zzasv;
import com.google.android.gms.internal.ads.zzasx;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.0.0 */
/* JADX INFO: loaded from: classes.dex */
public final class zzbf extends zzasv implements zzbh {
    zzbf(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.client.IAdListener");
    }

    @Override // com.google.android.gms.ads.internal.client.zzbh
    public final void A(zze zzeVar) throws RemoteException {
        Parcel parcelP0 = P0();
        zzasx.e(parcelP0, zzeVar);
        t1(8, parcelP0);
    }

    @Override // com.google.android.gms.ads.internal.client.zzbh
    public final void F(int i10) throws RemoteException {
        Parcel parcelP0 = P0();
        parcelP0.writeInt(i10);
        t1(2, parcelP0);
    }

    @Override // com.google.android.gms.ads.internal.client.zzbh
    public final void a() throws RemoteException {
        t1(6, P0());
    }

    @Override // com.google.android.gms.ads.internal.client.zzbh
    public final void d() throws RemoteException {
        t1(1, P0());
    }

    @Override // com.google.android.gms.ads.internal.client.zzbh
    public final void e() throws RemoteException {
        t1(7, P0());
    }

    @Override // com.google.android.gms.ads.internal.client.zzbh
    public final void f() throws RemoteException {
        t1(3, P0());
    }

    @Override // com.google.android.gms.ads.internal.client.zzbh
    public final void g() throws RemoteException {
        t1(4, P0());
    }

    @Override // com.google.android.gms.ads.internal.client.zzbh
    public final void h() throws RemoteException {
        t1(5, P0());
    }

    @Override // com.google.android.gms.ads.internal.client.zzbh
    public final void i() throws RemoteException {
        t1(9, P0());
    }
}
