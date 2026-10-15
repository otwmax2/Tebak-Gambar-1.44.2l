package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import android.os.IInterface;
import android.os.RemoteException;
import java.util.List;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-impl@@20.1.2 */
/* JADX INFO: loaded from: classes2.dex */
public interface zzeo extends IInterface {
    void C5(zzp zzpVar) throws RemoteException;

    List C8(zzp zzpVar, boolean z10) throws RemoteException;

    void E6(long j10, String str, String str2, String str3) throws RemoteException;

    void K5(zzll zzllVar, zzp zzpVar) throws RemoteException;

    void M2(zzp zzpVar) throws RemoteException;

    List P6(String str, String str2, boolean z10, zzp zzpVar) throws RemoteException;

    void Q1(Bundle bundle, zzp zzpVar) throws RemoteException;

    void T3(zzab zzabVar) throws RemoteException;

    void T7(zzav zzavVar, zzp zzpVar) throws RemoteException;

    void W4(zzp zzpVar) throws RemoteException;

    List b5(String str, String str2, zzp zzpVar) throws RemoteException;

    List c4(String str, String str2, String str3) throws RemoteException;

    void i2(zzab zzabVar, zzp zzpVar) throws RemoteException;

    String i3(zzp zzpVar) throws RemoteException;

    byte[] q6(zzav zzavVar, String str) throws RemoteException;

    List x2(String str, String str2, String str3, boolean z10) throws RemoteException;

    void z4(zzav zzavVar, String str, String str2) throws RemoteException;

    void z6(zzp zzpVar) throws RemoteException;
}
