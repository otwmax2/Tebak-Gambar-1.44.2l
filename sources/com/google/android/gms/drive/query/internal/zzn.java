package com.google.android.gms.drive.query.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.drive.metadata.MetadataField;
import com.google.android.gms.drive.metadata.internal.MetadataBundle;

/* JADX INFO: loaded from: classes.dex */
@SafeParcelable.Class
@SafeParcelable.Reserved
public final class zzn<T> extends zza {
    public static final zzo CREATOR = new zzo();

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @SafeParcelable.Field
    private final MetadataBundle f7865o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final MetadataField<T> f7866p;

    @SafeParcelable.Constructor
    zzn(@SafeParcelable.Param MetadataBundle metadataBundle) {
        this.f7865o = metadataBundle;
        this.f7866p = (MetadataField<T>) a.a(metadataBundle);
    }

    @Override // com.google.android.gms.drive.query.Filter
    public final <F> F r1(zzj<F> zzjVar) {
        MetadataField<T> metadataField = this.f7866p;
        return zzjVar.e(metadataField, this.f7865o.V3(metadataField));
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        int iA = SafeParcelWriter.a(parcel);
        SafeParcelWriter.s(parcel, 1, this.f7865o, i10, false);
        SafeParcelWriter.b(parcel, iA);
    }
}
