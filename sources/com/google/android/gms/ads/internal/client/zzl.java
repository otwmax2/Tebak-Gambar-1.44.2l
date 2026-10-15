package com.google.android.gms.ads.internal.client;

import android.location.Location;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.internal.ads.zzbzb;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.0.0 */
/* JADX INFO: loaded from: classes.dex */
@SafeParcelable.Class
public final class zzl extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzl> CREATOR = new zzn();

    @SafeParcelable.Field
    public final Bundle A;

    @SafeParcelable.Field
    public final Bundle B;

    @SafeParcelable.Field
    public final List C;

    @SafeParcelable.Field
    public final String D;

    @SafeParcelable.Field
    public final String E;

    @SafeParcelable.Field
    @Deprecated
    public final boolean F;

    @SafeParcelable.Field
    public final zzc G;

    @SafeParcelable.Field
    public final int H;

    @SafeParcelable.Field
    public final String I;

    @SafeParcelable.Field
    public final List J;

    @SafeParcelable.Field
    public final int K;

    @SafeParcelable.Field
    public final String L;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @SafeParcelable.Field
    public final int f5906o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @SafeParcelable.Field
    @Deprecated
    public final long f5907p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    @SafeParcelable.Field
    public final Bundle f5908q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    @SafeParcelable.Field
    @Deprecated
    public final int f5909r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    @SafeParcelable.Field
    public final List f5910s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    @SafeParcelable.Field
    public final boolean f5911t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    @SafeParcelable.Field
    public final int f5912u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    @SafeParcelable.Field
    public final boolean f5913v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    @SafeParcelable.Field
    public final String f5914w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    @SafeParcelable.Field
    public final zzfh f5915x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    @SafeParcelable.Field
    public final Location f5916y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    @SafeParcelable.Field
    public final String f5917z;

    @SafeParcelable.Constructor
    public zzl(@SafeParcelable.Param int i10, @SafeParcelable.Param long j10, @SafeParcelable.Param Bundle bundle, @SafeParcelable.Param int i11, @SafeParcelable.Param List list, @SafeParcelable.Param boolean z10, @SafeParcelable.Param int i12, @SafeParcelable.Param boolean z11, @SafeParcelable.Param String str, @SafeParcelable.Param zzfh zzfhVar, @SafeParcelable.Param Location location, @SafeParcelable.Param String str2, @SafeParcelable.Param Bundle bundle2, @SafeParcelable.Param Bundle bundle3, @SafeParcelable.Param List list2, @SafeParcelable.Param String str3, @SafeParcelable.Param String str4, @SafeParcelable.Param boolean z12, @SafeParcelable.Param zzc zzcVar, @SafeParcelable.Param int i13, @SafeParcelable.Param String str5, @SafeParcelable.Param List list3, @SafeParcelable.Param int i14, @SafeParcelable.Param String str6) {
        this.f5906o = i10;
        this.f5907p = j10;
        this.f5908q = bundle == null ? new Bundle() : bundle;
        this.f5909r = i11;
        this.f5910s = list;
        this.f5911t = z10;
        this.f5912u = i12;
        this.f5913v = z11;
        this.f5914w = str;
        this.f5915x = zzfhVar;
        this.f5916y = location;
        this.f5917z = str2;
        this.A = bundle2 == null ? new Bundle() : bundle2;
        this.B = bundle3;
        this.C = list2;
        this.D = str3;
        this.E = str4;
        this.F = z12;
        this.G = zzcVar;
        this.H = i13;
        this.I = str5;
        this.J = list3 == null ? new ArrayList() : list3;
        this.K = i14;
        this.L = str6;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof zzl)) {
            return false;
        }
        zzl zzlVar = (zzl) obj;
        return this.f5906o == zzlVar.f5906o && this.f5907p == zzlVar.f5907p && zzbzb.a(this.f5908q, zzlVar.f5908q) && this.f5909r == zzlVar.f5909r && Objects.b(this.f5910s, zzlVar.f5910s) && this.f5911t == zzlVar.f5911t && this.f5912u == zzlVar.f5912u && this.f5913v == zzlVar.f5913v && Objects.b(this.f5914w, zzlVar.f5914w) && Objects.b(this.f5915x, zzlVar.f5915x) && Objects.b(this.f5916y, zzlVar.f5916y) && Objects.b(this.f5917z, zzlVar.f5917z) && zzbzb.a(this.A, zzlVar.A) && zzbzb.a(this.B, zzlVar.B) && Objects.b(this.C, zzlVar.C) && Objects.b(this.D, zzlVar.D) && Objects.b(this.E, zzlVar.E) && this.F == zzlVar.F && this.H == zzlVar.H && Objects.b(this.I, zzlVar.I) && Objects.b(this.J, zzlVar.J) && this.K == zzlVar.K && Objects.b(this.L, zzlVar.L);
    }

    public final int hashCode() {
        return Objects.c(Integer.valueOf(this.f5906o), Long.valueOf(this.f5907p), this.f5908q, Integer.valueOf(this.f5909r), this.f5910s, Boolean.valueOf(this.f5911t), Integer.valueOf(this.f5912u), Boolean.valueOf(this.f5913v), this.f5914w, this.f5915x, this.f5916y, this.f5917z, this.A, this.B, this.C, this.D, this.E, Boolean.valueOf(this.F), Integer.valueOf(this.H), this.I, this.J, Integer.valueOf(this.K), this.L);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        int iA = SafeParcelWriter.a(parcel);
        SafeParcelWriter.l(parcel, 1, this.f5906o);
        SafeParcelWriter.p(parcel, 2, this.f5907p);
        SafeParcelWriter.f(parcel, 3, this.f5908q, false);
        SafeParcelWriter.l(parcel, 4, this.f5909r);
        SafeParcelWriter.v(parcel, 5, this.f5910s, false);
        SafeParcelWriter.c(parcel, 6, this.f5911t);
        SafeParcelWriter.l(parcel, 7, this.f5912u);
        SafeParcelWriter.c(parcel, 8, this.f5913v);
        SafeParcelWriter.t(parcel, 9, this.f5914w, false);
        SafeParcelWriter.s(parcel, 10, this.f5915x, i10, false);
        SafeParcelWriter.s(parcel, 11, this.f5916y, i10, false);
        SafeParcelWriter.t(parcel, 12, this.f5917z, false);
        SafeParcelWriter.f(parcel, 13, this.A, false);
        SafeParcelWriter.f(parcel, 14, this.B, false);
        SafeParcelWriter.v(parcel, 15, this.C, false);
        SafeParcelWriter.t(parcel, 16, this.D, false);
        SafeParcelWriter.t(parcel, 17, this.E, false);
        SafeParcelWriter.c(parcel, 18, this.F);
        SafeParcelWriter.s(parcel, 19, this.G, i10, false);
        SafeParcelWriter.l(parcel, 20, this.H);
        SafeParcelWriter.t(parcel, 21, this.I, false);
        SafeParcelWriter.v(parcel, 22, this.J, false);
        SafeParcelWriter.l(parcel, 23, this.K);
        SafeParcelWriter.t(parcel, 24, this.L, false);
        SafeParcelWriter.b(parcel, iA);
    }
}
