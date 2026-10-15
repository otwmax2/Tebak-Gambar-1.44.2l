package com.google.android.gms.measurement.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-impl@@20.1.2 */
/* JADX INFO: loaded from: classes2.dex */
@SafeParcelable.Class
public final class zzab extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzab> CREATOR = new zzac();

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @SafeParcelable.Field
    public String f24415o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @SafeParcelable.Field
    public String f24416p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    @SafeParcelable.Field
    public zzll f24417q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    @SafeParcelable.Field
    public long f24418r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    @SafeParcelable.Field
    public boolean f24419s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    @SafeParcelable.Field
    public String f24420t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    @SafeParcelable.Field
    public final zzav f24421u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    @SafeParcelable.Field
    public long f24422v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    @SafeParcelable.Field
    public zzav f24423w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    @SafeParcelable.Field
    public final long f24424x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    @SafeParcelable.Field
    public final zzav f24425y;

    zzab(zzab zzabVar) {
        Preconditions.k(zzabVar);
        this.f24415o = zzabVar.f24415o;
        this.f24416p = zzabVar.f24416p;
        this.f24417q = zzabVar.f24417q;
        this.f24418r = zzabVar.f24418r;
        this.f24419s = zzabVar.f24419s;
        this.f24420t = zzabVar.f24420t;
        this.f24421u = zzabVar.f24421u;
        this.f24422v = zzabVar.f24422v;
        this.f24423w = zzabVar.f24423w;
        this.f24424x = zzabVar.f24424x;
        this.f24425y = zzabVar.f24425y;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        int iA = SafeParcelWriter.a(parcel);
        SafeParcelWriter.t(parcel, 2, this.f24415o, false);
        SafeParcelWriter.t(parcel, 3, this.f24416p, false);
        SafeParcelWriter.s(parcel, 4, this.f24417q, i10, false);
        SafeParcelWriter.p(parcel, 5, this.f24418r);
        SafeParcelWriter.c(parcel, 6, this.f24419s);
        SafeParcelWriter.t(parcel, 7, this.f24420t, false);
        SafeParcelWriter.s(parcel, 8, this.f24421u, i10, false);
        SafeParcelWriter.p(parcel, 9, this.f24422v);
        SafeParcelWriter.s(parcel, 10, this.f24423w, i10, false);
        SafeParcelWriter.p(parcel, 11, this.f24424x);
        SafeParcelWriter.s(parcel, 12, this.f24425y, i10, false);
        SafeParcelWriter.b(parcel, iA);
    }

    @SafeParcelable.Constructor
    zzab(@SafeParcelable.Param String str, @SafeParcelable.Param String str2, @SafeParcelable.Param zzll zzllVar, @SafeParcelable.Param long j10, @SafeParcelable.Param boolean z10, @SafeParcelable.Param String str3, @SafeParcelable.Param zzav zzavVar, @SafeParcelable.Param long j11, @SafeParcelable.Param zzav zzavVar2, @SafeParcelable.Param long j12, @SafeParcelable.Param zzav zzavVar3) {
        this.f24415o = str;
        this.f24416p = str2;
        this.f24417q = zzllVar;
        this.f24418r = j10;
        this.f24419s = z10;
        this.f24420t = str3;
        this.f24421u = zzavVar;
        this.f24422v = j11;
        this.f24423w = zzavVar2;
        this.f24424x = j12;
        this.f24425y = zzavVar3;
    }
}
