package com.google.android.gms.internal.drive;

import android.content.IntentSender;
import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;

/* JADX INFO: loaded from: classes2.dex */
public final class zzep extends zza implements zzeo {
    zzep(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.drive.internal.IDriveService");
    }

    @Override // com.google.android.gms.internal.drive.zzeo
    public final void E9(zzgq zzgqVar, zzeq zzeqVar) throws RemoteException {
        Parcel parcelP0 = P0();
        zzc.c(parcelP0, zzgqVar);
        zzc.b(parcelP0, zzeqVar);
        t1(2, parcelP0);
    }

    @Override // com.google.android.gms.internal.drive.zzeo
    public final void F3(zzhf zzhfVar, zzeq zzeqVar) throws RemoteException {
        Parcel parcelP0 = P0();
        zzc.c(parcelP0, zzhfVar);
        zzc.b(parcelP0, zzeqVar);
        t1(3, parcelP0);
    }

    @Override // com.google.android.gms.internal.drive.zzeo
    public final void L9(zzex zzexVar, zzeq zzeqVar) throws RemoteException {
        Parcel parcelP0 = P0();
        zzc.c(parcelP0, zzexVar);
        zzc.b(parcelP0, zzeqVar);
        t1(13, parcelP0);
    }

    @Override // com.google.android.gms.internal.drive.zzeo
    public final void M5(zzhd zzhdVar, zzeq zzeqVar) throws RemoteException {
        Parcel parcelP0 = P0();
        zzc.c(parcelP0, zzhdVar);
        zzc.b(parcelP0, zzeqVar);
        t1(38, parcelP0);
    }

    @Override // com.google.android.gms.internal.drive.zzeo
    public final void N9(zzj zzjVar, zzes zzesVar, String str, zzeq zzeqVar) throws RemoteException {
        Parcel parcelP0 = P0();
        zzc.c(parcelP0, zzjVar);
        zzc.b(parcelP0, zzesVar);
        parcelP0.writeString(null);
        zzc.b(parcelP0, zzeqVar);
        t1(14, parcelP0);
    }

    @Override // com.google.android.gms.internal.drive.zzeo
    public final void Na(zzw zzwVar, zzeq zzeqVar) throws RemoteException {
        Parcel parcelP0 = P0();
        zzc.c(parcelP0, zzwVar);
        zzc.b(parcelP0, zzeqVar);
        t1(5, parcelP0);
    }

    @Override // com.google.android.gms.internal.drive.zzeo
    public final void O9(zzo zzoVar, zzeq zzeqVar) throws RemoteException {
        Parcel parcelP0 = P0();
        zzc.c(parcelP0, zzoVar);
        zzc.b(parcelP0, zzeqVar);
        t1(8, parcelP0);
    }

    @Override // com.google.android.gms.internal.drive.zzeo
    public final void U8(zzr zzrVar, zzeq zzeqVar) throws RemoteException {
        Parcel parcelP0 = P0();
        zzc.c(parcelP0, zzrVar);
        zzc.b(parcelP0, zzeqVar);
        t1(4, parcelP0);
    }

    @Override // com.google.android.gms.internal.drive.zzeo
    public final void W9(zzab zzabVar, zzeq zzeqVar) throws RemoteException {
        Parcel parcelP0 = P0();
        zzc.c(parcelP0, zzabVar);
        zzc.b(parcelP0, zzeqVar);
        t1(24, parcelP0);
    }

    @Override // com.google.android.gms.internal.drive.zzeo
    public final IntentSender X6(zzu zzuVar) throws RemoteException {
        Parcel parcelP0 = P0();
        zzc.c(parcelP0, zzuVar);
        Parcel parcelX0 = X0(11, parcelP0);
        IntentSender intentSender = (IntentSender) zzc.a(parcelX0, IntentSender.CREATOR);
        parcelX0.recycle();
        return intentSender;
    }

    @Override // com.google.android.gms.internal.drive.zzeo
    public final void Y6(zzeq zzeqVar) throws RemoteException {
        Parcel parcelP0 = P0();
        zzc.b(parcelP0, zzeqVar);
        t1(9, parcelP0);
    }

