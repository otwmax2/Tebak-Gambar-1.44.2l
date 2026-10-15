package com.google.android.gms.internal.firebase_auth;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

/* JADX INFO: compiled from: com.google.firebase:firebase-auth@@19.3.1 */
/* JADX INFO: loaded from: classes2.dex */
@SafeParcelable.Class
public final class zzdt extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzdt> CREATOR = new zzdw();

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @SafeParcelable.Field
    private final String f22512o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @SafeParcelable.Field
    private final String f22513p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    @SafeParcelable.Field
    private final String f22514q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    @SafeParcelable.Field
    private final long f22515r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    @SafeParcelable.Field
    private final boolean f22516s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    @SafeParcelable.Field
    private final boolean f22517t;

    @SafeParcelable.Constructor
    public zzdt(@SafeParcelable.Param String str, @SafeParcelable.Param String str2, @SafeParcelable.Param String str3, @SafeParcelable.Param long j10, @SafeParcelable.Param boolean z10, @SafeParcelable.Param boolean z11) {
        this.f22512o = str;
        this.f22513p = str2;
        this.f22514q = str3;
        this.f22515r = j10;
        this.f22516s = z10;
        this.f22517t = z11;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        int iA = SafeParcelWriter.a(parcel);
        SafeParcelWriter.t(parcel, 1, this.f22512o, false);
        SafeParcelWriter.t(parcel, 2, this.f22513p, false);
        SafeParcelWriter.t(parcel, 3, this.f22514q, false);
        SafeParcelWriter.p(parcel, 4, this.f22515r);
        SafeParcelWriter.c(parcel, 5, this.f22516s);
        SafeParcelWriter.c(parcel, 6, this.f22517t);
        SafeParcelWriter.b(parcel, iA);
    }
}
