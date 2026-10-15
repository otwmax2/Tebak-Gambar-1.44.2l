package com.google.android.gms.games.leaderboard;

import com.facebook.appevents.integrity.IntegrityManager;
import com.facebook.share.internal.ShareConstants;
import com.google.android.apps.common.proguard.UsedByReflection;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.internal.games.zzfa;

/* JADX INFO: compiled from: com.google.android.gms:play-services-games@@21.0.0 */
/* JADX INFO: loaded from: classes.dex */
@UsedByReflection("GamesGmsClientImpl.java")
public final class LeaderboardVariantEntity implements LeaderboardVariant {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final int f8205o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final int f8206p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final boolean f8207q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private final long f8208r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private final String f8209s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private final long f8210t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private final String f8211u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private final String f8212v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private final long f8213w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private final String f8214x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private final String f8215y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private final String f8216z;

    public LeaderboardVariantEntity(LeaderboardVariant leaderboardVariant) {
        this.f8205o = leaderboardVariant.U2();
        this.f8206p = leaderboardVariant.G3();
        this.f8207q = leaderboardVariant.g0();
        this.f8208r = leaderboardVariant.g3();
        this.f8209s = leaderboardVariant.Z();
        this.f8210t = leaderboardVariant.J2();
        this.f8211u = leaderboardVariant.i3();
        this.f8212v = leaderboardVariant.U3();
        this.f8213w = leaderboardVariant.S1();
        this.f8214x = leaderboardVariant.N3();
        this.f8215y = leaderboardVariant.u2();
        this.f8216z = leaderboardVariant.R2();
    }

    static int h(LeaderboardVariant leaderboardVariant) {
        return Objects.c(Integer.valueOf(leaderboardVariant.U2()), Integer.valueOf(leaderboardVariant.G3()), Boolean.valueOf(leaderboardVariant.g0()), Long.valueOf(leaderboardVariant.g3()), leaderboardVariant.Z(), Long.valueOf(leaderboardVariant.J2()), leaderboardVariant.i3(), Long.valueOf(leaderboardVariant.S1()), leaderboardVariant.N3(), leaderboardVariant.R2(), leaderboardVariant.u2());
    }

    static boolean t(LeaderboardVariant leaderboardVariant, Object obj) {
        if (!(obj instanceof LeaderboardVariant)) {
            return false;
        }
        if (leaderboardVariant == obj) {
            return true;
        }
        LeaderboardVariant leaderboardVariant2 = (LeaderboardVariant) obj;
        return Objects.b(Integer.valueOf(leaderboardVariant2.U2()), Integer.valueOf(leaderboardVariant.U2())) && Objects.b(Integer.valueOf(leaderboardVariant2.G3()), Integer.valueOf(leaderboardVariant.G3())) && Objects.b(Boolean.valueOf(leaderboardVariant2.g0()), Boolean.valueOf(leaderboardVariant.g0())) && Objects.b(Long.valueOf(leaderboardVariant2.g3()), Long.valueOf(leaderboardVariant.g3())) && Objects.b(leaderboardVariant2.Z(), leaderboardVariant.Z()) && Objects.b(Long.valueOf(leaderboardVariant2.J2()), Long.valueOf(leaderboardVariant.J2())) && Objects.b(leaderboardVariant2.i3(), leaderboardVariant.i3()) && Objects.b(Long.valueOf(leaderboardVariant2.S1()), Long.valueOf(leaderboardVariant.S1())) && Objects.b(leaderboardVariant2.N3(), leaderboardVariant.N3()) && Objects.b(leaderboardVariant2.R2(), leaderboardVariant.R2()) && Objects.b(leaderboardVariant2.u2(), leaderboardVariant.u2());
    }

