package com.google.android.gms.common.images;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;

/* JADX INFO: compiled from: com.google.android.gms:play-services-base@@18.0.1 */
/* JADX INFO: loaded from: classes.dex */
public final class zah implements Parcelable.Creator<WebImage> {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ WebImage createFromParcel(Parcel parcel) {
        int iK = SafeParcelReader.K(parcel);
        int iE = 0;
        Uri uri = null;
        int iE2 = 0;
        int iE3 = 0;
        while (parcel.dataPosition() < iK) {
            int iC = SafeParcelReader.C(parcel);
            int iV = SafeParcelReader.v(iC);
            if (iV == 1) {
                iE = SafeParcelReader.E(parcel, iC);
            } else if (iV == 2) {
                uri = (Uri) SafeParcelReader.o(parcel, iC, Uri.CREATOR);
            } else if (iV == 3) {
                iE2 = SafeParcelReader.E(parcel, iC);
            } else if (iV != 4) {
                SafeParcelReader.J(parcel, iC);
            } else {
                iE3 = SafeParcelReader.E(parcel, iC);
            }
        }
        SafeParcelReader.u(parcel, iK);
        return new WebImage(iE, uri, iE2, iE3);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ WebImage[] newArray(int i10) {
        return new WebImage[i10];
    }
}
