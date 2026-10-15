package com.google.android.gms.ads.internal.client;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.ads.search.SearchAdRequest;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.0.0 */
/* JADX INFO: loaded from: classes.dex */
@SafeParcelable.Class
@SafeParcelable.Reserved
public final class zzfh extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzfh> CREATOR = new zzfi();

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @SafeParcelable.Field
    public final String f5895o;

    public zzfh(SearchAdRequest searchAdRequest) {
        this.f5895o = searchAdRequest.a();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        int iA = SafeParcelWriter.a(parcel);
        SafeParcelWriter.t(parcel, 15, this.f5895o, false);
        SafeParcelWriter.b(parcel, iA);
    }

    @SafeParcelable.Constructor
    zzfh(@SafeParcelable.Param String str) {
        this.f5895o = str;
    }
}
