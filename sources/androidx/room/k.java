package androidx.room;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* JADX INFO: compiled from: IMultiInstanceInvalidationCallback.java */
/* JADX INFO: loaded from: classes.dex */
public interface k extends IInterface {

    /* JADX INFO: compiled from: IMultiInstanceInvalidationCallback.java */
    public static abstract class a extends Binder implements k {

        /* JADX INFO: renamed from: androidx.room.k$a$a, reason: collision with other inner class name */
        /* JADX INFO: compiled from: IMultiInstanceInvalidationCallback.java */
        private static class C0066a implements k {

            /* JADX INFO: renamed from: p, reason: collision with root package name */
            public static k f4134p;

            /* JADX INFO: renamed from: o, reason: collision with root package name */
            private IBinder f4135o;

            C0066a(IBinder iBinder) {
                this.f4135o = iBinder;
            }

            @Override // androidx.room.k
            public void Z2(String[] strArr) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("androidx.room.IMultiInstanceInvalidationCallback");
                    parcelObtain.writeStringArray(strArr);
                    if (this.f4135o.transact(1, parcelObtain, null, 1) || a.X0() == null) {
                        return;
                    }
                    a.X0().Z2(strArr);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f4135o;
            }
        }

        public a() {
            attachInterface(this, "androidx.room.IMultiInstanceInvalidationCallback");
        }

        public static k P0(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("androidx.room.IMultiInstanceInvalidationCallback");
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof k)) ? new C0066a(iBinder) : (k) iInterfaceQueryLocalInterface;
        }

        public static k X0() {
            return C0066a.f4134p;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i10, Parcel parcel, Parcel parcel2, int i11) throws RemoteException {
            if (i10 == 1) {
                parcel.enforceInterface("androidx.room.IMultiInstanceInvalidationCallback");
                Z2(parcel.createStringArray());
                return true;
            }
            if (i10 != 1598968902) {
                return super.onTransact(i10, parcel, parcel2, i11);
            }
            parcel2.writeString("androidx.room.IMultiInstanceInvalidationCallback");
            return true;
        }
    }

    void Z2(String[] strArr) throws RemoteException;
}
