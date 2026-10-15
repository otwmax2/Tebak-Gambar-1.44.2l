package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import javax.annotation.ParametersAreNonnullByDefault;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.0.0 */
/* JADX INFO: loaded from: classes.dex */
@ParametersAreNonnullByDefault
@SafeParcelable.Class
public final class zzbxv extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzbxv> CREATOR = new zzbxw();

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @SafeParcelable.Field
    @Deprecated
    public final String f11497o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @SafeParcelable.Field
    public final String f11498p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    @SafeParcelable.Field
    @Deprecated
    public final com.google.android.gms.ads.internal.client.zzq f11499q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    @SafeParcelable.Field
    public final com.google.android.gms.ads.internal.client.zzl f11500r;

    @SafeParcelable.Constructor
    public zzbxv(@SafeParcelable.Param String str, @SafeParcelable.Param String str2, @SafeParcelable.Param com.google.android.gms.ads.internal.client.zzq zzqVar, @SafeParcelable.Param com.google.android.gms.ads.internal.client.zzl zzlVar) {
        this.f11497o = str;
        this.f11498p = str2;
        this.f11499q = zzqVar;
        this.f11500r = zzlVar;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        int iA = SafeParcelWriter.a(parcel);
        SafeParcelWriter.t(parcel, 1, this.f11497o, false);
        SafeParcelWriter.t(parcel, 2, this.f11498p, false);
        SafeParcelWriter.s(parcel, 3, this.f11499q, i10, false);
        SafeParcelWriter.s(parcel, 4, this.f11500r, i10, false);
        SafeParcelWriter.b(parcel, iA);
    }
}
