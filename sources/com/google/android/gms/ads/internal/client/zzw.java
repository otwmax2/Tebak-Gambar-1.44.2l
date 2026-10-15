package com.google.android.gms.ads.internal.client;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.ads.appopen.AppOpenAd;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.0.0 */
/* JADX INFO: loaded from: classes.dex */
@SafeParcelable.Class
@SafeParcelable.Reserved
public final class zzw extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzw> CREATOR = new zzx();

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @AppOpenAd.AppOpenAdOrientation
    @SafeParcelable.Field
    public final int f5955o;

    @SafeParcelable.Constructor
    public zzw(@SafeParcelable.Param @AppOpenAd.AppOpenAdOrientation int i10) {
        this.f5955o = i10;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        int iA = SafeParcelWriter.a(parcel);
        SafeParcelWriter.l(parcel, 2, this.f5955o);
        SafeParcelWriter.b(parcel, iA);
    }
}
