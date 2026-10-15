package com.google.android.gms.games.internal;

import android.app.PendingIntent;
import android.content.Intent;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.drive.Contents;
import com.google.android.gms.games.PlayerEntity;
import com.google.android.gms.games.snapshot.SnapshotMetadataChangeEntity;

/* JADX INFO: compiled from: com.google.android.gms:play-services-games@@21.0.0 */
/* JADX INFO: loaded from: classes.dex */
public final class zzaf extends com.google.android.gms.internal.games.zzb implements zzac {
    zzaf(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.games.internal.IGamesService");
    }

    @Override // com.google.android.gms.games.internal.zzac
    public final Intent A5() throws RemoteException {
        Parcel parcelX0 = X0(9003, P0());
        Intent intent = (Intent) com.google.android.gms.internal.games.zzd.b(parcelX0, Intent.CREATOR);
        parcelX0.recycle();
        return intent;
    }

    @Override // com.google.android.gms.games.internal.zzac
    public final void B2(zzy zzyVar, String str, int i10, IBinder iBinder, Bundle bundle) throws RemoteException {
        Parcel parcelP0 = P0();
        com.google.android.gms.internal.games.zzd.c(parcelP0, zzyVar);
        parcelP0.writeString(str);
        parcelP0.writeInt(i10);
        parcelP0.writeStrongBinder(iBinder);
        com.google.android.gms.internal.games.zzd.d(parcelP0, bundle);
        t1(5025, parcelP0);
    }

    @Override // com.google.android.gms.games.internal.zzac
    public final void B5(zzy zzyVar, String str, int i10, int i11, int i12, boolean z10) throws RemoteException {
        Parcel parcelP0 = P0();
        com.google.android.gms.internal.games.zzd.c(parcelP0, zzyVar);
        parcelP0.writeString(str);
        parcelP0.writeInt(i10);
        parcelP0.writeInt(i11);
        parcelP0.writeInt(i12);
        com.google.android.gms.internal.games.zzd.a(parcelP0, z10);
        t1(5019, parcelP0);
    }

    @Override // com.google.android.gms.games.internal.zzac
    public final void D2(zzy zzyVar, int i10, boolean z10, boolean z11) throws RemoteException {
        Parcel parcelP0 = P0();
        com.google.android.gms.internal.games.zzd.c(parcelP0, zzyVar);
        parcelP0.writeInt(i10);
        com.google.android.gms.internal.games.zzd.a(parcelP0, z10);
        com.google.android.gms.internal.games.zzd.a(parcelP0, z11);
        t1(5015, parcelP0);
    }

    @Override // com.google.android.gms.games.internal.zzac
    public final void G4(zzy zzyVar, boolean z10) throws RemoteException {
        Parcel parcelP0 = P0();
        com.google.android.gms.internal.games.zzd.c(parcelP0, zzyVar);
        com.google.android.gms.internal.games.zzd.a(parcelP0, z10);
        t1(12002, parcelP0);
    }

    @Override // com.google.android.gms.games.internal.zzac
    public final void Ga(zzy zzyVar, String str, String str2, int i10, int i11) throws RemoteException {
        Parcel parcelP0 = P0();
        com.google.android.gms.internal.games.zzd.c(parcelP0, zzyVar);
        parcelP0.writeString(null);
        parcelP0.writeString(str2);
        parcelP0.writeInt(i10);
        parcelP0.writeInt(i11);
        t1(8001, parcelP0);
    }

    @Override // com.google.android.gms.games.internal.zzac
    public final void H6(zzy zzyVar, boolean z10, String[] strArr) throws RemoteException {
        Parcel parcelP0 = P0();
        com.google.android.gms.internal.games.zzd.c(parcelP0, zzyVar);
        com.google.android.gms.internal.games.zzd.a(parcelP0, z10);
        parcelP0.writeStringArray(strArr);
        t1(12031, parcelP0);
    }

    @Override // com.google.android.gms.games.internal.zzac
    public final void J3(zzy zzyVar, boolean z10) throws RemoteException {
        Parcel parcelP0 = P0();
        com.google.android.gms.internal.games.zzd.c(parcelP0, zzyVar);
        com.google.android.gms.internal.games.zzd.a(parcelP0, z10);
        t1(12016, parcelP0);
    }

