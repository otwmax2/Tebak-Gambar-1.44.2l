package com.google.android.gms.cloudmessaging;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Message;
import android.os.Parcel;
import android.os.RemoteException;

/* JADX INFO: compiled from: com.google.android.gms:play-services-cloud-messaging@@16.0.0 */
/* JADX INFO: loaded from: classes.dex */
interface IMessengerCompat extends IInterface {

    /* JADX INFO: compiled from: com.google.android.gms:play-services-cloud-messaging@@16.0.0 */
    public static class Impl extends Binder implements IMessengerCompat {
        @Override // com.google.android.gms.cloudmessaging.IMessengerCompat
        public void U2(Message message) throws RemoteException {
            message.arg2 = Binder.getCallingUid();
            throw null;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i10, Parcel parcel, Parcel parcel2, int i11) throws RemoteException {
            parcel.enforceInterface(getInterfaceDescriptor());
            if (i10 != 1) {
                return false;
            }
            U2(parcel.readInt() != 0 ? (Message) Message.CREATOR.createFromParcel(parcel) : null);
            return true;
        }
    }

    /* JADX INFO: compiled from: com.google.android.gms:play-services-cloud-messaging@@16.0.0 */
    public static class Proxy implements IMessengerCompat {

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        private final IBinder f6838o;

        Proxy(IBinder iBinder) {
            this.f6838o = iBinder;
        }

        @Override // com.google.android.gms.cloudmessaging.IMessengerCompat
        public void U2(Message message) throws RemoteException {
            Parcel parcelObtain = Parcel.obtain();
            parcelObtain.writeInterfaceToken("com.google.android.gms.iid.IMessengerCompat");
            parcelObtain.writeInt(1);
            message.writeToParcel(parcelObtain, 0);
            try {
                this.f6838o.transact(1, parcelObtain, null, 1);
            } finally {
                parcelObtain.recycle();
            }
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this.f6838o;
        }
    }

    void U2(Message message) throws RemoteException;
}
