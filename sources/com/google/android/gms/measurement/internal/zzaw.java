package com.google.android.gms.measurement.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-impl@@20.1.2 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzaw implements Parcelable.Creator {
    static void a(zzav zzavVar, Parcel parcel, int i10) {
        int iA = SafeParcelWriter.a(parcel);
        SafeParcelWriter.t(parcel, 2, zzavVar.f24454o, false);
        SafeParcelWriter.s(parcel, 3, zzavVar.f24455p, i10, false);
        SafeParcelWriter.t(parcel, 4, zzavVar.f24456q, false);
        SafeParcelWriter.p(parcel, 5, zzavVar.f24457r);
        SafeParcelWriter.b(parcel, iA);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
        int iK = SafeParcelReader.K(parcel);
        String strP = null;
        zzat zzatVar = null;
        String strP2 = null;
        long jG = 0;
        while (parcel.dataPosition() < iK) {
            int iC = SafeParcelReader.C(parcel);
            int iV = SafeParcelReader.v(iC);
            if (iV == 2) {
                strP = SafeParcelReader.p(parcel, iC);
            } else if (iV == 3) {
                zzatVar = (zzat) SafeParcelReader.o(parcel, iC, zzat.CREATOR);
            } else if (iV == 4) {
                strP2 = SafeParcelReader.p(parcel, iC);
            } else if (iV != 5) {
                SafeParcelReader.J(parcel, iC);
            } else {
                jG = SafeParcelReader.G(parcel, iC);
            }
        }
        SafeParcelReader.u(parcel, iK);
        return new zzav(strP, zzatVar, strP2, jG);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i10) {
        return new zzav[i10];
    }
}
