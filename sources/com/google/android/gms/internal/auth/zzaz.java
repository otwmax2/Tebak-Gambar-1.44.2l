package com.google.android.gms.internal.auth;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

/* JADX INFO: compiled from: com.google.android.gms:play-services-auth-base@@17.1.4 */
/* JADX INFO: loaded from: classes2.dex */
@SafeParcelable.Class
public final class zzaz extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzaz> CREATOR = new zzba();

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @SafeParcelable.VersionField
    final int f21340o = 1;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @SafeParcelable.Field
    public final String f21341p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    @SafeParcelable.Field
    public final byte[] f21342q;

    @SafeParcelable.Constructor
    zzaz(@SafeParcelable.Param int i10, @SafeParcelable.Param String str, @SafeParcelable.Param byte[] bArr) {
        this.f21341p = (String) Preconditions.k(str);
        this.f21342q = (byte[]) Preconditions.k(bArr);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        int iA = SafeParcelWriter.a(parcel);
        SafeParcelWriter.l(parcel, 1, this.f21340o);
        SafeParcelWriter.t(parcel, 2, this.f21341p, false);
        SafeParcelWriter.g(parcel, 3, this.f21342q, false);
        SafeParcelWriter.b(parcel, iA);
    }
}
