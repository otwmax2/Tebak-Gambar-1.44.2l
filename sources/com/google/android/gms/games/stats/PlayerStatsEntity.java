package com.google.android.gms.games.stats;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.apps.common.proguard.UsedByReflection;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

/* JADX INFO: compiled from: com.google.android.gms:play-services-games@@21.0.0 */
/* JADX INFO: loaded from: classes.dex */
@UsedByReflection("GamesGmsClientImpl.java")
@SafeParcelable.Class
@SafeParcelable.Reserved
public class PlayerStatsEntity extends com.google.android.gms.games.internal.zzb implements PlayerStats {
    public static final Parcelable.Creator<PlayerStatsEntity> CREATOR = new zzb();

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @SafeParcelable.Field
    private final float f8250o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @SafeParcelable.Field
    private final float f8251p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    @SafeParcelable.Field
    private final int f8252q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    @SafeParcelable.Field
    private final int f8253r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    @SafeParcelable.Field
    private final int f8254s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    @SafeParcelable.Field
    private final float f8255t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    @SafeParcelable.Field
    private final float f8256u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    @SafeParcelable.Field
    private final Bundle f8257v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    @SafeParcelable.Field
    private final float f8258w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    @SafeParcelable.Field
    private final float f8259x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    @SafeParcelable.Field
    private final float f8260y;

    public PlayerStatsEntity(PlayerStats playerStats) {
        this.f8250o = playerStats.T3();
        this.f8251p = playerStats.U();
        this.f8252q = playerStats.u3();
        this.f8253r = playerStats.k2();
        this.f8254s = playerStats.v0();
        this.f8255t = playerStats.e2();
        this.f8256u = playerStats.G0();
        this.f8258w = playerStats.j2();
        this.f8259x = playerStats.r3();
        this.f8260y = playerStats.Z0();
        this.f8257v = playerStats.A1();
    }

    static int V3(PlayerStats playerStats) {
        return Objects.c(Float.valueOf(playerStats.T3()), Float.valueOf(playerStats.U()), Integer.valueOf(playerStats.u3()), Integer.valueOf(playerStats.k2()), Integer.valueOf(playerStats.v0()), Float.valueOf(playerStats.e2()), Float.valueOf(playerStats.G0()), Float.valueOf(playerStats.j2()), Float.valueOf(playerStats.r3()), Float.valueOf(playerStats.Z0()));
    }

    static boolean W3(PlayerStats playerStats, Object obj) {
        if (!(obj instanceof PlayerStats)) {
            return false;
        }
        if (playerStats == obj) {
            return true;
        }
        PlayerStats playerStats2 = (PlayerStats) obj;
        return Objects.b(Float.valueOf(playerStats2.T3()), Float.valueOf(playerStats.T3())) && Objects.b(Float.valueOf(playerStats2.U()), Float.valueOf(playerStats.U())) && Objects.b(Integer.valueOf(playerStats2.u3()), Integer.valueOf(playerStats.u3())) && Objects.b(Integer.valueOf(playerStats2.k2()), Integer.valueOf(playerStats.k2())) && Objects.b(Integer.valueOf(playerStats2.v0()), Integer.valueOf(playerStats.v0())) && Objects.b(Float.valueOf(playerStats2.e2()), Float.valueOf(playerStats.e2())) && Objects.b(Float.valueOf(playerStats2.G0()), Float.valueOf(playerStats.G0())) && Objects.b(Float.valueOf(playerStats2.j2()), Float.valueOf(playerStats.j2())) && Objects.b(Float.valueOf(playerStats2.r3()), Float.valueOf(playerStats.r3())) && Objects.b(Float.valueOf(playerStats2.Z0()), Float.valueOf(playerStats.Z0()));
    }

