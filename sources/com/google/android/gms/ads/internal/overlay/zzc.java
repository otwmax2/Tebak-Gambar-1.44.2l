package com.google.android.gms.ads.internal.overlay;

import android.content.Intent;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes.dex */
@SafeParcelable.Class
@SafeParcelable.Reserved
public final class zzc extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzc> CREATOR = new zzb();

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @SafeParcelable.Field
    public final String f5986o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @SafeParcelable.Field
    public final String f5987p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    @SafeParcelable.Field
    public final String f5988q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    @SafeParcelable.Field
    public final String f5989r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    @SafeParcelable.Field
    public final String f5990s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    @SafeParcelable.Field
    public final String f5991t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    @SafeParcelable.Field
    public final String f5992u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    @SafeParcelable.Field
    public final Intent f5993v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    @SafeParcelable.Field
    public final zzx f5994w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    @SafeParcelable.Field
    public final boolean f5995x;

    public zzc(Intent intent, zzx zzxVar) {
        this(null, null, null, null, null, null, null, intent, ObjectWrapper.Q4(zzxVar).asBinder(), false);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        int iA = SafeParcelWriter.a(parcel);
        SafeParcelWriter.t(parcel, 2, this.f5986o, false);
        SafeParcelWriter.t(parcel, 3, this.f5987p, false);
        SafeParcelWriter.t(parcel, 4, this.f5988q, false);
        SafeParcelWriter.t(parcel, 5, this.f5989r, false);
        SafeParcelWriter.t(parcel, 6, this.f5990s, false);
        SafeParcelWriter.t(parcel, 7, this.f5991t, false);
        SafeParcelWriter.t(parcel, 8, this.f5992u, false);
        SafeParcelWriter.s(parcel, 9, this.f5993v, i10, false);
        SafeParcelWriter.k(parcel, 10, ObjectWrapper.Q4(this.f5994w).asBinder(), false);
        SafeParcelWriter.c(parcel, 11, this.f5995x);
        SafeParcelWriter.b(parcel, iA);
    }

    @SafeParcelable.Constructor
    public zzc(@SafeParcelable.Param String str, @SafeParcelable.Param String str2, @SafeParcelable.Param String str3, @SafeParcelable.Param String str4, @SafeParcelable.Param String str5, @SafeParcelable.Param String str6, @SafeParcelable.Param String str7, @SafeParcelable.Param Intent intent, @SafeParcelable.Param IBinder iBinder, @SafeParcelable.Param boolean z10) {
        this.f5986o = str;
        this.f5987p = str2;
        this.f5988q = str3;
        this.f5989r = str4;
        this.f5990s = str5;
        this.f5991t = str6;
        this.f5992u = str7;
        this.f5993v = intent;
        this.f5994w = (zzx) ObjectWrapper.t1(IObjectWrapper.Stub.X0(iBinder));
        this.f5995x = z10;
    }

    public zzc(String str, String str2, String str3, String str4, String str5, String str6, String str7, zzx zzxVar) {
        this(str, str2, str3, str4, str5, str6, str7, null, ObjectWrapper.Q4(zzxVar).asBinder(), false);
    }
}
