package com.google.android.gms.ads.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes.dex */
@SafeParcelable.Class
@SafeParcelable.Reserved
public final class zzj extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzj> CREATOR = new zzk();

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @SafeParcelable.Field
    public final boolean f6225o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @SafeParcelable.Field
    public final boolean f6226p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    @SafeParcelable.Field
    public final String f6227q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    @SafeParcelable.Field
    public final boolean f6228r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    @SafeParcelable.Field
    public final float f6229s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    @SafeParcelable.Field
    public final int f6230t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    @SafeParcelable.Field
    public final boolean f6231u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    @SafeParcelable.Field
    public final boolean f6232v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    @SafeParcelable.Field
    public final boolean f6233w;

    @SafeParcelable.Constructor
    zzj(@SafeParcelable.Param boolean z10, @SafeParcelable.Param boolean z11, @SafeParcelable.Param String str, @SafeParcelable.Param boolean z12, @SafeParcelable.Param float f10, @SafeParcelable.Param int i10, @SafeParcelable.Param boolean z13, @SafeParcelable.Param boolean z14, @SafeParcelable.Param boolean z15) {
        this.f6225o = z10;
        this.f6226p = z11;
        this.f6227q = str;
        this.f6228r = z12;
        this.f6229s = f10;
        this.f6230t = i10;
        this.f6231u = z13;
        this.f6232v = z14;
        this.f6233w = z15;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        int iA = SafeParcelWriter.a(parcel);
        SafeParcelWriter.c(parcel, 2, this.f6225o);
        SafeParcelWriter.c(parcel, 3, this.f6226p);
        SafeParcelWriter.t(parcel, 4, this.f6227q, false);
        SafeParcelWriter.c(parcel, 5, this.f6228r);
        SafeParcelWriter.i(parcel, 6, this.f6229s);
        SafeParcelWriter.l(parcel, 7, this.f6230t);
        SafeParcelWriter.c(parcel, 8, this.f6231u);
        SafeParcelWriter.c(parcel, 9, this.f6232v);
        SafeParcelWriter.c(parcel, 10, this.f6233w);
        SafeParcelWriter.b(parcel, iA);
    }

    public zzj(boolean z10, boolean z11, boolean z12, float f10, int i10, boolean z13, boolean z14, boolean z15) {
        this(z10, z11, null, z12, f10, -1, z13, z14, z15);
    }
}
