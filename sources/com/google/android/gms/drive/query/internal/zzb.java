package com.google.android.gms.drive.query.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.drive.metadata.MetadataField;
import com.google.android.gms.drive.metadata.internal.MetadataBundle;

/* JADX INFO: loaded from: classes.dex */
@SafeParcelable.Class
@SafeParcelable.Reserved
public final class zzb<T> extends zza {
    public static final zzc CREATOR = new zzc();

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @SafeParcelable.Field
    private final zzx f7856o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @SafeParcelable.Field
    private final MetadataBundle f7857p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final MetadataField<T> f7858q;

    @SafeParcelable.Constructor
    zzb(@SafeParcelable.Param zzx zzxVar, @SafeParcelable.Param MetadataBundle metadataBundle) {
        this.f7856o = zzxVar;
        this.f7857p = metadataBundle;
        this.f7858q = (MetadataField<T>) a.a(metadataBundle);
    }

    @Override // com.google.android.gms.drive.query.Filter
    public final <F> F r1(zzj<F> zzjVar) {
        zzx zzxVar = this.f7856o;
        MetadataField<T> metadataField = this.f7858q;
        return zzjVar.c(zzxVar, metadataField, this.f7857p.V3(metadataField));
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        int iA = SafeParcelWriter.a(parcel);
        SafeParcelWriter.s(parcel, 1, this.f7856o, i10, false);
        SafeParcelWriter.s(parcel, 2, this.f7857p, i10, false);
        SafeParcelWriter.b(parcel, iA);
    }
}