    @Override // com.google.android.gms.games.internal.zzac
    public final void Ja(zzy zzyVar, String str, String str2, SnapshotMetadataChangeEntity snapshotMetadataChangeEntity, Contents contents) throws RemoteException {
        Parcel parcelP0 = P0();
        com.google.android.gms.internal.games.zzd.c(parcelP0, zzyVar);
        parcelP0.writeString(str);
        parcelP0.writeString(str2);
        com.google.android.gms.internal.games.zzd.d(parcelP0, snapshotMetadataChangeEntity);
        com.google.android.gms.internal.games.zzd.d(parcelP0, contents);
        t1(12033, parcelP0);
    }

    @Override // com.google.android.gms.games.internal.zzac
    public final void K6(String str, int i10) throws RemoteException {
        Parcel parcelP0 = P0();
        parcelP0.writeString(str);
        parcelP0.writeInt(i10);
        t1(12017, parcelP0);
    }

    @Override // com.google.android.gms.games.internal.zzac
    public final Intent L2(PlayerEntity playerEntity) throws RemoteException {
        Parcel parcelP0 = P0();
        com.google.android.gms.internal.games.zzd.d(parcelP0, playerEntity);
        Parcel parcelX0 = X0(15503, parcelP0);
        Intent intent = (Intent) com.google.android.gms.internal.games.zzd.b(parcelX0, Intent.CREATOR);
        parcelX0.recycle();
        return intent;
    }

    @Override // com.google.android.gms.games.internal.zzac
    public final void M1(zzy zzyVar, String str, SnapshotMetadataChangeEntity snapshotMetadataChangeEntity, Contents contents) throws RemoteException {
        Parcel parcelP0 = P0();
        com.google.android.gms.internal.games.zzd.c(parcelP0, zzyVar);
        parcelP0.writeString(str);
        com.google.android.gms.internal.games.zzd.d(parcelP0, snapshotMetadataChangeEntity);
        com.google.android.gms.internal.games.zzd.d(parcelP0, contents);
        t1(12007, parcelP0);
    }

    @Override // com.google.android.gms.games.internal.zzac
    public final void M7(zzy zzyVar, long j10) throws RemoteException {
        Parcel parcelP0 = P0();
        com.google.android.gms.internal.games.zzd.c(parcelP0, zzyVar);
        parcelP0.writeLong(j10);
        t1(22026, parcelP0);
    }

    @Override // com.google.android.gms.games.internal.zzac
    public final void Ma(zzy zzyVar) throws RemoteException {
        Parcel parcelP0 = P0();
        com.google.android.gms.internal.games.zzd.c(parcelP0, zzyVar);
        t1(22028, parcelP0);
    }

    @Override // com.google.android.gms.games.internal.zzac
    public final int N0() throws RemoteException {
        Parcel parcelX0 = X0(12036, P0());
        int i10 = parcelX0.readInt();
        parcelX0.recycle();
        return i10;
    }

    @Override // com.google.android.gms.games.internal.zzac
    public final void N4(zzy zzyVar, String str, boolean z10) throws RemoteException {
        Parcel parcelP0 = P0();
        com.google.android.gms.internal.games.zzd.c(parcelP0, zzyVar);
        parcelP0.writeString(str);
        com.google.android.gms.internal.games.zzd.a(parcelP0, z10);
        t1(13006, parcelP0);
    }

    @Override // com.google.android.gms.games.internal.zzac
    public final void O3(zzy zzyVar, String str, long j10, String str2) throws RemoteException {
        Parcel parcelP0 = P0();
        com.google.android.gms.internal.games.zzd.c(parcelP0, zzyVar);
        parcelP0.writeString(str);
        parcelP0.writeLong(j10);
        parcelP0.writeString(str2);
        t1(7002, parcelP0);
    }

    @Override // com.google.android.gms.games.internal.zzac
    public final void P5(zzy zzyVar, boolean z10) throws RemoteException {
        Parcel parcelP0 = P0();
        com.google.android.gms.internal.games.zzd.c(parcelP0, zzyVar);
        com.google.android.gms.internal.games.zzd.a(parcelP0, z10);
        t1(8027, parcelP0);
    }

    @Override // com.google.android.gms.games.internal.zzac
    public final void Q6(zzy zzyVar, String str, int i10, boolean z10, boolean z11) throws RemoteException {
        Parcel parcelP0 = P0();
        com.google.android.gms.internal.games.zzd.c(parcelP0, zzyVar);
        parcelP0.writeString(str);
        parcelP0.writeInt(i10);
        com.google.android.gms.internal.games.zzd.a(parcelP0, z10);
        com.google.android.gms.internal.games.zzd.a(parcelP0, z11);
        t1(9020, parcelP0);
    }

