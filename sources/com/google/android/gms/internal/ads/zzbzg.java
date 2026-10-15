package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.facebook.appevents.AppEventsConstants;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.ads.dynamite.ModuleDescriptor;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
@SafeParcelable.Class
@SafeParcelable.Reserved
public final class zzbzg extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzbzg> CREATOR = new zzbzh();

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @SafeParcelable.Field
    public String f11605o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @SafeParcelable.Field
    public int f11606p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    @SafeParcelable.Field
    public int f11607q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    @SafeParcelable.Field
    public boolean f11608r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    @SafeParcelable.Field
    public boolean f11609s;

    public zzbzg(int i10, int i11, boolean z10, boolean z11) {
        this(ModuleDescriptor.MODULE_VERSION, i11, true, false, z11);
    }

    public static zzbzg V3() {
        return new zzbzg(12451000, 12451000, true, false, false);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        int iA = SafeParcelWriter.a(parcel);
        SafeParcelWriter.t(parcel, 2, this.f11605o, false);
        SafeParcelWriter.l(parcel, 3, this.f11606p);
        SafeParcelWriter.l(parcel, 4, this.f11607q);
        SafeParcelWriter.c(parcel, 5, this.f11608r);
        SafeParcelWriter.c(parcel, 6, this.f11609s);
        SafeParcelWriter.b(parcel, iA);
    }

    public zzbzg(int i10, int i11, boolean z10, boolean z11, boolean z12) {
        this("afma-sdk-a-v" + i10 + "." + i11 + "." + (z10 ? AppEventsConstants.EVENT_PARAM_VALUE_NO : AppEventsConstants.EVENT_PARAM_VALUE_YES), i10, i11, z10, z12);
    }

    @SafeParcelable.Constructor
    zzbzg(@SafeParcelable.Param String str, @SafeParcelable.Param int i10, @SafeParcelable.Param int i11, @SafeParcelable.Param boolean z10, @SafeParcelable.Param boolean z11) {
        this.f11605o = str;
        this.f11606p = i10;
        this.f11607q = i11;
        this.f11608r = z10;
        this.f11609s = z11;
    }
}
