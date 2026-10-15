package com.google.android.gms.games;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.apps.common.proguard.UsedByReflection;
import com.google.android.gms.common.internal.DowngradeableSafeParcel;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.util.RetainForClient;
import com.google.android.gms.games.internal.GamesDowngradeableSafeParcel;

/* JADX INFO: compiled from: com.google.android.gms:play-services-games@@21.0.0 */
/* JADX INFO: loaded from: classes.dex */
@UsedByReflection("GamesGmsClientImpl.java")
@RetainForClient
@SafeParcelable.Class
@SafeParcelable.Reserved
public final class GameEntity extends GamesDowngradeableSafeParcel implements Game {
    public static final Parcelable.Creator<GameEntity> CREATOR = new a();

    @SafeParcelable.Field
    private final boolean A;

    @SafeParcelable.Field
    private final String B;

    @SafeParcelable.Field
    private final int C;

    @SafeParcelable.Field
    private final int D;

    @SafeParcelable.Field
    private final int E;

    @SafeParcelable.Field
    private final boolean F;

    @SafeParcelable.Field
    private final boolean G;

    @SafeParcelable.Field
    private final String H;

    @SafeParcelable.Field
    private final String I;

    @SafeParcelable.Field
    private final String J;

    @SafeParcelable.Field
    private final boolean K;

    @SafeParcelable.Field
    private final boolean L;

    @SafeParcelable.Field
    private final boolean M;

    @SafeParcelable.Field
    private final String N;

    @SafeParcelable.Field
    private final boolean O;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    @SafeParcelable.Field
    private final String f7938q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    @SafeParcelable.Field
    private final String f7939r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    @SafeParcelable.Field
    private final String f7940s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    @SafeParcelable.Field
    private final String f7941t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    @SafeParcelable.Field
    private final String f7942u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    @SafeParcelable.Field
    private final String f7943v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    @SafeParcelable.Field
    private final Uri f7944w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    @SafeParcelable.Field
    private final Uri f7945x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    @SafeParcelable.Field
    private final Uri f7946y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    @SafeParcelable.Field
    private final boolean f7947z;

    /* JADX INFO: compiled from: com.google.android.gms:play-services-games@@21.0.0 */
    static final class a extends zzd {
        a() {
        }

        @Override // com.google.android.gms.games.zzd
        /* JADX INFO: renamed from: a */
        public final GameEntity createFromParcel(Parcel parcel) {
            if (GamesDowngradeableSafeParcel.Y3(DowngradeableSafeParcel.W3()) || DowngradeableSafeParcel.V3(GameEntity.class.getCanonicalName())) {
                return super.createFromParcel(parcel);
            }
            String string = parcel.readString();
            String string2 = parcel.readString();
            String string3 = parcel.readString();
            String string4 = parcel.readString();
            String string5 = parcel.readString();
            String string6 = parcel.readString();
            String string7 = parcel.readString();
            Uri uri = string7 == null ? null : Uri.parse(string7);
            String string8 = parcel.readString();
            Uri uri2 = string8 == null ? null : Uri.parse(string8);
            String string9 = parcel.readString();
            return new GameEntity(string, string2, string3, string4, string5, string6, uri, uri2, string9 == null ? null : Uri.parse(string9), parcel.readInt() > 0, parcel.readInt() > 0, parcel.readString(), parcel.readInt(), parcel.readInt(), parcel.readInt(), false, false, null, null, null, false, false, false, null, false);
        }

        @Override // com.google.android.gms.games.zzd, android.os.Parcelable.Creator
        public final /* synthetic */ GameEntity createFromParcel(Parcel parcel) {
            return createFromParcel(parcel);
        }
    }

    public GameEntity(Game game) {
        this.f7938q = game.getApplicationId();
        this.f7940s = game.I0();
        this.f7941t = game.n2();
        this.f7942u = game.getDescription();
        this.f7943v = game.a1();
        this.f7939r = game.s();
        this.f7944w = game.g();
        this.H = game.getIconImageUrl();
        this.f7945x = game.O();
        this.I = game.getHiResImageUrl();
        this.f7946y = game.Q3();
        this.J = game.getFeaturedImageUrl();
        this.f7947z = game.a();
        this.A = game.b();
        this.B = game.c();
        this.C = 1;
        this.D = game.m2();
        this.E = game.d1();
        this.F = game.e();
        this.G = game.f();
        this.K = game.C0();
        this.L = game.d();
        this.M = game.U1();
        this.N = game.J1();
        this.O = game.t3();
    }

    static int a4(Game game) {
        return Objects.c(game.getApplicationId(), game.s(), game.I0(), game.n2(), game.getDescription(), game.a1(), game.g(), game.O(), game.Q3(), Boolean.valueOf(game.a()), Boolean.valueOf(game.b()), game.c(), Integer.valueOf(game.m2()), Integer.valueOf(game.d1()), Boolean.valueOf(game.e()), Boolean.valueOf(game.f()), Boolean.valueOf(game.C0()), Boolean.valueOf(game.d()), Boolean.valueOf(game.U1()), game.J1(), Boolean.valueOf(game.t3()));
    }

