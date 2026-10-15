package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzbnq extends zzasv {
    zzbnq(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.mediation.client.INativeAppInstallAdMapper");
    }

    public final com.google.android.gms.ads.internal.client.zzdq A9() throws RemoteException {
        Parcel parcelX0 = X0(17, P0());
        com.google.android.gms.ads.internal.client.zzdq zzdqVarSa = com.google.android.gms.ads.internal.client.zzdp.Sa(parcelX0.readStrongBinder());
        parcelX0.recycle();
        return zzdqVarSa;
    }

    public final boolean E() throws RemoteException {
        Parcel parcelX0 = X0(13, P0());
        boolean zH = zzasx.h(parcelX0);
        parcelX0.recycle();
        return zH;
    }

    public final zzbdp Ra() throws RemoteException {
        Parcel parcelX0 = X0(19, P0());
        zzbdp zzbdpVarSa = zzbdo.Sa(parcelX0.readStrongBinder());
        parcelX0.recycle();
        return zzbdpVarSa;
    }

    public final zzbdx Sa() throws RemoteException {
        Parcel parcelX0 = X0(5, P0());
        zzbdx zzbdxVarSa = zzbdw.Sa(parcelX0.readStrongBinder());
        parcelX0.recycle();
        return zzbdxVarSa;
    }

    public final IObjectWrapper Ta() throws RemoteException {
        Parcel parcelX0 = X0(18, P0());
        IObjectWrapper iObjectWrapperX0 = IObjectWrapper.Stub.X0(parcelX0.readStrongBinder());
        parcelX0.recycle();
        return iObjectWrapperX0;
    }

    public final IObjectWrapper Ua() throws RemoteException {
        Parcel parcelX0 = X0(20, P0());
        IObjectWrapper iObjectWrapperX0 = IObjectWrapper.Stub.X0(parcelX0.readStrongBinder());
        parcelX0.recycle();
        return iObjectWrapperX0;
    }

    public final List Va() throws RemoteException {
        Parcel parcelX0 = X0(3, P0());
        ArrayList arrayListB = zzasx.b(parcelX0);
        parcelX0.recycle();
        return arrayListB;
    }

    public final void Wa(IObjectWrapper iObjectWrapper) throws RemoteException {
        Parcel parcelP0 = P0();
        zzasx.g(parcelP0, iObjectWrapper);
        t1(11, parcelP0);
    }

    public final void X1(IObjectWrapper iObjectWrapper) throws RemoteException {
        Parcel parcelP0 = P0();
        zzasx.g(parcelP0, iObjectWrapper);
        t1(16, parcelP0);
    }

    public final void Xa(IObjectWrapper iObjectWrapper) throws RemoteException {
        Parcel parcelP0 = P0();
        zzasx.g(parcelP0, iObjectWrapper);
        t1(12, parcelP0);
    }

    public final void Ya(IObjectWrapper iObjectWrapper, IObjectWrapper iObjectWrapper2, IObjectWrapper iObjectWrapper3) throws RemoteException {
        Parcel parcelP0 = P0();
        zzasx.g(parcelP0, iObjectWrapper);
        zzasx.g(parcelP0, iObjectWrapper2);
        zzasx.g(parcelP0, iObjectWrapper3);
        t1(22, parcelP0);
    }

    public final double b() throws RemoteException {
        Parcel parcelX0 = X0(7, P0());
        double d10 = parcelX0.readDouble();
        parcelX0.recycle();
        return d10;
    }

    public final Bundle c() throws RemoteException {
        Parcel parcelX0 = X0(15, P0());
        Bundle bundle = (Bundle) zzasx.a(parcelX0, Bundle.CREATOR);
        parcelX0.recycle();
        return bundle;
    }

    public final IObjectWrapper j() throws RemoteException {
        Parcel parcelX0 = X0(21, P0());
        IObjectWrapper iObjectWrapperX0 = IObjectWrapper.Stub.X0(parcelX0.readStrongBinder());
        parcelX0.recycle();
        return iObjectWrapperX0;
    }

    public final String k() throws RemoteException {
        Parcel parcelX0 = X0(6, P0());
        String string = parcelX0.readString();
        parcelX0.recycle();
        return string;
    }

    public final String l() throws RemoteException {
        Parcel parcelX0 = X0(4, P0());
        String string = parcelX0.readString();
        parcelX0.recycle();
        return string;
    }

    public final String m() throws RemoteException {
        Parcel parcelX0 = X0(2, P0());
        String string = parcelX0.readString();
        parcelX0.recycle();
        return string;
    }

    public final String n() throws RemoteException {
        Parcel parcelX0 = X0(9, P0());
        String string = parcelX0.readString();
        parcelX0.recycle();
        return string;
    }

    public final String r() throws RemoteException {
        Parcel parcelX0 = X0(8, P0());
        String string = parcelX0.readString();
        parcelX0.recycle();
        return string;
    }

    public final void x() throws RemoteException {
        t1(10, P0());
    }

    public final boolean y() throws RemoteException {
        Parcel parcelX0 = X0(14, P0());
        boolean zH = zzasx.h(parcelX0);
        parcelX0.recycle();
        return zH;
    }
}
