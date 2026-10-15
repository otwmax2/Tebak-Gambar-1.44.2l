package com.google.android.gms.games.internal;

import android.app.PendingIntent;
import android.content.Intent;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.drive.Contents;
import com.google.android.gms.games.PlayerEntity;
import com.google.android.gms.games.snapshot.SnapshotMetadataChangeEntity;

/* JADX INFO: compiled from: com.google.android.gms:play-services-games@@21.0.0 */
/* JADX INFO: loaded from: classes.dex */
public interface zzac extends IInterface {
    Intent A5() throws RemoteException;

    void B2(zzy zzyVar, String str, int i10, IBinder iBinder, Bundle bundle) throws RemoteException;

    void B5(zzy zzyVar, String str, int i10, int i11, int i12, boolean z10) throws RemoteException;

    void D2(zzy zzyVar, int i10, boolean z10, boolean z11) throws RemoteException;

    void G4(zzy zzyVar, boolean z10) throws RemoteException;

    void Ga(zzy zzyVar, String str, String str2, int i10, int i11) throws RemoteException;

    void H6(zzy zzyVar, boolean z10, String[] strArr) throws RemoteException;

    void J3(zzy zzyVar, boolean z10) throws RemoteException;

    void Ja(zzy zzyVar, String str, String str2, SnapshotMetadataChangeEntity snapshotMetadataChangeEntity, Contents contents) throws RemoteException;

    void K6(String str, int i10) throws RemoteException;

    Intent L2(PlayerEntity playerEntity) throws RemoteException;

    void M1(zzy zzyVar, String str, SnapshotMetadataChangeEntity snapshotMetadataChangeEntity, Contents contents) throws RemoteException;

    void M7(zzy zzyVar, long j10) throws RemoteException;

    void Ma(zzy zzyVar) throws RemoteException;

    int N0() throws RemoteException;

    void N4(zzy zzyVar, String str, boolean z10) throws RemoteException;

    void O3(zzy zzyVar, String str, long j10, String str2) throws RemoteException;

    void P5(zzy zzyVar, boolean z10) throws RemoteException;

    void Q6(zzy zzyVar, String str, int i10, boolean z10, boolean z11) throws RemoteException;

    void Q7(zzy zzyVar, int i10) throws RemoteException;

    void S5(zzaa zzaaVar, long j10) throws RemoteException;

    void T5(zzy zzyVar, String str, boolean z10) throws RemoteException;

    boolean U() throws RemoteException;

    void U1(zzy zzyVar, String str, int i10, int i11, int i12, boolean z10) throws RemoteException;

    DataHolder V4() throws RemoteException;

    void W(long j10) throws RemoteException;

    Intent X8() throws RemoteException;

    void Y3(zzy zzyVar, String str, int i10, IBinder iBinder, Bundle bundle) throws RemoteException;

    int a7() throws RemoteException;

    void b7(Contents contents) throws RemoteException;

    String d1() throws RemoteException;

    void ea(zzy zzyVar, String str, IBinder iBinder, Bundle bundle) throws RemoteException;

    void f1(long j10) throws RemoteException;

    void j3(zzy zzyVar, String str, boolean z10, int i10) throws RemoteException;

    Intent j5(String str, boolean z10, boolean z11, int i10) throws RemoteException;

    Intent j6() throws RemoteException;

    PendingIntent k0() throws RemoteException;

    Intent k3() throws RemoteException;

    void k7(zzy zzyVar, boolean z10) throws RemoteException;

    void k9(zzy zzyVar) throws RemoteException;

    void m1() throws RemoteException;

    DataHolder m8() throws RemoteException;

    Bundle na() throws RemoteException;

    Intent o0() throws RemoteException;

    void o2(zzy zzyVar, boolean z10) throws RemoteException;

    void oa(zzy zzyVar, String str, IBinder iBinder, Bundle bundle) throws RemoteException;

    void q8(IBinder iBinder, Bundle bundle) throws RemoteException;

    void r6(zzy zzyVar, String str) throws RemoteException;

    void r8(zzy zzyVar) throws RemoteException;

    String ua() throws RemoteException;

    void v1(zzy zzyVar, Bundle bundle, int i10, int i11) throws RemoteException;

    Intent w4(String str, int i10, int i11) throws RemoteException;

    Intent y5(String str, String str2, String str3) throws RemoteException;

    void y7(zzy zzyVar) throws RemoteException;

    void y8(zzy zzyVar, boolean z10) throws RemoteException;

    String y9() throws RemoteException;
}
