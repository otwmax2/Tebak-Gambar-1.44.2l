package v4;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* JADX INFO: compiled from: com.google.android.play:core@@1.10.2 */
/* JADX INFO: loaded from: classes2.dex */
public abstract class l0 extends e0 implements m0 {
    public l0() {
        super("com.google.android.play.core.assetpacks.protocol.IAssetPackExtractionService");
    }

    @Override // v4.e0
    protected final boolean P0(int i10, Parcel parcel, Parcel parcel2, int i11) throws RemoteException {
        n0 n0Var = null;
        if (i10 == 2) {
            Bundle bundle = (Bundle) f0.a(parcel, Bundle.CREATOR);
            IBinder strongBinder = parcel.readStrongBinder();
            if (strongBinder != null) {
                IInterface iInterfaceQueryLocalInterface = strongBinder.queryLocalInterface("com.google.android.play.core.assetpacks.protocol.IAssetPackExtractionServiceCallback");
                n0Var = iInterfaceQueryLocalInterface instanceof n0 ? (n0) iInterfaceQueryLocalInterface : new n0(strongBinder);
            }
            E2(bundle, n0Var);
            return true;
        }
        if (i10 != 3) {
            return false;
        }
        Bundle bundle2 = (Bundle) f0.a(parcel, Bundle.CREATOR);
        IBinder strongBinder2 = parcel.readStrongBinder();
        if (strongBinder2 != null) {
            IInterface iInterfaceQueryLocalInterface2 = strongBinder2.queryLocalInterface("com.google.android.play.core.assetpacks.protocol.IAssetPackExtractionServiceCallback");
            n0Var = iInterfaceQueryLocalInterface2 instanceof n0 ? (n0) iInterfaceQueryLocalInterface2 : new n0(strongBinder2);
        }
        x1(bundle2, n0Var);
        return true;
    }
}
