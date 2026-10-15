package com.google.android.gms.internal.drive;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.drive.DriveId;

/* JADX INFO: loaded from: classes2.dex */
@SafeParcelable.Class
@SafeParcelable.Reserved
public final class zzgs extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzgs> CREATOR = new zzgt();

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @SafeParcelable.Field
    private final DriveId f22011o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @SafeParcelable.Field
    private final int f22012p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    @SafeParcelable.Field
    private final com.google.android.gms.drive.events.zzt f22013q;

    @SafeParcelable.Constructor
    zzgs(@SafeParcelable.Param DriveId driveId, @SafeParcelable.Param int i10, @SafeParcelable.Param com.google.android.gms.drive.events.zzt zztVar) {
        this.f22011o = driveId;
        this.f22012p = i10;
        this.f22013q = zztVar;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        int iA = SafeParcelWriter.a(parcel);
        SafeParcelWriter.s(parcel, 2, this.f22011o, i10, false);
        SafeParcelWriter.l(parcel, 3, this.f22012p);
        SafeParcelWriter.s(parcel, 4, this.f22013q, i10, false);
        SafeParcelWriter.b(parcel, iA);
    }

    @VisibleForTesting
    public zzgs(DriveId driveId, int i10) {
        this(driveId, i10, null);
    }
}
