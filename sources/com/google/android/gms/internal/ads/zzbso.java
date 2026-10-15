package com.google.android.gms.internal.ads;

import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import javax.annotation.ParametersAreNonnullByDefault;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes.dex */
@ParametersAreNonnullByDefault
@SafeParcelable.Class
public final class zzbso extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzbso> CREATOR = new zzbsp();

    @SafeParcelable.Field
    public final int A;

    @SafeParcelable.Field
    public final List B;

    @SafeParcelable.Field
    public final Bundle C;

    @SafeParcelable.Field
    public final boolean D;

    @SafeParcelable.Field
    public final int E;

    @SafeParcelable.Field
    public final int F;

    @SafeParcelable.Field
    public final float G;

    @SafeParcelable.Field
    public final String H;

    @SafeParcelable.Field
    public final long I;

    @SafeParcelable.Field
    public final String J;

    @SafeParcelable.Field
    public final List K;

    @SafeParcelable.Field
    public final String L;

    @SafeParcelable.Field
    public final zzbdl M;

    @SafeParcelable.Field
    public final List N;

    @SafeParcelable.Field
    public final long O;

    @SafeParcelable.Field
    public final String P;

    @SafeParcelable.Field
    public final float Q;

    @SafeParcelable.Field
    public final int R;

    @SafeParcelable.Field
    public final int S;

    @SafeParcelable.Field
    public final boolean T;

    @SafeParcelable.Field
    public final String U;

    @SafeParcelable.Field
    public final boolean V;

    @SafeParcelable.Field
    public final String W;

    @SafeParcelable.Field
    public final boolean X;

    @SafeParcelable.Field
    public final int Y;

    @SafeParcelable.Field
    public final Bundle Z;

    /* JADX INFO: renamed from: a0, reason: collision with root package name */
    @SafeParcelable.Field
    public final String f11215a0;

    /* JADX INFO: renamed from: b0, reason: collision with root package name */
    @SafeParcelable.Field
    public final com.google.android.gms.ads.internal.client.zzdu f11216b0;

    /* JADX INFO: renamed from: c0, reason: collision with root package name */
    @SafeParcelable.Field
    public final boolean f11217c0;

    /* JADX INFO: renamed from: d0, reason: collision with root package name */
    @SafeParcelable.Field
    public final Bundle f11218d0;

    /* JADX INFO: renamed from: e0, reason: collision with root package name */
    @SafeParcelable.Field
    public final String f11219e0;

    /* JADX INFO: renamed from: f0, reason: collision with root package name */
    @SafeParcelable.Field
    public final String f11220f0;

    /* JADX INFO: renamed from: g0, reason: collision with root package name */
    @SafeParcelable.Field
    public final String f11221g0;

    /* JADX INFO: renamed from: h0, reason: collision with root package name */
    @SafeParcelable.Field
    public final boolean f11222h0;

    /* JADX INFO: renamed from: i0, reason: collision with root package name */
    @SafeParcelable.Field
    public final List f11223i0;

    /* JADX INFO: renamed from: j0, reason: collision with root package name */
    @SafeParcelable.Field
    public final String f11224j0;

    /* JADX INFO: renamed from: k0, reason: collision with root package name */
    @SafeParcelable.Field
    public final List f11225k0;

    /* JADX INFO: renamed from: l0, reason: collision with root package name */
    @SafeParcelable.Field
    public final int f11226l0;

    /* JADX INFO: renamed from: m0, reason: collision with root package name */
    @SafeParcelable.Field
    public final boolean f11227m0;

    /* JADX INFO: renamed from: n0, reason: collision with root package name */
    @SafeParcelable.Field
    public final boolean f11228n0;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @SafeParcelable.Field
    public final int f11229o;

    /* JADX INFO: renamed from: o0, reason: collision with root package name */
    @SafeParcelable.Field
    public final boolean f11230o0;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @SafeParcelable.Field
    public final Bundle f11231p;

    /* JADX INFO: renamed from: p0, reason: collision with root package name */
    @SafeParcelable.Field
    public final ArrayList f11232p0;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    @SafeParcelable.Field
    public final com.google.android.gms.ads.internal.client.zzl f11233q;

    /* JADX INFO: renamed from: q0, reason: collision with root package name */
    @SafeParcelable.Field
    public final String f11234q0;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    @SafeParcelable.Field
    public final com.google.android.gms.ads.internal.client.zzq f11235r;

    /* JADX INFO: renamed from: r0, reason: collision with root package name */
    @SafeParcelable.Field
    public final zzbjx f11236r0;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    @SafeParcelable.Field
    public final String f11237s;

    /* JADX INFO: renamed from: s0, reason: collision with root package name */
    @SafeParcelable.Field
    public final String f11238s0;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    @SafeParcelable.Field
    public final ApplicationInfo f11239t;

    /* JADX INFO: renamed from: t0, reason: collision with root package name */
    @SafeParcelable.Field
    public final Bundle f11240t0;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    @SafeParcelable.Field
    public final PackageInfo f11241u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    @SafeParcelable.Field
    public final String f11242v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    @SafeParcelable.Field
    public final String f11243w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    @SafeParcelable.Field
    public final String f11244x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    @SafeParcelable.Field
    public final zzbzg f11245y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    @SafeParcelable.Field
    public final Bundle f11246z;

    @SafeParcelable.Constructor
    zzbso(@SafeParcelable.Param int i10, @SafeParcelable.Param Bundle bundle, @SafeParcelable.Param com.google.android.gms.ads.internal.client.zzl zzlVar, @SafeParcelable.Param com.google.android.gms.ads.internal.client.zzq zzqVar, @SafeParcelable.Param String str, @SafeParcelable.Param ApplicationInfo applicationInfo, @SafeParcelable.Param PackageInfo packageInfo, @SafeParcelable.Param String str2, @SafeParcelable.Param String str3, @SafeParcelable.Param String str4, @SafeParcelable.Param zzbzg zzbzgVar, @SafeParcelable.Param Bundle bundle2, @SafeParcelable.Param int i11, @SafeParcelable.Param List list, @SafeParcelable.Param Bundle bundle3, @SafeParcelable.Param boolean z10, @SafeParcelable.Param int i12, @SafeParcelable.Param int i13, @SafeParcelable.Param float f10, @SafeParcelable.Param String str5, @SafeParcelable.Param long j10, @SafeParcelable.Param String str6, @SafeParcelable.Param List list2, @SafeParcelable.Param String str7, @SafeParcelable.Param zzbdl zzbdlVar, @SafeParcelable.Param List list3, @SafeParcelable.Param long j11, @SafeParcelable.Param String str8, @SafeParcelable.Param float f11, @SafeParcelable.Param boolean z11, @SafeParcelable.Param int i14, @SafeParcelable.Param int i15, @SafeParcelable.Param boolean z12, @SafeParcelable.Param String str9, @SafeParcelable.Param String str10, @SafeParcelable.Param boolean z13, @SafeParcelable.Param int i16, @SafeParcelable.Param Bundle bundle4, @SafeParcelable.Param String str11, @SafeParcelable.Param com.google.android.gms.ads.internal.client.zzdu zzduVar, @SafeParcelable.Param boolean z14, @SafeParcelable.Param Bundle bundle5, @SafeParcelable.Param String str12, @SafeParcelable.Param String str13, @SafeParcelable.Param String str14, @SafeParcelable.Param boolean z15, @SafeParcelable.Param List list4, @SafeParcelable.Param String str15, @SafeParcelable.Param List list5, @SafeParcelable.Param int i17, @SafeParcelable.Param boolean z16, @SafeParcelable.Param boolean z17, @SafeParcelable.Param boolean z18, @SafeParcelable.Param ArrayList arrayList, @SafeParcelable.Param String str16, @SafeParcelable.Param zzbjx zzbjxVar, @SafeParcelable.Param String str17, @SafeParcelable.Param Bundle bundle6) {
        this.f11229o = i10;
        this.f11231p = bundle;
        this.f11233q = zzlVar;
        this.f11235r = zzqVar;
        this.f11237s = str;
        this.f11239t = applicationInfo;
        this.f11241u = packageInfo;
        this.f11242v = str2;
        this.f11243w = str3;
        this.f11244x = str4;
        this.f11245y = zzbzgVar;
        this.f11246z = bundle2;
        this.A = i11;
        this.B = list;
        this.N = list3 == null ? Collections.emptyList() : Collections.unmodifiableList(list3);
        this.C = bundle3;
        this.D = z10;
        this.E = i12;
        this.F = i13;
        this.G = f10;
        this.H = str5;
        this.I = j10;
        this.J = str6;
        this.K = list2 == null ? Collections.emptyList() : Collections.unmodifiableList(list2);
        this.L = str7;
        this.M = zzbdlVar;
        this.O = j11;
        this.P = str8;
        this.Q = f11;
        this.V = z11;
        this.R = i14;
        this.S = i15;
        this.T = z12;
        this.U = str9;
        this.W = str10;
        this.X = z13;
        this.Y = i16;
        this.Z = bundle4;
        this.f11215a0 = str11;
        this.f11216b0 = zzduVar;
        this.f11217c0 = z14;
        this.f11218d0 = bundle5;
        this.f11219e0 = str12;
        this.f11220f0 = str13;
        this.f11221g0 = str14;
        this.f11222h0 = z15;
        this.f11223i0 = list4;
        this.f11224j0 = str15;
        this.f11225k0 = list5;
        this.f11226l0 = i17;
        this.f11227m0 = z16;
        this.f11228n0 = z17;
        this.f11230o0 = z18;
        this.f11232p0 = arrayList;
        this.f11234q0 = str16;
        this.f11236r0 = zzbjxVar;
        this.f11238s0 = str17;
        this.f11240t0 = bundle6;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        int iA = SafeParcelWriter.a(parcel);
        SafeParcelWriter.l(parcel, 1, this.f11229o);
        SafeParcelWriter.f(parcel, 2, this.f11231p, false);
        SafeParcelWriter.s(parcel, 3, this.f11233q, i10, false);
        SafeParcelWriter.s(parcel, 4, this.f11235r, i10, false);
        SafeParcelWriter.t(parcel, 5, this.f11237s, false);
        SafeParcelWriter.s(parcel, 6, this.f11239t, i10, false);
        SafeParcelWriter.s(parcel, 7, this.f11241u, i10, false);
        SafeParcelWriter.t(parcel, 8, this.f11242v, false);
        SafeParcelWriter.t(parcel, 9, this.f11243w, false);
        SafeParcelWriter.t(parcel, 10, this.f11244x, false);
        SafeParcelWriter.s(parcel, 11, this.f11245y, i10, false);
        SafeParcelWriter.f(parcel, 12, this.f11246z, false);
        SafeParcelWriter.l(parcel, 13, this.A);
        SafeParcelWriter.v(parcel, 14, this.B, false);
        SafeParcelWriter.f(parcel, 15, this.C, false);
        SafeParcelWriter.c(parcel, 16, this.D);
        SafeParcelWriter.l(parcel, 18, this.E);
        SafeParcelWriter.l(parcel, 19, this.F);
        SafeParcelWriter.i(parcel, 20, this.G);
        SafeParcelWriter.t(parcel, 21, this.H, false);
        SafeParcelWriter.p(parcel, 25, this.I);
        SafeParcelWriter.t(parcel, 26, this.J, false);
        SafeParcelWriter.v(parcel, 27, this.K, false);
        SafeParcelWriter.t(parcel, 28, this.L, false);
        SafeParcelWriter.s(parcel, 29, this.M, i10, false);
        SafeParcelWriter.v(parcel, 30, this.N, false);
        SafeParcelWriter.p(parcel, 31, this.O);
        SafeParcelWriter.t(parcel, 33, this.P, false);
        SafeParcelWriter.i(parcel, 34, this.Q);
        SafeParcelWriter.l(parcel, 35, this.R);
        SafeParcelWriter.l(parcel, 36, this.S);
        SafeParcelWriter.c(parcel, 37, this.T);
        SafeParcelWriter.t(parcel, 39, this.U, false);
        SafeParcelWriter.c(parcel, 40, this.V);
        SafeParcelWriter.t(parcel, 41, this.W, false);
        SafeParcelWriter.c(parcel, 42, this.X);
        SafeParcelWriter.l(parcel, 43, this.Y);
        SafeParcelWriter.f(parcel, 44, this.Z, false);
        SafeParcelWriter.t(parcel, 45, this.f11215a0, false);
        SafeParcelWriter.s(parcel, 46, this.f11216b0, i10, false);
        SafeParcelWriter.c(parcel, 47, this.f11217c0);
        SafeParcelWriter.f(parcel, 48, this.f11218d0, false);
        SafeParcelWriter.t(parcel, 49, this.f11219e0, false);
        SafeParcelWriter.t(parcel, 50, this.f11220f0, false);
        SafeParcelWriter.t(parcel, 51, this.f11221g0, false);
        SafeParcelWriter.c(parcel, 52, this.f11222h0);
        SafeParcelWriter.n(parcel, 53, this.f11223i0, false);
        SafeParcelWriter.t(parcel, 54, this.f11224j0, false);
        SafeParcelWriter.v(parcel, 55, this.f11225k0, false);
        SafeParcelWriter.l(parcel, 56, this.f11226l0);
        SafeParcelWriter.c(parcel, 57, this.f11227m0);
        SafeParcelWriter.c(parcel, 58, this.f11228n0);
        SafeParcelWriter.c(parcel, 59, this.f11230o0);
        SafeParcelWriter.v(parcel, 60, this.f11232p0, false);
        SafeParcelWriter.t(parcel, 61, this.f11234q0, false);
        SafeParcelWriter.s(parcel, 63, this.f11236r0, i10, false);
        SafeParcelWriter.t(parcel, 64, this.f11238s0, false);
        SafeParcelWriter.f(parcel, 65, this.f11240t0, false);
        SafeParcelWriter.b(parcel, iA);
    }
}
