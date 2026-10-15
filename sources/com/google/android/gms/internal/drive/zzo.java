package com.google.android.gms.internal.drive;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.drive.Contents;

/* JADX INFO: loaded from: classes2.dex */
@SafeParcelable.Class
@SafeParcelable.Reserved
public final class zzo extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzo> CREATOR = new zzp();

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @SafeParcelable.Field
    private final Contents f22366o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @SafeParcelable.Field
    private final Boolean f22367p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    @SafeParcelable.Field
    private final int f22368q;

    @SafeParcelable.Constructor
    @VisibleForTesting
    public zzo(@SafeParcelable.Param Contents contents, @SafeParcelable.Param Boolean bool, @SafeParcelable.Param int i10) {
        this.f22366o = contents;
        this.f22367p = bool;
        this.f22368q = i10;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        int iA = SafeParcelWriter.a(parcel);
        SafeParcelWriter.s(parcel, 2, this.f22366o, i10, false);
        SafeParcelWriter.e(parcel, 3, this.f22367p, false);
        SafeParcelWriter.l(parcel, 4, this.f22368q);
        SafeParcelWriter.b(parcel, iA);
    }

    @VisibleForTesting
    public zzo(int i10, boolean z10) {
        this(null, Boolean.FALSE, i10);
    }
}
