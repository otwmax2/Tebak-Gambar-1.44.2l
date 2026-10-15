package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import javax.annotation.ParametersAreNonnullByDefault;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.0.0 */
/* JADX INFO: loaded from: classes.dex */
@ParametersAreNonnullByDefault
@SafeParcelable.Class
public final class zzbvk extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzbvk> CREATOR = new zzbvl();

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @SafeParcelable.Field
    public final String f11368o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @SafeParcelable.Field
    public final String f11369p;

    @SafeParcelable.Constructor
    public zzbvk(@SafeParcelable.Param String str, @SafeParcelable.Param String str2) {
        this.f11368o = str;
        this.f11369p = str2;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        int iA = SafeParcelWriter.a(parcel);
        SafeParcelWriter.t(parcel, 1, this.f11368o, false);
        SafeParcelWriter.t(parcel, 2, this.f11369p, false);
        SafeParcelWriter.b(parcel, iA);
    }
}
