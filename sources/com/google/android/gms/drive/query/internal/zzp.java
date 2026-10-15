package com.google.android.gms.drive.query.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.drive.metadata.internal.MetadataBundle;
import java.util.Collection;

/* JADX INFO: loaded from: classes.dex */
@SafeParcelable.Class
@SafeParcelable.Reserved
public final class zzp<T> extends zza {
    public static final zzq CREATOR = new zzq();

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @SafeParcelable.Field
    private final MetadataBundle f7867o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final com.google.android.gms.drive.metadata.zzb<T> f7868p;

    @SafeParcelable.Constructor
    zzp(@SafeParcelable.Param MetadataBundle metadataBundle) {
        this.f7867o = metadataBundle;
        this.f7868p = (com.google.android.gms.drive.metadata.zzb) a.a(metadataBundle);
    }

    @Override // com.google.android.gms.drive.query.Filter
    public final <F> F r1(zzj<F> zzjVar) {
        com.google.android.gms.drive.metadata.zzb<T> zzbVar = this.f7868p;
        return zzjVar.f(zzbVar, ((Collection) this.f7867o.V3(zzbVar)).iterator().next());
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        int iA = SafeParcelWriter.a(parcel);
        SafeParcelWriter.s(parcel, 1, this.f7867o, i10, false);
        SafeParcelWriter.b(parcel, iA);
    }
}
