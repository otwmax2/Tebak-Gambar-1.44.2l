package com.google.android.gms.common.internal.safeparcel;

import android.content.Intent;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.Base64Utils;
import com.google.android.gms.common.util.VisibleForTesting;

/* JADX INFO: compiled from: com.google.android.gms:play-services-basement@@18.1.0 */
/* JADX INFO: loaded from: classes.dex */
@VisibleForTesting
@KeepForSdk
public final class SafeParcelableSerializer {
    private SafeParcelableSerializer() {
    }

    @KeepForSdk
    public static <T extends SafeParcelable> T a(byte[] bArr, Parcelable.Creator<T> creator) {
        Preconditions.k(creator);
        Parcel parcelObtain = Parcel.obtain();
        parcelObtain.unmarshall(bArr, 0, bArr.length);
        parcelObtain.setDataPosition(0);
        T tCreateFromParcel = creator.createFromParcel(parcelObtain);
        parcelObtain.recycle();
        return tCreateFromParcel;
    }

    @KeepForSdk
    public static <T extends SafeParcelable> T b(Intent intent, String str, Parcelable.Creator<T> creator) {
        byte[] byteArrayExtra = intent.getByteArrayExtra(str);
        if (byteArrayExtra == null) {
            return null;
        }
        return (T) a(byteArrayExtra, creator);
    }

    @KeepForSdk
    public static <T extends SafeParcelable> T c(String str, Parcelable.Creator<T> creator) {
        return (T) a(Base64Utils.a(str), creator);
    }

    @KeepForSdk
    public static <T extends SafeParcelable> byte[] d(T t10) {
        Parcel parcelObtain = Parcel.obtain();
        t10.writeToParcel(parcelObtain, 0);
        byte[] bArrMarshall = parcelObtain.marshall();
        parcelObtain.recycle();
        return bArrMarshall;
    }

    @KeepForSdk
    public static <T extends SafeParcelable> void e(T t10, Intent intent, String str) {
        intent.putExtra(str, d(t10));
    }

    @KeepForSdk
    public static <T extends SafeParcelable> String f(T t10) {
        return Base64Utils.d(d(t10));
    }
}
