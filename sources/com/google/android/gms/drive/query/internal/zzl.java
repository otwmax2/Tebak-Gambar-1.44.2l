package com.google.android.gms.drive.query.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

/* JADX INFO: loaded from: classes.dex */
@SafeParcelable.Class
@SafeParcelable.Reserved
public final class zzl extends zza {
    public static final Parcelable.Creator<zzl> CREATOR = new zzm();

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @SafeParcelable.Field
    private final String f7864o;

    @SafeParcelable.Constructor
    public zzl(@SafeParcelable.Param String str) {
        this.f7864o = str;
    }

    @Override // com.google.android.gms.drive.query.Filter
    public final <F> F r1(zzj<F> zzjVar) {
        return zzjVar.g(this.f7864o);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        int iA = SafeParcelWriter.a(parcel);
        SafeParcelWriter.t(parcel, 1, this.f7864o, false);
        SafeParcelWriter.b(parcel, iA);
    }
}
