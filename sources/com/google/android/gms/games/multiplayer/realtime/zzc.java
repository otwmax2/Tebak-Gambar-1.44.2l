package com.google.android.gms.games.multiplayer.realtime;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;

/* JADX INFO: compiled from: com.google.android.gms:play-services-games@@21.0.0 */
/* JADX INFO: loaded from: classes.dex */
public class zzc implements Parcelable.Creator<RoomEntity> {
    @Override // android.os.Parcelable.Creator
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public RoomEntity createFromParcel(Parcel parcel) {
        int iK = SafeParcelReader.K(parcel);
        while (parcel.dataPosition() < iK) {
            int iC = SafeParcelReader.C(parcel);
            SafeParcelReader.v(iC);
            SafeParcelReader.J(parcel, iC);
        }
        SafeParcelReader.u(parcel, iK);
        return new RoomEntity();
    }

    @Override // android.os.Parcelable.Creator
    public /* synthetic */ RoomEntity[] newArray(int i10) {
        return new RoomEntity[i10];
    }
}
