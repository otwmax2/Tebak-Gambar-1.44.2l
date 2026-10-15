package com.google.android.gms.internal.drive;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.drive.DriveId;

/* JADX INFO: loaded from: classes2.dex */
@SafeParcelable.Class
@SafeParcelable.Reserved
public final class zzfn extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzfn> CREATOR = new zzfo();

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @SafeParcelable.Field
    DriveId f21976o;

    @SafeParcelable.Constructor
    public zzfn(@SafeParcelable.Param DriveId driveId) {
        this.f21976o = driveId;
    }

    public final DriveId V3() {
        return this.f21976o;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        int iA = SafeParcelWriter.a(parcel);
        SafeParcelWriter.s(parcel, 2, this.f21976o, i10, false);
        SafeParcelWriter.b(parcel, iA);
    }
}
