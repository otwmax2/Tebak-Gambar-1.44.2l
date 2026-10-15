package com.google.android.gms.internal.firebase_auth;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.List;

/* JADX INFO: compiled from: com.google.firebase:firebase-auth@@19.3.1 */
/* JADX INFO: loaded from: classes2.dex */
@SafeParcelable.Class
@SafeParcelable.Reserved
public final class zzem extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzem> CREATOR = new zzep();

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @SafeParcelable.Field
    private String f22545o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @SafeParcelable.Field
    private boolean f22546p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    @SafeParcelable.Field
    private String f22547q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    @SafeParcelable.Field
    private boolean f22548r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    @SafeParcelable.Field
    private zzfw f22549s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    @SafeParcelable.Field
    private List<String> f22550t;

    public zzem() {
        this.f22549s = zzfw.W3();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        int iA = SafeParcelWriter.a(parcel);
        SafeParcelWriter.t(parcel, 2, this.f22545o, false);
        SafeParcelWriter.c(parcel, 3, this.f22546p);
        SafeParcelWriter.t(parcel, 4, this.f22547q, false);
        SafeParcelWriter.c(parcel, 5, this.f22548r);
        SafeParcelWriter.s(parcel, 6, this.f22549s, i10, false);
        SafeParcelWriter.v(parcel, 7, this.f22550t, false);
        SafeParcelWriter.b(parcel, iA);
    }

    @SafeParcelable.Constructor
    public zzem(@SafeParcelable.Param String str, @SafeParcelable.Param boolean z10, @SafeParcelable.Param String str2, @SafeParcelable.Param boolean z11, @SafeParcelable.Param zzfw zzfwVar, @SafeParcelable.Param List<String> list) {
        this.f22545o = str;
        this.f22546p = z10;
        this.f22547q = str2;
        this.f22548r = z11;
        this.f22549s = zzfwVar == null ? zzfw.W3() : zzfw.V3(zzfwVar);
        this.f22550t = list;
    }
}
