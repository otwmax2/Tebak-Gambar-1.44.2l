package com.google.android.gms.internal.firebase_dynamic_links;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* JADX INFO: compiled from: com.google.firebase:firebase-dynamic-links@@19.1.0 */
/* JADX INFO: loaded from: classes2.dex */
public class zzb implements IInterface {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final IBinder f22950o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final String f22951p;

    protected zzb(IBinder iBinder, String str) {
        this.f22950o = iBinder;
        this.f22951p = str;
    }

    protected final Parcel P0() {
        Parcel parcelObtain = Parcel.obtain();
        parcelObtain.writeInterfaceToken(this.f22951p);
        return parcelObtain;
    }

    protected final void X0(int i10, Parcel parcel) throws RemoteException {
        Parcel parcelObtain = Parcel.obtain();
        try {
            this.f22950o.transact(i10, parcel, parcelObtain, 0);
            parcelObtain.readException();
        } finally {
            parcel.recycle();
            parcelObtain.recycle();
        }
    }

    @Override // android.os.IInterface
    public IBinder asBinder() {
        return this.f22950o;
    }
}
