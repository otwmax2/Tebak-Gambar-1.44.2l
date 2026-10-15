package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
@SafeParcelable.Class
public final class zzbjl extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzbjl> CREATOR = new zzbjm();

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @SafeParcelable.Field
    public final String f10799o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @SafeParcelable.Field
    public final boolean f10800p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    @SafeParcelable.Field
    public final int f10801q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    @SafeParcelable.Field
    public final String f10802r;

    @SafeParcelable.Constructor
    public zzbjl(@SafeParcelable.Param String str, @SafeParcelable.Param boolean z10, @SafeParcelable.Param int i10, @SafeParcelable.Param String str2) {
        this.f10799o = str;
        this.f10800p = z10;
        this.f10801q = i10;
        this.f10802r = str2;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        int iA = SafeParcelWriter.a(parcel);
        SafeParcelWriter.t(parcel, 1, this.f10799o, false);
        SafeParcelWriter.c(parcel, 2, this.f10800p);
        SafeParcelWriter.l(parcel, 3, this.f10801q);
        SafeParcelWriter.t(parcel, 4, this.f10802r, false);
        SafeParcelWriter.b(parcel, iA);
    }
}
