package com.google.android.gms.internal.games;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;

/* JADX INFO: compiled from: com.google.android.gms:play-services-games@@21.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzfh implements Parcelable.Creator<zzfi> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzfi createFromParcel(Parcel parcel) {
        int iK = SafeParcelReader.K(parcel);
        Bundle bundleF = null;
        IBinder iBinderD = null;
        while (parcel.dataPosition() < iK) {
            int iC = SafeParcelReader.C(parcel);
            int iV = SafeParcelReader.v(iC);
            if (iV == 1) {
                bundleF = SafeParcelReader.f(parcel, iC);
            } else if (iV != 2) {
                SafeParcelReader.J(parcel, iC);
            } else {
                iBinderD = SafeParcelReader.D(parcel, iC);
            }
        }
        SafeParcelReader.u(parcel, iK);
        return new zzfi(bundleF, iBinderD);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzfi[] newArray(int i10) {
        return new zzfi[i10];
    }
}
