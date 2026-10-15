package com.google.android.gms.internal.drive;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.drive.metadata.internal.MetadataBundle;

/* JADX INFO: loaded from: classes2.dex */
@SafeParcelable.Class
@SafeParcelable.Reserved
public final class zzfy extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzfy> CREATOR = new zzfz();

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @SafeParcelable.Field
    final MetadataBundle f21989o;

    @SafeParcelable.Constructor
    public zzfy(@SafeParcelable.Param MetadataBundle metadataBundle) {
        this.f21989o = metadataBundle;
    }

    public final MetadataBundle V3() {
        return this.f21989o;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        int iA = SafeParcelWriter.a(parcel);
        SafeParcelWriter.s(parcel, 2, this.f21989o, i10, false);
        SafeParcelWriter.b(parcel, iA);
    }
}
