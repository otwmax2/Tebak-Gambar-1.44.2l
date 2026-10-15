package com.google.android.gms.internal.ads;

import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.os.Bundle;
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
public final class zzbtn extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzbtn> CREATOR = new zzbto();

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @SafeParcelable.Field
    public final Bundle f11272o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @SafeParcelable.Field
    public final zzbzg f11273p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    @SafeParcelable.Field
    public final ApplicationInfo f11274q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    @SafeParcelable.Field
    public final String f11275r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    @SafeParcelable.Field
    public final List f11276s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    @SafeParcelable.Field
    public final PackageInfo f11277t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    @SafeParcelable.Field
    public final String f11278u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    @SafeParcelable.Field
    public final String f11279v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    @SafeParcelable.Field
    public zzfaq f11280w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    @SafeParcelable.Field
    public String f11281x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    @SafeParcelable.Field
    public final boolean f11282y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    @SafeParcelable.Field
    public final boolean f11283z;

    @SafeParcelable.Constructor
    public zzbtn(@SafeParcelable.Param Bundle bundle, @SafeParcelable.Param zzbzg zzbzgVar, @SafeParcelable.Param ApplicationInfo applicationInfo, @SafeParcelable.Param String str, @SafeParcelable.Param List list, @SafeParcelable.Param PackageInfo packageInfo, @SafeParcelable.Param String str2, @SafeParcelable.Param String str3, @SafeParcelable.Param zzfaq zzfaqVar, @SafeParcelable.Param String str4, @SafeParcelable.Param boolean z10, @SafeParcelable.Param boolean z11) {
        this.f11272o = bundle;
        this.f11273p = zzbzgVar;
        this.f11275r = str;
        this.f11274q = applicationInfo;
        this.f11276s = list;
        this.f11277t = packageInfo;
        this.f11278u = str2;
        this.f11279v = str3;
        this.f11280w = zzfaqVar;
        this.f11281x = str4;
        this.f11282y = z10;
        this.f11283z = z11;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        int iA = SafeParcelWriter.a(parcel);
        SafeParcelWriter.f(parcel, 1, this.f11272o, false);
        SafeParcelWriter.s(parcel, 2, this.f11273p, i10, false);
        SafeParcelWriter.s(parcel, 3, this.f11274q, i10, false);
        SafeParcelWriter.t(parcel, 4, this.f11275r, false);
        SafeParcelWriter.v(parcel, 5, this.f11276s, false);
        SafeParcelWriter.s(parcel, 6, this.f11277t, i10, false);
        SafeParcelWriter.t(parcel, 7, this.f11278u, false);
        SafeParcelWriter.t(parcel, 9, this.f11279v, false);
        SafeParcelWriter.s(parcel, 10, this.f11280w, i10, false);
        SafeParcelWriter.t(parcel, 11, this.f11281x, false);
        SafeParcelWriter.c(parcel, 12, this.f11282y);
        SafeParcelWriter.c(parcel, 13, this.f11283z);
        SafeParcelWriter.b(parcel, iA);
    }
}
