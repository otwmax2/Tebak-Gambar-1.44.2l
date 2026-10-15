package com.google.android.gms.internal.drive;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
@SafeParcelable.Class
@SafeParcelable.Reserved
public final class zzfl extends AbstractSafeParcelable {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @SafeParcelable.Field
    final long f21972o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @SafeParcelable.Field
    final long f21973p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    @SafeParcelable.Field
    private final int f21974q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    @SafeParcelable.Field
    private final List<com.google.android.gms.drive.zzh> f21975r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private static final List<com.google.android.gms.drive.zzh> f21971s = Collections.emptyList();
    public static final Parcelable.Creator<zzfl> CREATOR = new zzfm();

    @SafeParcelable.Constructor
    public zzfl(@SafeParcelable.Param long j10, @SafeParcelable.Param long j11, @SafeParcelable.Param int i10, @SafeParcelable.Param List<com.google.android.gms.drive.zzh> list) {
        this.f21972o = j10;
        this.f21973p = j11;
        this.f21974q = i10;
        this.f21975r = list;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        int iA = SafeParcelWriter.a(parcel);
        SafeParcelWriter.p(parcel, 2, this.f21972o);
        SafeParcelWriter.p(parcel, 3, this.f21973p);
        SafeParcelWriter.l(parcel, 4, this.f21974q);
        SafeParcelWriter.x(parcel, 5, this.f21975r, false);
        SafeParcelWriter.b(parcel, iA);
    }
}
