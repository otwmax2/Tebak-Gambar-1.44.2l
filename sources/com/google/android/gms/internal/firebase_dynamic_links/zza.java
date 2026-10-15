package com.google.android.gms.internal.firebase_dynamic_links;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* JADX INFO: compiled from: com.google.firebase:firebase-dynamic-links@@19.1.0 */
/* JADX INFO: loaded from: classes2.dex */
public class zza extends Binder implements IInterface {
    protected zza(String str) {
        attachInterface(this, str);
    }

    protected boolean P0(int i10, Parcel parcel, Parcel parcel2, int i11) throws RemoteException {
        return false;
    }

    @Override // android.os.IInterface
    public IBinder asBinder() {
        return this;
    }

    @Override // android.os.Binder
    public boolean onTransact(int i10, Parcel parcel, Parcel parcel2, int i11) throws RemoteException {
        boolean zOnTransact;
        if (i10 > 16777215) {
            zOnTransact = super.onTransact(i10, parcel, parcel2, i11);
        } else {
            parcel.enforceInterface(getInterfaceDescriptor());
            zOnTransact = false;
        }
        if (zOnTransact) {
            return true;
        }
        return P0(i10, parcel, parcel2, i11);
    }
}
