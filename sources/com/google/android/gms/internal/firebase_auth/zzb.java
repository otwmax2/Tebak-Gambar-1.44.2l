package com.google.android.gms.internal.firebase_auth;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* JADX INFO: compiled from: com.google.firebase:firebase-auth@@19.3.1 */
/* JADX INFO: loaded from: classes2.dex */
public class zzb implements IInterface {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final IBinder f22423o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final String f22424p;

    protected zzb(IBinder iBinder, String str) {
        this.f22423o = iBinder;
        this.f22424p = str;
    }

    protected final Parcel P0() {
        Parcel parcelObtain = Parcel.obtain();
        parcelObtain.writeInterfaceToken(this.f22424p);
        return parcelObtain;
    }

    protected final void X0(int i10, Parcel parcel) throws RemoteException {
        Parcel parcelObtain = Parcel.obtain();
        try {
            this.f22423o.transact(i10, parcel, parcelObtain, 0);
            parcelObtain.readException();
        } finally {
            parcel.recycle();
            parcelObtain.recycle();
        }
    }

    @Override // android.os.IInterface
    public IBinder asBinder() {
        return this.f22423o;
    }
}