    static String X3(PlayerStats playerStats) {
        return Objects.d(playerStats).a("AverageSessionLength", Float.valueOf(playerStats.T3())).a("ChurnProbability", Float.valueOf(playerStats.U())).a("DaysSinceLastPlayed", Integer.valueOf(playerStats.u3())).a("NumberOfPurchases", Integer.valueOf(playerStats.k2())).a("NumberOfSessions", Integer.valueOf(playerStats.v0())).a("SessionPercentile", Float.valueOf(playerStats.e2())).a("SpendPercentile", Float.valueOf(playerStats.G0())).a("SpendProbability", Float.valueOf(playerStats.j2())).a("HighSpenderProbability", Float.valueOf(playerStats.r3())).a("TotalSpendNext28Days", Float.valueOf(playerStats.Z0())).toString();
    }

    @Override // com.google.android.gms.games.stats.PlayerStats
    public final Bundle A1() {
        return this.f8257v;
    }

    @Override // com.google.android.gms.games.stats.PlayerStats
    public float G0() {
        return this.f8256u;
    }

    @Override // com.google.android.gms.games.stats.PlayerStats
    public float T3() {
        return this.f8250o;
    }

    @Override // com.google.android.gms.games.stats.PlayerStats
    public float U() {
        return this.f8251p;
    }

    @Override // com.google.android.gms.games.stats.PlayerStats
    public float Z0() {
        return this.f8260y;
    }

    @Override // com.google.android.gms.games.stats.PlayerStats
    public float e2() {
        return this.f8255t;
    }

    public boolean equals(Object obj) {
        return W3(this, obj);
    }

    public int hashCode() {
        return V3(this);
    }

    @Override // com.google.android.gms.games.stats.PlayerStats
    public float j2() {
        return this.f8258w;
    }

    @Override // com.google.android.gms.games.stats.PlayerStats
    public int k2() {
        return this.f8253r;
    }

    @Override // com.google.android.gms.common.data.Freezable
    public /* bridge */ /* synthetic */ PlayerStats p3() {
        return this;
    }

    @Override // com.google.android.gms.games.stats.PlayerStats
    public float r3() {
        return this.f8259x;
    }

    public String toString() {
        return X3(this);
    }

    @Override // com.google.android.gms.games.stats.PlayerStats
    public int u3() {
        return this.f8252q;
    }

    @Override // com.google.android.gms.games.stats.PlayerStats
    public int v0() {
        return this.f8254s;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        int iA = SafeParcelWriter.a(parcel);
        SafeParcelWriter.i(parcel, 1, T3());
        SafeParcelWriter.i(parcel, 2, U());
        SafeParcelWriter.l(parcel, 3, u3());
        SafeParcelWriter.l(parcel, 4, k2());
        SafeParcelWriter.l(parcel, 5, v0());
        SafeParcelWriter.i(parcel, 6, e2());
        SafeParcelWriter.i(parcel, 7, G0());
        SafeParcelWriter.f(parcel, 8, this.f8257v, false);
        SafeParcelWriter.i(parcel, 9, j2());
        SafeParcelWriter.i(parcel, 10, r3());
        SafeParcelWriter.i(parcel, 11, Z0());
        SafeParcelWriter.b(parcel, iA);
    }

    @SafeParcelable.Constructor
    PlayerStatsEntity(@SafeParcelable.Param float f10, @SafeParcelable.Param float f11, @SafeParcelable.Param int i10, @SafeParcelable.Param int i11, @SafeParcelable.Param int i12, @SafeParcelable.Param float f12, @SafeParcelable.Param float f13, @SafeParcelable.Param Bundle bundle, @SafeParcelable.Param float f14, @SafeParcelable.Param float f15, @SafeParcelable.Param float f16) {
        this.f8250o = f10;
        this.f8251p = f11;
        this.f8252q = i10;
        this.f8253r = i11;
        this.f8254s = i12;
        this.f8255t = f12;
        this.f8256u = f13;
        this.f8257v = bundle;
        this.f8258w = f14;
        this.f8259x = f15;
        this.f8260y = f16;
    }
}
