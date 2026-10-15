package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
@SafeParcelable.Class
@SafeParcelable.Reserved
public final class zzbuk extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzbuk> CREATOR = new zzbul();

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @SafeParcelable.Field
    public final com.google.android.gms.ads.internal.client.zzl f11354o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @SafeParcelable.Field
    public final String f11355p;

    @SafeParcelable.Constructor
    public zzbuk(@SafeParcelable.Param com.google.android.gms.ads.internal.client.zzl zzlVar, @SafeParcelable.Param String str) {
        this.f11354o = zzlVar;
        this.f11355p = str;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        int iA = SafeParcelWriter.a(parcel);
        SafeParcelWriter.s(parcel, 2, this.f11354o, i10, false);
        SafeParcelWriter.t(parcel, 3, this.f11355p, false);
        SafeParcelWriter.b(parcel, iA);
    }
}
