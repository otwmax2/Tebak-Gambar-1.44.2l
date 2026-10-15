package com.google.android.gms.internal.drive;

import android.os.IBinder;
import android.os.Parcel;
import android.os.ParcelFileDescriptor;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

/* JADX INFO: loaded from: classes2.dex */
@SafeParcelable.Class
@SafeParcelable.Reserved
public final class zzgf extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzgf> CREATOR = new zzgg();

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @SafeParcelable.Field
    private final ParcelFileDescriptor f21994o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @SafeParcelable.Field
    private final IBinder f21995p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    @SafeParcelable.Field
    private final String f21996q;

    @SafeParcelable.Constructor
    zzgf(@SafeParcelable.Param ParcelFileDescriptor parcelFileDescriptor, @SafeParcelable.Param IBinder iBinder, @SafeParcelable.Param String str) {
        this.f21994o = parcelFileDescriptor;
        this.f21995p = iBinder;
        this.f21996q = str;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        int iA = SafeParcelWriter.a(parcel);
        SafeParcelWriter.s(parcel, 2, this.f21994o, i10 | 1, false);
        SafeParcelWriter.k(parcel, 3, this.f21995p, false);
        SafeParcelWriter.t(parcel, 4, this.f21996q, false);
        SafeParcelWriter.b(parcel, iA);
    }
}
