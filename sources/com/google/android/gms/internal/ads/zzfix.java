package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
@SafeParcelable.Class
public final class zzfix extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzfix> CREATOR = new zzfiy();

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @SafeParcelable.VersionField
    public final int f18282o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @SafeParcelable.Field
    public final String f18283p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    @SafeParcelable.Field
    public final String f18284q;

    @SafeParcelable.Constructor
    zzfix(@SafeParcelable.Param int i10, @SafeParcelable.Param String str, @SafeParcelable.Param String str2) {
        this.f18282o = i10;
        this.f18283p = str;
        this.f18284q = str2;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        int iA = SafeParcelWriter.a(parcel);
        SafeParcelWriter.l(parcel, 1, this.f18282o);
        SafeParcelWriter.t(parcel, 2, this.f18283p, false);
        SafeParcelWriter.t(parcel, 3, this.f18284q, false);
        SafeParcelWriter.b(parcel, iA);
    }

    public zzfix(String str, String str2) {
        this(1, str, str2);
    }
}
