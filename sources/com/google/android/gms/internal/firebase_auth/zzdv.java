package com.google.android.gms.internal.firebase_auth;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import g5.g0;

/* JADX INFO: compiled from: com.google.firebase:firebase-auth@@19.3.1 */
/* JADX INFO: loaded from: classes2.dex */
@SafeParcelable.Class
public final class zzdv extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzdv> CREATOR = new zzdy();

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @SafeParcelable.Field
    private g0 f22518o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @SafeParcelable.Field
    private final String f22519p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    @SafeParcelable.Field
    private final String f22520q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    @SafeParcelable.Field
    private final long f22521r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    @SafeParcelable.Field
    private final boolean f22522s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    @SafeParcelable.Field
    private final boolean f22523t;

    @SafeParcelable.Constructor
    public zzdv(@SafeParcelable.Param g0 g0Var, @SafeParcelable.Param String str, @SafeParcelable.Param String str2, @SafeParcelable.Param long j10, @SafeParcelable.Param boolean z10, @SafeParcelable.Param boolean z11) {
        this.f22518o = g0Var;
        this.f22519p = str;
        this.f22520q = str2;
        this.f22521r = j10;
        this.f22522s = z10;
        this.f22523t = z11;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        int iA = SafeParcelWriter.a(parcel);
        SafeParcelWriter.s(parcel, 1, this.f22518o, i10, false);
        SafeParcelWriter.t(parcel, 2, this.f22519p, false);
        SafeParcelWriter.t(parcel, 3, this.f22520q, false);
        SafeParcelWriter.p(parcel, 4, this.f22521r);
        SafeParcelWriter.c(parcel, 5, this.f22522s);
        SafeParcelWriter.c(parcel, 6, this.f22523t);
        SafeParcelWriter.b(parcel, iA);
    }
}
