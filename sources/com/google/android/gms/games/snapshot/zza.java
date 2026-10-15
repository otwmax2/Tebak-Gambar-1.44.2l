package com.google.android.gms.games.snapshot;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import com.google.android.gms.drive.Contents;

/* JADX INFO: compiled from: com.google.android.gms:play-services-games@@21.0.0 */
/* JADX INFO: loaded from: classes.dex */
public final class zza implements Parcelable.Creator<SnapshotContentsEntity> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ SnapshotContentsEntity createFromParcel(Parcel parcel) {
        int iK = SafeParcelReader.K(parcel);
        Contents contents = null;
        while (parcel.dataPosition() < iK) {
            int iC = SafeParcelReader.C(parcel);
            if (SafeParcelReader.v(iC) != 1) {
                SafeParcelReader.J(parcel, iC);
            } else {
                contents = (Contents) SafeParcelReader.o(parcel, iC, Contents.CREATOR);
            }
        }
        SafeParcelReader.u(parcel, iK);
        return new SnapshotContentsEntity(contents);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ SnapshotContentsEntity[] newArray(int i10) {
        return new SnapshotContentsEntity[i10];
    }
}
