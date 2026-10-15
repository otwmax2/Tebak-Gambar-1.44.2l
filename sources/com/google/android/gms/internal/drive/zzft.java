package com.google.android.gms.internal.drive;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

/* JADX INFO: loaded from: classes2.dex */
@SafeParcelable.Class
@SafeParcelable.Reserved
public final class zzft extends com.google.android.gms.drive.zzu {
    public static final Parcelable.Creator<zzft> CREATOR = new zzfu();

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @SafeParcelable.Field
    final DataHolder f21985p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    @SafeParcelable.Field
    final boolean f21986q;

    @SafeParcelable.Constructor
    public zzft(@SafeParcelable.Param DataHolder dataHolder, @SafeParcelable.Param boolean z10) {
        this.f21985p = dataHolder;
        this.f21986q = z10;
    }

    @Override // com.google.android.gms.drive.zzu
    protected final void V3(Parcel parcel, int i10) {
        int iA = SafeParcelWriter.a(parcel);
        SafeParcelWriter.s(parcel, 2, this.f21985p, i10, false);
        SafeParcelWriter.c(parcel, 3, this.f21986q);
        SafeParcelWriter.b(parcel, iA);
    }

    public final DataHolder W3() {
        return this.f21985p;
    }
}
