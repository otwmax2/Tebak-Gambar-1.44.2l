package com.google.android.gms.ads.internal.overlay;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import com.google.android.gms.internal.ads.zzbzg;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes.dex */
public final class zzn implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
        int iK = SafeParcelReader.K(parcel);
        zzc zzcVar = null;
        IBinder iBinderD = null;
        IBinder iBinderD2 = null;
        IBinder iBinderD3 = null;
        IBinder iBinderD4 = null;
        String strP = null;
        String strP2 = null;
        IBinder iBinderD5 = null;
        String strP3 = null;
        zzbzg zzbzgVar = null;
        String strP4 = null;
        com.google.android.gms.ads.internal.zzj zzjVar = null;
        IBinder iBinderD6 = null;
        String strP5 = null;
        IBinder iBinderD7 = null;
        IBinder iBinderD8 = null;
        IBinder iBinderD9 = null;
        IBinder iBinderD10 = null;
        String strP6 = null;
        String strP7 = null;
        IBinder iBinderD11 = null;
        IBinder iBinderD12 = null;
        boolean zW = false;
        int iE = 0;
        int iE2 = 0;
        while (parcel.dataPosition() < iK) {
            int iC = SafeParcelReader.C(parcel);
            switch (SafeParcelReader.v(iC)) {
                case 2:
                    zzcVar = (zzc) SafeParcelReader.o(parcel, iC, zzc.CREATOR);
                    break;
                case 3:
                    iBinderD = SafeParcelReader.D(parcel, iC);
                    break;
                case 4:
                    iBinderD2 = SafeParcelReader.D(parcel, iC);
                    break;
                case 5:
                    iBinderD3 = SafeParcelReader.D(parcel, iC);
                    break;
                case 6:
                    iBinderD4 = SafeParcelReader.D(parcel, iC);
                    break;
                case 7:
                    strP = SafeParcelReader.p(parcel, iC);
                    break;
                case 8:
                    zW = SafeParcelReader.w(parcel, iC);
                    break;
                case 9:
                    strP2 = SafeParcelReader.p(parcel, iC);
                    break;
                case 10:
                    iBinderD5 = SafeParcelReader.D(parcel, iC);
                    break;
                case 11:
                    iE = SafeParcelReader.E(parcel, iC);
                    break;
                case 12:
                    iE2 = SafeParcelReader.E(parcel, iC);
                    break;
                case 13:
                    strP3 = SafeParcelReader.p(parcel, iC);
                    break;
                case 14:
                    zzbzgVar = (zzbzg) SafeParcelReader.o(parcel, iC, zzbzg.CREATOR);
                    break;
                case 15:
                default:
                    SafeParcelReader.J(parcel, iC);
                    break;
                case 16:
                    strP4 = SafeParcelReader.p(parcel, iC);
                    break;
                case 17:
                    zzjVar = (com.google.android.gms.ads.internal.zzj) SafeParcelReader.o(parcel, iC, com.google.android.gms.ads.internal.zzj.CREATOR);
                    break;
                case 18:
                    iBinderD6 = SafeParcelReader.D(parcel, iC);
                    break;
                case 19:
                    strP5 = SafeParcelReader.p(parcel, iC);
                    break;
                case 20:
                    iBinderD7 = SafeParcelReader.D(parcel, iC);
                    break;
                case 21:
                    iBinderD8 = SafeParcelReader.D(parcel, iC);
                    break;
                case 22:
                    iBinderD9 = SafeParcelReader.D(parcel, iC);
                    break;
                case 23:
                    iBinderD10 = SafeParcelReader.D(parcel, iC);
                    break;
                case 24:
                    strP6 = SafeParcelReader.p(parcel, iC);
                    break;
                case 25:
                    strP7 = SafeParcelReader.p(parcel, iC);
                    break;
                case 26:
                    iBinderD11 = SafeParcelReader.D(parcel, iC);
                    break;
                case 27:
                    iBinderD12 = SafeParcelReader.D(parcel, iC);
                    break;
            }
        }
        SafeParcelReader.u(parcel, iK);
        return new AdOverlayInfoParcel(zzcVar, iBinderD, iBinderD2, iBinderD3, iBinderD4, strP, zW, strP2, iBinderD5, iE, iE2, strP3, zzbzgVar, strP4, zzjVar, iBinderD6, strP5, iBinderD7, iBinderD8, iBinderD9, iBinderD10, strP6, strP7, iBinderD11, iBinderD12);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i10) {
        return new AdOverlayInfoParcel[i10];
    }
}
