package v4;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;

/* JADX INFO: compiled from: com.google.android.play:core@@1.10.2 */
/* JADX INFO: loaded from: classes2.dex */
public final class n0 extends d0 {
    n0(IBinder iBinder) {
        super(iBinder, "com.google.android.play.core.assetpacks.protocol.IAssetPackExtractionServiceCallback");
    }

    public final void G1(Bundle bundle, Bundle bundle2) throws RemoteException {
        Parcel parcelP0 = P0();
        f0.b(parcelP0, bundle);
        f0.b(parcelP0, bundle2);
        X0(2, parcelP0);
    }

    public final void X(Bundle bundle) throws RemoteException {
        Parcel parcelP0 = P0();
        f0.b(parcelP0, bundle);
        X0(3, parcelP0);
    }

    public final void v6(Bundle bundle) throws RemoteException {
        Parcel parcelP0 = P0();
        f0.b(parcelP0, bundle);
        X0(4, parcelP0);
    }
}