    @Override // com.google.android.gms.games.internal.zzac
    public final void Q7(zzy zzyVar, int i10) throws RemoteException {
        Parcel parcelP0 = P0();
        com.google.android.gms.internal.games.zzd.c(parcelP0, zzyVar);
        parcelP0.writeInt(i10);
        t1(22016, parcelP0);
    }

    @Override // com.google.android.gms.games.internal.zzac
    public final void S5(zzaa zzaaVar, long j10) throws RemoteException {
        Parcel parcelP0 = P0();
        com.google.android.gms.internal.games.zzd.c(parcelP0, zzaaVar);
        parcelP0.writeLong(j10);
        t1(15501, parcelP0);
    }

    @Override // com.google.android.gms.games.internal.zzac
    public final void T5(zzy zzyVar, String str, boolean z10) throws RemoteException {
        Parcel parcelP0 = P0();
        com.google.android.gms.internal.games.zzd.c(parcelP0, zzyVar);
        parcelP0.writeString(str);
        com.google.android.gms.internal.games.zzd.a(parcelP0, z10);
        t1(6504, parcelP0);
    }

    @Override // com.google.android.gms.games.internal.zzac
    public final boolean U() throws RemoteException {
        Parcel parcelX0 = X0(22030, P0());
        boolean zE = com.google.android.gms.internal.games.zzd.e(parcelX0);
        parcelX0.recycle();
        return zE;
    }

    @Override // com.google.android.gms.games.internal.zzac
    public final void U1(zzy zzyVar, String str, int i10, int i11, int i12, boolean z10) throws RemoteException {
        Parcel parcelP0 = P0();
        com.google.android.gms.internal.games.zzd.c(parcelP0, zzyVar);
        parcelP0.writeString(str);
        parcelP0.writeInt(i10);
        parcelP0.writeInt(i11);
        parcelP0.writeInt(i12);
        com.google.android.gms.internal.games.zzd.a(parcelP0, z10);
        t1(5020, parcelP0);
    }

    @Override // com.google.android.gms.games.internal.zzac
    public final DataHolder V4() throws RemoteException {
        Parcel parcelX0 = X0(5502, P0());
        DataHolder dataHolder = (DataHolder) com.google.android.gms.internal.games.zzd.b(parcelX0, DataHolder.CREATOR);
        parcelX0.recycle();
        return dataHolder;
    }

    @Override // com.google.android.gms.games.internal.zzac
    public final void W(long j10) throws RemoteException {
        Parcel parcelP0 = P0();
        parcelP0.writeLong(j10);
        t1(22027, parcelP0);
    }

    @Override // com.google.android.gms.games.internal.zzac
    public final Intent X8() throws RemoteException {
        Parcel parcelX0 = X0(9010, P0());
        Intent intent = (Intent) com.google.android.gms.internal.games.zzd.b(parcelX0, Intent.CREATOR);
        parcelX0.recycle();
        return intent;
    }

    @Override // com.google.android.gms.games.internal.zzac
    public final void Y3(zzy zzyVar, String str, int i10, IBinder iBinder, Bundle bundle) throws RemoteException {
        Parcel parcelP0 = P0();
        com.google.android.gms.internal.games.zzd.c(parcelP0, zzyVar);
        parcelP0.writeString(str);
        parcelP0.writeInt(i10);
        parcelP0.writeStrongBinder(iBinder);
        com.google.android.gms.internal.games.zzd.d(parcelP0, bundle);
        t1(7003, parcelP0);
    }

    @Override // com.google.android.gms.games.internal.zzac
    public final int a7() throws RemoteException {
        Parcel parcelX0 = X0(12035, P0());
        int i10 = parcelX0.readInt();
        parcelX0.recycle();
        return i10;
    }

    @Override // com.google.android.gms.games.internal.zzac
    public final void b7(Contents contents) throws RemoteException {
        Parcel parcelP0 = P0();
        com.google.android.gms.internal.games.zzd.d(parcelP0, contents);
        t1(12019, parcelP0);
    }

    @Override // com.google.android.gms.games.internal.zzac
    public final String d1() throws RemoteException {
        Parcel parcelX0 = X0(5012, P0());
        String string = parcelX0.readString();
        parcelX0.recycle();
        return string;
    }

    @Override // com.google.android.gms.games.internal.zzac
    public final void ea(zzy zzyVar, String str, IBinder iBinder, Bundle bundle) throws RemoteException {
        Parcel parcelP0 = P0();
        com.google.android.gms.internal.games.zzd.c(parcelP0, zzyVar);
        parcelP0.writeString(str);
        parcelP0.writeStrongBinder(iBinder);
        com.google.android.gms.internal.games.zzd.d(parcelP0, bundle);
        t1(5024, parcelP0);
    }

