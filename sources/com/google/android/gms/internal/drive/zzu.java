package com.google.android.gms.internal.drive;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.drive.DriveId;
import com.google.android.gms.drive.metadata.internal.MetadataBundle;

/* JADX INFO: loaded from: classes2.dex */
@SafeParcelable.Class
@SafeParcelable.Reserved
public final class zzu extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzu> CREATOR = new zzv();

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @SafeParcelable.Field
    private final MetadataBundle f22376o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @SafeParcelable.Field
    private final int f22377p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    @SafeParcelable.Field
    private final String f22378q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    @SafeParcelable.Field
    private final DriveId f22379r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    @SafeParcelable.Field
    private final Integer f22380s;

    @SafeParcelable.Constructor
    @VisibleForTesting
    public zzu(@SafeParcelable.Param MetadataBundle metadataBundle, @SafeParcelable.Param int i10, @SafeParcelable.Param String str, @SafeParcelable.Param DriveId driveId, @SafeParcelable.Param Integer num) {
        this.f22376o = metadataBundle;
        this.f22377p = i10;
        this.f22378q = str;
        this.f22379r = driveId;
        this.f22380s = num;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        int iA = SafeParcelWriter.a(parcel);
        SafeParcelWriter.s(parcel, 2, this.f22376o, i10, false);
        SafeParcelWriter.l(parcel, 3, this.f22377p);
        SafeParcelWriter.t(parcel, 4, this.f22378q, false);
        SafeParcelWriter.s(parcel, 5, this.f22379r, i10, false);
        SafeParcelWriter.o(parcel, 6, this.f22380s, false);
        SafeParcelWriter.b(parcel, iA);
    }
}
