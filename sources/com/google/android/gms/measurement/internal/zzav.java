package com.google.android.gms.measurement.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-impl@@20.1.2 */
/* JADX INFO: loaded from: classes2.dex */
@SafeParcelable.Class
@SafeParcelable.Reserved
public final class zzav extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzav> CREATOR = new zzaw();

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @SafeParcelable.Field
    public final String f24454o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @SafeParcelable.Field
    public final zzat f24455p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    @SafeParcelable.Field
    public final String f24456q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    @SafeParcelable.Field
    public final long f24457r;

    zzav(zzav zzavVar, long j10) {
        Preconditions.k(zzavVar);
        this.f24454o = zzavVar.f24454o;
        this.f24455p = zzavVar.f24455p;
        this.f24456q = zzavVar.f24456q;
        this.f24457r = j10;
    }

    public final String toString() {
        return "origin=" + this.f24456q + ",name=" + this.f24454o + ",params=" + String.valueOf(this.f24455p);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        zzaw.a(this, parcel, i10);
    }

    @SafeParcelable.Constructor
    public zzav(@SafeParcelable.Param String str, @SafeParcelable.Param zzat zzatVar, @SafeParcelable.Param String str2, @SafeParcelable.Param long j10) {
        this.f24454o = str;
        this.f24455p = zzatVar;
        this.f24456q = str2;
        this.f24457r = j10;
    }
}
