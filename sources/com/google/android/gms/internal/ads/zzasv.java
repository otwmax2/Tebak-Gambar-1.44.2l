package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-base@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public class zzasv implements IInterface {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final IBinder f9866o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final String f9867p;

    protected zzasv(IBinder iBinder, String str) {
        this.f9866o = iBinder;
        this.f9867p = str;
    }

    protected final Parcel P0() {
        Parcel parcelObtain = Parcel.obtain();
        parcelObtain.writeInterfaceToken(this.f9867p);
        return parcelObtain;
    }

    protected final void Q4(int i10, Parcel parcel) throws RemoteException {
        try {
            this.f9866o.transact(i10, parcel, null, 1);
        } finally {
            parcel.recycle();
        }
    }

    protected final Parcel X0(int i10, Parcel parcel) throws RemoteException {
        Parcel parcelObtain = Parcel.obtain();
        try {
            try {
                this.f9866o.transact(i10, parcel, parcelObtain, 0);
                parcelObtain.readException();
                return parcelObtain;
            } catch (RuntimeException e10) {
                parcelObtain.recycle();
                throw e10;
            }
        } finally {
            parcel.recycle();
        }
    }

    @Override // android.os.IInterface
    public final IBinder asBinder() {
        return this.f9866o;
    }

    protected final void t1(int i10, Parcel parcel) throws RemoteException {
        Parcel parcelObtain = Parcel.obtain();
        try {
            this.f9866o.transact(i10, parcel, parcelObtain, 0);
            parcelObtain.readException();
        } finally {
            parcel.recycle();
            parcelObtain.recycle();
        }
    }
}
