package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzbfs extends zzasv implements zzbfu {
    zzbfs(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.formats.client.IUnifiedNativeAd");
    }

    @Override // com.google.android.gms.internal.ads.zzbfu
    public final double b() throws RemoteException {
        Parcel parcelX0 = X0(8, P0());
        double d10 = parcelX0.readDouble();
        parcelX0.recycle();
        return d10;
    }

    @Override // com.google.android.gms.internal.ads.zzbfu
    public final com.google.android.gms.ads.internal.client.zzdn e() throws RemoteException {
        Parcel parcelX0 = X0(31, P0());
        com.google.android.gms.ads.internal.client.zzdn zzdnVarSa = com.google.android.gms.ads.internal.client.zzdm.Sa(parcelX0.readStrongBinder());
        parcelX0.recycle();
        return zzdnVarSa;
    }

    @Override // com.google.android.gms.internal.ads.zzbfu
    public final com.google.android.gms.ads.internal.client.zzdq f() throws RemoteException {
        Parcel parcelX0 = X0(11, P0());
        com.google.android.gms.ads.internal.client.zzdq zzdqVarSa = com.google.android.gms.ads.internal.client.zzdp.Sa(parcelX0.readStrongBinder());
        parcelX0.recycle();
        return zzdqVarSa;
    }

    @Override // com.google.android.gms.internal.ads.zzbfu
    public final zzbdp g() throws RemoteException {
        zzbdp zzbdnVar;
        Parcel parcelX0 = X0(14, P0());
        IBinder strongBinder = parcelX0.readStrongBinder();
        if (strongBinder == null) {
            zzbdnVar = null;
        } else {
            IInterface iInterfaceQueryLocalInterface = strongBinder.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.IAttributionInfo");
            zzbdnVar = iInterfaceQueryLocalInterface instanceof zzbdp ? (zzbdp) iInterfaceQueryLocalInterface : new zzbdn(strongBinder);
        }
        parcelX0.recycle();
        return zzbdnVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbfu
    public final zzbdx i() throws RemoteException {
        zzbdx zzbdvVar;
        Parcel parcelX0 = X0(5, P0());
        IBinder strongBinder = parcelX0.readStrongBinder();
        if (strongBinder == null) {
            zzbdvVar = null;
        } else {
            IInterface iInterfaceQueryLocalInterface = strongBinder.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.INativeAdImage");
            zzbdvVar = iInterfaceQueryLocalInterface instanceof zzbdx ? (zzbdx) iInterfaceQueryLocalInterface : new zzbdv(strongBinder);
        }
        parcelX0.recycle();
        return zzbdvVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbfu
    public final IObjectWrapper j() throws RemoteException {
        Parcel parcelX0 = X0(19, P0());
        IObjectWrapper iObjectWrapperX0 = IObjectWrapper.Stub.X0(parcelX0.readStrongBinder());
        parcelX0.recycle();
        return iObjectWrapperX0;
    }

    @Override // com.google.android.gms.internal.ads.zzbfu
    public final String k() throws RemoteException {
        Parcel parcelX0 = X0(7, P0());
        String string = parcelX0.readString();
        parcelX0.recycle();
        return string;
    }

    @Override // com.google.android.gms.internal.ads.zzbfu
    public final IObjectWrapper l() throws RemoteException {
        Parcel parcelX0 = X0(18, P0());
        IObjectWrapper iObjectWrapperX0 = IObjectWrapper.Stub.X0(parcelX0.readStrongBinder());
        parcelX0.recycle();
        return iObjectWrapperX0;
    }

    @Override // com.google.android.gms.internal.ads.zzbfu
    public final String m() throws RemoteException {
        Parcel parcelX0 = X0(4, P0());
        String string = parcelX0.readString();
        parcelX0.recycle();
        return string;
    }

    @Override // com.google.android.gms.internal.ads.zzbfu
    public final String n() throws RemoteException {
        Parcel parcelX0 = X0(6, P0());
        String string = parcelX0.readString();
        parcelX0.recycle();
        return string;
    }

    @Override // com.google.android.gms.internal.ads.zzbfu
    public final String q() throws RemoteException {
        Parcel parcelX0 = X0(10, P0());
        String string = parcelX0.readString();
        parcelX0.recycle();
        return string;
    }

    @Override // com.google.android.gms.internal.ads.zzbfu
    public final String r() throws RemoteException {
        Parcel parcelX0 = X0(2, P0());
        String string = parcelX0.readString();
        parcelX0.recycle();
        return string;
    }

    @Override // com.google.android.gms.internal.ads.zzbfu
    public final List t() throws RemoteException {
        Parcel parcelX0 = X0(23, P0());
        ArrayList arrayListB = zzasx.b(parcelX0);
        parcelX0.recycle();
        return arrayListB;
    }

    @Override // com.google.android.gms.internal.ads.zzbfu
    public final List v() throws RemoteException {
        Parcel parcelX0 = X0(3, P0());
        ArrayList arrayListB = zzasx.b(parcelX0);
        parcelX0.recycle();
        return arrayListB;
    }

    @Override // com.google.android.gms.internal.ads.zzbfu
    public final String x() throws RemoteException {
        Parcel parcelX0 = X0(9, P0());
        String string = parcelX0.readString();
        parcelX0.recycle();
        return string;
    }
}
