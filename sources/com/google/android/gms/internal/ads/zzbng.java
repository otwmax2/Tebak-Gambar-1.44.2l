package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
import java.util.List;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzbng extends zzasv implements zzbni {
    zzbng(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.mediation.client.IMediationAdapter");
    }

    @Override // com.google.android.gms.internal.ads.zzbni
    public final void Aa(IObjectWrapper iObjectWrapper) throws RemoteException {
        Parcel parcelP0 = P0();
        zzasx.g(parcelP0, iObjectWrapper);
        t1(37, parcelP0);
    }

    @Override // com.google.android.gms.internal.ads.zzbni
    public final void D1(IObjectWrapper iObjectWrapper, com.google.android.gms.ads.internal.client.zzl zzlVar, String str, zzbnl zzbnlVar) throws RemoteException {
        Parcel parcelP0 = P0();
        zzasx.g(parcelP0, iObjectWrapper);
        zzasx.e(parcelP0, zzlVar);
        parcelP0.writeString(str);
        zzasx.g(parcelP0, zzbnlVar);
        t1(32, parcelP0);
    }

    @Override // com.google.android.gms.internal.ads.zzbni
    public final void E8(com.google.android.gms.ads.internal.client.zzl zzlVar, String str) throws RemoteException {
        Parcel parcelP0 = P0();
        zzasx.e(parcelP0, zzlVar);
        parcelP0.writeString(str);
        t1(11, parcelP0);
    }

    @Override // com.google.android.gms.internal.ads.zzbni
    public final void H() throws RemoteException {
        t1(8, P0());
    }

    @Override // com.google.android.gms.internal.ads.zzbni
    public final void I7(boolean z10) throws RemoteException {
        Parcel parcelP0 = P0();
        zzasx.d(parcelP0, z10);
        t1(25, parcelP0);
    }

    @Override // com.google.android.gms.internal.ads.zzbni
    public final boolean J() throws RemoteException {
        Parcel parcelX0 = X0(13, P0());
        boolean zH = zzasx.h(parcelX0);
        parcelX0.recycle();
        return zH;
    }

    @Override // com.google.android.gms.internal.ads.zzbni
    public final void K8(IObjectWrapper iObjectWrapper, com.google.android.gms.ads.internal.client.zzl zzlVar, String str, String str2, zzbnl zzbnlVar) throws RemoteException {
        Parcel parcelP0 = P0();
        zzasx.g(parcelP0, iObjectWrapper);
        zzasx.e(parcelP0, zzlVar);
        parcelP0.writeString(str);
        parcelP0.writeString(str2);
        zzasx.g(parcelP0, zzbnlVar);
        t1(7, parcelP0);
    }

    @Override // com.google.android.gms.internal.ads.zzbni
    public final void L() throws RemoteException {
        t1(9, P0());
    }

    @Override // com.google.android.gms.internal.ads.zzbni
    public final zzbnq M() throws RemoteException {
        zzbnq zzbnqVar;
        Parcel parcelX0 = X0(15, P0());
        IBinder strongBinder = parcelX0.readStrongBinder();
        if (strongBinder == null) {
            zzbnqVar = null;
        } else {
            IInterface iInterfaceQueryLocalInterface = strongBinder.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.INativeAppInstallAdMapper");
            zzbnqVar = iInterfaceQueryLocalInterface instanceof zzbnq ? (zzbnq) iInterfaceQueryLocalInterface : new zzbnq(strongBinder);
        }
        parcelX0.recycle();
        return zzbnqVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbni
    public final void M6(IObjectWrapper iObjectWrapper) throws RemoteException {
        Parcel parcelP0 = P0();
        zzasx.g(parcelP0, iObjectWrapper);
        t1(39, parcelP0);
    }

    @Override // com.google.android.gms.internal.ads.zzbni
    public final void T() throws RemoteException {
        t1(4, P0());
    }

    @Override // com.google.android.gms.internal.ads.zzbni
    public final void T4(IObjectWrapper iObjectWrapper, com.google.android.gms.ads.internal.client.zzl zzlVar, String str, zzbnl zzbnlVar) throws RemoteException {
        Parcel parcelP0 = P0();
        zzasx.g(parcelP0, iObjectWrapper);
        zzasx.e(parcelP0, zzlVar);
        parcelP0.writeString(str);
        zzasx.g(parcelP0, zzbnlVar);
        t1(28, parcelP0);
    }

    @Override // com.google.android.gms.internal.ads.zzbni
    public final void W8(IObjectWrapper iObjectWrapper) throws RemoteException {
        Parcel parcelP0 = P0();
        zzasx.g(parcelP0, iObjectWrapper);
        t1(30, parcelP0);
    }

    @Override // com.google.android.gms.internal.ads.zzbni
    public final boolean Y() throws RemoteException {
        Parcel parcelX0 = X0(22, P0());
        boolean zH = zzasx.h(parcelX0);
        parcelX0.recycle();
        return zH;
    }

    @Override // com.google.android.gms.internal.ads.zzbni
    public final com.google.android.gms.ads.internal.client.zzdq f() throws RemoteException {
        Parcel parcelX0 = X0(26, P0());
        com.google.android.gms.ads.internal.client.zzdq zzdqVarSa = com.google.android.gms.ads.internal.client.zzdp.Sa(parcelX0.readStrongBinder());
        parcelX0.recycle();
        return zzdqVarSa;
    }

    @Override // com.google.android.gms.internal.ads.zzbni
    public final zzbnr g0() throws RemoteException {
        zzbnr zzbnrVar;
        Parcel parcelX0 = X0(16, P0());
        IBinder strongBinder = parcelX0.readStrongBinder();
        if (strongBinder == null) {
            zzbnrVar = null;
        } else {
            IInterface iInterfaceQueryLocalInterface = strongBinder.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.INativeContentAdMapper");
            zzbnrVar = iInterfaceQueryLocalInterface instanceof zzbnr ? (zzbnr) iInterfaceQueryLocalInterface : new zzbnr(strongBinder);
        }
        parcelX0.recycle();
        return zzbnrVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbni
    public final zzbno h() throws RemoteException {
        zzbno zzbnmVar;
        Parcel parcelX0 = X0(36, P0());
        IBinder strongBinder = parcelX0.readStrongBinder();
        if (strongBinder == null) {
            zzbnmVar = null;
        } else {
            IInterface iInterfaceQueryLocalInterface = strongBinder.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.IMediationInterscrollerAd");
            zzbnmVar = iInterfaceQueryLocalInterface instanceof zzbno ? (zzbno) iInterfaceQueryLocalInterface : new zzbnm(strongBinder);
        }
        parcelX0.recycle();
        return zzbnmVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbni
    public final void h2(IObjectWrapper iObjectWrapper, zzbjp zzbjpVar, List list) throws RemoteException {
        Parcel parcelP0 = P0();
        zzasx.g(parcelP0, iObjectWrapper);
        zzasx.g(parcelP0, zzbjpVar);
        parcelP0.writeTypedList(list);
        t1(31, parcelP0);
    }

    @Override // com.google.android.gms.internal.ads.zzbni
    public final void h6(IObjectWrapper iObjectWrapper, com.google.android.gms.ads.internal.client.zzq zzqVar, com.google.android.gms.ads.internal.client.zzl zzlVar, String str, String str2, zzbnl zzbnlVar) throws RemoteException {
        Parcel parcelP0 = P0();
        zzasx.g(parcelP0, iObjectWrapper);
        zzasx.e(parcelP0, zzqVar);
        zzasx.e(parcelP0, zzlVar);
        parcelP0.writeString(str);
        parcelP0.writeString(str2);
        zzasx.g(parcelP0, zzbnlVar);
        t1(6, parcelP0);
    }

    @Override // com.google.android.gms.internal.ads.zzbni
    public final zzbnu i() throws RemoteException {
        zzbnu zzbnsVar;
        Parcel parcelX0 = X0(27, P0());
        IBinder strongBinder = parcelX0.readStrongBinder();
        if (strongBinder == null) {
            zzbnsVar = null;
        } else {
            IInterface iInterfaceQueryLocalInterface = strongBinder.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.IUnifiedNativeAdMapper");
            zzbnsVar = iInterfaceQueryLocalInterface instanceof zzbnu ? (zzbnu) iInterfaceQueryLocalInterface : new zzbns(strongBinder);
        }
        parcelX0.recycle();
        return zzbnsVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbni
    public final zzbpq j() throws RemoteException {
        Parcel parcelX0 = X0(33, P0());
        zzbpq zzbpqVar = (zzbpq) zzasx.a(parcelX0, zzbpq.CREATOR);
        parcelX0.recycle();
        return zzbpqVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbni
    public final IObjectWrapper k() throws RemoteException {
        Parcel parcelX0 = X0(2, P0());
        IObjectWrapper iObjectWrapperX0 = IObjectWrapper.Stub.X0(parcelX0.readStrongBinder());
        parcelX0.recycle();
        return iObjectWrapperX0;
    }

    @Override // com.google.android.gms.internal.ads.zzbni
    public final zzbpq l() throws RemoteException {
        Parcel parcelX0 = X0(34, P0());
        zzbpq zzbpqVar = (zzbpq) zzasx.a(parcelX0, zzbpq.CREATOR);
        parcelX0.recycle();
        return zzbpqVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbni
    public final void m() throws RemoteException {
        t1(5, P0());
    }

    @Override // com.google.android.gms.internal.ads.zzbni
    public final void m4(IObjectWrapper iObjectWrapper, com.google.android.gms.ads.internal.client.zzl zzlVar, String str, zzbnl zzbnlVar) throws RemoteException {
        Parcel parcelP0 = P0();
        zzasx.g(parcelP0, iObjectWrapper);
        zzasx.e(parcelP0, zzlVar);
        parcelP0.writeString(str);
        zzasx.g(parcelP0, zzbnlVar);
        t1(38, parcelP0);
    }

    @Override // com.google.android.gms.internal.ads.zzbni
    public final void q0() throws RemoteException {
        t1(12, P0());
    }

    @Override // com.google.android.gms.internal.ads.zzbni
    public final void v9(IObjectWrapper iObjectWrapper, com.google.android.gms.ads.internal.client.zzl zzlVar, String str, String str2, zzbnl zzbnlVar, zzbdl zzbdlVar, List list) throws RemoteException {
        Parcel parcelP0 = P0();
        zzasx.g(parcelP0, iObjectWrapper);
        zzasx.e(parcelP0, zzlVar);
        parcelP0.writeString(str);
        parcelP0.writeString(str2);
        zzasx.g(parcelP0, zzbnlVar);
        zzasx.e(parcelP0, zzbdlVar);
        parcelP0.writeStringList(list);
        t1(14, parcelP0);
    }

    @Override // com.google.android.gms.internal.ads.zzbni
    public final void w1(IObjectWrapper iObjectWrapper) throws RemoteException {
        Parcel parcelP0 = P0();
        zzasx.g(parcelP0, iObjectWrapper);
        t1(21, parcelP0);
    }

    @Override // com.google.android.gms.internal.ads.zzbni
    public final void w8(IObjectWrapper iObjectWrapper, zzbuo zzbuoVar, List list) throws RemoteException {
        Parcel parcelP0 = P0();
        zzasx.g(parcelP0, iObjectWrapper);
        zzasx.g(parcelP0, zzbuoVar);
        parcelP0.writeStringList(list);
        t1(23, parcelP0);
    }

    @Override // com.google.android.gms.internal.ads.zzbni
    public final void x8(IObjectWrapper iObjectWrapper, com.google.android.gms.ads.internal.client.zzl zzlVar, String str, zzbuo zzbuoVar, String str2) throws RemoteException {
        Parcel parcelP0 = P0();
        zzasx.g(parcelP0, iObjectWrapper);
        zzasx.e(parcelP0, zzlVar);
        parcelP0.writeString(null);
        zzasx.g(parcelP0, zzbuoVar);
        parcelP0.writeString(str2);
        t1(10, parcelP0);
    }

    @Override // com.google.android.gms.internal.ads.zzbni
    public final void y2(IObjectWrapper iObjectWrapper, com.google.android.gms.ads.internal.client.zzq zzqVar, com.google.android.gms.ads.internal.client.zzl zzlVar, String str, String str2, zzbnl zzbnlVar) throws RemoteException {
        Parcel parcelP0 = P0();
        zzasx.g(parcelP0, iObjectWrapper);
        zzasx.e(parcelP0, zzqVar);
        zzasx.e(parcelP0, zzlVar);
        parcelP0.writeString(str);
        parcelP0.writeString(str2);
        zzasx.g(parcelP0, zzbnlVar);
        t1(35, parcelP0);
    }
}