    static boolean b4(Game game, Object obj) {
        if (!(obj instanceof Game)) {
            return false;
        }
        if (game == obj) {
            return true;
        }
        Game game2 = (Game) obj;
        return Objects.b(game2.getApplicationId(), game.getApplicationId()) && Objects.b(game2.s(), game.s()) && Objects.b(game2.I0(), game.I0()) && Objects.b(game2.n2(), game.n2()) && Objects.b(game2.getDescription(), game.getDescription()) && Objects.b(game2.a1(), game.a1()) && Objects.b(game2.g(), game.g()) && Objects.b(game2.O(), game.O()) && Objects.b(game2.Q3(), game.Q3()) && Objects.b(Boolean.valueOf(game2.a()), Boolean.valueOf(game.a())) && Objects.b(Boolean.valueOf(game2.b()), Boolean.valueOf(game.b())) && Objects.b(game2.c(), game.c()) && Objects.b(Integer.valueOf(game2.m2()), Integer.valueOf(game.m2())) && Objects.b(Integer.valueOf(game2.d1()), Integer.valueOf(game.d1())) && Objects.b(Boolean.valueOf(game2.e()), Boolean.valueOf(game.e())) && Objects.b(Boolean.valueOf(game2.f()), Boolean.valueOf(game.f())) && Objects.b(Boolean.valueOf(game2.C0()), Boolean.valueOf(game.C0())) && Objects.b(Boolean.valueOf(game2.d()), Boolean.valueOf(game.d())) && Objects.b(Boolean.valueOf(game2.U1()), Boolean.valueOf(game.U1())) && Objects.b(game2.J1(), game.J1()) && Objects.b(Boolean.valueOf(game2.t3()), Boolean.valueOf(game.t3()));
    }

    static String e4(Game game) {
        return Objects.d(game).a("ApplicationId", game.getApplicationId()).a("DisplayName", game.s()).a("PrimaryCategory", game.I0()).a("SecondaryCategory", game.n2()).a("Description", game.getDescription()).a("DeveloperName", game.a1()).a("IconImageUri", game.g()).a("IconImageUrl", game.getIconImageUrl()).a("HiResImageUri", game.O()).a("HiResImageUrl", game.getHiResImageUrl()).a("FeaturedImageUri", game.Q3()).a("FeaturedImageUrl", game.getFeaturedImageUrl()).a("PlayEnabledGame", Boolean.valueOf(game.a())).a("InstanceInstalled", Boolean.valueOf(game.b())).a("InstancePackageName", game.c()).a("AchievementTotalCount", Integer.valueOf(game.m2())).a("LeaderboardCount", Integer.valueOf(game.d1())).a("AreSnapshotsEnabled", Boolean.valueOf(game.U1())).a("ThemeColor", game.J1()).a("HasGamepadSupport", Boolean.valueOf(game.t3())).toString();
    }

    @Override // com.google.android.gms.games.Game
    public final boolean C0() {
        return this.K;
    }

    @Override // com.google.android.gms.games.Game
    public final String I0() {
        return this.f7940s;
    }

    @Override // com.google.android.gms.games.Game
    public final String J1() {
        return this.N;
    }

    @Override // com.google.android.gms.games.Game
    public final Uri O() {
        return this.f7945x;
    }

    @Override // com.google.android.gms.games.Game
    public final Uri Q3() {
        return this.f7946y;
    }

    @Override // com.google.android.gms.games.Game
    public final boolean U1() {
        return this.M;
    }

    @Override // com.google.android.gms.common.data.Freezable
    /* JADX INFO: renamed from: Z3, reason: merged with bridge method [inline-methods] */
    public final Game p3() {
        return this;
    }

    @Override // com.google.android.gms.games.Game
    public final boolean a() {
        return this.f7947z;
    }

    @Override // com.google.android.gms.games.Game
    public final String a1() {
        return this.f7943v;
    }

    @Override // com.google.android.gms.games.Game
    public final boolean b() {
        return this.A;
    }

    @Override // com.google.android.gms.games.Game
    public final String c() {
        return this.B;
    }

    @Override // com.google.android.gms.games.Game
    public final boolean d() {
        return this.L;
    }

    @Override // com.google.android.gms.games.Game
    public final int d1() {
        return this.E;
    }

    @Override // com.google.android.gms.games.Game
    public final boolean e() {
        return this.F;
    }

    public final boolean equals(Object obj) {
        return b4(this, obj);
    }

    @Override // com.google.android.gms.games.Game
    public final boolean f() {
        return this.G;
    }

    @Override // com.google.android.gms.games.Game
    public final Uri g() {
        return this.f7944w;
    }

    @Override // com.google.android.gms.games.Game
    public final String getApplicationId() {
        return this.f7938q;
    }

    @Override // com.google.android.gms.games.Game
    public final String getDescription() {
        return this.f7942u;
    }

    @Override // com.google.android.gms.games.Game
    public final String getFeaturedImageUrl() {
        return this.J;
    }

    @Override // com.google.android.gms.games.Game
    public final String getHiResImageUrl() {
        return this.I;
    }

