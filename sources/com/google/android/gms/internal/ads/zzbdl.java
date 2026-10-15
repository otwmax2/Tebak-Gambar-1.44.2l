package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.ads.VideoOptions;
import com.google.android.gms.ads.nativead.NativeAdOptions;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
@SafeParcelable.Class
public final class zzbdl extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzbdl> CREATOR = new zzbdm();

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @SafeParcelable.Field
    public final int f10645o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @SafeParcelable.Field
    public final boolean f10646p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    @SafeParcelable.Field
    public final int f10647q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    @SafeParcelable.Field
    public final boolean f10648r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    @SafeParcelable.Field
    public final int f10649s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    @SafeParcelable.Field
    public final com.google.android.gms.ads.internal.client.zzfl f10650t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    @SafeParcelable.Field
    public final boolean f10651u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    @SafeParcelable.Field
    public final int f10652v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    @SafeParcelable.Field
    public final int f10653w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    @SafeParcelable.Field
    public final boolean f10654x;

    @SafeParcelable.Constructor
    public zzbdl(@SafeParcelable.Param int i10, @SafeParcelable.Param boolean z10, @SafeParcelable.Param int i11, @SafeParcelable.Param boolean z11, @SafeParcelable.Param int i12, @SafeParcelable.Param com.google.android.gms.ads.internal.client.zzfl zzflVar, @SafeParcelable.Param boolean z12, @SafeParcelable.Param int i13, @SafeParcelable.Param int i14, @SafeParcelable.Param boolean z13) {
        this.f10645o = i10;
        this.f10646p = z10;
        this.f10647q = i11;
        this.f10648r = z11;
        this.f10649s = i12;
        this.f10650t = zzflVar;
        this.f10651u = z12;
        this.f10652v = i13;
        this.f10654x = z13;
        this.f10653w = i14;
    }

    public static NativeAdOptions V3(zzbdl zzbdlVar) {
        NativeAdOptions.Builder builder = new NativeAdOptions.Builder();
        if (zzbdlVar == null) {
            return builder.a();
        }
        int i10 = zzbdlVar.f10645o;
        if (i10 == 2) {
            builder.c(zzbdlVar.f10649s);
        } else {
            if (i10 != 3) {
                if (i10 == 4) {
                    builder.e(zzbdlVar.f10651u);
                    builder.d(zzbdlVar.f10652v);
                    builder.b(zzbdlVar.f10653w, zzbdlVar.f10654x);
                }
            }
            com.google.android.gms.ads.internal.client.zzfl zzflVar = zzbdlVar.f10650t;
            if (zzflVar != null) {
                builder.h(new VideoOptions(zzflVar));
            }
            builder.c(zzbdlVar.f10649s);
        }
        builder.g(zzbdlVar.f10646p);
        builder.f(zzbdlVar.f10648r);
        return builder.a();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        int iA = SafeParcelWriter.a(parcel);
        SafeParcelWriter.l(parcel, 1, this.f10645o);
        SafeParcelWriter.c(parcel, 2, this.f10646p);
        SafeParcelWriter.l(parcel, 3, this.f10647q);
        SafeParcelWriter.c(parcel, 4, this.f10648r);
        SafeParcelWriter.l(parcel, 5, this.f10649s);
        SafeParcelWriter.s(parcel, 6, this.f10650t, i10, false);
        SafeParcelWriter.c(parcel, 7, this.f10651u);
        SafeParcelWriter.l(parcel, 8, this.f10652v);
        SafeParcelWriter.l(parcel, 9, this.f10653w);
        SafeParcelWriter.c(parcel, 10, this.f10654x);
        SafeParcelWriter.b(parcel, iA);
    }

    @Deprecated
    public zzbdl(com.google.android.gms.ads.formats.NativeAdOptions nativeAdOptions) {
        this(4, nativeAdOptions.f(), nativeAdOptions.b(), nativeAdOptions.e(), nativeAdOptions.a(), nativeAdOptions.d() != null ? new com.google.android.gms.ads.internal.client.zzfl(nativeAdOptions.d()) : null, nativeAdOptions.g(), nativeAdOptions.c(), 0, false);
    }
}
