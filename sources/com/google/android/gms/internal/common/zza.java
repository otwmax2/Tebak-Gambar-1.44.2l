package com.google.android.gms.internal.common;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* JADX INFO: compiled from: com.google.android.gms:play-services-basement@@18.1.0 */
/* JADX INFO: loaded from: classes2.dex */
public class zza implements IInterface {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final IBinder f21674o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final String f21675p;

    protected zza(IBinder iBinder, String str) {
        this.f21674o = iBinder;
        this.f21675p = str;
    }

    protected final Parcel P0(int i10, Parcel parcel) throws RemoteException {
        Parcel parcelObtain = Parcel.obtain();
        try {
            try {
                this.f21674o.transact(i10, parcel, parcelObtain, 0);
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

    protected final void X0(int i10, Parcel parcel) throws RemoteException {
        try {
            this.f21674o.transact(2, parcel, null, 1);
        } finally {
            parcel.recycle();
        }
    }

    @Override // android.os.IInterface
    public final IBinder asBinder() {
        return this.f21674o;
    }

    protected final Parcel t1() {
        Parcel parcelObtain = Parcel.obtain();
        parcelObtain.writeInterfaceToken(this.f21675p);
        return parcelObtain;
    }
}