    @Override // com.google.android.gms.games.internal.zzac
    public final void f1(long j10) throws RemoteException {
        Parcel parcelP0 = P0();
        parcelP0.writeLong(j10);
        t1(5001, parcelP0);
    }

    @Override // com.google.android.gms.games.internal.zzac
    public final void j3(zzy zzyVar, String str, boolean z10, int i10) throws RemoteException {
        Parcel parcelP0 = P0();
        com.google.android.gms.internal.games.zzd.c(parcelP0, zzyVar);
        parcelP0.writeString(str);
        com.google.android.gms.internal.games.zzd.a(parcelP0, z10);
        parcelP0.writeInt(i10);
        t1(15001, parcelP0);
    }

    @Override // com.google.android.gms.games.internal.zzac
    public final Intent j5(String str, boolean z10, boolean z11, int i10) throws RemoteException {
        Parcel parcelP0 = P0();
        parcelP0.writeString(str);
        com.google.android.gms.internal.games.zzd.a(parcelP0, z10);
        com.google.android.gms.internal.games.zzd.a(parcelP0, z11);
        parcelP0.writeInt(i10);
        Parcel parcelX0 = X0(12001, parcelP0);
        Intent intent = (Intent) com.google.android.gms.internal.games.zzd.b(parcelX0, Intent.CREATOR);
        parcelX0.recycle();
        return intent;
    }

    @Override // com.google.android.gms.games.internal.zzac
    public final Intent j6() throws RemoteException {
        Parcel parcelX0 = X0(9012, P0());
        Intent intent = (Intent) com.google.android.gms.internal.games.zzd.b(parcelX0, Intent.CREATOR);
        parcelX0.recycle();
        return intent;
    }

    @Override // com.google.android.gms.games.internal.zzac
    public final PendingIntent k0() throws RemoteException {
        Parcel parcelX0 = X0(25015, P0());
        PendingIntent pendingIntent = (PendingIntent) com.google.android.gms.internal.games.zzd.b(parcelX0, PendingIntent.CREATOR);
        parcelX0.recycle();
        return pendingIntent;
    }

    @Override // com.google.android.gms.games.internal.zzac
    public final Intent k3() throws RemoteException {
        Parcel parcelX0 = X0(9005, P0());
        Intent intent = (Intent) com.google.android.gms.internal.games.zzd.b(parcelX0, Intent.CREATOR);
        parcelX0.recycle();
        return intent;
    }

    @Override // com.google.android.gms.games.internal.zzac
    public final void k7(zzy zzyVar, boolean z10) throws RemoteException {
        Parcel parcelP0 = P0();
        com.google.android.gms.internal.games.zzd.c(parcelP0, zzyVar);
        com.google.android.gms.internal.games.zzd.a(parcelP0, z10);
        t1(6503, parcelP0);
    }

    @Override // com.google.android.gms.games.internal.zzac
    public final void k9(zzy zzyVar) throws RemoteException {
        Parcel parcelP0 = P0();
        com.google.android.gms.internal.games.zzd.c(parcelP0, zzyVar);
        t1(21007, parcelP0);
    }

    @Override // com.google.android.gms.games.internal.zzac
    public final void m1() throws RemoteException {
        t1(5006, P0());
    }

    @Override // com.google.android.gms.games.internal.zzac
    public final DataHolder m8() throws RemoteException {
        Parcel parcelX0 = X0(5013, P0());
        DataHolder dataHolder = (DataHolder) com.google.android.gms.internal.games.zzd.b(parcelX0, DataHolder.CREATOR);
        parcelX0.recycle();
        return dataHolder;
    }

    @Override // com.google.android.gms.games.internal.zzac
    public final Bundle na() throws RemoteException {
        Parcel parcelX0 = X0(5004, P0());
        Bundle bundle = (Bundle) com.google.android.gms.internal.games.zzd.b(parcelX0, Bundle.CREATOR);
        parcelX0.recycle();
        return bundle;
    }

    @Override // com.google.android.gms.games.internal.zzac
    public final Intent o0() throws RemoteException {
        Parcel parcelX0 = X0(19002, P0());
        Intent intent = (Intent) com.google.android.gms.internal.games.zzd.b(parcelX0, Intent.CREATOR);
        parcelX0.recycle();
        return intent;
    }

