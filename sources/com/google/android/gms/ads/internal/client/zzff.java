package com.google.android.gms.ads.internal.client;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.ads.RequestConfiguration;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.0.0 */
/* JADX INFO: loaded from: classes.dex */
@SafeParcelable.Class
public final class zzff extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzff> CREATOR = new zzfg();

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @SafeParcelable.Field
    public final int f5893o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @SafeParcelable.Field
    public final int f5894p;

    @SafeParcelable.Constructor
    public zzff(@SafeParcelable.Param int i10, @SafeParcelable.Param int i11) {
        this.f5893o = i10;
        this.f5894p = i11;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        int iA = SafeParcelWriter.a(parcel);
        SafeParcelWriter.l(parcel, 1, this.f5893o);
        SafeParcelWriter.l(parcel, 2, this.f5894p);
        SafeParcelWriter.b(parcel, iA);
    }

    public zzff(RequestConfiguration requestConfiguration) {
        this.f5893o = requestConfiguration.b();
        this.f5894p = requestConfiguration.c();
    }
}
