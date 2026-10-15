package com.google.android.gms.internal.p000authapi;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* JADX INFO: compiled from: com.google.android.gms:play-services-auth@@20.2.0 */
/* JADX INFO: loaded from: classes2.dex */
public class zba implements IInterface {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final IBinder f21268o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final String f21269p;

    protected zba(IBinder iBinder, String str) {
        this.f21268o = iBinder;
        this.f21269p = str;
    }

    protected final Parcel P0() {
        Parcel parcelObtain = Parcel.obtain();
        parcelObtain.writeInterfaceToken(this.f21269p);
        return parcelObtain;
    }

    protected final void X0(int i10, Parcel parcel) throws RemoteException {
        Parcel parcelObtain = Parcel.obtain();
        try {
            this.f21268o.transact(i10, parcel, parcelObtain, 0);
            parcelObtain.readException();
        } finally {
            parcel.recycle();
            parcelObtain.recycle();
        }
    }

    @Override // android.os.IInterface
    public final IBinder asBinder() {
        return this.f21268o;
    }
}
