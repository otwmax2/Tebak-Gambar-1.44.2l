package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
@SafeParcelable.Class
public final class zzbiy extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzbiy> CREATOR = new zzbiz();

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @SafeParcelable.Field
    public final String f10780o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @SafeParcelable.Field
    public final String[] f10781p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    @SafeParcelable.Field
    public final String[] f10782q;

    @SafeParcelable.Constructor
    zzbiy(@SafeParcelable.Param String str, @SafeParcelable.Param String[] strArr, @SafeParcelable.Param String[] strArr2) {
        this.f10780o = str;
        this.f10781p = strArr;
        this.f10782q = strArr2;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        int iA = SafeParcelWriter.a(parcel);
        SafeParcelWriter.t(parcel, 1, this.f10780o, false);
        SafeParcelWriter.u(parcel, 2, this.f10781p, false);
        SafeParcelWriter.u(parcel, 3, this.f10782q, false);
        SafeParcelWriter.b(parcel, iA);
    }
}
