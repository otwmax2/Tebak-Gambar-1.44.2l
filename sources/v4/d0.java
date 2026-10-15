package v4;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* JADX INFO: compiled from: com.google.android.play:core@@1.10.2 */
/* JADX INFO: loaded from: classes2.dex */
public class d0 implements IInterface {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final IBinder f35805o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final String f35806p;

    protected d0(IBinder iBinder, String str) {
        this.f35805o = iBinder;
        this.f35806p = str;
    }

    protected final Parcel P0() {
        Parcel parcelObtain = Parcel.obtain();
        parcelObtain.writeInterfaceToken(this.f35806p);
        return parcelObtain;
    }

    protected final void X0(int i10, Parcel parcel) throws RemoteException {
        try {
            this.f35805o.transact(i10, parcel, null, 1);
        } finally {
            parcel.recycle();
        }
    }

    @Override // android.os.IInterface
    public final IBinder asBinder() {
        return this.f35805o;
    }
}
