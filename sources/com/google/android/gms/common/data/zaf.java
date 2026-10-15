package com.google.android.gms.common.data;

import android.database.CursorWindow;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;

/* JADX INFO: compiled from: com.google.android.gms:play-services-base@@18.0.1 */
/* JADX INFO: loaded from: classes.dex */
public final class zaf implements Parcelable.Creator<DataHolder> {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ DataHolder createFromParcel(Parcel parcel) {
        int iK = SafeParcelReader.K(parcel);
        String[] strArrQ = null;
        CursorWindow[] cursorWindowArr = null;
        Bundle bundleF = null;
        int iE = 0;
        int iE2 = 0;
        while (parcel.dataPosition() < iK) {
            int iC = SafeParcelReader.C(parcel);
            int iV = SafeParcelReader.v(iC);
            if (iV == 1) {
                strArrQ = SafeParcelReader.q(parcel, iC);
            } else if (iV == 2) {
                cursorWindowArr = (CursorWindow[]) SafeParcelReader.s(parcel, iC, CursorWindow.CREATOR);
            } else if (iV == 3) {
                iE2 = SafeParcelReader.E(parcel, iC);
            } else if (iV == 4) {
                bundleF = SafeParcelReader.f(parcel, iC);
            } else if (iV != 1000) {
                SafeParcelReader.J(parcel, iC);
            } else {
                iE = SafeParcelReader.E(parcel, iC);
            }
        }
        SafeParcelReader.u(parcel, iK);
        DataHolder dataHolder = new DataHolder(iE, strArrQ, cursorWindowArr, iE2, bundleF);
        dataHolder.g4();
        return dataHolder;
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ DataHolder[] newArray(int i10) {
        return new DataHolder[i10];
    }
}
