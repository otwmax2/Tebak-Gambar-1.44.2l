package com.google.android.gms.measurement.internal;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.List;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-impl@@20.1.2 */
/* JADX INFO: loaded from: classes2.dex */
@SafeParcelable.Class
@SafeParcelable.Reserved
public final class zzp extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzp> CREATOR = new zzq();

    @SafeParcelable.Field
    public final long A;

    @SafeParcelable.Field
    public final int B;

    @SafeParcelable.Field
    public final boolean C;

    @SafeParcelable.Field
    public final boolean D;

    @SafeParcelable.Field
    public final String E;

    @SafeParcelable.Field
    public final Boolean F;

    @SafeParcelable.Field
    public final long G;

    @SafeParcelable.Field
    public final List H;

    @SafeParcelable.Field
    public final String I;

    @SafeParcelable.Field
    public final String J;

    @SafeParcelable.Field
    public final String K;

    @SafeParcelable.Field
    public final String L;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @SafeParcelable.Field
    public final String f24879o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @SafeParcelable.Field
    public final String f24880p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    @SafeParcelable.Field
    public final String f24881q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    @SafeParcelable.Field
    public final String f24882r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    @SafeParcelable.Field
    public final long f24883s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    @SafeParcelable.Field
    public final long f24884t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    @SafeParcelable.Field
    public final String f24885u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    @SafeParcelable.Field
    public final boolean f24886v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    @SafeParcelable.Field
    public final boolean f24887w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    @SafeParcelable.Field
    public final long f24888x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    @SafeParcelable.Field
    public final String f24889y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    @SafeParcelable.Field
    public final long f24890z;

    zzp(String str, String str2, String str3, long j10, String str4, long j11, long j12, String str5, boolean z10, boolean z11, String str6, long j13, long j14, int i10, boolean z12, boolean z13, String str7, Boolean bool, long j15, List list, String str8, String str9, String str10, String str11) {
        Preconditions.g(str);
        this.f24879o = str;
        this.f24880p = true != TextUtils.isEmpty(str2) ? str2 : null;
        this.f24881q = str3;
        this.f24888x = j10;
        this.f24882r = str4;
        this.f24883s = j11;
        this.f24884t = j12;
        this.f24885u = str5;
        this.f24886v = z10;
        this.f24887w = z11;
        this.f24889y = str6;
        this.f24890z = j13;
        this.A = j14;
        this.B = i10;
        this.C = z12;
        this.D = z13;
        this.E = str7;
        this.F = bool;
        this.G = j15;
        this.H = list;
        this.I = null;
        this.J = str9;
        this.K = str10;
        this.L = str11;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        int iA = SafeParcelWriter.a(parcel);
        SafeParcelWriter.t(parcel, 2, this.f24879o, false);
        SafeParcelWriter.t(parcel, 3, this.f24880p, false);
        SafeParcelWriter.t(parcel, 4, this.f24881q, false);
        SafeParcelWriter.t(parcel, 5, this.f24882r, false);
        SafeParcelWriter.p(parcel, 6, this.f24883s);
        SafeParcelWriter.p(parcel, 7, this.f24884t);
        SafeParcelWriter.t(parcel, 8, this.f24885u, false);
        SafeParcelWriter.c(parcel, 9, this.f24886v);
        SafeParcelWriter.c(parcel, 10, this.f24887w);
        SafeParcelWriter.p(parcel, 11, this.f24888x);
        SafeParcelWriter.t(parcel, 12, this.f24889y, false);
        SafeParcelWriter.p(parcel, 13, this.f24890z);
        SafeParcelWriter.p(parcel, 14, this.A);
        SafeParcelWriter.l(parcel, 15, this.B);
        SafeParcelWriter.c(parcel, 16, this.C);
        SafeParcelWriter.c(parcel, 18, this.D);
        SafeParcelWriter.t(parcel, 19, this.E, false);
        SafeParcelWriter.e(parcel, 21, this.F, false);
        SafeParcelWriter.p(parcel, 22, this.G);
        SafeParcelWriter.v(parcel, 23, this.H, false);
        SafeParcelWriter.t(parcel, 24, this.I, false);
        SafeParcelWriter.t(parcel, 25, this.J, false);
        SafeParcelWriter.t(parcel, 26, this.K, false);
        SafeParcelWriter.t(parcel, 27, this.L, false);
        SafeParcelWriter.b(parcel, iA);
    }

    @SafeParcelable.Constructor
    zzp(@SafeParcelable.Param String str, @SafeParcelable.Param String str2, @SafeParcelable.Param String str3, @SafeParcelable.Param String str4, @SafeParcelable.Param long j10, @SafeParcelable.Param long j11, @SafeParcelable.Param String str5, @SafeParcelable.Param boolean z10, @SafeParcelable.Param boolean z11, @SafeParcelable.Param long j12, @SafeParcelable.Param String str6, @SafeParcelable.Param long j13, @SafeParcelable.Param long j14, @SafeParcelable.Param int i10, @SafeParcelable.Param boolean z12, @SafeParcelable.Param boolean z13, @SafeParcelable.Param String str7, @SafeParcelable.Param Boolean bool, @SafeParcelable.Param long j15, @SafeParcelable.Param List list, @SafeParcelable.Param String str8, @SafeParcelable.Param String str9, @SafeParcelable.Param String str10, @SafeParcelable.Param String str11) {
        this.f24879o = str;
        this.f24880p = str2;
        this.f24881q = str3;
        this.f24888x = j12;
        this.f24882r = str4;
        this.f24883s = j10;
        this.f24884t = j11;
        this.f24885u = str5;
        this.f24886v = z10;
        this.f24887w = z11;
        this.f24889y = str6;
        this.f24890z = j13;
        this.A = j14;
        this.B = i10;
        this.C = z12;
        this.D = z13;
        this.E = str7;
        this.F = bool;
        this.G = j15;
        this.H = list;
        this.I = str8;
        this.J = str9;
        this.K = str10;
        this.L = str11;
    }
}
