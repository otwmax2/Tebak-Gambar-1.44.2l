package com.google.android.gms.drive.events;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

/* JADX INFO: loaded from: classes.dex */
@SafeParcelable.Class
@SafeParcelable.Reserved
public final class zzo extends com.google.android.gms.drive.zzu implements DriveEvent {
    public static final Parcelable.Creator<zzo> CREATOR = new zzp();

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @SafeParcelable.Field
    private final DataHolder f7785p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    @SafeParcelable.Field
    private final boolean f7786q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    @SafeParcelable.Field
    private final int f7787r;

    @SafeParcelable.Constructor
    public zzo(@SafeParcelable.Param DataHolder dataHolder, @SafeParcelable.Param boolean z10, @SafeParcelable.Param int i10) {
        this.f7785p = dataHolder;
        this.f7786q = z10;
        this.f7787r = i10;
    }

    public final int C3() {
        return this.f7787r;
    }

    @Override // com.google.android.gms.drive.zzu
    public final void V3(Parcel parcel, int i10) {
        int iA = SafeParcelWriter.a(parcel);
        SafeParcelWriter.s(parcel, 2, this.f7785p, i10, false);
        SafeParcelWriter.c(parcel, 3, this.f7786q);
        SafeParcelWriter.l(parcel, 4, this.f7787r);
        SafeParcelWriter.b(parcel, iA);
    }

    public final boolean W3() {
        return this.f7786q;
    }

    public final DataHolder X3() {
        return this.f7785p;
    }

    @Override // com.google.android.gms.drive.events.DriveEvent
    public final int o() {
        return 3;
    }
}
