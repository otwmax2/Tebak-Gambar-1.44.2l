package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Objects;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzadw implements Parcelable.Creator {
    zzadw() {
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object createFromParcel(Parcel parcel) {
        String string = parcel.readString();
        Objects.requireNonNull(string);
        String string2 = parcel.readString();
        String[] strArrCreateStringArray = parcel.createStringArray();
        Objects.requireNonNull(strArrCreateStringArray);
        return new zzadx(string, string2, zzfqk.t(strArrCreateStringArray));
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i10) {
        return new zzadx[i10];
    }
}
