package com.google.android.gms.games.internal.game;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;

/* JADX INFO: compiled from: com.google.android.gms:play-services-games@@21.0.0 */
/* JADX INFO: loaded from: classes.dex */
public final class zzc implements Parcelable.Creator<ScreenshotEntity> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ ScreenshotEntity createFromParcel(Parcel parcel) {
        int iK = SafeParcelReader.K(parcel);
        int iE = 0;
        Uri uri = null;
        int iE2 = 0;
        while (parcel.dataPosition() < iK) {
            int iC = SafeParcelReader.C(parcel);
            int iV = SafeParcelReader.v(iC);
            if (iV == 1) {
                uri = (Uri) SafeParcelReader.o(parcel, iC, Uri.CREATOR);
            } else if (iV == 2) {
                iE = SafeParcelReader.E(parcel, iC);
            } else if (iV != 3) {
                SafeParcelReader.J(parcel, iC);
            } else {
                iE2 = SafeParcelReader.E(parcel, iC);
            }
        }
        SafeParcelReader.u(parcel, iK);
        return new ScreenshotEntity(uri, iE, iE2);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ ScreenshotEntity[] newArray(int i10) {
        return new ScreenshotEntity[i10];
    }
}
