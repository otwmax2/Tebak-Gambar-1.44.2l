package com.google.android.gms.internal.drive;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

/* JADX INFO: loaded from: classes2.dex */
@SafeParcelable.Class
@SafeParcelable.Reserved
public final class zzfv extends com.google.android.gms.drive.zzu {
    public static final Parcelable.Creator<zzfv> CREATOR = new zzfw();

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @SafeParcelable.Field
    final DataHolder f21987p;

    @SafeParcelable.Constructor
    public zzfv(@SafeParcelable.Param DataHolder dataHolder) {
        this.f21987p = dataHolder;
    }

    @Override // com.google.android.gms.drive.zzu
    protected final void V3(Parcel parcel, int i10) {
        int iA = SafeParcelWriter.a(parcel);
        SafeParcelWriter.s(parcel, 2, this.f21987p, i10, false);
        SafeParcelWriter.b(parcel, iA);
    }

    public final DataHolder W3() {
        return this.f21987p;
    }
}
