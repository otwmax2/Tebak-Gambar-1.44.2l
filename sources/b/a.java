package b;

import android.app.Notification;
import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* JADX INFO: compiled from: INotificationSideChannel.java */
/* JADX INFO: loaded from: classes.dex */
public interface a extends IInterface {

    /* JADX INFO: renamed from: b.a$a, reason: collision with other inner class name */
    /* JADX INFO: compiled from: INotificationSideChannel.java */
    public static abstract class AbstractBinderC0077a extends Binder implements a {

        /* JADX INFO: renamed from: b.a$a$a, reason: collision with other inner class name */
        /* JADX INFO: compiled from: INotificationSideChannel.java */
        private static class C0078a implements a {

            /* JADX INFO: renamed from: p, reason: collision with root package name */
            public static a f4533p;

            /* JADX INFO: renamed from: o, reason: collision with root package name */
            private IBinder f4534o;

            C0078a(IBinder iBinder) {
                this.f4534o = iBinder;
            }

            @Override // b.a
            public void Y9(String str, int i10, String str2, Notification notification) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("android.support.v4.app.INotificationSideChannel");
                    parcelObtain.writeString(str);
                    parcelObtain.writeInt(i10);
                    parcelObtain.writeString(str2);
                    if (notification != null) {
                        parcelObtain.writeInt(1);
                        notification.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    if (this.f4534o.transact(1, parcelObtain, null, 1) || AbstractBinderC0077a.X0() == null) {
                        return;
                    }
                    AbstractBinderC0077a.X0().Y9(str, i10, str2, notification);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f4534o;
            }
        }

        public static a P0(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("android.support.v4.app.INotificationSideChannel");
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof a)) ? new C0078a(iBinder) : (a) iInterfaceQueryLocalInterface;
        }

        public static a X0() {
            return C0078a.f4533p;
        }
    }

    void Y9(String str, int i10, String str2, Notification notification) throws RemoteException;
}
