package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-impl@@20.1.2 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzem extends com.google.android.gms.internal.measurement.zzbm implements zzeo {
    zzem(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.measurement.internal.IMeasurementService");
    }

    @Override // com.google.android.gms.measurement.internal.zzeo
    public final void C5(zzp zzpVar) throws RemoteException {
        Parcel parcelP0 = P0();
        com.google.android.gms.internal.measurement.zzbo.e(parcelP0, zzpVar);
        t1(6, parcelP0);
    }

    @Override // com.google.android.gms.measurement.internal.zzeo
    public final void E6(long j10, String str, String str2, String str3) throws RemoteException {
        Parcel parcelP0 = P0();
        parcelP0.writeLong(j10);
        parcelP0.writeString(str);
        parcelP0.writeString(str2);
        parcelP0.writeString(str3);
        t1(10, parcelP0);
    }

    @Override // com.google.android.gms.measurement.internal.zzeo
    public final void K5(zzll zzllVar, zzp zzpVar) throws RemoteException {
        Parcel parcelP0 = P0();
        com.google.android.gms.internal.measurement.zzbo.e(parcelP0, zzllVar);
        com.google.android.gms.internal.measurement.zzbo.e(parcelP0, zzpVar);
        t1(2, parcelP0);
    }

    @Override // com.google.android.gms.measurement.internal.zzeo
    public final void M2(zzp zzpVar) throws RemoteException {
        Parcel parcelP0 = P0();
        com.google.android.gms.internal.measurement.zzbo.e(parcelP0, zzpVar);
        t1(18, parcelP0);
    }

    @Override // com.google.android.gms.measurement.internal.zzeo
    public final List P6(String str, String str2, boolean z10, zzp zzpVar) throws RemoteException {
        Parcel parcelP0 = P0();
        parcelP0.writeString(str);
        parcelP0.writeString(str2);
        com.google.android.gms.internal.measurement.zzbo.d(parcelP0, z10);
        com.google.android.gms.internal.measurement.zzbo.e(parcelP0, zzpVar);
        Parcel parcelX0 = X0(14, parcelP0);
        ArrayList arrayListCreateTypedArrayList = parcelX0.createTypedArrayList(zzll.CREATOR);
        parcelX0.recycle();
        return arrayListCreateTypedArrayList;
    }

    @Override // com.google.android.gms.measurement.internal.zzeo
    public final void Q1(Bundle bundle, zzp zzpVar) throws RemoteException {
        Parcel parcelP0 = P0();
        com.google.android.gms.internal.measurement.zzbo.e(parcelP0, bundle);
        com.google.android.gms.internal.measurement.zzbo.e(parcelP0, zzpVar);
        t1(19, parcelP0);
    }

    @Override // com.google.android.gms.measurement.internal.zzeo
    public final void T7(zzav zzavVar, zzp zzpVar) throws RemoteException {
        Parcel parcelP0 = P0();
        com.google.android.gms.internal.measurement.zzbo.e(parcelP0, zzavVar);
        com.google.android.gms.internal.measurement.zzbo.e(parcelP0, zzpVar);
        t1(1, parcelP0);
    }

    @Override // com.google.android.gms.measurement.internal.zzeo
    public final void W4(zzp zzpVar) throws RemoteException {
        Parcel parcelP0 = P0();
        com.google.android.gms.internal.measurement.zzbo.e(parcelP0, zzpVar);
        t1(4, parcelP0);
    }

    @Override // com.google.android.gms.measurement.internal.zzeo
    public final List b5(String str, String str2, zzp zzpVar) throws RemoteException {
        Parcel parcelP0 = P0();
        parcelP0.writeString(str);
        parcelP0.writeString(str2);
        com.google.android.gms.internal.measurement.zzbo.e(parcelP0, zzpVar);
        Parcel parcelX0 = X0(16, parcelP0);
        ArrayList arrayListCreateTypedArrayList = parcelX0.createTypedArrayList(zzab.CREATOR);
        parcelX0.recycle();
        return arrayListCreateTypedArrayList;
    }

    @Override // com.google.android.gms.measurement.internal.zzeo
    public final List c4(String str, String str2, String str3) throws RemoteException {
        Parcel parcelP0 = P0();
        parcelP0.writeString(null);
        parcelP0.writeString(str2);
        parcelP0.writeString(str3);
        Parcel parcelX0 = X0(17, parcelP0);
        ArrayList arrayListCreateTypedArrayList = parcelX0.createTypedArrayList(zzab.CREATOR);
        parcelX0.recycle();
        return arrayListCreateTypedArrayList;
    }

    @Override // com.google.android.gms.measurement.internal.zzeo
    public final void i2(zzab zzabVar, zzp zzpVar) throws RemoteException {
        Parcel parcelP0 = P0();
        com.google.android.gms.internal.measurement.zzbo.e(parcelP0, zzabVar);
        com.google.android.gms.internal.measurement.zzbo.e(parcelP0, zzpVar);
        t1(12, parcelP0);
    }

    @Override // com.google.android.gms.measurement.internal.zzeo
    public final String i3(zzp zzpVar) throws RemoteException {
        Parcel parcelP0 = P0();
        com.google.android.gms.internal.measurement.zzbo.e(parcelP0, zzpVar);
        Parcel parcelX0 = X0(11, parcelP0);
        String string = parcelX0.readString();
        parcelX0.recycle();
        return string;
    }

    @Override // com.google.android.gms.measurement.internal.zzeo
    public final byte[] q6(zzav zzavVar, String str) throws RemoteException {
        Parcel parcelP0 = P0();
        com.google.android.gms.internal.measurement.zzbo.e(parcelP0, zzavVar);
        parcelP0.writeString(str);
        Parcel parcelX0 = X0(9, parcelP0);
        byte[] bArrCreateByteArray = parcelX0.createByteArray();
        parcelX0.recycle();
        return bArrCreateByteArray;
    }

    @Override // com.google.android.gms.measurement.internal.zzeo
    public final List x2(String str, String str2, String str3, boolean z10) throws RemoteException {
        Parcel parcelP0 = P0();
        parcelP0.writeString(null);
        parcelP0.writeString(str2);
        parcelP0.writeString(str3);
        com.google.android.gms.internal.measurement.zzbo.d(parcelP0, z10);
        Parcel parcelX0 = X0(15, parcelP0);
        ArrayList arrayListCreateTypedArrayList = parcelX0.createTypedArrayList(zzll.CREATOR);
        parcelX0.recycle();
        return arrayListCreateTypedArrayList;
    }

    @Override // com.google.android.gms.measurement.internal.zzeo
    public final void z6(zzp zzpVar) throws RemoteException {
        Parcel parcelP0 = P0();
        com.google.android.gms.internal.measurement.zzbo.e(parcelP0, zzpVar);
        t1(20, parcelP0);
    }
}
