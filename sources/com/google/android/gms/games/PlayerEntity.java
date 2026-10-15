package com.google.android.gms.games;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.apps.common.proguard.UsedByReflection;
import com.google.android.gms.common.internal.Asserts;
import com.google.android.gms.common.internal.DowngradeableSafeParcel;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.util.RetainForClient;
import com.google.android.gms.games.internal.GamesDowngradeableSafeParcel;
import com.google.android.gms.games.internal.player.MostRecentGameInfoEntity;

/* JADX INFO: compiled from: com.google.android.gms:play-services-games@@21.0.0 */
/* JADX INFO: loaded from: classes.dex */
@UsedByReflection("GamesGmsClientImpl.java")
@RetainForClient
@SafeParcelable.Class
@SafeParcelable.Reserved
public final class PlayerEntity extends GamesDowngradeableSafeParcel implements Player {
    public static final Parcelable.Creator<PlayerEntity> CREATOR = new a();

    @SafeParcelable.Field
    private final MostRecentGameInfoEntity A;

    @SafeParcelable.Field
    private final PlayerLevelInfo B;

    @SafeParcelable.Field
    private final boolean C;

    @SafeParcelable.Field
    private final boolean D;

    @SafeParcelable.Field
    private final String E;

    @SafeParcelable.Field
    private final String F;

    @SafeParcelable.Field
    private final Uri G;

    @SafeParcelable.Field
    private final String H;

    @SafeParcelable.Field
    private final Uri I;

    @SafeParcelable.Field
    private final String J;

    @SafeParcelable.Field
    private long K;

    @SafeParcelable.Field
    private final zzm L;

    @SafeParcelable.Field
    private final zza M;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    @SafeParcelable.Field
    private String f7994q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    @SafeParcelable.Field
    private String f7995r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    @SafeParcelable.Field
    private final Uri f7996s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    @SafeParcelable.Field
    private final Uri f7997t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    @SafeParcelable.Field
    private final long f7998u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    @SafeParcelable.Field
    private final int f7999v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    @SafeParcelable.Field
    private final long f8000w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    @SafeParcelable.Field
    private final String f8001x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    @SafeParcelable.Field
    private final String f8002y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    @SafeParcelable.Field
    private final String f8003z;

    /* JADX INFO: compiled from: com.google.android.gms:play-services-games@@21.0.0 */
    static final class a extends zzi {
        a() {
        }

        @Override // com.google.android.gms.games.zzi
        /* JADX INFO: renamed from: a */
        public final PlayerEntity createFromParcel(Parcel parcel) {
            if (GamesDowngradeableSafeParcel.Y3(DowngradeableSafeParcel.W3()) || DowngradeableSafeParcel.V3(PlayerEntity.class.getCanonicalName())) {
                return super.createFromParcel(parcel);
            }
            String string = parcel.readString();
            String string2 = parcel.readString();
            String string3 = parcel.readString();
            String string4 = parcel.readString();
            return new PlayerEntity(string, string2, string3 == null ? null : Uri.parse(string3), string4 == null ? null : Uri.parse(string4), parcel.readLong(), -1, -1L, null, null, null, null, null, true, false, parcel.readString(), parcel.readString(), null, null, null, null, -1L, null, null);
        }

        @Override // com.google.android.gms.games.zzi, android.os.Parcelable.Creator
        public final /* synthetic */ PlayerEntity createFromParcel(Parcel parcel) {
            return createFromParcel(parcel);
        }
    }

    public PlayerEntity(Player player) {
        this.f7994q = player.J3();
        this.f7995r = player.s();
        this.f7996s = player.g();
        this.f8001x = player.getIconImageUrl();
        this.f7997t = player.O();
        this.f8002y = player.getHiResImageUrl();
        long jJ0 = player.J0();
        this.f7998u = jJ0;
        this.f7999v = player.l();
        this.f8000w = player.v1();
        this.f8003z = player.getTitle();
        this.C = player.k();
        com.google.android.gms.games.internal.player.zza zzaVarM = player.m();
        this.A = zzaVarM == null ? null : new MostRecentGameInfoEntity(zzaVarM);
        this.B = player.F1();
        this.D = player.j();
        this.E = player.i();
        this.F = player.getName();
        this.G = player.a0();
        this.H = player.getBannerImageLandscapeUrl();
        this.I = player.N0();
        this.J = player.getBannerImagePortraitUrl();
        this.K = player.n();
        PlayerRelationshipInfo playerRelationshipInfoH2 = player.H2();
        this.L = playerRelationshipInfoH2 == null ? null : new zzm(playerRelationshipInfoH2.p3());
        CurrentPlayerInfo currentPlayerInfoB1 = player.b1();
        this.M = currentPlayerInfoB1 != null ? (zza) currentPlayerInfoB1.p3() : null;
        Asserts.a(this.f7994q);
        Asserts.a(this.f7995r);
        Asserts.b(jJ0 > 0);
    }

