package com.google.android.gms.internal.firebase_auth;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import g5.d0;

/* JADX INFO: compiled from: com.google.firebase:firebase-auth@@19.3.1 */
/* JADX INFO: loaded from: classes2.dex */
@SafeParcelable.Class
public final class zzcv extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzcv> CREATOR = new zzcy();

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @SafeParcelable.Field
    private final String f22491o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @SafeParcelable.Field
    private final d0 f22492p;

    @SafeParcelable.Constructor
    public zzcv(@SafeParcelable.Param String str, @SafeParcelable.Param d0 d0Var) {
        this.f22491o = str;
        this.f22492p = d0Var;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        int iA = SafeParcelWriter.a(parcel);
        SafeParcelWriter.t(parcel, 1, this.f22491o, false);
        SafeParcelWriter.s(parcel, 2, this.f22492p, i10, false);
        SafeParcelWriter.b(parcel, iA);
    }
}
