package com.google.android.gms.internal.drive;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.drive.DriveId;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
@SafeParcelable.Class
@SafeParcelable.Reserved
public final class zzff extends com.google.android.gms.drive.zzu {
    public static final Parcelable.Creator<zzff> CREATOR = new zzfg();

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @SafeParcelable.Field
    private final DataHolder f21964p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    @SafeParcelable.Field
    private final List<DriveId> f21965q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    @SafeParcelable.Field
    private final com.google.android.gms.drive.zza f21966r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    @SafeParcelable.Field
    private final boolean f21967s;

    @SafeParcelable.Constructor
    public zzff(@SafeParcelable.Param DataHolder dataHolder, @SafeParcelable.Param List<DriveId> list, @SafeParcelable.Param com.google.android.gms.drive.zza zzaVar, @SafeParcelable.Param boolean z10) {
        this.f21964p = dataHolder;
        this.f21965q = list;
        this.f21966r = zzaVar;
        this.f21967s = z10;
    }

    @Override // com.google.android.gms.drive.zzu
    protected final void V3(Parcel parcel, int i10) {
        int i11 = i10 | 1;
        int iA = SafeParcelWriter.a(parcel);
        SafeParcelWriter.s(parcel, 2, this.f21964p, i11, false);
        SafeParcelWriter.x(parcel, 3, this.f21965q, false);
        SafeParcelWriter.s(parcel, 4, this.f21966r, i11, false);
        SafeParcelWriter.c(parcel, 5, this.f21967s);
        SafeParcelWriter.b(parcel, iA);
    }
}