    static int a4(Player player) {
        return Objects.c(player.J3(), player.s(), Boolean.valueOf(player.j()), player.g(), player.O(), Long.valueOf(player.J0()), player.getTitle(), player.F1(), player.i(), player.getName(), player.a0(), player.N0(), Long.valueOf(player.n()), player.H2(), player.b1());
    }

    static boolean b4(Player player, Object obj) {
        if (!(obj instanceof Player)) {
            return false;
        }
        if (player == obj) {
            return true;
        }
        Player player2 = (Player) obj;
        return Objects.b(player2.J3(), player.J3()) && Objects.b(player2.s(), player.s()) && Objects.b(Boolean.valueOf(player2.j()), Boolean.valueOf(player.j())) && Objects.b(player2.g(), player.g()) && Objects.b(player2.O(), player.O()) && Objects.b(Long.valueOf(player2.J0()), Long.valueOf(player.J0())) && Objects.b(player2.getTitle(), player.getTitle()) && Objects.b(player2.F1(), player.F1()) && Objects.b(player2.i(), player.i()) && Objects.b(player2.getName(), player.getName()) && Objects.b(player2.a0(), player.a0()) && Objects.b(player2.N0(), player.N0()) && Objects.b(Long.valueOf(player2.n()), Long.valueOf(player.n())) && Objects.b(player2.b1(), player.b1()) && Objects.b(player2.H2(), player.H2());
    }

    static String e4(Player player) {
        Objects.ToStringHelper toStringHelperA = Objects.d(player).a("PlayerId", player.J3()).a("DisplayName", player.s()).a("HasDebugAccess", Boolean.valueOf(player.j())).a("IconImageUri", player.g()).a("IconImageUrl", player.getIconImageUrl()).a("HiResImageUri", player.O()).a("HiResImageUrl", player.getHiResImageUrl()).a("RetrievedTimestamp", Long.valueOf(player.J0())).a("Title", player.getTitle()).a("LevelInfo", player.F1()).a("GamerTag", player.i()).a("Name", player.getName()).a("BannerImageLandscapeUri", player.a0()).a("BannerImageLandscapeUrl", player.getBannerImageLandscapeUrl()).a("BannerImagePortraitUri", player.N0()).a("BannerImagePortraitUrl", player.getBannerImagePortraitUrl()).a("CurrentPlayerInfo", player.b1()).a("totalUnlockedAchievement", Long.valueOf(player.n()));
        if (player.H2() != null) {
            toStringHelperA.a("RelationshipInfo", player.H2());
        }
        return toStringHelperA.toString();
    }

    @Override // com.google.android.gms.games.Player
    public final PlayerLevelInfo F1() {
        return this.B;
    }

    @Override // com.google.android.gms.games.Player
    public final PlayerRelationshipInfo H2() {
        return this.L;
    }

    @Override // com.google.android.gms.games.Player
    public final long J0() {
        return this.f7998u;
    }

    @Override // com.google.android.gms.games.Player
    public final String J3() {
        return this.f7994q;
    }

    @Override // com.google.android.gms.games.Player
    public final Uri N0() {
        return this.I;
    }

    @Override // com.google.android.gms.games.Player
    public final Uri O() {
        return this.f7997t;
    }

    @Override // com.google.android.gms.common.data.Freezable
    /* JADX INFO: renamed from: Z3, reason: merged with bridge method [inline-methods] */
    public final Player p3() {
        return this;
    }

    @Override // com.google.android.gms.games.Player
    public final Uri a0() {
        return this.G;
    }

    @Override // com.google.android.gms.games.Player
    public final CurrentPlayerInfo b1() {
        return this.M;
    }

    public final boolean equals(Object obj) {
        return b4(this, obj);
    }

    @Override // com.google.android.gms.games.Player
    public final Uri g() {
        return this.f7996s;
    }

    @Override // com.google.android.gms.games.Player
    public final String getBannerImageLandscapeUrl() {
        return this.H;
    }

    @Override // com.google.android.gms.games.Player
    public final String getBannerImagePortraitUrl() {
        return this.J;
    }

    @Override // com.google.android.gms.games.Player
    public final String getHiResImageUrl() {
        return this.f8002y;
    }

    @Override // com.google.android.gms.games.Player
    public final String getIconImageUrl() {
        return this.f8001x;
    }

    @Override // com.google.android.gms.games.Player
    public final String getName() {
        return this.F;
    }

    @Override // com.google.android.gms.games.Player
    public final String getTitle() {
        return this.f8003z;
    }

    public final int hashCode() {
        return a4(this);
    }

