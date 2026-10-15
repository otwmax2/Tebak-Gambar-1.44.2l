package com.google.android.gms.common.stats;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.vungle.mediation.BuildConfig;
import java.util.List;
import javax.annotation.Nullable;

/* JADX INFO: compiled from: com.google.android.gms:play-services-basement@@18.1.0 */
/* JADX INFO: loaded from: classes.dex */
@KeepForSdk
@SafeParcelable.Class
@Deprecated
public final class WakeLockEvent extends StatsEvent {
    public static final Parcelable.Creator<WakeLockEvent> CREATOR = new zza();

    @SafeParcelable.Field
    private final float A;

    @SafeParcelable.Field
    private final long B;

    @SafeParcelable.Field
    private final boolean C;
    private long D = -1;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @SafeParcelable.VersionField
    final int f7621o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @SafeParcelable.Field
    private final long f7622p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    @SafeParcelable.Field
    private int f7623q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    @SafeParcelable.Field
    private final String f7624r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    @SafeParcelable.Field
    private final String f7625s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    @SafeParcelable.Field
    private final String f7626t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    @SafeParcelable.Field
    private final int f7627u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    @Nullable
    @SafeParcelable.Field
    private final List f7628v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    @SafeParcelable.Field
    private final String f7629w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    @SafeParcelable.Field
    private final long f7630x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    @SafeParcelable.Field
    private int f7631y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    @SafeParcelable.Field
    private final String f7632z;

    @SafeParcelable.Constructor
    WakeLockEvent(@SafeParcelable.Param int i10, @SafeParcelable.Param long j10, @SafeParcelable.Param int i11, @SafeParcelable.Param String str, @SafeParcelable.Param int i12, @SafeParcelable.Param @Nullable List list, @SafeParcelable.Param String str2, @SafeParcelable.Param long j11, @SafeParcelable.Param int i13, @SafeParcelable.Param String str3, @SafeParcelable.Param String str4, @SafeParcelable.Param float f10, @SafeParcelable.Param long j12, @SafeParcelable.Param String str5, @SafeParcelable.Param boolean z10) {
        this.f7621o = i10;
        this.f7622p = j10;
        this.f7623q = i11;
        this.f7624r = str;
        this.f7625s = str3;
        this.f7626t = str5;
        this.f7627u = i12;
        this.f7628v = list;
        this.f7629w = str2;
        this.f7630x = j11;
        this.f7631y = i13;
        this.f7632z = str4;
        this.A = f10;
        this.B = j12;
        this.C = z10;
    }

    @Override // com.google.android.gms.common.stats.StatsEvent
    public final int V3() {
        return this.f7623q;
    }

    @Override // com.google.android.gms.common.stats.StatsEvent
    public final String W3() {
        List list = this.f7628v;
        String str = this.f7624r;
        int i10 = this.f7627u;
        String str2 = BuildConfig.FLAVOR;
        String strJoin = list == null ? BuildConfig.FLAVOR : TextUtils.join(",", list);
        int i11 = this.f7631y;
        String str3 = this.f7625s;
        if (str3 == null) {
            str3 = BuildConfig.FLAVOR;
        }
        String str4 = this.f7632z;
        if (str4 == null) {
            str4 = BuildConfig.FLAVOR;
        }
        float f10 = this.A;
        String str5 = this.f7626t;
        if (str5 != null) {
            str2 = str5;
        }
        return "\t" + str + "\t" + i10 + "\t" + strJoin + "\t" + i11 + "\t" + str3 + "\t" + str4 + "\t" + f10 + "\t" + str2 + "\t" + this.C;
    }

    @Override // com.google.android.gms.common.stats.StatsEvent
    public final long a() {
        return this.f7622p;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        int iA = SafeParcelWriter.a(parcel);
        SafeParcelWriter.l(parcel, 1, this.f7621o);
        SafeParcelWriter.p(parcel, 2, this.f7622p);
        SafeParcelWriter.t(parcel, 4, this.f7624r, false);
        SafeParcelWriter.l(parcel, 5, this.f7627u);
        SafeParcelWriter.v(parcel, 6, this.f7628v, false);
        SafeParcelWriter.p(parcel, 8, this.f7630x);
        SafeParcelWriter.t(parcel, 10, this.f7625s, false);
        SafeParcelWriter.l(parcel, 11, this.f7623q);
        SafeParcelWriter.t(parcel, 12, this.f7629w, false);
        SafeParcelWriter.t(parcel, 13, this.f7632z, false);
        SafeParcelWriter.l(parcel, 14, this.f7631y);
        SafeParcelWriter.i(parcel, 15, this.A);
        SafeParcelWriter.p(parcel, 16, this.B);
        SafeParcelWriter.t(parcel, 17, this.f7626t, false);
        SafeParcelWriter.c(parcel, 18, this.C);
        SafeParcelWriter.b(parcel, iA);
    }

    @Override // com.google.android.gms.common.stats.StatsEvent
    public final long zzb() {
        return this.D;
    }
}
