package com.google.android.gms.internal.measurement;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-base@@20.1.2 */
/* JADX INFO: loaded from: classes2.dex */
@SafeParcelable.Class
public final class zzcl extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzcl> CREATOR = new zzcm();

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @SafeParcelable.Field
    public final long f23357o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @SafeParcelable.Field
    public final long f23358p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    @SafeParcelable.Field
    public final boolean f23359q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    @SafeParcelable.Field
    public final String f23360r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    @SafeParcelable.Field
    public final String f23361s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    @SafeParcelable.Field
    public final String f23362t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    @SafeParcelable.Field
    public final Bundle f23363u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    @SafeParcelable.Field
    public final String f23364v;

    @SafeParcelable.Constructor
    public zzcl(@SafeParcelable.Param long j10, @SafeParcelable.Param long j11, @SafeParcelable.Param boolean z10, @SafeParcelable.Param String str, @SafeParcelable.Param String str2, @SafeParcelable.Param String str3, @SafeParcelable.Param Bundle bundle, @SafeParcelable.Param String str4) {
        this.f23357o = j10;
        this.f23358p = j11;
        this.f23359q = z10;
        this.f23360r = str;
        this.f23361s = str2;
        this.f23362t = str3;
        this.f23363u = bundle;
        this.f23364v = str4;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        int iA = SafeParcelWriter.a(parcel);
        SafeParcelWriter.p(parcel, 1, this.f23357o);
        SafeParcelWriter.p(parcel, 2, this.f23358p);
        SafeParcelWriter.c(parcel, 3, this.f23359q);
        SafeParcelWriter.t(parcel, 4, this.f23360r, false);
        SafeParcelWriter.t(parcel, 5, this.f23361s, false);
        SafeParcelWriter.t(parcel, 6, this.f23362t, false);
        SafeParcelWriter.f(parcel, 7, this.f23363u, false);
        SafeParcelWriter.t(parcel, 8, this.f23364v, false);
        SafeParcelWriter.b(parcel, iA);
    }
}
