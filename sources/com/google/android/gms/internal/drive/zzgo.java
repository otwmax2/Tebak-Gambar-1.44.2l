package com.google.android.gms.internal.drive;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.drive.TransferPreferences;

/* JADX INFO: loaded from: classes2.dex */
@SafeParcelable.Class
@SafeParcelable.Reserved
public final class zzgo extends AbstractSafeParcelable implements TransferPreferences {
    public static final Parcelable.Creator<zzgo> CREATOR = new zzgp();

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @SafeParcelable.Field
    private final int f22007o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @SafeParcelable.Field
    private final int f22008p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    @SafeParcelable.Field
    private final boolean f22009q;

    @SafeParcelable.Constructor
    zzgo(@SafeParcelable.Param int i10, @SafeParcelable.Param int i11, @SafeParcelable.Param boolean z10) {
        this.f22007o = i10;
        this.f22008p = i11;
        this.f22009q = z10;
    }

    @Override // com.google.android.gms.drive.TransferPreferences
    public final boolean H() {
        return this.f22009q;
    }

    @Override // com.google.android.gms.drive.TransferPreferences
    public final int S() {
        return this.f22008p;
    }

    @Override // com.google.android.gms.drive.TransferPreferences
    public final int w1() {
        return this.f22007o;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        int iA = SafeParcelWriter.a(parcel);
        SafeParcelWriter.l(parcel, 2, this.f22007o);
        SafeParcelWriter.l(parcel, 3, this.f22008p);
        SafeParcelWriter.c(parcel, 4, this.f22009q);
        SafeParcelWriter.b(parcel, iA);
    }
}