    static String v(LeaderboardVariant leaderboardVariant) {
        Objects.ToStringHelper toStringHelperA = Objects.d(leaderboardVariant).a("TimeSpan", zzfa.a(leaderboardVariant.U2()));
        int iG3 = leaderboardVariant.G3();
        String str = "SOCIAL_1P";
        if (iG3 == -1) {
            str = "UNKNOWN";
        } else if (iG3 == 0) {
            str = "PUBLIC";
        } else if (iG3 == 1) {
            str = "SOCIAL";
        } else if (iG3 != 2) {
            if (iG3 == 3) {
                str = ShareConstants.PEOPLE_IDS;
            } else if (iG3 != 4) {
                StringBuilder sb = new StringBuilder(43);
                sb.append("Unknown leaderboard collection: ");
                sb.append(iG3);
                throw new IllegalArgumentException(sb.toString());
            }
        }
        Objects.ToStringHelper toStringHelperA2 = toStringHelperA.a("Collection", str);
        boolean zG0 = leaderboardVariant.g0();
        String strI3 = IntegrityManager.INTEGRITY_TYPE_NONE;
        Objects.ToStringHelper toStringHelperA3 = toStringHelperA2.a("RawPlayerScore", zG0 ? Long.valueOf(leaderboardVariant.g3()) : IntegrityManager.INTEGRITY_TYPE_NONE).a("DisplayPlayerScore", leaderboardVariant.g0() ? leaderboardVariant.Z() : IntegrityManager.INTEGRITY_TYPE_NONE).a("PlayerRank", leaderboardVariant.g0() ? Long.valueOf(leaderboardVariant.J2()) : IntegrityManager.INTEGRITY_TYPE_NONE);
        if (leaderboardVariant.g0()) {
            strI3 = leaderboardVariant.i3();
        }
        return toStringHelperA3.a("DisplayPlayerRank", strI3).a("NumScores", Long.valueOf(leaderboardVariant.S1())).a("TopPageNextToken", leaderboardVariant.N3()).a("WindowPageNextToken", leaderboardVariant.R2()).a("WindowPagePrevToken", leaderboardVariant.u2()).toString();
    }

    @Override // com.google.android.gms.games.leaderboard.LeaderboardVariant
    public final int G3() {
        return this.f8206p;
    }

    @Override // com.google.android.gms.games.leaderboard.LeaderboardVariant
    public final long J2() {
        return this.f8210t;
    }

    @Override // com.google.android.gms.games.leaderboard.LeaderboardVariant
    public final String N3() {
        return this.f8214x;
    }

    @Override // com.google.android.gms.games.leaderboard.LeaderboardVariant
    public final String R2() {
        return this.f8216z;
    }

    @Override // com.google.android.gms.games.leaderboard.LeaderboardVariant
    public final long S1() {
        return this.f8213w;
    }

    @Override // com.google.android.gms.games.leaderboard.LeaderboardVariant
    public final int U2() {
        return this.f8205o;
    }

    @Override // com.google.android.gms.games.leaderboard.LeaderboardVariant
    public final String U3() {
        return this.f8212v;
    }

    @Override // com.google.android.gms.games.leaderboard.LeaderboardVariant
    public final String Z() {
        return this.f8209s;
    }

    public final boolean equals(Object obj) {
        return t(this, obj);
    }

    @Override // com.google.android.gms.games.leaderboard.LeaderboardVariant
    public final boolean g0() {
        return this.f8207q;
    }

    @Override // com.google.android.gms.games.leaderboard.LeaderboardVariant
    public final long g3() {
        return this.f8208r;
    }

    public final int hashCode() {
        return h(this);
    }

    @Override // com.google.android.gms.games.leaderboard.LeaderboardVariant
    public final String i3() {
        return this.f8211u;
    }

    @Override // com.google.android.gms.common.data.Freezable
    public final /* bridge */ /* synthetic */ LeaderboardVariant p3() {
        return this;
    }

    public final String toString() {
        return v(this);
    }

    @Override // com.google.android.gms.games.leaderboard.LeaderboardVariant
    public final String u2() {
        return this.f8215y;
    }
}
