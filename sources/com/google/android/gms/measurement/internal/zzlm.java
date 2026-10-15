package com.google.android.gms.measurement.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-impl@@20.1.2 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzlm implements Parcelable.Creator {
    static void a(zzll zzllVar, Parcel parcel, int i10) {
        int iA = SafeParcelWriter.a(parcel);
        SafeParcelWriter.l(parcel, 1, zzllVar.f24865o);
        SafeParcelWriter.t(parcel, 2, zzllVar.f24866p, false);
        SafeParcelWriter.p(parcel, 3, zzllVar.f24867q);
        SafeParcelWriter.q(parcel, 4, zzllVar.f24868r, false);
        SafeParcelWriter.j(parcel, 5, null, false);
        SafeParcelWriter.t(parcel, 6, zzllVar.f24869s, false);
        SafeParcelWriter.t(parcel, 7, zzllVar.f24870t, false);
        SafeParcelWriter.h(parcel, 8, zzllVar.f24871u, false);
        SafeParcelWriter.b(parcel, iA);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
        int iK = SafeParcelReader.K(parcel);
        String strP = null;
        Long lH = null;
        Float fB = null;
        String strP2 = null;
        String strP3 = null;
        Double dZ = null;
        long jG = 0;
        int iE = 0;
        while (parcel.dataPosition() < iK) {
            int iC = SafeParcelReader.C(parcel);
            switch (SafeParcelReader.v(iC)) {
                case 1:
                    iE = SafeParcelReader.E(parcel, iC);
                    break;
                case 2:
                    strP = SafeParcelReader.p(parcel, iC);
                    break;
                case 3:
                    jG = SafeParcelReader.G(parcel, iC);
                    break;
                case 4:
                    lH = SafeParcelReader.H(parcel, iC);
                    break;
                case 5:
                    fB = SafeParcelReader.B(parcel, iC);
                    break;
                case 6:
                    strP2 = SafeParcelReader.p(parcel, iC);
                    break;
                case 7:
                    strP3 = SafeParcelReader.p(parcel, iC);
                    break;
                case 8:
                    dZ = SafeParcelReader.z(parcel, iC);
                    break;
                default:
                    SafeParcelReader.J(parcel, iC);
                    break;
            }
        }
        SafeParcelReader.u(parcel, iK);
        return new zzll(iE, strP, jG, lH, fB, strP2, strP3, dZ);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i10) {
        return new zzll[i10];
    }
}
