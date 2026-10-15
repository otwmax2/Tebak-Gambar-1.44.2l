package com.google.android.gms.games.snapshot;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;

/* JADX INFO: compiled from: com.google.android.gms:play-services-games@@21.0.0 */
/* JADX INFO: loaded from: classes.dex */
public final class zzb implements Parcelable.Creator<SnapshotEntity> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ SnapshotEntity createFromParcel(Parcel parcel) {
        int iK = SafeParcelReader.K(parcel);
        SnapshotMetadataEntity snapshotMetadataEntity = null;
        SnapshotContentsEntity snapshotContentsEntity = null;
        while (parcel.dataPosition() < iK) {
            int iC = SafeParcelReader.C(parcel);
            int iV = SafeParcelReader.v(iC);
            if (iV == 1) {
                snapshotMetadataEntity = (SnapshotMetadataEntity) SafeParcelReader.o(parcel, iC, SnapshotMetadataEntity.CREATOR);
            } else if (iV != 3) {
                SafeParcelReader.J(parcel, iC);
            } else {
                snapshotContentsEntity = (SnapshotContentsEntity) SafeParcelReader.o(parcel, iC, SnapshotContentsEntity.CREATOR);
            }
        }
        SafeParcelReader.u(parcel, iK);
        return new SnapshotEntity(snapshotMetadataEntity, snapshotContentsEntity);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ SnapshotEntity[] newArray(int i10) {
        return new SnapshotEntity[i10];
    }
}
