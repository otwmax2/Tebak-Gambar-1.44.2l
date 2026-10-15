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
public final class zzfr extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzfr> CREATOR = new zzfq();

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @SafeParcelable.Field
    private final String f22595o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @SafeParcelable.Field
    private final long f22596p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    @SafeParcelable.Field
    private final boolean f22597q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    @SafeParcelable.Field
    private final String f22598r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    @SafeParcelable.Field
    private final String f22599s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    @SafeParcelable.Field
    private final String f22600t;

    @SafeParcelable.Constructor
    public zzfr(@SafeParcelable.Param String str, @SafeParcelable.Param long j10, @SafeParcelable.Param boolean z10, @SafeParcelable.Param String str2, @SafeParcelable.Param String str3, @SafeParcelable.Param String str4) {
        this.f22595o = Preconditions.g(str);
        this.f22596p = j10;
        this.f22597q = z10;
        this.f22598r = str2;
        this.f22599s = str3;
        this.f22600t = str4;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        int iA = SafeParcelWriter.a(parcel);
        SafeParcelWriter.t(parcel, 1, this.f22595o, false);
        SafeParcelWriter.p(parcel, 2, this.f22596p);
        SafeParcelWriter.c(parcel, 3, this.f22597q);
        SafeParcelWriter.t(parcel, 4, this.f22598r, false);
        SafeParcelWriter.t(parcel, 5, this.f22599s, false);
        SafeParcelWriter.t(parcel, 6, this.f22600t, false);
        SafeParcelWriter.b(parcel, iA);
    }
}
