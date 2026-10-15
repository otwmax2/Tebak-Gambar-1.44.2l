package com.google.android.gms.internal.drive;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.drive.Contents;
import com.google.android.gms.drive.DriveId;
import com.google.android.gms.drive.ExecutionOptions;
import com.google.android.gms.drive.metadata.internal.MetadataBundle;

/* JADX INFO: loaded from: classes2.dex */
@SafeParcelable.Class
@SafeParcelable.Reserved
public final class zzw extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzw> CREATOR = new zzx();

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @SafeParcelable.Field
    private final DriveId f22381o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @SafeParcelable.Field
    private final MetadataBundle f22382p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    @SafeParcelable.Field
    private final Contents f22383q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    @SafeParcelable.Field
    private final Integer f22384r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    @SafeParcelable.Field
    private final boolean f22385s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    @SafeParcelable.Field
    private final String f22386t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    @SafeParcelable.Field
    private final int f22387u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    @SafeParcelable.Field
    private final int f22388v;

    @SafeParcelable.Constructor
    zzw(@SafeParcelable.Param DriveId driveId, @SafeParcelable.Param MetadataBundle metadataBundle, @SafeParcelable.Param Contents contents, @SafeParcelable.Param int i10, @SafeParcelable.Param boolean z10, @SafeParcelable.Param String str, @SafeParcelable.Param int i11, @SafeParcelable.Param int i12) {
        if (contents != null && i12 != 0) {
            Preconditions.b(contents.X3() == i12, "inconsistent contents reference");
        }
        if (i10 == 0 && contents == null && i12 == 0) {
            throw new IllegalArgumentException("Need a valid contents");
        }
        this.f22381o = (DriveId) Preconditions.k(driveId);
        this.f22382p = (MetadataBundle) Preconditions.k(metadataBundle);
        this.f22383q = contents;
        this.f22384r = Integer.valueOf(i10);
        this.f22386t = str;
        this.f22387u = i11;
        this.f22385s = z10;
        this.f22388v = i12;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        int iA = SafeParcelWriter.a(parcel);
        SafeParcelWriter.s(parcel, 2, this.f22381o, i10, false);
        SafeParcelWriter.s(parcel, 3, this.f22382p, i10, false);
        SafeParcelWriter.s(parcel, 4, this.f22383q, i10, false);
        SafeParcelWriter.o(parcel, 5, this.f22384r, false);
        SafeParcelWriter.c(parcel, 6, this.f22385s);
        SafeParcelWriter.t(parcel, 7, this.f22386t, false);
        SafeParcelWriter.l(parcel, 8, this.f22387u);
        SafeParcelWriter.l(parcel, 9, this.f22388v);
        SafeParcelWriter.b(parcel, iA);
    }

    @VisibleForTesting
    public zzw(DriveId driveId, MetadataBundle metadataBundle, int i10, int i11, ExecutionOptions executionOptions) {
        this(driveId, metadataBundle, null, i11, executionOptions.c(), executionOptions.b(), executionOptions.d(), i10);
    }
}
