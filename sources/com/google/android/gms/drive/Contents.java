package com.google.android.gms.drive;

import android.os.Parcel;
import android.os.ParcelFileDescriptor;
import android.os.Parcelable;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

/* JADX INFO: loaded from: classes.dex */
@KeepForSdk
@SafeParcelable.Class
@SafeParcelable.Reserved
public class Contents extends AbstractSafeParcelable {
    public static final Parcelable.Creator<Contents> CREATOR = new zzc();

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @SafeParcelable.Field
    private final ParcelFileDescriptor f7691o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @SafeParcelable.Field
    final int f7692p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    @SafeParcelable.Field
    private final int f7693q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    @SafeParcelable.Field
    private final DriveId f7694r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    @SafeParcelable.Field
    private final boolean f7695s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    @SafeParcelable.Field
    private final String f7696t;

    @SafeParcelable.Constructor
    public Contents(@SafeParcelable.Param ParcelFileDescriptor parcelFileDescriptor, @SafeParcelable.Param int i10, @SafeParcelable.Param int i11, @SafeParcelable.Param DriveId driveId, @SafeParcelable.Param boolean z10, @SafeParcelable.Param String str) {
        this.f7691o = parcelFileDescriptor;
        this.f7692p = i10;
        this.f7693q = i11;
        this.f7694r = driveId;
        this.f7695s = z10;
        this.f7696t = str;
    }

    public final DriveId V3() {
        return this.f7694r;
    }

    @KeepForSdk
    public ParcelFileDescriptor W3() {
        return this.f7691o;
    }

    public final int X3() {
        return this.f7692p;
    }

    public final boolean Y3() {
        return this.f7695s;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        int iA = SafeParcelWriter.a(parcel);
        SafeParcelWriter.s(parcel, 2, this.f7691o, i10, false);
        SafeParcelWriter.l(parcel, 3, this.f7692p);
        SafeParcelWriter.l(parcel, 4, this.f7693q);
        SafeParcelWriter.s(parcel, 5, this.f7694r, i10, false);
        SafeParcelWriter.c(parcel, 7, this.f7695s);
        SafeParcelWriter.t(parcel, 8, this.f7696t, false);
        SafeParcelWriter.b(parcel, iA);
    }
}