    @Override // com.google.android.gms.games.Game
    public final String getIconImageUrl() {
        return this.H;
    }

    public final int hashCode() {
        return a4(this);
    }

    @Override // com.google.android.gms.games.Game
    public final int m2() {
        return this.D;
    }

    @Override // com.google.android.gms.games.Game
    public final String n2() {
        return this.f7941t;
    }

    @Override // com.google.android.gms.games.Game
    public final String s() {
        return this.f7939r;
    }

    @Override // com.google.android.gms.games.Game
    public final boolean t3() {
        return this.O;
    }

    public final String toString() {
        return e4(this);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        if (X3()) {
            parcel.writeString(this.f7938q);
            parcel.writeString(this.f7939r);
            parcel.writeString(this.f7940s);
            parcel.writeString(this.f7941t);
            parcel.writeString(this.f7942u);
            parcel.writeString(this.f7943v);
            Uri uri = this.f7944w;
            parcel.writeString(uri == null ? null : uri.toString());
            Uri uri2 = this.f7945x;
            parcel.writeString(uri2 == null ? null : uri2.toString());
            Uri uri3 = this.f7946y;
            parcel.writeString(uri3 != null ? uri3.toString() : null);
            parcel.writeInt(this.f7947z ? 1 : 0);
            parcel.writeInt(this.A ? 1 : 0);
            parcel.writeString(this.B);
            parcel.writeInt(this.C);
            parcel.writeInt(this.D);
            parcel.writeInt(this.E);
            return;
        }
        int iA = SafeParcelWriter.a(parcel);
        SafeParcelWriter.t(parcel, 1, getApplicationId(), false);
        SafeParcelWriter.t(parcel, 2, s(), false);
        SafeParcelWriter.t(parcel, 3, I0(), false);
        SafeParcelWriter.t(parcel, 4, n2(), false);
        SafeParcelWriter.t(parcel, 5, getDescription(), false);
        SafeParcelWriter.t(parcel, 6, a1(), false);
        SafeParcelWriter.s(parcel, 7, g(), i10, false);
        SafeParcelWriter.s(parcel, 8, O(), i10, false);
        SafeParcelWriter.s(parcel, 9, Q3(), i10, false);
        SafeParcelWriter.c(parcel, 10, this.f7947z);
        SafeParcelWriter.c(parcel, 11, this.A);
        SafeParcelWriter.t(parcel, 12, this.B, false);
        SafeParcelWriter.l(parcel, 13, this.C);
        SafeParcelWriter.l(parcel, 14, m2());
        SafeParcelWriter.l(parcel, 15, d1());
        SafeParcelWriter.c(parcel, 16, this.F);
        SafeParcelWriter.c(parcel, 17, this.G);
        SafeParcelWriter.t(parcel, 18, getIconImageUrl(), false);
        SafeParcelWriter.t(parcel, 19, getHiResImageUrl(), false);
        SafeParcelWriter.t(parcel, 20, getFeaturedImageUrl(), false);
        SafeParcelWriter.c(parcel, 21, this.K);
        SafeParcelWriter.c(parcel, 22, this.L);
        SafeParcelWriter.c(parcel, 23, U1());
        SafeParcelWriter.t(parcel, 24, J1(), false);
        SafeParcelWriter.c(parcel, 25, t3());
        SafeParcelWriter.b(parcel, iA);
    }

    @SafeParcelable.Constructor
    GameEntity(@SafeParcelable.Param String str, @SafeParcelable.Param String str2, @SafeParcelable.Param String str3, @SafeParcelable.Param String str4, @SafeParcelable.Param String str5, @SafeParcelable.Param String str6, @SafeParcelable.Param Uri uri, @SafeParcelable.Param Uri uri2, @SafeParcelable.Param Uri uri3, @SafeParcelable.Param boolean z10, @SafeParcelable.Param boolean z11, @SafeParcelable.Param String str7, @SafeParcelable.Param int i10, @SafeParcelable.Param int i11, @SafeParcelable.Param int i12, @SafeParcelable.Param boolean z12, @SafeParcelable.Param boolean z13, @SafeParcelable.Param String str8, @SafeParcelable.Param String str9, @SafeParcelable.Param String str10, @SafeParcelable.Param boolean z14, @SafeParcelable.Param boolean z15, @SafeParcelable.Param boolean z16, @SafeParcelable.Param String str11, @SafeParcelable.Param boolean z17) {
        this.f7938q = str;
        this.f7939r = str2;
        this.f7940s = str3;
        this.f7941t = str4;
        this.f7942u = str5;
        this.f7943v = str6;
        this.f7944w = uri;
        this.H = str8;
        this.f7945x = uri2;
        this.I = str9;
        this.f7946y = uri3;
        this.J = str10;
        this.f7947z = z10;
        this.A = z11;
        this.B = str7;
        this.C = i10;
        this.D = i11;
        this.E = i12;
        this.F = z12;
        this.G = z13;
        this.K = z14;
        this.L = z15;
        this.M = z16;
        this.N = str11;
        this.O = z17;
    }
}
