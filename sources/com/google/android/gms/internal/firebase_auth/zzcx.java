package com.google.android.gms.internal.firebase_auth;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

/* JADX INFO: compiled from: com.google.firebase:firebase-auth@@19.3.1 */
/* JADX INFO: loaded from: classes2.dex */
@SafeParcelable.Class
public final class zzcx extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzcx> CREATOR = new zzda();

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @SafeParcelable.Field
    private final String f22493o;

    @SafeParcelable.Constructor
    public zzcx(@SafeParcelable.Param String str) {
        this.f22493o = str;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        int iA = SafeParcelWriter.a(parcel);
        SafeParcelWriter.t(parcel, 1, this.f22493o, false);
        SafeParcelWriter.b(parcel, iA);
    }
}
