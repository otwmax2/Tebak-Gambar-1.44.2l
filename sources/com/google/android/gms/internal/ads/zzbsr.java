package com.google.android.gms.internal.ads;

import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.List;
import javax.annotation.ParametersAreNonnullByDefault;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes.dex */
@ParametersAreNonnullByDefault
@SafeParcelable.Class
public final class zzbsr extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzbsr> CREATOR = new zzbss();

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @SafeParcelable.Field
    public final ApplicationInfo f11247o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @SafeParcelable.Field
    public final String f11248p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    @SafeParcelable.Field
    public final PackageInfo f11249q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    @SafeParcelable.Field
    public final String f11250r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    @SafeParcelable.Field
    public final int f11251s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    @SafeParcelable.Field
    public final String f11252t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    @SafeParcelable.Field
    public final List f11253u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    @SafeParcelable.Field
    public final boolean f11254v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    @SafeParcelable.Field
    public final boolean f11255w;

    @SafeParcelable.Constructor
    public zzbsr(@SafeParcelable.Param ApplicationInfo applicationInfo, @SafeParcelable.Param String str, @SafeParcelable.Param PackageInfo packageInfo, @SafeParcelable.Param String str2, @SafeParcelable.Param int i10, @SafeParcelable.Param String str3, @SafeParcelable.Param List list, @SafeParcelable.Param boolean z10, @SafeParcelable.Param boolean z11) {
        this.f11248p = str;
        this.f11247o = applicationInfo;
        this.f11249q = packageInfo;
        this.f11250r = str2;
        this.f11251s = i10;
        this.f11252t = str3;
        this.f11253u = list;
        this.f11254v = z10;
        this.f11255w = z11;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        int iA = SafeParcelWriter.a(parcel);
        SafeParcelWriter.s(parcel, 1, this.f11247o, i10, false);
        SafeParcelWriter.t(parcel, 2, this.f11248p, false);
        SafeParcelWriter.s(parcel, 3, this.f11249q, i10, false);
        SafeParcelWriter.t(parcel, 4, this.f11250r, false);
        SafeParcelWriter.l(parcel, 5, this.f11251s);
        SafeParcelWriter.t(parcel, 6, this.f11252t, false);
        SafeParcelWriter.v(parcel, 7, this.f11253u, false);
        SafeParcelWriter.c(parcel, 8, this.f11254v);
        SafeParcelWriter.c(parcel, 9, this.f11255w);
        SafeParcelWriter.b(parcel, iA);
    }
}