    @Override // com.google.android.gms.internal.drive.zzeo
    public final void Z3(zzek zzekVar, zzeq zzeqVar) throws RemoteException {
        Parcel parcelP0 = P0();
        zzc.c(parcelP0, zzekVar);
        zzc.b(parcelP0, zzeqVar);
        t1(1, parcelP0);
    }

    @Override // com.google.android.gms.internal.drive.zzeo
    public final IntentSender a5(zzgm zzgmVar) throws RemoteException {
        Parcel parcelP0 = P0();
        zzc.c(parcelP0, zzgmVar);
        Parcel parcelX0 = X0(10, parcelP0);
        IntentSender intentSender = (IntentSender) zzc.a(parcelX0, IntentSender.CREATOR);
        parcelX0.recycle();
        return intentSender;
    }

    @Override // com.google.android.gms.internal.drive.zzeo
    public final void d8(zzhb zzhbVar, zzeq zzeqVar) throws RemoteException {
        Parcel parcelP0 = P0();
        zzc.c(parcelP0, zzhbVar);
        zzc.b(parcelP0, zzeqVar);
        t1(17, parcelP0);
    }

    @Override // com.google.android.gms.internal.drive.zzeo
    public final void f2(zzgw zzgwVar, zzeq zzeqVar) throws RemoteException {
        Parcel parcelP0 = P0();
        zzc.c(parcelP0, zzgwVar);
        zzc.b(parcelP0, zzeqVar);
        t1(28, parcelP0);
    }

    @Override // com.google.android.gms.internal.drive.zzeo
    public final void fa(zzeq zzeqVar) throws RemoteException {
        Parcel parcelP0 = P0();
        zzc.b(parcelP0, zzeqVar);
        t1(35, parcelP0);
    }

    @Override // com.google.android.gms.internal.drive.zzeo
    public final void k4(zzy zzyVar, zzeq zzeqVar) throws RemoteException {
        Parcel parcelP0 = P0();
        zzc.c(parcelP0, zzyVar);
        zzc.b(parcelP0, zzeqVar);
        t1(6, parcelP0);
    }

    @Override // com.google.android.gms.internal.drive.zzeo
    public final void p3(zzgs zzgsVar, zzes zzesVar, String str, zzeq zzeqVar) throws RemoteException {
        Parcel parcelP0 = P0();
        zzc.c(parcelP0, zzgsVar);
        zzc.b(parcelP0, zzesVar);
        parcelP0.writeString(null);
        zzc.b(parcelP0, zzeqVar);
        t1(15, parcelP0);
    }

    @Override // com.google.android.gms.internal.drive.zzeo
    public final void r7(zzm zzmVar, zzeq zzeqVar) throws RemoteException {
        Parcel parcelP0 = P0();
        zzc.c(parcelP0, zzmVar);
        zzc.b(parcelP0, zzeqVar);
        t1(18, parcelP0);
    }

    @Override // com.google.android.gms.internal.drive.zzeo
    public final void s8(zzad zzadVar) throws RemoteException {
        Parcel parcelP0 = P0();
        zzc.c(parcelP0, zzadVar);
        t1(16, parcelP0);
    }

    @Override // com.google.android.gms.internal.drive.zzeo
    public final void u5(zzgu zzguVar, zzeq zzeqVar) throws RemoteException {
        Parcel parcelP0 = P0();
        zzc.c(parcelP0, zzguVar);
        zzc.b(parcelP0, zzeqVar);
        t1(36, parcelP0);
    }

    @Override // com.google.android.gms.internal.drive.zzeo
    public final zzec v5(zzgj zzgjVar, zzeq zzeqVar) throws RemoteException {
        Parcel parcelP0 = P0();
        zzc.c(parcelP0, zzgjVar);
        zzc.b(parcelP0, zzeqVar);
        Parcel parcelX0 = X0(7, parcelP0);
        zzec zzecVar = (zzec) zzc.a(parcelX0, zzec.CREATOR);
        parcelX0.recycle();
        return zzecVar;
    }
}
