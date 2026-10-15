package com.google.android.gms.drive.metadata.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

/* JADX INFO: loaded from: classes.dex */
@SafeParcelable.Class
@SafeParcelable.Reserved
public final class zzq extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzq> CREATOR = new zzr();

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @SafeParcelable.Field
    final String f7807o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @SafeParcelable.Field
    final long f7808p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    @SafeParcelable.Field
    final int f7809q;

    @SafeParcelable.Constructor
    public zzq(@SafeParcelable.Param String str, @SafeParcelable.Param long j10, @SafeParcelable.Param int i10) {
        this.f7807o = str;
        this.f7808p = j10;
        this.f7809q = i10;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        int iA = SafeParcelWriter.a(parcel);
        SafeParcelWriter.t(parcel, 2, this.f7807o, false);
        SafeParcelWriter.p(parcel, 3, this.f7808p);
        SafeParcelWriter.l(parcel, 4, this.f7809q);
        SafeParcelWriter.b(parcel, iA);
    }
}
