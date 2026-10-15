package b6;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import java.util.ArrayList;

/* JADX INFO: compiled from: com.google.firebase:firebase-dynamic-links@@19.1.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class o implements Parcelable.Creator<m> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ m createFromParcel(Parcel parcel) {
        int iK = SafeParcelReader.K(parcel);
        Uri uri = null;
        Uri uri2 = null;
        ArrayList arrayListT = null;
        while (parcel.dataPosition() < iK) {
            int iC = SafeParcelReader.C(parcel);
            int iV = SafeParcelReader.v(iC);
            if (iV == 1) {
                uri = (Uri) SafeParcelReader.o(parcel, iC, Uri.CREATOR);
            } else if (iV == 2) {
                uri2 = (Uri) SafeParcelReader.o(parcel, iC, Uri.CREATOR);
            } else if (iV != 3) {
                SafeParcelReader.J(parcel, iC);
            } else {
                arrayListT = SafeParcelReader.t(parcel, iC, p.CREATOR);
            }
        }
        SafeParcelReader.u(parcel, iK);
        return new m(uri, uri2, arrayListT);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ m[] newArray(int i10) {
        return new m[i10];
    }
}
