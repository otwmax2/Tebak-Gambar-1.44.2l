package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.Arrays;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
@SafeParcelable.Class
public final class zzfji extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzfji> CREATOR = new zzfjj();

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @SafeParcelable.VersionField
    public final int f18310o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @SafeParcelable.Field
    public final byte[] f18311p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    @SafeParcelable.Field
    public final int f18312q;

    @SafeParcelable.Constructor
    zzfji(@SafeParcelable.Param int i10, @SafeParcelable.Param byte[] bArr, @SafeParcelable.Param int i11) {
        this.f18310o = i10;
        this.f18311p = bArr == null ? null : Arrays.copyOf(bArr, bArr.length);
        this.f18312q = i11;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        int iA = SafeParcelWriter.a(parcel);
        SafeParcelWriter.l(parcel, 1, this.f18310o);
        SafeParcelWriter.g(parcel, 2, this.f18311p, false);
        SafeParcelWriter.l(parcel, 3, this.f18312q);
        SafeParcelWriter.b(parcel, iA);
    }

    public zzfji(byte[] bArr, int i10) {
        this(1, null, 1);
    }
}
