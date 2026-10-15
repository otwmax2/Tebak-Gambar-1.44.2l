package com.google.android.gms.internal.drive;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.drive.DriveId;
import com.google.android.gms.drive.query.internal.FilterHolder;

/* JADX INFO: loaded from: classes2.dex */
@SafeParcelable.Class
@SafeParcelable.Reserved
public final class zzgm extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzgm> CREATOR = new zzgn();

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @SafeParcelable.Field
    private final String f22003o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @SafeParcelable.Field
    private final String[] f22004p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    @SafeParcelable.Field
    private final DriveId f22005q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    @SafeParcelable.Field
    private final FilterHolder f22006r;

    @SafeParcelable.Constructor
    @VisibleForTesting
    public zzgm(@SafeParcelable.Param String str, @SafeParcelable.Param String[] strArr, @SafeParcelable.Param DriveId driveId, @SafeParcelable.Param FilterHolder filterHolder) {
        this.f22003o = str;
        this.f22004p = strArr;
        this.f22005q = driveId;
        this.f22006r = filterHolder;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        int iA = SafeParcelWriter.a(parcel);
        SafeParcelWriter.t(parcel, 2, this.f22003o, false);
        SafeParcelWriter.u(parcel, 3, this.f22004p, false);
        SafeParcelWriter.s(parcel, 4, this.f22005q, i10, false);
        SafeParcelWriter.s(parcel, 5, this.f22006r, i10, false);
        SafeParcelWriter.b(parcel, iA);
    }
}
