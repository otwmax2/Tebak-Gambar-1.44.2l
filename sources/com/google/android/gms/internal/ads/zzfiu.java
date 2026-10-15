package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
@SafeParcelable.Class
public final class zzfiu extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzfiu> CREATOR = new zzfiv();

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @SafeParcelable.VersionField
    public final int f18280o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @SafeParcelable.Field
    public final byte[] f18281p;

    @SafeParcelable.Constructor
    zzfiu(@SafeParcelable.Param int i10, @SafeParcelable.Param byte[] bArr) {
        this.f18280o = i10;
        this.f18281p = bArr;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        int iA = SafeParcelWriter.a(parcel);
        SafeParcelWriter.l(parcel, 1, this.f18280o);
        SafeParcelWriter.g(parcel, 2, this.f18281p, false);
        SafeParcelWriter.b(parcel, iA);
    }

    public zzfiu(byte[] bArr) {
        this(1, bArr);
    }
}
