package com.google.android.gms.games.leaderboard;

import android.net.Uri;
import com.google.android.apps.common.proguard.UsedByReflection;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.games.Game;
import com.google.android.gms.games.GameEntity;
import java.util.ArrayList;

/* JADX INFO: compiled from: com.google.android.gms:play-services-games@@21.0.0 */
/* JADX INFO: loaded from: classes.dex */
@UsedByReflection("GamesGmsClientImpl.java")
public final class LeaderboardEntity implements Leaderboard {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final String f8182o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final String f8183p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final Uri f8184q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private final int f8185r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private final ArrayList<LeaderboardVariantEntity> f8186s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private final Game f8187t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private final String f8188u;

    public LeaderboardEntity(Leaderboard leaderboard) {
        this.f8182o = leaderboard.T2();
        this.f8183p = leaderboard.s();
        this.f8184q = leaderboard.g();
        this.f8188u = leaderboard.getIconImageUrl();
        this.f8185r = leaderboard.E1();
        Game gameU = leaderboard.u();
        this.f8187t = gameU == null ? null : new GameEntity(gameU);
        ArrayList<LeaderboardVariant> arrayListW0 = leaderboard.W0();
        int size = arrayListW0.size();
        this.f8186s = new ArrayList<>(size);
        for (int i10 = 0; i10 < size; i10++) {
            this.f8186s.add((LeaderboardVariantEntity) arrayListW0.get(i10).p3());
        }
    }

    static int h(Leaderboard leaderboard) {
        return Objects.c(leaderboard.T2(), leaderboard.s(), leaderboard.g(), Integer.valueOf(leaderboard.E1()), leaderboard.W0());
    }

    static boolean t(Leaderboard leaderboard, Object obj) {
        if (!(obj instanceof Leaderboard)) {
            return false;
        }
        if (leaderboard == obj) {
            return true;
        }
        Leaderboard leaderboard2 = (Leaderboard) obj;
        return Objects.b(leaderboard2.T2(), leaderboard.T2()) && Objects.b(leaderboard2.s(), leaderboard.s()) && Objects.b(leaderboard2.g(), leaderboard.g()) && Objects.b(Integer.valueOf(leaderboard2.E1()), Integer.valueOf(leaderboard.E1())) && Objects.b(leaderboard2.W0(), leaderboard.W0());
    }

    static String v(Leaderboard leaderboard) {
        return Objects.d(leaderboard).a("LeaderboardId", leaderboard.T2()).a("DisplayName", leaderboard.s()).a("IconImageUri", leaderboard.g()).a("IconImageUrl", leaderboard.getIconImageUrl()).a("ScoreOrder", Integer.valueOf(leaderboard.E1())).a("Variants", leaderboard.W0()).toString();
    }

    @Override // com.google.android.gms.games.leaderboard.Leaderboard
    public final int E1() {
        return this.f8185r;
    }

    @Override // com.google.android.gms.games.leaderboard.Leaderboard
    public final String T2() {
        return this.f8182o;
    }

    @Override // com.google.android.gms.games.leaderboard.Leaderboard
    public final ArrayList<LeaderboardVariant> W0() {
        return new ArrayList<>(this.f8186s);
    }

    public final boolean equals(Object obj) {
        return t(this, obj);
    }

    @Override // com.google.android.gms.games.leaderboard.Leaderboard
    public final Uri g() {
        return this.f8184q;
    }

    @Override // com.google.android.gms.games.leaderboard.Leaderboard
    public final String getIconImageUrl() {
        return this.f8188u;
    }

    public final int hashCode() {
        return h(this);
    }

    @Override // com.google.android.gms.common.data.Freezable
    public final /* bridge */ /* synthetic */ Leaderboard p3() {
        return this;
    }

    @Override // com.google.android.gms.games.leaderboard.Leaderboard
    public final String s() {
        return this.f8183p;
    }

    public final String toString() {
        return v(this);
    }

    @Override // com.google.android.gms.games.leaderboard.Leaderboard
    public final Game u() {
        return this.f8187t;
    }
}
