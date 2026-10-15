package com.google.android.gms.signin.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.internal.zav;

/* JADX INFO: compiled from: com.google.android.gms:play-services-base@@18.0.1 */
/* JADX INFO: loaded from: classes2.dex */
@SafeParcelable.Class
public final class zak extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zak> CREATOR = new zal();

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @SafeParcelable.VersionField
    final int f24914o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @SafeParcelable.Field
    private final ConnectionResult f24915p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    @SafeParcelable.Field
    private final zav f24916q;

    @SafeParcelable.Constructor
    zak(@SafeParcelable.Param int i10, @SafeParcelable.Param ConnectionResult connectionResult, @SafeParcelable.Param zav zavVar) {
        this.f24914o = i10;
        this.f24915p = connectionResult;
        this.f24916q = zavVar;
    }

    public final ConnectionResult V3() {
        return this.f24915p;
    }

    public final zav W3() {
        return this.f24916q;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        int iA = SafeParcelWriter.a(parcel);
        SafeParcelWriter.l(parcel, 1, this.f24914o);
        SafeParcelWriter.s(parcel, 2, this.f24915p, i10, false);
        SafeParcelWriter.s(parcel, 3, this.f24916q, i10, false);
        SafeParcelWriter.b(parcel, iA);
    }
}