    @Override // com.google.android.gms.games.Player
    public final String i() {
        return this.E;
    }

    @Override // com.google.android.gms.games.Player
    public final boolean j() {
        return this.D;
    }

    @Override // com.google.android.gms.games.Player
    public final boolean k() {
        return this.C;
    }

    @Override // com.google.android.gms.games.Player
    public final int l() {
        return this.f7999v;
    }

    @Override // com.google.android.gms.games.Player
    public final com.google.android.gms.games.internal.player.zza m() {
        return this.A;
    }

    @Override // com.google.android.gms.games.Player
    public final long n() {
        return this.K;
    }

    @Override // com.google.android.gms.games.Player
    public final String s() {
        return this.f7995r;
    }

    public final String toString() {
        return e4(this);
    }

    @Override // com.google.android.gms.games.Player
    public final long v1() {
        return this.f8000w;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        if (X3()) {
            parcel.writeString(this.f7994q);
            parcel.writeString(this.f7995r);
            Uri uri = this.f7996s;
            parcel.writeString(uri == null ? null : uri.toString());
            Uri uri2 = this.f7997t;
            parcel.writeString(uri2 != null ? uri2.toString() : null);
            parcel.writeLong(this.f7998u);
            return;
        }
        int iA = SafeParcelWriter.a(parcel);
        SafeParcelWriter.t(parcel, 1, J3(), false);
        SafeParcelWriter.t(parcel, 2, s(), false);
        SafeParcelWriter.s(parcel, 3, g(), i10, false);
        SafeParcelWriter.s(parcel, 4, O(), i10, false);
        SafeParcelWriter.p(parcel, 5, J0());
        SafeParcelWriter.l(parcel, 6, this.f7999v);
        SafeParcelWriter.p(parcel, 7, v1());
        SafeParcelWriter.t(parcel, 8, getIconImageUrl(), false);
        SafeParcelWriter.t(parcel, 9, getHiResImageUrl(), false);
        SafeParcelWriter.t(parcel, 14, getTitle(), false);
        SafeParcelWriter.s(parcel, 15, this.A, i10, false);
        SafeParcelWriter.s(parcel, 16, F1(), i10, false);
        SafeParcelWriter.c(parcel, 18, this.C);
        SafeParcelWriter.c(parcel, 19, this.D);
        SafeParcelWriter.t(parcel, 20, this.E, false);
        SafeParcelWriter.t(parcel, 21, this.F, false);
        SafeParcelWriter.s(parcel, 22, a0(), i10, false);
        SafeParcelWriter.t(parcel, 23, getBannerImageLandscapeUrl(), false);
        SafeParcelWriter.s(parcel, 24, N0(), i10, false);
        SafeParcelWriter.t(parcel, 25, getBannerImagePortraitUrl(), false);
        SafeParcelWriter.p(parcel, 29, this.K);
        SafeParcelWriter.s(parcel, 33, H2(), i10, false);
        SafeParcelWriter.s(parcel, 35, b1(), i10, false);
        SafeParcelWriter.b(parcel, iA);
    }

    @SafeParcelable.Constructor
    PlayerEntity(@SafeParcelable.Param String str, @SafeParcelable.Param String str2, @SafeParcelable.Param Uri uri, @SafeParcelable.Param Uri uri2, @SafeParcelable.Param long j10, @SafeParcelable.Param int i10, @SafeParcelable.Param long j11, @SafeParcelable.Param String str3, @SafeParcelable.Param String str4, @SafeParcelable.Param String str5, @SafeParcelable.Param MostRecentGameInfoEntity mostRecentGameInfoEntity, @SafeParcelable.Param PlayerLevelInfo playerLevelInfo, @SafeParcelable.Param boolean z10, @SafeParcelable.Param boolean z11, @SafeParcelable.Param String str6, @SafeParcelable.Param String str7, @SafeParcelable.Param Uri uri3, @SafeParcelable.Param String str8, @SafeParcelable.Param Uri uri4, @SafeParcelable.Param String str9, @SafeParcelable.Param long j12, @SafeParcelable.Param zzm zzmVar, @SafeParcelable.Param zza zzaVar) {
        this.f7994q = str;
        this.f7995r = str2;
        this.f7996s = uri;
        this.f8001x = str3;
        this.f7997t = uri2;
        this.f8002y = str4;
        this.f7998u = j10;
        this.f7999v = i10;
        this.f8000w = j11;
        this.f8003z = str5;
        this.C = z10;
        this.A = mostRecentGameInfoEntity;
        this.B = playerLevelInfo;
        this.D = z11;
        this.E = str6;
        this.F = str7;
        this.G = uri3;
        this.H = str8;
        this.I = uri4;
        this.J = str9;
        this.K = j12;
        this.L = zzmVar;
        this.M = zzaVar;
    }
}
