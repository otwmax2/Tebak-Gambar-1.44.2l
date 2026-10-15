package b6;

import android.net.Uri;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;

/* JADX INFO: compiled from: com.google.firebase:firebase-dynamic-links@@19.1.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class b implements Parcelable.Creator<a> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ a createFromParcel(Parcel parcel) {
        int iK = SafeParcelReader.K(parcel);
        String strP = null;
        String strP2 = null;
        Bundle bundleF = null;
        Uri uri = null;
        long jG = 0;
        int iE = 0;
        while (parcel.dataPosition() < iK) {
            int iC = SafeParcelReader.C(parcel);
            switch (SafeParcelReader.v(iC)) {
                case 1:
                    strP = SafeParcelReader.p(parcel, iC);
                    break;
                case 2:
                    strP2 = SafeParcelReader.p(parcel, iC);
                    break;
                case 3:
                    iE = SafeParcelReader.E(parcel, iC);
                    break;
                case 4:
                    jG = SafeParcelReader.G(parcel, iC);
                    break;
                case 5:
                    bundleF = SafeParcelReader.f(parcel, iC);
                    break;
                case 6:
                    uri = (Uri) SafeParcelReader.o(parcel, iC, Uri.CREATOR);
                    break;
                default:
                    SafeParcelReader.J(parcel, iC);
                    break;
            }
        }
        SafeParcelReader.u(parcel, iK);
        return new a(strP, strP2, iE, jG, bundleF, uri);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ a[] newArray(int i10) {
        return new a[i10];
    }
}
