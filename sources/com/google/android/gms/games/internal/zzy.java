package com.google.android.gms.games.internal;

import android.os.Bundle;
import android.os.IInterface;
import android.os.RemoteException;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.drive.Contents;
import com.google.android.gms.games.video.VideoCapabilities;

/* JADX INFO: compiled from: com.google.android.gms:play-services-games@@21.0.0 */
/* JADX INFO: loaded from: classes.dex */
public interface zzy extends IInterface {
    void A0(int i10, boolean z10) throws RemoteException;

    void A3(DataHolder dataHolder) throws RemoteException;

    void A6(DataHolder dataHolder) throws RemoteException;

    void B4(DataHolder[] dataHolderArr) throws RemoteException;

    void B9(int i10, int i11, String str) throws RemoteException;

    void C1(DataHolder dataHolder) throws RemoteException;

    void C3(DataHolder dataHolder) throws RemoteException;

    void Ca(DataHolder dataHolder) throws RemoteException;

    void D(String str) throws RemoteException;

    void E5(int i10, Bundle bundle) throws RemoteException;

    void Ea(DataHolder dataHolder) throws RemoteException;

    void F(int i10) throws RemoteException;

    void G(int i10) throws RemoteException;

    void G2(DataHolder dataHolder) throws RemoteException;

    void G3(int i10, Bundle bundle) throws RemoteException;

    void I(String str) throws RemoteException;

    void I1(int i10, String str, boolean z10) throws RemoteException;

    void I3(DataHolder dataHolder, Contents contents) throws RemoteException;

    void J0(int i10) throws RemoteException;

    void J4(DataHolder dataHolder) throws RemoteException;

    void J5(DataHolder dataHolder) throws RemoteException;

    void K(int i10) throws RemoteException;

    void K0(int i10, String str) throws RemoteException;

    void K4(DataHolder dataHolder) throws RemoteException;

    void M8(DataHolder dataHolder) throws RemoteException;

    void N5(DataHolder dataHolder) throws RemoteException;

    void O(String str) throws RemoteException;

    void O5(int i10, String str) throws RemoteException;

    void P(int i10, String str) throws RemoteException;

    void P3(DataHolder dataHolder) throws RemoteException;

    void Q(int i10) throws RemoteException;

    void R0(int i10) throws RemoteException;

    void R2(int i10, VideoCapabilities videoCapabilities) throws RemoteException;

    void R9(DataHolder dataHolder, DataHolder dataHolder2) throws RemoteException;

    void S(boolean z10) throws RemoteException;

    void S3(DataHolder dataHolder) throws RemoteException;

    void S6(DataHolder dataHolder) throws RemoteException;

    void S7(DataHolder dataHolder, String[] strArr) throws RemoteException;

    void T1(com.google.android.gms.games.multiplayer.realtime.zzb zzbVar) throws RemoteException;

    void T2(DataHolder dataHolder) throws RemoteException;

    void U4(DataHolder dataHolder) throws RemoteException;

    void U7(DataHolder dataHolder, String str, Contents contents, Contents contents2, Contents contents3) throws RemoteException;

    void V1(DataHolder dataHolder) throws RemoteException;

    void W2(DataHolder dataHolder, String[] strArr) throws RemoteException;

    void X2(int i10, Bundle bundle) throws RemoteException;

    void X3(Status status, String str) throws RemoteException;

    void X4(DataHolder dataHolder) throws RemoteException;

    void Z(int i10) throws RemoteException;

    void Z5(DataHolder dataHolder) throws RemoteException;

    void Z7(DataHolder dataHolder) throws RemoteException;

    void Z8(DataHolder dataHolder) throws RemoteException;

    void a2(DataHolder dataHolder) throws RemoteException;

    void a3(DataHolder dataHolder) throws RemoteException;

    void a9(DataHolder dataHolder, String[] strArr) throws RemoteException;

    void b9(DataHolder dataHolder) throws RemoteException;

    void c7(int i10, String str) throws RemoteException;

    void d0(String str) throws RemoteException;

    void d7(DataHolder dataHolder) throws RemoteException;

    void e3(DataHolder dataHolder) throws RemoteException;

    void e4(DataHolder dataHolder) throws RemoteException;

    void e6(DataHolder dataHolder) throws RemoteException;

    void f7(DataHolder dataHolder) throws RemoteException;

    void ga(DataHolder dataHolder) throws RemoteException;

    void h8(DataHolder dataHolder) throws RemoteException;

    void ha(DataHolder dataHolder) throws RemoteException;

    void j0(int i10) throws RemoteException;

    void j8(int i10, String str) throws RemoteException;

    void k1(Status status) throws RemoteException;

    void ka(DataHolder dataHolder) throws RemoteException;

    void l0(int i10) throws RemoteException;

    void la(DataHolder dataHolder) throws RemoteException;

    void n2(int i10, Bundle bundle) throws RemoteException;

    void n7(DataHolder dataHolder) throws RemoteException;

    void o5(DataHolder dataHolder) throws RemoteException;

    void o7(DataHolder dataHolder) throws RemoteException;

    void p0(int i10, Bundle bundle) throws RemoteException;

    void p1(DataHolder dataHolder) throws RemoteException;

    void r0(int i10) throws RemoteException;

    void r1() throws RemoteException;

    void r2(DataHolder dataHolder) throws RemoteException;

    void r9(DataHolder dataHolder) throws RemoteException;

    void s(String str) throws RemoteException;

    void s2(DataHolder dataHolder, String[] strArr) throws RemoteException;

    void s4(DataHolder dataHolder) throws RemoteException;

    void t4(DataHolder dataHolder, String[] strArr) throws RemoteException;

    void t5(DataHolder dataHolder) throws RemoteException;

    void ta(DataHolder dataHolder, String[] strArr) throws RemoteException;

    void u(String str) throws RemoteException;

    void u2(DataHolder dataHolder) throws RemoteException;

    void u7(DataHolder dataHolder) throws RemoteException;

    void u8(DataHolder dataHolder) throws RemoteException;

    void v8(DataHolder dataHolder) throws RemoteException;

    void w(int i10) throws RemoteException;

    void w0(int i10) throws RemoteException;

    void w7(DataHolder dataHolder) throws RemoteException;

    void z(int i10) throws RemoteException;

    void z8(DataHolder dataHolder) throws RemoteException;

    void z9(DataHolder dataHolder) throws RemoteException;
}
