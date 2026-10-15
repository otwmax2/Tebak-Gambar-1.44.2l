package com.google.android.gms.internal.ads;

import android.content.Intent;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzbra extends zzasv implements zzbrc {
    zzbra(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.overlay.client.IAdOverlay");
    }

    @Override // com.google.android.gms.internal.ads.zzbrc
    public final boolean H() throws RemoteException {
        Parcel parcelX0 = X0(11, P0());
        boolean zH = zzasx.h(parcelX0);
        parcelX0.recycle();
        return zH;
    }

    @Override // com.google.android.gms.internal.ads.zzbrc
    public final void V7(Bundle bundle) throws RemoteException {
        Parcel parcelP0 = P0();
        zzasx.e(parcelP0, bundle);
        t1(1, parcelP0);
    }

    @Override // com.google.android.gms.internal.ads.zzbrc
    public final void e0(IObjectWrapper iObjectWrapper) throws RemoteException {
        Parcel parcelP0 = P0();
        zzasx.g(parcelP0, iObjectWrapper);
        t1(13, parcelP0);
    }

    @Override // com.google.android.gms.internal.ads.zzbrc
    public final void f() throws RemoteException {
        t1(10, P0());
    }

    @Override // com.google.android.gms.internal.ads.zzbrc
    public final void i0(Bundle bundle) throws RemoteException {
        Parcel parcelP0 = P0();
        zzasx.e(parcelP0, bundle);
        Parcel parcelX0 = X0(6, parcelP0);
        if (parcelX0.readInt() != 0) {
            bundle.readFromParcel(parcelX0);
        }
        parcelX0.recycle();
    }

    @Override // com.google.android.gms.internal.ads.zzbrc
    public final void j() throws RemoteException {
        t1(8, P0());
    }

    @Override // com.google.android.gms.internal.ads.zzbrc
    public final void k() throws RemoteException {
        t1(5, P0());
    }

    @Override // com.google.android.gms.internal.ads.zzbrc
    public final void m() throws RemoteException {
        t1(2, P0());
    }

    @Override // com.google.android.gms.internal.ads.zzbrc
    public final void m5(int i10, int i11, Intent intent) throws RemoteException {
        Parcel parcelP0 = P0();
        parcelP0.writeInt(i10);
        parcelP0.writeInt(i11);
        zzasx.e(parcelP0, intent);
        t1(12, parcelP0);
    }

    @Override // com.google.android.gms.internal.ads.zzbrc
    public final void n() throws RemoteException {
        t1(4, P0());
    }

    @Override // com.google.android.gms.internal.ads.zzbrc
    public final void p() throws RemoteException {
        t1(3, P0());
    }

    @Override // com.google.android.gms.internal.ads.zzbrc
    public final void q() throws RemoteException {
        t1(7, P0());
    }

    @Override // com.google.android.gms.internal.ads.zzbrc
    public final void t() throws RemoteException {
        t1(9, P0());
    }

    @Override // com.google.android.gms.internal.ads.zzbrc
    public final void x() throws RemoteException {
        t1(14, P0());
    }
}
