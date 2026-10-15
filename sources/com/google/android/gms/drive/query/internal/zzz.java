package com.google.android.gms.drive.query.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

/* JADX INFO: loaded from: classes.dex */
@SafeParcelable.Class
@SafeParcelable.Reserved
public final class zzz extends zza {
    public static final Parcelable.Creator<zzz> CREATOR = new zzaa();

    @SafeParcelable.Constructor
    public zzz() {
    }

    @Override // com.google.android.gms.drive.query.Filter
    public final <F> F r1(zzj<F> zzjVar) {
        return zzjVar.o0();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        SafeParcelWriter.b(parcel, SafeParcelWriter.a(parcel));
    }
}
