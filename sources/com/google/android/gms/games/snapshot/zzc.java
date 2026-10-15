package com.google.android.gms.games.snapshot;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.data.BitmapTeleporter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;

/* JADX INFO: compiled from: com.google.android.gms:play-services-games@@21.0.0 */
/* JADX INFO: loaded from: classes.dex */
public final class zzc implements Parcelable.Creator<SnapshotMetadataChangeEntity> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ SnapshotMetadataChangeEntity createFromParcel(Parcel parcel) {
        int iK = SafeParcelReader.K(parcel);
        String strP = null;
        Long lH = null;
        BitmapTeleporter bitmapTeleporter = null;
        Uri uri = null;
        Long lH2 = null;
        while (parcel.dataPosition() < iK) {
            int iC = SafeParcelReader.C(parcel);
            int iV = SafeParcelReader.v(iC);
            if (iV == 1) {
                strP = SafeParcelReader.p(parcel, iC);
            } else if (iV == 2) {
                lH = SafeParcelReader.H(parcel, iC);
            } else if (iV == 4) {
                uri = (Uri) SafeParcelReader.o(parcel, iC, Uri.CREATOR);
            } else if (iV == 5) {
                bitmapTeleporter = (BitmapTeleporter) SafeParcelReader.o(parcel, iC, BitmapTeleporter.CREATOR);
            } else if (iV != 6) {
                SafeParcelReader.J(parcel, iC);
            } else {
                lH2 = SafeParcelReader.H(parcel, iC);
            }
        }
        SafeParcelReader.u(parcel, iK);
        return new SnapshotMetadataChangeEntity(strP, lH, bitmapTeleporter, uri, lH2);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ SnapshotMetadataChangeEntity[] newArray(int i10) {
        return new SnapshotMetadataChangeEntity[i10];
    }
}
