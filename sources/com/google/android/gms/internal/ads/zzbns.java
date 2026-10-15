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
public final class zzbns extends zzasv implements zzbnu {
    zzbns(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.mediation.client.IUnifiedNativeAdMapper");
    }

    @Override // com.google.android.gms.internal.ads.zzbnu
    public final void A8(IObjectWrapper iObjectWrapper, IObjectWrapper iObjectWrapper2, IObjectWrapper iObjectWrapper3) throws RemoteException {
        Parcel parcelP0 = P0();
        zzasx.g(parcelP0, iObjectWrapper);
        zzasx.g(parcelP0, iObjectWrapper2);
        zzasx.g(parcelP0, iObjectWrapper3);
        t1(21, parcelP0);
    }

    @Override // com.google.android.gms.internal.ads.zzbnu
    public final boolean B() throws RemoteException {
        Parcel parcelX0 = X0(18, P0());
        boolean zH = zzasx.h(parcelX0);
        parcelX0.recycle();
        return zH;
    }

    @Override // com.google.android.gms.internal.ads.zzbnu
    public final void P4(IObjectWrapper iObjectWrapper) throws RemoteException {
        Parcel parcelP0 = P0();
        zzasx.g(parcelP0, iObjectWrapper);
        t1(22, parcelP0);
    }

    @Override // com.google.android.gms.internal.ads.zzbnu
    public final boolean R() throws RemoteException {
        Parcel parcelX0 = X0(17, P0());
        boolean zH = zzasx.h(parcelX0);
        parcelX0.recycle();
        return zH;
    }

    @Override // com.google.android.gms.internal.ads.zzbnu
    public final void X1(IObjectWrapper iObjectWrapper) throws RemoteException {
        Parcel parcelP0 = P0();
        zzasx.g(parcelP0, iObjectWrapper);
        t1(20, parcelP0);
    }

    @Override // com.google.android.gms.internal.ads.zzbnu
    public final double b() throws RemoteException {
        Parcel parcelX0 = X0(8, P0());
        double d10 = parcelX0.readDouble();
        parcelX0.recycle();
        return d10;
    }

    @Override // com.google.android.gms.internal.ads.zzbnu
    public final float c() throws RemoteException {
        Parcel parcelX0 = X0(23, P0());
        float f10 = parcelX0.readFloat();
        parcelX0.recycle();
        return f10;
    }

    @Override // com.google.android.gms.internal.ads.zzbnu
    public final float e() throws RemoteException {
        Parcel parcelX0 = X0(25, P0());
        float f10 = parcelX0.readFloat();
        parcelX0.recycle();
        return f10;
    }

    @Override // com.google.android.gms.internal.ads.zzbnu
    public final float f() throws RemoteException {
        Parcel parcelX0 = X0(24, P0());
        float f10 = parcelX0.readFloat();
        parcelX0.recycle();
        return f10;
    }

    @Override // com.google.android.gms.internal.ads.zzbnu
    public final Bundle g() throws RemoteException {
        Parcel parcelX0 = X0(16, P0());
        Bundle bundle = (Bundle) zzasx.a(parcelX0, Bundle.CREATOR);
        parcelX0.recycle();
        return bundle;
    }

    @Override // com.google.android.gms.internal.ads.zzbnu
    public final com.google.android.gms.ads.internal.client.zzdq h() throws RemoteException {
        Parcel parcelX0 = X0(11, P0());
        com.google.android.gms.ads.internal.client.zzdq zzdqVarSa = com.google.android.gms.ads.internal.client.zzdp.Sa(parcelX0.readStrongBinder());
        parcelX0.recycle();
        return zzdqVarSa;
    }

    @Override // com.google.android.gms.internal.ads.zzbnu
    public final zzbdp i() throws RemoteException {
        Parcel parcelX0 = X0(12, P0());
        zzbdp zzbdpVarSa = zzbdo.Sa(parcelX0.readStrongBinder());
        parcelX0.recycle();
        return zzbdpVarSa;
    }

    @Override // com.google.android.gms.internal.ads.zzbnu
    public final zzbdx j() throws RemoteException {
        Parcel parcelX0 = X0(5, P0());
        zzbdx zzbdxVarSa = zzbdw.Sa(parcelX0.readStrongBinder());
        parcelX0.recycle();
        return zzbdxVarSa;
    }

    @Override // com.google.android.gms.internal.ads.zzbnu
    public final IObjectWrapper k() throws RemoteException {
        Parcel parcelX0 = X0(14, P0());
        IObjectWrapper iObjectWrapperX0 = IObjectWrapper.Stub.X0(parcelX0.readStrongBinder());
        parcelX0.recycle();
        return iObjectWrapperX0;
    }

    @Override // com.google.android.gms.internal.ads.zzbnu
    public final IObjectWrapper l() throws RemoteException {
        Parcel parcelX0 = X0(13, P0());
        IObjectWrapper iObjectWrapperX0 = IObjectWrapper.Stub.X0(parcelX0.readStrongBinder());
        parcelX0.recycle();
        return iObjectWrapperX0;
    }

    @Override // com.google.android.gms.internal.ads.zzbnu
    public final IObjectWrapper m() throws RemoteException {
        Parcel parcelX0 = X0(15, P0());
        IObjectWrapper iObjectWrapperX0 = IObjectWrapper.Stub.X0(parcelX0.readStrongBinder());
        parcelX0.recycle();
        return iObjectWrapperX0;
    }

    @Override // com.google.android.gms.internal.ads.zzbnu
    public final String n() throws RemoteException {
        Parcel parcelX0 = X0(7, P0());
        String string = parcelX0.readString();
        parcelX0.recycle();
        return string;
    }

    @Override // com.google.android.gms.internal.ads.zzbnu
    public final String p() throws RemoteException {
        Parcel parcelX0 = X0(6, P0());
        String string = parcelX0.readString();
        parcelX0.recycle();
        return string;
    }

    @Override // com.google.android.gms.internal.ads.zzbnu
    public final String q() throws RemoteException {
        Parcel parcelX0 = X0(2, P0());
        String string = parcelX0.readString();
        parcelX0.recycle();
        return string;
    }

    @Override // com.google.android.gms.internal.ads.zzbnu
    public final String r() throws RemoteException {
        Parcel parcelX0 = X0(4, P0());
        String string = parcelX0.readString();
        parcelX0.recycle();
        return string;
    }

    @Override // com.google.android.gms.internal.ads.zzbnu
    public final List t() throws RemoteException {
        Parcel parcelX0 = X0(3, P0());
        ArrayList arrayListB = zzasx.b(parcelX0);
        parcelX0.recycle();
        return arrayListB;
    }

    @Override // com.google.android.gms.internal.ads.zzbnu
    public final String v() throws RemoteException {
        Parcel parcelX0 = X0(9, P0());
        String string = parcelX0.readString();
        parcelX0.recycle();
        return string;
    }

    @Override // com.google.android.gms.internal.ads.zzbnu
    public final String x() throws RemoteException {
        Parcel parcelX0 = X0(10, P0());
        String string = parcelX0.readString();
        parcelX0.recycle();
        return string;
    }

    @Override // com.google.android.gms.internal.ads.zzbnu
    public final void y() throws RemoteException {
        t1(19, P0());
    }
}
