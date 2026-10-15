package com.google.android.gms.internal.firebase_auth;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import g5.o0;
import java.util.List;

/* JADX INFO: compiled from: com.google.firebase:firebase-auth@@19.3.1 */
/* JADX INFO: loaded from: classes2.dex */
@SafeParcelable.Class
@SafeParcelable.Reserved
public final class zzew extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzew> CREATOR = new zzez();

    @SafeParcelable.Field
    private List<zzfh> A;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @SafeParcelable.Field
    private String f22557o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @SafeParcelable.Field
    private String f22558p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    @SafeParcelable.Field
    private boolean f22559q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    @SafeParcelable.Field
    private String f22560r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    @SafeParcelable.Field
    private String f22561s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    @SafeParcelable.Field
    private zzfl f22562t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    @SafeParcelable.Field
    private String f22563u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    @SafeParcelable.Field
    private String f22564v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    @SafeParcelable.Field
    private long f22565w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    @SafeParcelable.Field
    private long f22566x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    @SafeParcelable.Field
    private boolean f22567y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    @SafeParcelable.Field
    private o0 f22568z;

    public zzew() {
        this.f22562t = new zzfl();
    }

    public final String V3() {
        return this.f22558p;
    }

    public final boolean W3() {
        return this.f22559q;
    }

    public final String X3() {
        return this.f22557o;
    }

    public final String Y3() {
        return this.f22560r;
    }

    public final Uri Z3() {
        if (TextUtils.isEmpty(this.f22561s)) {
            return null;
        }
        return Uri.parse(this.f22561s);
    }

    public final long a4() {
        return this.f22565w;
    }

    public final long b4() {
        return this.f22566x;
    }

    public final String c() {
        return this.f22564v;
    }

    public final boolean c4() {
        return this.f22567y;
    }

    public final List<zzfj> d4() {
        return this.f22562t.W3();
    }

    public final o0 e4() {
        return this.f22568z;
    }

    public final List<zzfh> f4() {
        return this.A;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        int iA = SafeParcelWriter.a(parcel);
        SafeParcelWriter.t(parcel, 2, this.f22557o, false);
        SafeParcelWriter.t(parcel, 3, this.f22558p, false);
        SafeParcelWriter.c(parcel, 4, this.f22559q);
        SafeParcelWriter.t(parcel, 5, this.f22560r, false);
        SafeParcelWriter.t(parcel, 6, this.f22561s, false);
        SafeParcelWriter.s(parcel, 7, this.f22562t, i10, false);
        SafeParcelWriter.t(parcel, 8, this.f22563u, false);
        SafeParcelWriter.t(parcel, 9, this.f22564v, false);
        SafeParcelWriter.p(parcel, 10, this.f22565w);
        SafeParcelWriter.p(parcel, 11, this.f22566x);
        SafeParcelWriter.c(parcel, 12, this.f22567y);
        SafeParcelWriter.s(parcel, 13, this.f22568z, i10, false);
        SafeParcelWriter.x(parcel, 14, this.A, false);
        SafeParcelWriter.b(parcel, iA);
    }

    @SafeParcelable.Constructor
    public zzew(@SafeParcelable.Param String str, @SafeParcelable.Param String str2, @SafeParcelable.Param boolean z10, @SafeParcelable.Param String str3, @SafeParcelable.Param String str4, @SafeParcelable.Param zzfl zzflVar, @SafeParcelable.Param String str5, @SafeParcelable.Param String str6, @SafeParcelable.Param long j10, @SafeParcelable.Param long j11, @SafeParcelable.Param boolean z11, @SafeParcelable.Param o0 o0Var, @SafeParcelable.Param List<zzfh> list) {
        zzfl zzflVarV3;
        this.f22557o = str;
        this.f22558p = str2;
        this.f22559q = z10;
        this.f22560r = str3;
        this.f22561s = str4;
        if (zzflVar == null) {
            zzflVarV3 = new zzfl();
        } else {
            zzflVarV3 = zzfl.V3(zzflVar);
        }
        this.f22562t = zzflVarV3;
        this.f22563u = str5;
        this.f22564v = str6;
        this.f22565w = j10;
        this.f22566x = j11;
        this.f22567y = z11;
        this.f22568z = o0Var;
        this.A = list == null ? zzbg.m() : list;
    }
}
