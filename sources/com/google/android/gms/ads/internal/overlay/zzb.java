package com.google.android.gms.ads.internal.overlay;

import android.content.Intent;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes.dex */
public final class zzb implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
        int iK = SafeParcelReader.K(parcel);
        String strP = null;
        String strP2 = null;
        String strP3 = null;
        String strP4 = null;
        String strP5 = null;
        String strP6 = null;
        String strP7 = null;
        Intent intent = null;
        IBinder iBinderD = null;
        boolean zW = false;
        while (parcel.dataPosition() < iK) {
            int iC = SafeParcelReader.C(parcel);
            switch (SafeParcelReader.v(iC)) {
                case 2:
                    strP = SafeParcelReader.p(parcel, iC);
                    break;
                case 3:
                    strP2 = SafeParcelReader.p(parcel, iC);
                    break;
                case 4:
                    strP3 = SafeParcelReader.p(parcel, iC);
                    break;
                case 5:
                    strP4 = SafeParcelReader.p(parcel, iC);
                    break;
                case 6:
                    strP5 = SafeParcelReader.p(parcel, iC);
                    break;
                case 7:
                    strP6 = SafeParcelReader.p(parcel, iC);
                    break;
                case 8:
                    strP7 = SafeParcelReader.p(parcel, iC);
                    break;
                case 9:
                    intent = (Intent) SafeParcelReader.o(parcel, iC, Intent.CREATOR);
                    break;
                case 10:
                    iBinderD = SafeParcelReader.D(parcel, iC);
                    break;
                case 11:
                    zW = SafeParcelReader.w(parcel, iC);
                    break;
                default:
                    SafeParcelReader.J(parcel, iC);
                    break;
            }
        }
        SafeParcelReader.u(parcel, iK);
        return new zzc(strP, strP2, strP3, strP4, strP5, strP6, strP7, intent, iBinderD, zW);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i10) {
        return new zzc[i10];
    }
}
