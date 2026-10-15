package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import javax.annotation.ParametersAreNonnullByDefault;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes.dex */
@ParametersAreNonnullByDefault
@SafeParcelable.Class
public final class zzbsv extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzbsv> CREATOR = new zzbsw();

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @SafeParcelable.Field
    public final String f11258o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @SafeParcelable.Field
    public final int f11259p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    @SafeParcelable.Field
    public final Bundle f11260q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    @SafeParcelable.Field
    public final byte[] f11261r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    @SafeParcelable.Field
    public final boolean f11262s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    @SafeParcelable.Field
    public final String f11263t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    @SafeParcelable.Field
    public final String f11264u;

    @SafeParcelable.Constructor
    public zzbsv(@SafeParcelable.Param String str, @SafeParcelable.Param int i10, @SafeParcelable.Param Bundle bundle, @SafeParcelable.Param byte[] bArr, @SafeParcelable.Param boolean z10, @SafeParcelable.Param String str2, @SafeParcelable.Param String str3) {
        this.f11258o = str;
        this.f11259p = i10;
        this.f11260q = bundle;
        this.f11261r = bArr;
        this.f11262s = z10;
        this.f11263t = str2;
        this.f11264u = str3;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        int iA = SafeParcelWriter.a(parcel);
        SafeParcelWriter.t(parcel, 1, this.f11258o, false);
        SafeParcelWriter.l(parcel, 2, this.f11259p);
        SafeParcelWriter.f(parcel, 3, this.f11260q, false);
        SafeParcelWriter.g(parcel, 4, this.f11261r, false);
        SafeParcelWriter.c(parcel, 5, this.f11262s);
        SafeParcelWriter.t(parcel, 6, this.f11263t, false);
        SafeParcelWriter.t(parcel, 7, this.f11264u, false);
        SafeParcelWriter.b(parcel, iA);
    }
}
