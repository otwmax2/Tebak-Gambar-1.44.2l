package com.google.android.gms.internal.drive;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.drive.DriveId;

/* JADX INFO: loaded from: classes2.dex */
@SafeParcelable.Class
@SafeParcelable.Reserved
public final class zzj extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzj> CREATOR = new zzk();

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @SafeParcelable.Field
    final DriveId f22070o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @SafeParcelable.Field
    final int f22071p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    @SafeParcelable.Field
    private final com.google.android.gms.drive.events.zze f22072q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    @SafeParcelable.Field
    private final com.google.android.gms.drive.events.zzx f22073r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    @SafeParcelable.Field
    private final com.google.android.gms.drive.events.zzt f22074s;

    @SafeParcelable.Constructor
    zzj(@SafeParcelable.Param DriveId driveId, @SafeParcelable.Param int i10, @SafeParcelable.Param com.google.android.gms.drive.events.zze zzeVar, @SafeParcelable.Param com.google.android.gms.drive.events.zzx zzxVar, @SafeParcelable.Param com.google.android.gms.drive.events.zzt zztVar) {
        this.f22070o = driveId;
        this.f22071p = i10;
        this.f22072q = zzeVar;
        this.f22073r = zzxVar;
        this.f22074s = zztVar;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        int iA = SafeParcelWriter.a(parcel);
        SafeParcelWriter.s(parcel, 2, this.f22070o, i10, false);
        SafeParcelWriter.l(parcel, 3, this.f22071p);
        SafeParcelWriter.s(parcel, 4, this.f22072q, i10, false);
        SafeParcelWriter.s(parcel, 5, this.f22073r, i10, false);
        SafeParcelWriter.s(parcel, 6, this.f22074s, i10, false);
        SafeParcelWriter.b(parcel, iA);
    }

    public zzj(int i10, DriveId driveId) {
        this((DriveId) Preconditions.k(driveId), 1, null, null, null);
    }
}
