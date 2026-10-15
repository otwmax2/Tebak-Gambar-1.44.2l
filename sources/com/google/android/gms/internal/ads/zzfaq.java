package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import javax.annotation.Nullable;
import javax.annotation.ParametersAreNonnullByDefault;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes.dex */
@ParametersAreNonnullByDefault
@SafeParcelable.Class
public final class zzfaq extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzfaq> CREATOR = new zzfar();
    public final int A;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final zzfan[] f17820o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @Nullable
    public final Context f17821p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    @SafeParcelable.Field
    private final int f17822q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public final zzfan f17823r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    @SafeParcelable.Field
    public final int f17824s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    @SafeParcelable.Field
    public final int f17825t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    @SafeParcelable.Field
    public final int f17826u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    @SafeParcelable.Field
    public final String f17827v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    @SafeParcelable.Field
    private final int f17828w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    @SafeParcelable.Field
    private final int f17829x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private final int[] f17830y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private final int[] f17831z;

    @SafeParcelable.Constructor
    public zzfaq(@SafeParcelable.Param int i10, @SafeParcelable.Param int i11, @SafeParcelable.Param int i12, @SafeParcelable.Param int i13, @SafeParcelable.Param String str, @SafeParcelable.Param int i14, @SafeParcelable.Param int i15) {
        zzfan[] zzfanVarArrValues = zzfan.values();
        this.f17820o = zzfanVarArrValues;
        int[] iArrA = zzfao.a();
        this.f17830y = iArrA;
        int[] iArrA2 = zzfap.a();
        this.f17831z = iArrA2;
        this.f17821p = null;
        this.f17822q = i10;
        this.f17823r = zzfanVarArrValues[i10];
        this.f17824s = i11;
        this.f17825t = i12;
        this.f17826u = i13;
        this.f17827v = str;
        this.f17828w = i14;
        this.A = iArrA[i14];
        this.f17829x = i15;
        int i16 = iArrA2[i15];
    }

    @Nullable
    public static zzfaq V3(zzfan zzfanVar, Context context) {
        if (zzfanVar == zzfan.Rewarded) {
            return new zzfaq(context, zzfanVar, ((Integer) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.V5)).intValue(), ((Integer) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.f10176b6)).intValue(), ((Integer) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.f10198d6)).intValue(), (String) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.f10220f6), (String) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.X5), (String) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.Z5));
        }
        if (zzfanVar == zzfan.Interstitial) {
            return new zzfaq(context, zzfanVar, ((Integer) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.W5)).intValue(), ((Integer) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.f10187c6)).intValue(), ((Integer) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.f10209e6)).intValue(), (String) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.f10231g6), (String) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.Y5), (String) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.f10165a6));
        }
        if (zzfanVar != zzfan.AppOpen) {
            return null;
        }
        return new zzfaq(context, zzfanVar, ((Integer) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.f10264j6)).intValue(), ((Integer) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.f10286l6)).intValue(), ((Integer) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.f10297m6)).intValue(), (String) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.f10242h6), (String) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.f10253i6), (String) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.f10275k6));
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        int iA = SafeParcelWriter.a(parcel);
        SafeParcelWriter.l(parcel, 1, this.f17822q);
        SafeParcelWriter.l(parcel, 2, this.f17824s);
        SafeParcelWriter.l(parcel, 3, this.f17825t);
        SafeParcelWriter.l(parcel, 4, this.f17826u);
        SafeParcelWriter.t(parcel, 5, this.f17827v, false);
        SafeParcelWriter.l(parcel, 6, this.f17828w);
        SafeParcelWriter.l(parcel, 7, this.f17829x);
        SafeParcelWriter.b(parcel, iA);
    }

    private zzfaq(@Nullable Context context, zzfan zzfanVar, int i10, int i11, int i12, String str, String str2, String str3) {
        this.f17820o = zzfan.values();
        this.f17830y = zzfao.a();
        this.f17831z = zzfap.a();
        this.f17821p = context;
        this.f17822q = zzfanVar.ordinal();
        this.f17823r = zzfanVar;
        this.f17824s = i10;
        this.f17825t = i11;
        this.f17826u = i12;
        this.f17827v = str;
        int i13 = 2;
        if ("oldest".equals(str2)) {
            i13 = 1;
        } else if (!"lru".equals(str2) && "lfu".equals(str2)) {
            i13 = 3;
        }
        this.A = i13;
        this.f17828w = i13 - 1;
        "onAdClosed".equals(str3);
        this.f17829x = 0;
    }
}
