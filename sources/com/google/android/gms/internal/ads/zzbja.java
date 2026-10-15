package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
@SafeParcelable.Class
public final class zzbja extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzbja> CREATOR = new zzbjb();

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @SafeParcelable.Field
    public final boolean f10783o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @SafeParcelable.Field
    public final String f10784p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    @SafeParcelable.Field
    public final int f10785q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    @SafeParcelable.Field
    public final byte[] f10786r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    @SafeParcelable.Field
    public final String[] f10787s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    @SafeParcelable.Field
    public final String[] f10788t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    @SafeParcelable.Field
    public final boolean f10789u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    @SafeParcelable.Field
    public final long f10790v;

    @SafeParcelable.Constructor
    zzbja(@SafeParcelable.Param boolean z10, @SafeParcelable.Param String str, @SafeParcelable.Param int i10, @SafeParcelable.Param byte[] bArr, @SafeParcelable.Param String[] strArr, @SafeParcelable.Param String[] strArr2, @SafeParcelable.Param boolean z11, @SafeParcelable.Param long j10) {
        this.f10783o = z10;
        this.f10784p = str;
        this.f10785q = i10;
        this.f10786r = bArr;
        this.f10787s = strArr;
        this.f10788t = strArr2;
        this.f10789u = z11;
        this.f10790v = j10;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        int iA = SafeParcelWriter.a(parcel);
        SafeParcelWriter.c(parcel, 1, this.f10783o);
        SafeParcelWriter.t(parcel, 2, this.f10784p, false);
        SafeParcelWriter.l(parcel, 3, this.f10785q);
        SafeParcelWriter.g(parcel, 4, this.f10786r, false);
        SafeParcelWriter.u(parcel, 5, this.f10787s, false);
        SafeParcelWriter.u(parcel, 6, this.f10788t, false);
        SafeParcelWriter.c(parcel, 7, this.f10789u);
        SafeParcelWriter.p(parcel, 8, this.f10790v);
        SafeParcelWriter.b(parcel, iA);
    }
}
