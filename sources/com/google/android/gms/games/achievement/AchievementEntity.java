package com.google.android.gms.games.achievement;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.apps.common.proguard.UsedByReflection;
import com.google.android.gms.common.internal.Asserts;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.games.Player;
import com.google.android.gms.games.PlayerEntity;
import com.google.android.gms.games.internal.zzb;

/* JADX INFO: compiled from: com.google.android.gms:play-services-games@@21.0.0 */
/* JADX INFO: loaded from: classes.dex */
@UsedByReflection("GamesGmsClientImpl.java")
@SafeParcelable.Class
@SafeParcelable.Reserved
public final class AchievementEntity extends zzb implements Achievement {
    public static final Parcelable.Creator<AchievementEntity> CREATOR = new zza();

    @SafeParcelable.Field
    private final int A;

    @SafeParcelable.Field
    private final String B;

    @SafeParcelable.Field
    private final long C;

    @SafeParcelable.Field
    private final long D;

    @SafeParcelable.Field
    private final float E;

    @SafeParcelable.Field
    private final String F;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @SafeParcelable.Field
    private final String f8023o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @SafeParcelable.Field
    private final int f8024p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    @SafeParcelable.Field
    private final String f8025q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    @SafeParcelable.Field
    private final String f8026r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    @SafeParcelable.Field
    private final Uri f8027s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    @SafeParcelable.Field
    private final String f8028t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    @SafeParcelable.Field
    private final Uri f8029u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    @SafeParcelable.Field
    private final String f8030v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    @SafeParcelable.Field
    private final int f8031w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    @SafeParcelable.Field
    private final String f8032x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    @SafeParcelable.Field
    private final PlayerEntity f8033y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    @SafeParcelable.Field
    private final int f8034z;

    public AchievementEntity(Achievement achievement) {
        String strY1 = achievement.Y1();
        this.f8023o = strY1;
        this.f8024p = achievement.o();
        this.f8025q = achievement.getName();
        String description = achievement.getDescription();
        this.f8026r = description;
        this.f8027s = achievement.Y();
        this.f8028t = achievement.getUnlockedImageUrl();
        this.f8029u = achievement.g2();
        this.f8030v = achievement.getRevealedImageUrl();
        if (achievement.R() != null) {
            this.f8033y = (PlayerEntity) achievement.R().p3();
        } else {
            this.f8033y = null;
        }
        this.f8034z = achievement.getState();
        this.C = achievement.W2();
        this.D = achievement.t1();
        this.E = achievement.P();
        this.F = achievement.getApplicationId();
        if (achievement.o() == 1) {
            this.f8031w = achievement.j3();
            this.f8032x = achievement.f0();
            this.A = achievement.r2();
            this.B = achievement.D0();
        } else {
            this.f8031w = 0;
            this.f8032x = null;
            this.A = 0;
            this.B = null;
        }
        Asserts.a(strY1);
        Asserts.a(description);
    }

    static int V3(Achievement achievement) {
        int iR2;
        int iJ3;
        if (achievement.o() == 1) {
            iR2 = achievement.r2();
            iJ3 = achievement.j3();
        } else {
            iR2 = 0;
            iJ3 = 0;
        }
        return Objects.c(achievement.Y1(), achievement.getApplicationId(), achievement.getName(), Integer.valueOf(achievement.o()), achievement.getDescription(), Long.valueOf(achievement.t1()), Integer.valueOf(achievement.getState()), Long.valueOf(achievement.W2()), achievement.R(), Integer.valueOf(iR2), Integer.valueOf(iJ3));
    }

    static boolean W3(Achievement achievement, Object obj) {
        if (!(obj instanceof Achievement)) {
            return false;
        }
        if (achievement == obj) {
            return true;
        }
        Achievement achievement2 = (Achievement) obj;
        if (achievement2.o() != achievement.o()) {
            return false;
        }
        return (achievement.o() != 1 || (achievement2.r2() == achievement.r2() && achievement2.j3() == achievement.j3())) && achievement2.t1() == achievement.t1() && achievement2.getState() == achievement.getState() && achievement2.W2() == achievement.W2() && Objects.b(achievement2.Y1(), achievement.Y1()) && Objects.b(achievement2.getApplicationId(), achievement.getApplicationId()) && Objects.b(achievement2.getName(), achievement.getName()) && Objects.b(achievement2.getDescription(), achievement.getDescription()) && Objects.b(achievement2.R(), achievement.R()) && achievement2.P() == achievement.P();
    }

    static String X3(Achievement achievement) {
        Objects.ToStringHelper toStringHelperA = Objects.d(achievement).a("Id", achievement.Y1()).a("Game Id", achievement.getApplicationId()).a("Type", Integer.valueOf(achievement.o())).a("Name", achievement.getName()).a("Description", achievement.getDescription()).a("Player", achievement.R()).a("State", Integer.valueOf(achievement.getState())).a("Rarity Percent", Float.valueOf(achievement.P()));
        if (achievement.o() == 1) {
            toStringHelperA.a("CurrentSteps", Integer.valueOf(achievement.r2()));
            toStringHelperA.a("TotalSteps", Integer.valueOf(achievement.j3()));
        }
        return toStringHelperA.toString();
    }

