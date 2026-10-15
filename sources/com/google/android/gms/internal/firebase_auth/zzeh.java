package com.google.android.gms.internal.firebase_auth;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import g5.o0;

/* JADX INFO: compiled from: com.google.firebase:firebase-auth@@19.3.1 */
/* JADX INFO: loaded from: classes2.dex */
@SafeParcelable.Class
public final class zzeh extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzeh> CREATOR = new zzek();

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @SafeParcelable.Field
    private final Status f22538o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @SafeParcelable.Field
    private final o0 f22539p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    @SafeParcelable.Field
    private final String f22540q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    @SafeParcelable.Field
    private final String f22541r;

    @SafeParcelable.Constructor
    public zzeh(@SafeParcelable.Param Status status, @SafeParcelable.Param o0 o0Var, @SafeParcelable.Param String str, @SafeParcelable.Param String str2) {
        this.f22538o = status;
        this.f22539p = o0Var;
        this.f22540q = str;
        this.f22541r = str2;
    }

    public final Status V3() {
        return this.f22538o;
    }

    public final o0 W3() {
        return this.f22539p;
    }

    public final String X3() {
        return this.f22540q;
    }

    public final String Y3() {
        return this.f22541r;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        int iA = SafeParcelWriter.a(parcel);
        SafeParcelWriter.s(parcel, 1, this.f22538o, i10, false);
        SafeParcelWriter.s(parcel, 2, this.f22539p, i10, false);
        SafeParcelWriter.t(parcel, 3, this.f22540q, false);
        SafeParcelWriter.t(parcel, 4, this.f22541r, false);
        SafeParcelWriter.b(parcel, iA);
    }
}
