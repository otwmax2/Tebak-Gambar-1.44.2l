package v4;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import java.util.List;

/* JADX INFO: compiled from: com.google.android.play:core@@1.10.2 */
/* JADX INFO: loaded from: classes2.dex */
public final class g0 extends d0 implements i0 {
    g0(IBinder iBinder) {
        super(iBinder, "com.google.android.play.core.assetpacks.protocol.IAssetModuleService");
    }

    @Override // v4.i0
    public final void B3(String str, Bundle bundle, Bundle bundle2, k0 k0Var) throws RemoteException {
        Parcel parcelP0 = P0();
        parcelP0.writeString(str);
        f0.b(parcelP0, bundle);
        f0.b(parcelP0, bundle2);
        f0.c(parcelP0, k0Var);
        X0(9, parcelP0);
    }

    @Override // v4.i0
    public final void F2(String str, List<Bundle> list, Bundle bundle, k0 k0Var) throws RemoteException {
        Parcel parcelP0 = P0();
        parcelP0.writeString(str);
        parcelP0.writeTypedList(list);
        f0.b(parcelP0, bundle);
        f0.c(parcelP0, k0Var);
        X0(14, parcelP0);
    }

    @Override // v4.i0
    public final void H1(String str, Bundle bundle, Bundle bundle2, k0 k0Var) throws RemoteException {
        Parcel parcelP0 = P0();
        parcelP0.writeString(str);
        f0.b(parcelP0, bundle);
        f0.b(parcelP0, bundle2);
        f0.c(parcelP0, k0Var);
        X0(6, parcelP0);
    }

    @Override // v4.i0
    public final void H9(String str, Bundle bundle, k0 k0Var) throws RemoteException {
        Parcel parcelP0 = P0();
        parcelP0.writeString(str);
        f0.b(parcelP0, bundle);
        f0.c(parcelP0, k0Var);
        X0(5, parcelP0);
    }

    @Override // v4.i0
    public final void P7(String str, Bundle bundle, Bundle bundle2, k0 k0Var) throws RemoteException {
        Parcel parcelP0 = P0();
        parcelP0.writeString(str);
        f0.b(parcelP0, bundle);
        f0.b(parcelP0, bundle2);
        f0.c(parcelP0, k0Var);
        X0(11, parcelP0);
    }

    @Override // v4.i0
    public final void R8(String str, Bundle bundle, k0 k0Var) throws RemoteException {
        Parcel parcelP0 = P0();
        parcelP0.writeString(str);
        f0.b(parcelP0, bundle);
        f0.c(parcelP0, k0Var);
        X0(10, parcelP0);
    }

    @Override // v4.i0
    public final void t2(String str, Bundle bundle, Bundle bundle2, k0 k0Var) throws RemoteException {
        Parcel parcelP0 = P0();
        parcelP0.writeString(str);
        f0.b(parcelP0, bundle);
        f0.b(parcelP0, bundle2);
        f0.c(parcelP0, k0Var);
        X0(7, parcelP0);
    }
}