    @Override // com.google.android.gms.games.achievement.Achievement
    public final String D0() {
        Asserts.b(o() == 1);
        return this.B;
    }

    @Override // com.google.android.gms.games.achievement.Achievement
    public final float P() {
        return this.E;
    }

    @Override // com.google.android.gms.games.achievement.Achievement
    public final Player R() {
        return this.f8033y;
    }

    @Override // com.google.android.gms.games.achievement.Achievement
    public final long W2() {
        return this.C;
    }

    @Override // com.google.android.gms.games.achievement.Achievement
    public final Uri Y() {
        return this.f8027s;
    }

    @Override // com.google.android.gms.games.achievement.Achievement
    public final String Y1() {
        return this.f8023o;
    }

    public final boolean equals(Object obj) {
        return W3(this, obj);
    }

    @Override // com.google.android.gms.games.achievement.Achievement
    public final String f0() {
        Asserts.b(o() == 1);
        return this.f8032x;
    }

    @Override // com.google.android.gms.games.achievement.Achievement
    public final Uri g2() {
        return this.f8029u;
    }

    @Override // com.google.android.gms.games.achievement.Achievement
    public final String getApplicationId() {
        return this.F;
    }

    @Override // com.google.android.gms.games.achievement.Achievement
    public final String getDescription() {
        return this.f8026r;
    }

    @Override // com.google.android.gms.games.achievement.Achievement
    public final String getName() {
        return this.f8025q;
    }

    @Override // com.google.android.gms.games.achievement.Achievement
    public final String getRevealedImageUrl() {
        return this.f8030v;
    }

    @Override // com.google.android.gms.games.achievement.Achievement
    public final int getState() {
        return this.f8034z;
    }

    @Override // com.google.android.gms.games.achievement.Achievement
    public final String getUnlockedImageUrl() {
        return this.f8028t;
    }

    public final int hashCode() {
        return V3(this);
    }

    @Override // com.google.android.gms.games.achievement.Achievement
    public final int j3() {
        Asserts.b(o() == 1);
        return this.f8031w;
    }

    @Override // com.google.android.gms.games.achievement.Achievement
    public final int o() {
        return this.f8024p;
    }

    @Override // com.google.android.gms.games.achievement.Achievement
    public final int r2() {
        Asserts.b(o() == 1);
        return this.A;
    }

    @Override // com.google.android.gms.games.achievement.Achievement
    public final long t1() {
        return this.D;
    }

    public final String toString() {
        return X3(this);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        int iA = SafeParcelWriter.a(parcel);
        SafeParcelWriter.t(parcel, 1, Y1(), false);
        SafeParcelWriter.l(parcel, 2, o());
        SafeParcelWriter.t(parcel, 3, getName(), false);
        SafeParcelWriter.t(parcel, 4, getDescription(), false);
        SafeParcelWriter.s(parcel, 5, Y(), i10, false);
        SafeParcelWriter.t(parcel, 6, getUnlockedImageUrl(), false);
        SafeParcelWriter.s(parcel, 7, g2(), i10, false);
        SafeParcelWriter.t(parcel, 8, getRevealedImageUrl(), false);
        SafeParcelWriter.l(parcel, 9, this.f8031w);
        SafeParcelWriter.t(parcel, 10, this.f8032x, false);
        SafeParcelWriter.s(parcel, 11, this.f8033y, i10, false);
        SafeParcelWriter.l(parcel, 12, getState());
        SafeParcelWriter.l(parcel, 13, this.A);
        SafeParcelWriter.t(parcel, 14, this.B, false);
        SafeParcelWriter.p(parcel, 15, W2());
        SafeParcelWriter.p(parcel, 16, t1());
        SafeParcelWriter.i(parcel, 17, this.E);
        SafeParcelWriter.t(parcel, 18, this.F, false);
        SafeParcelWriter.b(parcel, iA);
    }

    @SafeParcelable.Constructor
    AchievementEntity(@SafeParcelable.Param String str, @SafeParcelable.Param int i10, @SafeParcelable.Param String str2, @SafeParcelable.Param String str3, @SafeParcelable.Param Uri uri, @SafeParcelable.Param String str4, @SafeParcelable.Param Uri uri2, @SafeParcelable.Param String str5, @SafeParcelable.Param int i11, @SafeParcelable.Param String str6, @SafeParcelable.Param PlayerEntity playerEntity, @SafeParcelable.Param int i12, @SafeParcelable.Param int i13, @SafeParcelable.Param String str7, @SafeParcelable.Param long j10, @SafeParcelable.Param long j11, @SafeParcelable.Param float f10, @SafeParcelable.Param String str8) {
        this.f8023o = str;
        this.f8024p = i10;
        this.f8025q = str2;
        this.f8026r = str3;
        this.f8027s = uri;
        this.f8028t = str4;
        this.f8029u = uri2;
        this.f8030v = str5;
        this.f8031w = i11;
        this.f8032x = str6;
        this.f8033y = playerEntity;
        this.f8034z = i12;
        this.A = i13;
        this.B = str7;
        this.C = j10;
        this.D = j11;
        this.E = f10;
        this.F = str8;
    }
}
