package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
@SafeParcelable.Class
public final class zzfjg extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzfjg> CREATOR = new zzfjh();

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @SafeParcelable.VersionField
    public final int f18305o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @SafeParcelable.Field
    public final int f18306p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    @SafeParcelable.Field
    public final String f18307q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    @SafeParcelable.Field
    public final String f18308r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    @SafeParcelable.Field
    public final int f18309s;

    @SafeParcelable.Constructor
    zzfjg(@SafeParcelable.Param int i10, @SafeParcelable.Param int i11, @SafeParcelable.Param int i12, @SafeParcelable.Param String str, @SafeParcelable.Param String str2) {
        this.f18305o = i10;
        this.f18306p = i11;
        this.f18307q = str;
        this.f18308r = str2;
        this.f18309s = i12;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        int iA = SafeParcelWriter.a(parcel);
        SafeParcelWriter.l(parcel, 1, this.f18305o);
        SafeParcelWriter.l(parcel, 2, this.f18306p);
        SafeParcelWriter.t(parcel, 3, this.f18307q, false);
        SafeParcelWriter.t(parcel, 4, this.f18308r, false);
        SafeParcelWriter.l(parcel, 5, this.f18309s);
        SafeParcelWriter.b(parcel, iA);
    }

    public zzfjg(int i10, int i11, String str, String str2) {
        this(1, 1, i11 - 1, str, str2);
    }
}
