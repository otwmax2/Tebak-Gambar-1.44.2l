package com.google.android.gms.internal.drive;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

/* JADX INFO: loaded from: classes2.dex */
@SafeParcelable.Class
@SafeParcelable.Reserved
public final class zzec extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzec> CREATOR = new zzed();

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @SafeParcelable.Field
    final IBinder f21942o;

    @SafeParcelable.Constructor
    zzec(@SafeParcelable.Param IBinder iBinder) {
        this.f21942o = iBinder;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        int iA = SafeParcelWriter.a(parcel);
        SafeParcelWriter.k(parcel, 2, this.f21942o, false);
        SafeParcelWriter.b(parcel, iA);
    }
}
