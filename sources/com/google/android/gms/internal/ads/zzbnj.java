package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzbnj extends zzasv implements zzbnl {
    zzbnj(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.mediation.client.IMediationAdapterListener");
    }

    @Override // com.google.android.gms.internal.ads.zzbnl
    public final void C() throws RemoteException {
        t1(15, P0());
    }

    @Override // com.google.android.gms.internal.ads.zzbnl
    public final void C2(int i10, String str) throws RemoteException {
        Parcel parcelP0 = P0();
        parcelP0.writeInt(i10);
        parcelP0.writeString(str);
        t1(22, parcelP0);
    }

    @Override // com.google.android.gms.internal.ads.zzbnl
    public final void E() throws RemoteException {
        t1(13, P0());
    }

    @Override // com.google.android.gms.internal.ads.zzbnl
    public final void V3(zzbup zzbupVar) throws RemoteException {
        throw null;
    }

    @Override // com.google.android.gms.internal.ads.zzbnl
    public final void W0(com.google.android.gms.ads.internal.client.zze zzeVar) throws RemoteException {
        Parcel parcelP0 = P0();
        zzasx.e(parcelP0, zzeVar);
        t1(24, parcelP0);
    }

    @Override // com.google.android.gms.internal.ads.zzbnl
    public final void X7(zzber zzberVar, String str) throws RemoteException {
        Parcel parcelP0 = P0();
        zzasx.g(parcelP0, zzberVar);
        parcelP0.writeString(str);
        t1(10, parcelP0);
    }

    @Override // com.google.android.gms.internal.ads.zzbnl
    public final void Y2(com.google.android.gms.ads.internal.client.zze zzeVar) throws RemoteException {
        Parcel parcelP0 = P0();
        zzasx.e(parcelP0, zzeVar);
        t1(23, parcelP0);
    }

    @Override // com.google.android.gms.internal.ads.zzbnl
    public final void b() throws RemoteException {
        t1(1, P0());
    }

    @Override // com.google.android.gms.internal.ads.zzbnl
    public final void c() throws RemoteException {
        t1(2, P0());
    }

    @Override // com.google.android.gms.internal.ads.zzbnl
    public final void k() throws RemoteException {
        t1(4, P0());
    }

    @Override // com.google.android.gms.internal.ads.zzbnl
    public final void l() throws RemoteException {
        t1(8, P0());
    }

    @Override // com.google.android.gms.internal.ads.zzbnl
    public final void m() throws RemoteException {
        t1(6, P0());
    }

    @Override // com.google.android.gms.internal.ads.zzbnl
    public final void m0(String str) throws RemoteException {
        Parcel parcelP0 = P0();
        parcelP0.writeString(str);
        t1(21, parcelP0);
    }

    @Override // com.google.android.gms.internal.ads.zzbnl
    public final void n() throws RemoteException {
        t1(5, P0());
    }

    @Override // com.google.android.gms.internal.ads.zzbnl
    public final void o8(String str, String str2) throws RemoteException {
        Parcel parcelP0 = P0();
        parcelP0.writeString(str);
        parcelP0.writeString(str2);
        t1(9, parcelP0);
    }

    @Override // com.google.android.gms.internal.ads.zzbnl
    public final void t() throws RemoteException {
        t1(11, P0());
    }

    @Override // com.google.android.gms.internal.ads.zzbnl
    public final void u6(zzbut zzbutVar) throws RemoteException {
        Parcel parcelP0 = P0();
        zzasx.g(parcelP0, zzbutVar);
        t1(16, parcelP0);
    }

    @Override // com.google.android.gms.internal.ads.zzbnl
    public final void v() throws RemoteException {
        t1(18, P0());
    }

    @Override // com.google.android.gms.internal.ads.zzbnl
    public final void w(int i10) throws RemoteException {
        Parcel parcelP0 = P0();
        parcelP0.writeInt(i10);
        t1(3, parcelP0);
    }

    @Override // com.google.android.gms.internal.ads.zzbnl
    public final void w0(int i10) throws RemoteException {
        throw null;
    }

    @Override // com.google.android.gms.internal.ads.zzbnl
    public final void y() throws RemoteException {
        t1(20, P0());
    }
}
