package com.google.android.gms.internal.firebase_auth;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

/* JADX INFO: compiled from: com.google.firebase:firebase-auth@@19.3.1 */
/* JADX INFO: loaded from: classes2.dex */
@SafeParcelable.Class
public final class zzfh extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzfh> CREATOR = new zzfg();

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @SafeParcelable.Field
    private final String f22578o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @SafeParcelable.Field
    private final String f22579p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    @SafeParcelable.Field
    private final String f22580q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    @SafeParcelable.Field
    private final long f22581r;

    @SafeParcelable.Constructor
    public zzfh(@SafeParcelable.Param String str, @SafeParcelable.Param String str2, @SafeParcelable.Param String str3, @SafeParcelable.Param long j10) {
        this.f22578o = str;
        this.f22579p = Preconditions.g(str2);
        this.f22580q = str3;
        this.f22581r = j10;
    }

    public final String V3() {
        return this.f22578o;
    }

    public final String W3() {
        return this.f22579p;
    }

    public final String X3() {
        return this.f22580q;
    }

    public final long Y3() {
        return this.f22581r;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        int iA = SafeParcelWriter.a(parcel);
        SafeParcelWriter.t(parcel, 1, this.f22578o, false);
        SafeParcelWriter.t(parcel, 2, this.f22579p, false);
        SafeParcelWriter.t(parcel, 3, this.f22580q, false);
        SafeParcelWriter.p(parcel, 4, this.f22581r);
        SafeParcelWriter.b(parcel, iA);
    }
}
