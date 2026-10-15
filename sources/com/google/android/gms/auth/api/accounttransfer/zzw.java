package com.google.android.gms.auth.api.accounttransfer;

import android.app.PendingIntent;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import java.util.HashSet;

/* JADX INFO: compiled from: com.google.android.gms:play-services-auth-base@@17.1.4 */
/* JADX INFO: loaded from: classes.dex */
public final class zzw implements Parcelable.Creator<zzv> {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ zzv createFromParcel(Parcel parcel) {
        int iK = SafeParcelReader.K(parcel);
        HashSet hashSet = new HashSet();
        String strP = null;
        byte[] bArrG = null;
        PendingIntent pendingIntent = null;
        DeviceMetaData deviceMetaData = null;
        int iE = 0;
        int iE2 = 0;
        while (parcel.dataPosition() < iK) {
            int iC = SafeParcelReader.C(parcel);
            switch (SafeParcelReader.v(iC)) {
                case 1:
                    iE = SafeParcelReader.E(parcel, iC);
                    hashSet.add(1);
                    break;
                case 2:
                    strP = SafeParcelReader.p(parcel, iC);
                    hashSet.add(2);
                    break;
                case 3:
                    iE2 = SafeParcelReader.E(parcel, iC);
                    hashSet.add(3);
                    break;
                case 4:
                    bArrG = SafeParcelReader.g(parcel, iC);
                    hashSet.add(4);
                    break;
                case 5:
                    pendingIntent = (PendingIntent) SafeParcelReader.o(parcel, iC, PendingIntent.CREATOR);
                    hashSet.add(5);
                    break;
                case 6:
                    deviceMetaData = (DeviceMetaData) SafeParcelReader.o(parcel, iC, DeviceMetaData.CREATOR);
                    hashSet.add(6);
                    break;
                default:
                    SafeParcelReader.J(parcel, iC);
                    break;
            }
        }
        if (parcel.dataPosition() == iK) {
            return new zzv(hashSet, iE, strP, iE2, bArrG, pendingIntent, deviceMetaData);
        }
        StringBuilder sb = new StringBuilder(37);
        sb.append("Overread allowed size end=");
        sb.append(iK);
        throw new SafeParcelReader.ParseException(sb.toString(), parcel);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ zzv[] newArray(int i10) {
        return new zzv[i10];
    }
}
