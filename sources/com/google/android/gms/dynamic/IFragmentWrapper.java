package com.google.android.gms.dynamic;

import android.content.Intent;
import android.os.Bundle;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.internal.common.zzc;

/* JADX INFO: compiled from: com.google.android.gms:play-services-basement@@18.1.0 */
/* JADX INFO: loaded from: classes.dex */
public interface IFragmentWrapper extends IInterface {

    /* JADX INFO: compiled from: com.google.android.gms:play-services-basement@@18.1.0 */
    public static abstract class Stub extends com.google.android.gms.internal.common.zzb implements IFragmentWrapper {
        public Stub() {
            super("com.google.android.gms.dynamic.IFragmentWrapper");
        }

        @Override // com.google.android.gms.internal.common.zzb
        protected final boolean P0(int i10, Parcel parcel, Parcel parcel2, int i11) throws RemoteException {
            switch (i10) {
                case 2:
                    IObjectWrapper iObjectWrapperE = e();
                    parcel2.writeNoException();
                    zzc.f(parcel2, iObjectWrapperE);
                    return true;
                case 3:
                    Bundle bundleD = d();
                    parcel2.writeNoException();
                    zzc.e(parcel2, bundleD);
                    return true;
                case 4:
                    int iZzb = zzb();
                    parcel2.writeNoException();
                    parcel2.writeInt(iZzb);
                    return true;
                case 5:
                    IFragmentWrapper iFragmentWrapperB = b();
                    parcel2.writeNoException();
                    zzc.f(parcel2, iFragmentWrapperB);
                    return true;
                case 6:
                    IObjectWrapper iObjectWrapperF = f();
                    parcel2.writeNoException();
                    zzc.f(parcel2, iObjectWrapperF);
                    return true;
                case 7:
                    boolean zQ = q();
                    parcel2.writeNoException();
                    zzc.c(parcel2, zQ);
                    return true;
                case 8:
                    String strH = h();
                    parcel2.writeNoException();
                    parcel2.writeString(strH);
                    return true;
                case 9:
                    IFragmentWrapper iFragmentWrapperC = c();
                    parcel2.writeNoException();
                    zzc.f(parcel2, iFragmentWrapperC);
                    return true;
                case 10:
                    int iA = a();
                    parcel2.writeNoException();
                    parcel2.writeInt(iA);
                    return true;
                case 11:
                    boolean zX = x();
                    parcel2.writeNoException();
                    zzc.c(parcel2, zX);
                    return true;
                case 12:
                    IObjectWrapper iObjectWrapperG = g();
                    parcel2.writeNoException();
                    zzc.f(parcel2, iObjectWrapperG);
                    return true;
                case 13:
                    boolean zV = v();
                    parcel2.writeNoException();
                    zzc.c(parcel2, zV);
                    return true;
                case 14:
                    boolean zT = t();
                    parcel2.writeNoException();
                    zzc.c(parcel2, zT);
                    return true;
                case 15:
                    boolean zC = C();
                    parcel2.writeNoException();
                    zzc.c(parcel2, zC);
                    return true;
                case 16:
                    boolean zY = y();
                    parcel2.writeNoException();
                    zzc.c(parcel2, zY);
                    return true;
                case 17:
                    boolean zE = E();
                    parcel2.writeNoException();
                    zzc.c(parcel2, zE);
                    return true;
                case 18:
                    boolean zN = N();
                    parcel2.writeNoException();
                    zzc.c(parcel2, zN);
                    return true;
                case 19:
                    boolean zB = B();
                    parcel2.writeNoException();
                    zzc.c(parcel2, zB);
                    return true;
                case 20:
                    IObjectWrapper iObjectWrapperX0 = IObjectWrapper.Stub.X0(parcel.readStrongBinder());
                    zzc.b(parcel);
                    c1(iObjectWrapperX0);
                    parcel2.writeNoException();
                    return true;
                case 21:
                    boolean zG = zzc.g(parcel);
                    zzc.b(parcel);
                    A1(zG);
                    parcel2.writeNoException();
                    return true;
                case 22:
                    boolean zG2 = zzc.g(parcel);
                    zzc.b(parcel);
                    C0(zG2);
                    parcel2.writeNoException();
                    return true;
                case 23:
                    boolean zG3 = zzc.g(parcel);
                    zzc.b(parcel);
                    G0(zG3);
                    parcel2.writeNoException();
                    return true;
                case 24:
                    boolean zG4 = zzc.g(parcel);
                    zzc.b(parcel);
                    w9(zG4);
                    parcel2.writeNoException();
                    return true;
                case 25:
                    Intent intent = (Intent) zzc.a(parcel, Intent.CREATOR);
                    zzc.b(parcel);
                    v4(intent);
                    parcel2.writeNoException();
                    return true;
                case 26:
                    Intent intent2 = (Intent) zzc.a(parcel, Intent.CREATOR);
                    int i12 = parcel.readInt();
                    zzc.b(parcel);
                    F4(intent2, i12);
                    parcel2.writeNoException();
                    return true;
                case 27:
                    IObjectWrapper iObjectWrapperX02 = IObjectWrapper.Stub.X0(parcel.readStrongBinder());
                    zzc.b(parcel);
                    c0(iObjectWrapperX02);
                    parcel2.writeNoException();
                    return true;
                default:
                    return false;
            }
        }
    }

    void A1(boolean z10) throws RemoteException;

    boolean B() throws RemoteException;

    boolean C() throws RemoteException;

    void C0(boolean z10) throws RemoteException;

    boolean E() throws RemoteException;

    void F4(Intent intent, int i10) throws RemoteException;

    void G0(boolean z10) throws RemoteException;

    boolean N() throws RemoteException;

    int a() throws RemoteException;

    IFragmentWrapper b() throws RemoteException;

    IFragmentWrapper c() throws RemoteException;

    void c0(IObjectWrapper iObjectWrapper) throws RemoteException;

    void c1(IObjectWrapper iObjectWrapper) throws RemoteException;

    Bundle d() throws RemoteException;

    IObjectWrapper e() throws RemoteException;

    IObjectWrapper f() throws RemoteException;

    IObjectWrapper g() throws RemoteException;

    String h() throws RemoteException;

    boolean q() throws RemoteException;

    boolean t() throws RemoteException;

    boolean v() throws RemoteException;

    void v4(Intent intent) throws RemoteException;

    void w9(boolean z10) throws RemoteException;

    boolean x() throws RemoteException;

    boolean y() throws RemoteException;

    int zzb() throws RemoteException;
}
