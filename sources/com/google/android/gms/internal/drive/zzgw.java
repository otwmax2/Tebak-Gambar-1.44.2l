package com.google.android.gms.internal.drive;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.drive.DriveId;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
@SafeParcelable.Class
@SafeParcelable.Reserved
public final class zzgw extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzgw> CREATOR = new zzgx();

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @SafeParcelable.Field
    private final DriveId f22015o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @SafeParcelable.Field
    private final List<DriveId> f22016p;

    @SafeParcelable.Constructor
    @VisibleForTesting
    public zzgw(@SafeParcelable.Param DriveId driveId, @SafeParcelable.Param List<DriveId> list) {
        this.f22015o = driveId;
        this.f22016p = list;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        int iA = SafeParcelWriter.a(parcel);
        SafeParcelWriter.s(parcel, 2, this.f22015o, i10, false);
        SafeParcelWriter.x(parcel, 3, this.f22016p, false);
        SafeParcelWriter.b(parcel, iA);
    }
}