    @Override // com.google.android.gms.games.internal.zzac
    public final void o2(zzy zzyVar, boolean z10) throws RemoteException {
        Parcel parcelP0 = P0();
        com.google.android.gms.internal.games.zzd.c(parcelP0, zzyVar);
        com.google.android.gms.internal.games.zzd.a(parcelP0, z10);
        t1(17001, parcelP0);
    }

    @Override // com.google.android.gms.games.internal.zzac
    public final void oa(zzy zzyVar, String str, IBinder iBinder, Bundle bundle) throws RemoteException {
        Parcel parcelP0 = P0();
        com.google.android.gms.internal.games.zzd.c(parcelP0, zzyVar);
        parcelP0.writeString(str);
        parcelP0.writeStrongBinder(iBinder);
        com.google.android.gms.internal.games.zzd.d(parcelP0, bundle);
        t1(5023, parcelP0);
    }

    @Override // com.google.android.gms.games.internal.zzac
    public final void q8(IBinder iBinder, Bundle bundle) throws RemoteException {
        Parcel parcelP0 = P0();
        parcelP0.writeStrongBinder(iBinder);
        com.google.android.gms.internal.games.zzd.d(parcelP0, bundle);
        t1(5005, parcelP0);
    }

    @Override // com.google.android.gms.games.internal.zzac
    public final void r6(zzy zzyVar, String str) throws RemoteException {
        Parcel parcelP0 = P0();
        com.google.android.gms.internal.games.zzd.c(parcelP0, zzyVar);
        parcelP0.writeString(str);
        t1(12020, parcelP0);
    }

    @Override // com.google.android.gms.games.internal.zzac
    public final void r8(zzy zzyVar) throws RemoteException {
        Parcel parcelP0 = P0();
        com.google.android.gms.internal.games.zzd.c(parcelP0, zzyVar);
        t1(5026, parcelP0);
    }

    @Override // com.google.android.gms.games.internal.zzac
    public final String ua() throws RemoteException {
        Parcel parcelX0 = X0(5003, P0());
        String string = parcelX0.readString();
        parcelX0.recycle();
        return string;
    }

    @Override // com.google.android.gms.games.internal.zzac
    public final void v1(zzy zzyVar, Bundle bundle, int i10, int i11) throws RemoteException {
        Parcel parcelP0 = P0();
        com.google.android.gms.internal.games.zzd.c(parcelP0, zzyVar);
        com.google.android.gms.internal.games.zzd.d(parcelP0, bundle);
        parcelP0.writeInt(i10);
        parcelP0.writeInt(i11);
        t1(5021, parcelP0);
    }

    @Override // com.google.android.gms.games.internal.zzac
    public final Intent w4(String str, int i10, int i11) throws RemoteException {
        Parcel parcelP0 = P0();
        parcelP0.writeString(str);
        parcelP0.writeInt(i10);
        parcelP0.writeInt(i11);
        Parcel parcelX0 = X0(18001, parcelP0);
        Intent intent = (Intent) com.google.android.gms.internal.games.zzd.b(parcelX0, Intent.CREATOR);
        parcelX0.recycle();
        return intent;
    }

    @Override // com.google.android.gms.games.internal.zzac
    public final Intent y5(String str, String str2, String str3) throws RemoteException {
        Parcel parcelP0 = P0();
        parcelP0.writeString(str);
        parcelP0.writeString(str2);
        parcelP0.writeString(str3);
        Parcel parcelX0 = X0(25016, parcelP0);
        Intent intent = (Intent) com.google.android.gms.internal.games.zzd.b(parcelX0, Intent.CREATOR);
        parcelX0.recycle();
        return intent;
    }

    @Override // com.google.android.gms.games.internal.zzac
    public final void y7(zzy zzyVar) throws RemoteException {
        Parcel parcelP0 = P0();
        com.google.android.gms.internal.games.zzd.c(parcelP0, zzyVar);
        t1(5002, parcelP0);
    }

    @Override // com.google.android.gms.games.internal.zzac
    public final void y8(zzy zzyVar, boolean z10) throws RemoteException {
        Parcel parcelP0 = P0();
        com.google.android.gms.internal.games.zzd.c(parcelP0, zzyVar);
        com.google.android.gms.internal.games.zzd.a(parcelP0, z10);
        t1(6001, parcelP0);
    }

    @Override // com.google.android.gms.games.internal.zzac
    public final String y9() throws RemoteException {
        Parcel parcelX0 = X0(5007, P0());
        String string = parcelX0.readString();
        parcelX0.recycle();
        return string;
    }
}
