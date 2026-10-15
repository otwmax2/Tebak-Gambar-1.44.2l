package com.google.android.gms.internal.firebase_auth;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import g5.o0;
import g5.z;
import j5.n;
import java.util.List;

/* JADX INFO: compiled from: com.google.firebase:firebase-auth@@19.3.1 */
/* JADX INFO: loaded from: classes2.dex */
@SafeParcelable.Class
public final class zzej extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzej> CREATOR = new zzel();

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @SafeParcelable.Field
    private String f22542o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @SafeParcelable.Field
    private List<zzfh> f22543p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    @SafeParcelable.Field
    private o0 f22544q;

    @SafeParcelable.Constructor
    public zzej(@SafeParcelable.Param String str, @SafeParcelable.Param List<zzfh> list, @SafeParcelable.Param o0 o0Var) {
        this.f22542o = str;
        this.f22543p = list;
        this.f22544q = o0Var;
    }

    public final String V3() {
        return this.f22542o;
    }

    public final o0 W3() {
        return this.f22544q;
    }

    public final List<z> X3() {
        return n.b(this.f22543p);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        int iA = SafeParcelWriter.a(parcel);
        SafeParcelWriter.t(parcel, 1, this.f22542o, false);
        SafeParcelWriter.x(parcel, 2, this.f22543p, false);
        SafeParcelWriter.s(parcel, 3, this.f22544q, i10, false);
        SafeParcelWriter.b(parcel, iA);
    }
}
