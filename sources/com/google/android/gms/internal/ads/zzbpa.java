package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzbpa extends zzasv implements zzbpc {
    zzbpa(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.mediation.client.rtb.IRtbAdapter");
    }

    @Override // com.google.android.gms.internal.ads.zzbpc
    public final void D5(String str, String str2, com.google.android.gms.ads.internal.client.zzl zzlVar, IObjectWrapper iObjectWrapper, zzbon zzbonVar, zzbnl zzbnlVar) throws RemoteException {
        Parcel parcelP0 = P0();
        parcelP0.writeString(str);
        parcelP0.writeString(str2);
        zzasx.e(parcelP0, zzlVar);
        zzasx.g(parcelP0, iObjectWrapper);
        zzasx.g(parcelP0, zzbonVar);
        zzasx.g(parcelP0, zzbnlVar);
        t1(23, parcelP0);
    }

    @Override // com.google.android.gms.internal.ads.zzbpc
    public final boolean D6(IObjectWrapper iObjectWrapper) throws RemoteException {
        Parcel parcelP0 = P0();
        zzasx.g(parcelP0, iObjectWrapper);
        Parcel parcelX0 = X0(15, parcelP0);
        boolean zH = zzasx.h(parcelX0);
        parcelX0.recycle();
        return zH;
    }

    @Override // com.google.android.gms.internal.ads.zzbpc
    public final boolean D9(IObjectWrapper iObjectWrapper) throws RemoteException {
        Parcel parcelP0 = P0();
        zzasx.g(parcelP0, iObjectWrapper);
        Parcel parcelX0 = X0(17, parcelP0);
        boolean zH = zzasx.h(parcelX0);
        parcelX0.recycle();
        return zH;
    }

    @Override // com.google.android.gms.internal.ads.zzbpc
    public final void F8(IObjectWrapper iObjectWrapper, String str, Bundle bundle, Bundle bundle2, com.google.android.gms.ads.internal.client.zzq zzqVar, zzbpf zzbpfVar) throws RemoteException {
        Parcel parcelP0 = P0();
        zzasx.g(parcelP0, iObjectWrapper);
        parcelP0.writeString(str);
        zzasx.e(parcelP0, bundle);
        zzasx.e(parcelP0, bundle2);
        zzasx.e(parcelP0, zzqVar);
        zzasx.g(parcelP0, zzbpfVar);
        t1(1, parcelP0);
    }

    @Override // com.google.android.gms.internal.ads.zzbpc
    public final void K3(String str, String str2, com.google.android.gms.ads.internal.client.zzl zzlVar, IObjectWrapper iObjectWrapper, zzbot zzbotVar, zzbnl zzbnlVar) throws RemoteException {
        Parcel parcelP0 = P0();
        parcelP0.writeString(str);
        parcelP0.writeString(str2);
        zzasx.e(parcelP0, zzlVar);
        zzasx.g(parcelP0, iObjectWrapper);
        zzasx.g(parcelP0, zzbotVar);
        zzasx.g(parcelP0, zzbnlVar);
        t1(14, parcelP0);
    }

    @Override // com.google.android.gms.internal.ads.zzbpc
    public final void K9(String str) throws RemoteException {
        Parcel parcelP0 = P0();
        parcelP0.writeString(str);
        t1(19, parcelP0);
    }

    @Override // com.google.android.gms.internal.ads.zzbpc
    public final void R4(String str, String str2, com.google.android.gms.ads.internal.client.zzl zzlVar, IObjectWrapper iObjectWrapper, zzboq zzboqVar, zzbnl zzbnlVar, com.google.android.gms.ads.internal.client.zzq zzqVar) throws RemoteException {
        Parcel parcelP0 = P0();
        parcelP0.writeString(str);
        parcelP0.writeString(str2);
        zzasx.e(parcelP0, zzlVar);
        zzasx.g(parcelP0, iObjectWrapper);
        zzasx.g(parcelP0, zzboqVar);
        zzasx.g(parcelP0, zzbnlVar);
        zzasx.e(parcelP0, zzqVar);
        t1(13, parcelP0);
    }

    @Override // com.google.android.gms.internal.ads.zzbpc
    public final void a8(String str, String str2, com.google.android.gms.ads.internal.client.zzl zzlVar, IObjectWrapper iObjectWrapper, zzbow zzbowVar, zzbnl zzbnlVar, zzbdl zzbdlVar) throws RemoteException {
        Parcel parcelP0 = P0();
        parcelP0.writeString(str);
        parcelP0.writeString(str2);
        zzasx.e(parcelP0, zzlVar);
        zzasx.g(parcelP0, iObjectWrapper);
        zzasx.g(parcelP0, zzbowVar);
        zzasx.g(parcelP0, zzbnlVar);
        zzasx.e(parcelP0, zzbdlVar);
        t1(22, parcelP0);
    }

    @Override // com.google.android.gms.internal.ads.zzbpc
    public final com.google.android.gms.ads.internal.client.zzdq b() throws RemoteException {
        Parcel parcelX0 = X0(5, P0());
        com.google.android.gms.ads.internal.client.zzdq zzdqVarSa = com.google.android.gms.ads.internal.client.zzdp.Sa(parcelX0.readStrongBinder());
        parcelX0.recycle();
        return zzdqVarSa;
    }

    @Override // com.google.android.gms.internal.ads.zzbpc
    public final zzbpq c() throws RemoteException {
        Parcel parcelX0 = X0(2, P0());
        zzbpq zzbpqVar = (zzbpq) zzasx.a(parcelX0, zzbpq.CREATOR);
        parcelX0.recycle();
        return zzbpqVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbpc
    public final boolean c0(IObjectWrapper iObjectWrapper) throws RemoteException {
        Parcel parcelP0 = P0();
        zzasx.g(parcelP0, iObjectWrapper);
        Parcel parcelX0 = X0(24, parcelP0);
        boolean zH = zzasx.h(parcelX0);
        parcelX0.recycle();
        return zH;
    }

    @Override // com.google.android.gms.internal.ads.zzbpc
    public final zzbpq e() throws RemoteException {
        Parcel parcelX0 = X0(3, P0());
        zzbpq zzbpqVar = (zzbpq) zzasx.a(parcelX0, zzbpq.CREATOR);
        parcelX0.recycle();
        return zzbpqVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbpc
    public final void f6(String str, String str2, com.google.android.gms.ads.internal.client.zzl zzlVar, IObjectWrapper iObjectWrapper, zzboq zzboqVar, zzbnl zzbnlVar, com.google.android.gms.ads.internal.client.zzq zzqVar) throws RemoteException {
        Parcel parcelP0 = P0();
        parcelP0.writeString(str);
        parcelP0.writeString(str2);
        zzasx.e(parcelP0, zzlVar);
        zzasx.g(parcelP0, iObjectWrapper);
        zzasx.g(parcelP0, zzboqVar);
        zzasx.g(parcelP0, zzbnlVar);
        zzasx.e(parcelP0, zzqVar);
        t1(21, parcelP0);
    }

    @Override // com.google.android.gms.internal.ads.zzbpc
    public final void l2(String str, String str2, com.google.android.gms.ads.internal.client.zzl zzlVar, IObjectWrapper iObjectWrapper, zzboz zzbozVar, zzbnl zzbnlVar) throws RemoteException {
        Parcel parcelP0 = P0();
        parcelP0.writeString(str);
        parcelP0.writeString(str2);
        zzasx.e(parcelP0, zzlVar);
        zzasx.g(parcelP0, iObjectWrapper);
        zzasx.g(parcelP0, zzbozVar);
        zzasx.g(parcelP0, zzbnlVar);
        t1(20, parcelP0);
    }

    @Override // com.google.android.gms.internal.ads.zzbpc
    public final void r3(String str, String str2, com.google.android.gms.ads.internal.client.zzl zzlVar, IObjectWrapper iObjectWrapper, zzbow zzbowVar, zzbnl zzbnlVar) throws RemoteException {
        Parcel parcelP0 = P0();
        parcelP0.writeString(str);
        parcelP0.writeString(str2);
        zzasx.e(parcelP0, zzlVar);
        zzasx.g(parcelP0, iObjectWrapper);
        zzasx.g(parcelP0, zzbowVar);
        zzasx.g(parcelP0, zzbnlVar);
        t1(18, parcelP0);
    }

    @Override // com.google.android.gms.internal.ads.zzbpc
    public final void xa(String str, String str2, com.google.android.gms.ads.internal.client.zzl zzlVar, IObjectWrapper iObjectWrapper, zzboz zzbozVar, zzbnl zzbnlVar) throws RemoteException {
        Parcel parcelP0 = P0();
        parcelP0.writeString(str);
        parcelP0.writeString(str2);
        zzasx.e(parcelP0, zzlVar);
        zzasx.g(parcelP0, iObjectWrapper);
        zzasx.g(parcelP0, zzbozVar);
        zzasx.g(parcelP0, zzbnlVar);
        t1(16, parcelP0);
    }
}
