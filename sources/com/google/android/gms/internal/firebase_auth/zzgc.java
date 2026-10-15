package com.google.android.gms.internal.firebase_auth;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

/* JADX INFO: compiled from: com.google.firebase:firebase-auth@@19.3.1 */
/* JADX INFO: loaded from: classes2.dex */
@SafeParcelable.Class
@SafeParcelable.Reserved
public final class zzgc extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzgc> CREATOR = new zzgf();

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @SafeParcelable.Field
    private String f22618o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @SafeParcelable.Field
    private String f22619p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    @SafeParcelable.Field
    private long f22620q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    @SafeParcelable.Field
    private boolean f22621r;

    public zzgc() {
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        int iA = SafeParcelWriter.a(parcel);
        SafeParcelWriter.t(parcel, 2, this.f22618o, false);
        SafeParcelWriter.t(parcel, 3, this.f22619p, false);
        SafeParcelWriter.p(parcel, 4, this.f22620q);
        SafeParcelWriter.c(parcel, 5, this.f22621r);
        SafeParcelWriter.b(parcel, iA);
    }

    @SafeParcelable.Constructor
    zzgc(@SafeParcelable.Param String str, @SafeParcelable.Param String str2, @SafeParcelable.Param long j10, @SafeParcelable.Param boolean z10) {
        this.f22618o = str;
        this.f22619p = str2;
        this.f22620q = j10;
        this.f22621r = z10;
    }
}
