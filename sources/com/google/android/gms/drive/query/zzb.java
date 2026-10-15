package com.google.android.gms.drive.query;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import com.google.android.gms.drive.DriveSpace;
import com.google.android.gms.drive.query.internal.zzr;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public final class zzb implements Parcelable.Creator<Query> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Query createFromParcel(Parcel parcel) {
        int iK = SafeParcelReader.K(parcel);
        zzr zzrVar = null;
        String strP = null;
        SortOrder sortOrder = null;
        ArrayList<String> arrayListR = null;
        ArrayList arrayListT = null;
        boolean zW = false;
        boolean zW2 = false;
        while (parcel.dataPosition() < iK) {
            int iC = SafeParcelReader.C(parcel);
            switch (SafeParcelReader.v(iC)) {
                case 1:
                    zzrVar = (zzr) SafeParcelReader.o(parcel, iC, zzr.CREATOR);
                    break;
                case 2:
                default:
                    SafeParcelReader.J(parcel, iC);
                    break;
                case 3:
                    strP = SafeParcelReader.p(parcel, iC);
                    break;
                case 4:
                    sortOrder = (SortOrder) SafeParcelReader.o(parcel, iC, SortOrder.CREATOR);
                    break;
                case 5:
                    arrayListR = SafeParcelReader.r(parcel, iC);
                    break;
                case 6:
                    zW = SafeParcelReader.w(parcel, iC);
                    break;
                case 7:
                    arrayListT = SafeParcelReader.t(parcel, iC, DriveSpace.CREATOR);
                    break;
                case 8:
                    zW2 = SafeParcelReader.w(parcel, iC);
                    break;
            }
        }
        SafeParcelReader.u(parcel, iK);
        return new Query(zzrVar, strP, sortOrder, arrayListR, zW, arrayListT, zW2);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Query[] newArray(int i10) {
        return new Query[i10];
    }
}
