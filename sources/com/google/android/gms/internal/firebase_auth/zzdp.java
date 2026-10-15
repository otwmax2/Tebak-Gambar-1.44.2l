package com.google.android.gms.internal.firebase_auth;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import g5.e;

/* JADX INFO: compiled from: com.google.firebase:firebase-auth@@19.3.1 */
/* JADX INFO: loaded from: classes2.dex */
@SafeParcelable.Class
public final class zzdp extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzdp> CREATOR = new zzds();

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @SafeParcelable.Field
    private final e f22509o;

    @SafeParcelable.Constructor
    public zzdp(@SafeParcelable.Param e eVar) {
        this.f22509o = eVar;
    }

    public final e V3() {
        return this.f22509o;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        int iA = SafeParcelWriter.a(parcel);
        SafeParcelWriter.s(parcel, 1, this.f22509o, i10, false);
        SafeParcelWriter.b(parcel, iA);
    }
}
