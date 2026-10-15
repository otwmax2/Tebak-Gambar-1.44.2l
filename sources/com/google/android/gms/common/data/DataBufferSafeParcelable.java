package com.google.android.gms.common.data;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

/* JADX INFO: compiled from: com.google.android.gms:play-services-base@@18.0.1 */
/* JADX INFO: loaded from: classes.dex */
@KeepForSdk
public class DataBufferSafeParcelable<T extends SafeParcelable> extends AbstractDataBuffer<T> {

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private static final String[] f7313q = {"data"};

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final Parcelable.Creator<T> f7314p;

    @Override // com.google.android.gms.common.data.AbstractDataBuffer, com.google.android.gms.common.data.DataBuffer
    @KeepForSdk
    /* JADX INFO: renamed from: g, reason: merged with bridge method [inline-methods] */
    public T get(int i10) {
        DataHolder dataHolder = (DataHolder) Preconditions.k(this.f7300o);
        byte[] bArrW3 = dataHolder.W3("data", i10, dataHolder.c4(i10));
        Parcel parcelObtain = Parcel.obtain();
        parcelObtain.unmarshall(bArrW3, 0, bArrW3.length);
        parcelObtain.setDataPosition(0);
        T tCreateFromParcel = this.f7314p.createFromParcel(parcelObtain);
        parcelObtain.recycle();
        return tCreateFromParcel;
    }
}
