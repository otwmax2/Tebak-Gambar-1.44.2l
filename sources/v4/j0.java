package v4;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.RemoteException;

/* JADX INFO: compiled from: com.google.android.play:core@@1.10.2 */
/* JADX INFO: loaded from: classes2.dex */
public abstract class j0 extends e0 implements k0 {
    public j0() {
        super("com.google.android.play.core.assetpacks.protocol.IAssetModuleServiceCallback");
    }

    @Override // v4.e0
    protected final boolean P0(int i10, Parcel parcel, Parcel parcel2, int i11) throws RemoteException {
        switch (i10) {
            case 2:
                F9(parcel.readInt(), (Bundle) f0.a(parcel, Bundle.CREATOR));
                return true;
            case 3:
                p0(parcel.readInt(), (Bundle) f0.a(parcel, Bundle.CREATOR));
                return true;
            case 4:
                ma(parcel.readInt(), (Bundle) f0.a(parcel, Bundle.CREATOR));
                return true;
            case 5:
                g2(parcel.createTypedArrayList(Bundle.CREATOR));
                return true;
            case 6:
                Parcelable.Creator creator = Bundle.CREATOR;
                Qa((Bundle) f0.a(parcel, creator), (Bundle) f0.a(parcel, creator));
                return true;
            case 7:
                X((Bundle) f0.a(parcel, Bundle.CREATOR));
                return true;
            case 8:
                Parcelable.Creator creator2 = Bundle.CREATOR;
                l7((Bundle) f0.a(parcel, creator2), (Bundle) f0.a(parcel, creator2));
                return true;
            case 9:
            default:
                return false;
            case 10:
                Parcelable.Creator creator3 = Bundle.CREATOR;
                Y7((Bundle) f0.a(parcel, creator3), (Bundle) f0.a(parcel, creator3));
                return true;
            case 11:
                Parcelable.Creator creator4 = Bundle.CREATOR;
                o9((Bundle) f0.a(parcel, creator4), (Bundle) f0.a(parcel, creator4));
                return true;
            case 12:
                Parcelable.Creator creator5 = Bundle.CREATOR;
                G1((Bundle) f0.a(parcel, creator5), (Bundle) f0.a(parcel, creator5));
                return true;
            case 13:
                Parcelable.Creator creator6 = Bundle.CREATOR;
                W5((Bundle) f0.a(parcel, creator6), (Bundle) f0.a(parcel, creator6));
                return true;
            case 14:
                Parcelable.Creator creator7 = Bundle.CREATOR;
                H4((Bundle) f0.a(parcel, creator7), (Bundle) f0.a(parcel, creator7));
                return true;
            case 15:
                v6((Bundle) f0.a(parcel, Bundle.CREATOR));
                return true;
        }
    }
}
