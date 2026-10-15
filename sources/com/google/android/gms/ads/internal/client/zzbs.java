package com.google.android.gms.ads.internal.client;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.internal.ads.zzasv;
import com.google.android.gms.internal.ads.zzasx;
import com.google.android.gms.internal.ads.zzavb;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.0.0 */
/* JADX INFO: loaded from: classes.dex */
public final class zzbs extends zzasv implements zzbu {
    zzbs(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.client.IAdManager");
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final void D3(zzl zzlVar, zzbk zzbkVar) throws RemoteException {
        Parcel parcelP0 = P0();
        zzasx.e(parcelP0, zzlVar);
        zzasx.g(parcelP0, zzbkVar);
        t1(43, parcelP0);
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final void D8(boolean z10) throws RemoteException {
        Parcel parcelP0 = P0();
        zzasx.d(parcelP0, z10);
        t1(34, parcelP0);
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final void Da(boolean z10) throws RemoteException {
        Parcel parcelP0 = P0();
        zzasx.d(parcelP0, z10);
        t1(22, parcelP0);
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final void E7(zzw zzwVar) throws RemoteException {
        Parcel parcelP0 = P0();
        zzasx.e(parcelP0, zzwVar);
        t1(39, parcelP0);
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final void M3(zzbe zzbeVar) throws RemoteException {
        Parcel parcelP0 = P0();
        zzasx.g(parcelP0, zzbeVar);
        t1(20, parcelP0);
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final void N() throws RemoteException {
        t1(5, P0());
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final boolean P9(zzl zzlVar) throws RemoteException {
        Parcel parcelP0 = P0();
        zzasx.e(parcelP0, zzlVar);
        Parcel parcelX0 = X0(4, parcelP0);
        boolean zH = zzasx.h(parcelX0);
        parcelX0.recycle();
        return zH;
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final void R() throws RemoteException {
        t1(6, P0());
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final void aa(zzavb zzavbVar) throws RemoteException {
        Parcel parcelP0 = P0();
        zzasx.g(parcelP0, zzavbVar);
        t1(40, parcelP0);
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final void d6(zzcb zzcbVar) throws RemoteException {
        Parcel parcelP0 = P0();
        zzasx.g(parcelP0, zzcbVar);
        t1(8, parcelP0);
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final zzq e() throws RemoteException {
        Parcel parcelX0 = X0(12, P0());
        zzq zzqVar = (zzq) zzasx.a(parcelX0, zzq.CREATOR);
        parcelX0.recycle();
        return zzqVar;
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final void e8(zzq zzqVar) throws RemoteException {
        Parcel parcelP0 = P0();
        zzasx.e(parcelP0, zzqVar);
        t1(13, parcelP0);
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final zzbh g() throws RemoteException {
        zzbh zzbfVar;
        Parcel parcelX0 = X0(33, P0());
        IBinder strongBinder = parcelX0.readStrongBinder();
        if (strongBinder == null) {
            zzbfVar = null;
        } else {
            IInterface iInterfaceQueryLocalInterface = strongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdListener");
            zzbfVar = iInterfaceQueryLocalInterface instanceof zzbh ? (zzbh) iInterfaceQueryLocalInterface : new zzbf(strongBinder);
        }
        parcelX0.recycle();
        return zzbfVar;
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final zzcb h() throws RemoteException {
        zzcb zzbzVar;
        Parcel parcelX0 = X0(32, P0());
        IBinder strongBinder = parcelX0.readStrongBinder();
        if (strongBinder == null) {
            zzbzVar = null;
        } else {
            IInterface iInterfaceQueryLocalInterface = strongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IAppEventListener");
            zzbzVar = iInterfaceQueryLocalInterface instanceof zzcb ? (zzcb) iInterfaceQueryLocalInterface : new zzbz(strongBinder);
        }
        parcelX0.recycle();
        return zzbzVar;
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final zzdn i() throws RemoteException {
        zzdn zzdlVar;
        Parcel parcelX0 = X0(41, P0());
        IBinder strongBinder = parcelX0.readStrongBinder();
        if (strongBinder == null) {
            zzdlVar = null;
        } else {
            IInterface iInterfaceQueryLocalInterface = strongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IResponseInfo");
            zzdlVar = iInterfaceQueryLocalInterface instanceof zzdn ? (zzdn) iInterfaceQueryLocalInterface : new zzdl(strongBinder);
        }
        parcelX0.recycle();
        return zzdlVar;
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final zzdq j() throws RemoteException {
        zzdq zzdoVar;
        Parcel parcelX0 = X0(26, P0());
        IBinder strongBinder = parcelX0.readStrongBinder();
        if (strongBinder == null) {
            zzdoVar = null;
        } else {
            IInterface iInterfaceQueryLocalInterface = strongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IVideoController");
            zzdoVar = iInterfaceQueryLocalInterface instanceof zzdq ? (zzdq) iInterfaceQueryLocalInterface : new zzdo(strongBinder);
        }
        parcelX0.recycle();
        return zzdoVar;
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final IObjectWrapper k() throws RemoteException {
        Parcel parcelX0 = X0(1, P0());
        IObjectWrapper iObjectWrapperX0 = IObjectWrapper.Stub.X0(parcelX0.readStrongBinder());
        parcelX0.recycle();
        return iObjectWrapperX0;
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final void o6(zzbh zzbhVar) throws RemoteException {
        Parcel parcelP0 = P0();
        zzasx.g(parcelP0, zzbhVar);
        t1(7, parcelP0);
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final String p() throws RemoteException {
        Parcel parcelX0 = X0(31, P0());
        String string = parcelX0.readString();
        parcelX0.recycle();
        return string;
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final void q2(zzci zzciVar) throws RemoteException {
        Parcel parcelP0 = P0();
        zzasx.g(parcelP0, zzciVar);
        t1(45, parcelP0);
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final void s3(zzdg zzdgVar) throws RemoteException {
        Parcel parcelP0 = P0();
        zzasx.g(parcelP0, zzdgVar);
        t1(42, parcelP0);
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final void t6(zzfl zzflVar) throws RemoteException {
        Parcel parcelP0 = P0();
        zzasx.e(parcelP0, zzflVar);
        t1(29, parcelP0);
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final void y() throws RemoteException {
        t1(2, P0());
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final void y4(IObjectWrapper iObjectWrapper) throws RemoteException {
        Parcel parcelP0 = P0();
        zzasx.g(parcelP0, iObjectWrapper);
        t1(44, parcelP0);
    }
}
