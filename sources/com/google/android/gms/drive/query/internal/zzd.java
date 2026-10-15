package com.google.android.gms.drive.query.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.drive.metadata.MetadataField;
import com.google.android.gms.drive.metadata.internal.MetadataBundle;

/* JADX INFO: loaded from: classes.dex */
@SafeParcelable.Class
@SafeParcelable.Reserved
public final class zzd extends zza {
    public static final Parcelable.Creator<zzd> CREATOR = new zze();

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @SafeParcelable.Field
    private final MetadataBundle f7859o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final MetadataField<?> f7860p;

    @SafeParcelable.Constructor
    zzd(@SafeParcelable.Param MetadataBundle metadataBundle) {
        this.f7859o = metadataBundle;
        this.f7860p = a.a(metadataBundle);
    }

    @Override // com.google.android.gms.drive.query.Filter
    public final <T> T r1(zzj<T> zzjVar) {
        return zzjVar.b(this.f7860p);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        int iA = SafeParcelWriter.a(parcel);
        SafeParcelWriter.s(parcel, 1, this.f7859o, i10, false);
        SafeParcelWriter.b(parcel, iA);
    }
}
