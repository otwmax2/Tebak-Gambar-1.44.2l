package com.google.android.gms.ads.internal.client;

import android.os.IInterface;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.internal.ads.zzbjs;
import com.google.android.gms.internal.ads.zzbnf;
import java.util.List;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.0.0 */
/* JADX INFO: loaded from: classes.dex */
public interface zzco extends IInterface {
    void C6(float f10) throws RemoteException;

    void G8(zzbjs zzbjsVar) throws RemoteException;

    void H0(boolean z10) throws RemoteException;

    void Ia(boolean z10) throws RemoteException;

    void M4(zzbnf zzbnfVar) throws RemoteException;

    void R7(zzff zzffVar) throws RemoteException;

    float b() throws RemoteException;

    String c() throws RemoteException;

    List e() throws RemoteException;

    void g() throws RemoteException;

    void i() throws RemoteException;

    void i1(String str) throws RemoteException;

    void i4(zzda zzdaVar) throws RemoteException;

    void q7(IObjectWrapper iObjectWrapper, String str) throws RemoteException;

    boolean t() throws RemoteException;

    void t0(String str) throws RemoteException;

    void x6(String str, IObjectWrapper iObjectWrapper) throws RemoteException;

    void z0(String str) throws RemoteException;
}
