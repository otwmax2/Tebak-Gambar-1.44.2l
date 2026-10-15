package com.google.android.gms.ads.internal.client;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.0.0 */
/* JADX INFO: loaded from: classes.dex */
@SafeParcelable.Class
public final class zzu extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzu> CREATOR = new zzv();

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @SafeParcelable.Field
    public final String f5947o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @SafeParcelable.Field
    public long f5948p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    @SafeParcelable.Field
    public zze f5949q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    @SafeParcelable.Field
    public final Bundle f5950r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    @SafeParcelable.Field
    public final String f5951s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    @SafeParcelable.Field
    public final String f5952t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    @SafeParcelable.Field
    public final String f5953u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    @SafeParcelable.Field
    public final String f5954v;

    @SafeParcelable.Constructor
    public zzu(@SafeParcelable.Param String str, @SafeParcelable.Param long j10, @SafeParcelable.Param zze zzeVar, @SafeParcelable.Param Bundle bundle, @SafeParcelable.Param String str2, @SafeParcelable.Param String str3, @SafeParcelable.Param String str4, @SafeParcelable.Param String str5) {
        this.f5947o = str;
        this.f5948p = j10;
        this.f5949q = zzeVar;
        this.f5950r = bundle;
        this.f5951s = str2;
        this.f5952t = str3;
        this.f5953u = str4;
        this.f5954v = str5;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        int iA = SafeParcelWriter.a(parcel);
        SafeParcelWriter.t(parcel, 1, this.f5947o, false);
        SafeParcelWriter.p(parcel, 2, this.f5948p);
        SafeParcelWriter.s(parcel, 3, this.f5949q, i10, false);
        SafeParcelWriter.f(parcel, 4, this.f5950r, false);
        SafeParcelWriter.t(parcel, 5, this.f5951s, false);
        SafeParcelWriter.t(parcel, 6, this.f5952t, false);
        SafeParcelWriter.t(parcel, 7, this.f5953u, false);
        SafeParcelWriter.t(parcel, 8, this.f5954v, false);
        SafeParcelWriter.b(parcel, iA);
    }
}
