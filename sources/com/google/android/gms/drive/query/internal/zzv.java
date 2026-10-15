package com.google.android.gms.drive.query.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

/* JADX INFO: loaded from: classes.dex */
@SafeParcelable.Class
@SafeParcelable.Reserved
public final class zzv extends zza {
    public static final Parcelable.Creator<zzv> CREATOR = new zzw();

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @SafeParcelable.Field
    private final FilterHolder f7871o;

    @SafeParcelable.Constructor
    zzv(@SafeParcelable.Param FilterHolder filterHolder) {
        this.f7871o = filterHolder;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.drive.query.Filter
    public final <T> T r1(zzj<T> zzjVar) {
        return (T) zzjVar.a(this.f7871o.V3().r1(zzjVar));
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        int iA = SafeParcelWriter.a(parcel);
        SafeParcelWriter.s(parcel, 1, this.f7871o, i10, false);
        SafeParcelWriter.b(parcel, iA);
    }
}
