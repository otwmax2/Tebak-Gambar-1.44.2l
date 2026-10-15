package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzbdz extends zzasv implements zzbeb {
    zzbdz(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.formats.client.INativeAdViewDelegate");
    }

    @Override // com.google.android.gms.internal.ads.zzbeb
    public final void L3(IObjectWrapper iObjectWrapper) throws RemoteException {
        Parcel parcelP0 = P0();
        zzasx.g(parcelP0, iObjectWrapper);
        t1(6, parcelP0);
    }

    @Override // com.google.android.gms.internal.ads.zzbeb
    public final void L6(zzbdu zzbduVar) throws RemoteException {
        Parcel parcelP0 = P0();
        zzasx.g(parcelP0, zzbduVar);
        t1(8, parcelP0);
    }

    @Override // com.google.android.gms.internal.ads.zzbeb
    public final void Oa(IObjectWrapper iObjectWrapper) throws RemoteException {
        Parcel parcelP0 = P0();
        zzasx.g(parcelP0, iObjectWrapper);
        t1(9, parcelP0);
    }

    @Override // com.google.android.gms.internal.ads.zzbeb
    public final void a() throws RemoteException {
        t1(4, P0());
    }

    @Override // com.google.android.gms.internal.ads.zzbeb
    public final void j7(IObjectWrapper iObjectWrapper) throws RemoteException {
        Parcel parcelP0 = P0();
        zzasx.g(parcelP0, iObjectWrapper);
        t1(3, parcelP0);
    }

    @Override // com.google.android.gms.internal.ads.zzbeb
    public final void n4(IObjectWrapper iObjectWrapper, int i10) throws RemoteException {
        Parcel parcelP0 = P0();
        zzasx.g(parcelP0, iObjectWrapper);
        parcelP0.writeInt(i10);
        t1(5, parcelP0);
    }

    @Override // com.google.android.gms.internal.ads.zzbeb
    public final void n5(String str, IObjectWrapper iObjectWrapper) throws RemoteException {
        Parcel parcelP0 = P0();
        parcelP0.writeString(str);
        zzasx.g(parcelP0, iObjectWrapper);
        t1(1, parcelP0);
    }

    @Override // com.google.android.gms.internal.ads.zzbeb
    public final IObjectWrapper u(String str) throws RemoteException {
        Parcel parcelP0 = P0();
        parcelP0.writeString(str);
        Parcel parcelX0 = X0(2, parcelP0);
        IObjectWrapper iObjectWrapperX0 = IObjectWrapper.Stub.X0(parcelX0.readStrongBinder());
        parcelX0.recycle();
        return iObjectWrapperX0;
    }

    @Override // com.google.android.gms.internal.ads.zzbeb
    public final void x0(IObjectWrapper iObjectWrapper) throws RemoteException {
        Parcel parcelP0 = P0();
        zzasx.g(parcelP0, iObjectWrapper);
        t1(7, parcelP0);
    }
}
