###### Class com.google.android.gms.games.leaderboard.LeaderboardVariantEntity (com.google.android.gms.games.leaderboard.LeaderboardVariantEntity)
.class public final Lcom/google/android/gms/games/leaderboard/LeaderboardVariantEntity;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-games@@21.0.0"

# interfaces
.implements Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;


# annotations
.annotation build Lcom/google/android/apps/common/proguard/UsedByReflection;
    value = "GamesGmsClientImpl.java"
.end annotation


# instance fields
.field private final o:I

.field private final p:I

.field private final q:Z

.field private final r:J

.field private final s:Ljava/lang/String;

.field private final t:J

.field private final u:Ljava/lang/String;

.field private final v:Ljava/lang/String;

.field private final w:J

.field private final x:Ljava/lang/String;

.field private final y:Ljava/lang/String;

.field private final z:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-interface {p1}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->U2()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/games/leaderboard/LeaderboardVariantEntity;->o:I

    .line 3
    invoke-interface {p1}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->G3()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/games/leaderboard/LeaderboardVariantEntity;->p:I

    .line 4
    invoke-interface {p1}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->g0()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/games/leaderboard/LeaderboardVariantEntity;->q:Z

    .line 5
    invoke-interface {p1}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->g3()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/games/leaderboard/LeaderboardVariantEntity;->r:J

    .line 6
    invoke-interface {p1}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->Z()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/games/leaderboard/LeaderboardVariantEntity;->s:Ljava/lang/String;

    .line 7
    invoke-interface {p1}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->J2()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/games/leaderboard/LeaderboardVariantEntity;->t:J

    .line 8
    invoke-interface {p1}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->i3()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/games/leaderboard/LeaderboardVariantEntity;->u:Ljava/lang/String;

    .line 9
    invoke-interface {p1}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->U3()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/games/leaderboard/LeaderboardVariantEntity;->v:Ljava/lang/String;

    .line 10
    invoke-interface {p1}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->S1()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/games/leaderboard/LeaderboardVariantEntity;->w:J

    .line 11
    invoke-interface {p1}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->N3()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/games/leaderboard/LeaderboardVariantEntity;->x:Ljava/lang/String;

    .line 12
    invoke-interface {p1}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->u2()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/games/leaderboard/LeaderboardVariantEntity;->y:Ljava/lang/String;

    .line 13
    invoke-interface {p1}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->R2()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/games/leaderboard/LeaderboardVariantEntity;->z:Ljava/lang/String;

    return-void
.end method

.method static h(Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;)I
    .registers 4

    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    invoke-interface {p0}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->U2()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 2
    invoke-interface {p0}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->G3()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 3
    invoke-interface {p0}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->g0()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 4
    invoke-interface {p0}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->g3()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 5
    invoke-interface {p0}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->Z()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 6
    invoke-interface {p0}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->J2()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 7
    invoke-interface {p0}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->i3()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 8
    invoke-interface {p0}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->S1()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 9
    invoke-interface {p0}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->N3()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 10
    invoke-interface {p0}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->R2()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 11
    invoke-interface {p0}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->u2()Ljava/lang/String;

    move-result-object p0

    const/16 v1, 0xa

    aput-object p0, v0, v1

    .line 12
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Objects;->c([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method static t(Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;Ljava/lang/Object;)Z
    .registers 7

    .line 1
    instance-of v0, p1, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    const/4 v0, 0x1

    if-ne p0, p1, :cond_a

    return v0

    .line 2
    :cond_a
    check-cast p1, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;

    .line 3
    invoke-interface {p1}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->U2()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p0}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->U2()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/Objects;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d7

    .line 4
    invoke-interface {p1}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->G3()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p0}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->G3()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/Objects;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d7

    .line 5
    invoke-interface {p1}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->g0()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {p0}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->g0()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/Objects;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d7

    .line 6
    invoke-interface {p1}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->g3()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {p0}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->g3()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/Objects;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d7

    .line 7
    invoke-interface {p1}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->Z()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->Z()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/Objects;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d7

    .line 8
    invoke-interface {p1}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->J2()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {p0}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->J2()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/Objects;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d7

    .line 9
    invoke-interface {p1}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->i3()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->i3()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/Objects;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d7

    .line 10
    invoke-interface {p1}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->S1()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {p0}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->S1()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/Objects;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d7

    .line 11
    invoke-interface {p1}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->N3()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->N3()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/Objects;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d7

    .line 12
    invoke-interface {p1}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->R2()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->R2()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/Objects;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d7

    .line 13
    invoke-interface {p1}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->u2()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->u2()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/google/android/gms/common/internal/Objects;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_d7

    return v0

    :cond_d7
    return v1
.end method

.method static v(Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;)Ljava/lang/String;
    .registers 6

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/common/internal/Objects;->d(Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    .line 2
    invoke-interface {p0}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->U2()I

    move-result v1

    invoke-static {v1}, Lcom/google/android/gms/internal/games/zzfa;->a(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "TimeSpan"

    .line 3
    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    .line 4
    invoke-interface {p0}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->G3()I

    move-result v1

    const/4 v2, -0x1

    const-string v3, "SOCIAL_1P"

    if-eq v1, v2, :cond_4c

    if-eqz v1, :cond_49

    const/4 v2, 0x1

    if-eq v1, v2, :cond_46

    const/4 v2, 0x2

    if-eq v1, v2, :cond_4e

    const/4 v2, 0x3

    if-eq v1, v2, :cond_43

    const/4 v2, 0x4

    if-ne v1, v2, :cond_2a

    goto :goto_4e

    .line 5
    :cond_2a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const/16 v0, 0x2b

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Unknown leaderboard collection: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_43
    const-string v3, "FRIENDS"

    goto :goto_4e

    :cond_46
    const-string v3, "SOCIAL"

    goto :goto_4e

    :cond_49
    const-string v3, "PUBLIC"

    goto :goto_4e

    :cond_4c
    const-string v3, "UNKNOWN"

    :cond_4e
    :goto_4e
    const-string v1, "Collection"

    .line 6
    invoke-virtual {v0, v1, v3}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    .line 7
    invoke-interface {p0}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->g0()Z

    move-result v1

    const-string v2, "none"

    if-eqz v1, :cond_65

    invoke-interface {p0}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->g3()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    goto :goto_66

    :cond_65
    move-object v1, v2

    :goto_66
    const-string v3, "RawPlayerScore"

    invoke-virtual {v0, v3, v1}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    .line 8
    invoke-interface {p0}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->g0()Z

    move-result v1

    if-eqz v1, :cond_77

    invoke-interface {p0}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->Z()Ljava/lang/String;

    move-result-object v1

    goto :goto_78

    :cond_77
    move-object v1, v2

    :goto_78
    const-string v3, "DisplayPlayerScore"

    .line 9
    invoke-virtual {v0, v3, v1}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    .line 10
    invoke-interface {p0}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->g0()Z

    move-result v1

    if-eqz v1, :cond_8d

    invoke-interface {p0}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->J2()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    goto :goto_8e

    :cond_8d
    move-object v1, v2

    :goto_8e
    const-string v3, "PlayerRank"

    invoke-virtual {v0, v3, v1}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    .line 11
    invoke-interface {p0}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->g0()Z

    move-result v1

    if-eqz v1, :cond_9e

    invoke-interface {p0}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->i3()Ljava/lang/String;

    move-result-object v2

    :cond_9e
    const-string v1, "DisplayPlayerRank"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    .line 12
    invoke-interface {p0}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->S1()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "NumScores"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    .line 13
    invoke-interface {p0}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->N3()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TopPageNextToken"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    .line 14
    invoke-interface {p0}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->R2()Ljava/lang/String;

    move-result-object v1

    const-string v2, "WindowPageNextToken"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    .line 15
    invoke-interface {p0}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->u2()Ljava/lang/String;

    move-result-object p0

    const-string v1, "WindowPagePrevToken"

    invoke-virtual {v0, v1, p0}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object p0

    .line 16
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final G3()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/google/android/gms/games/leaderboard/LeaderboardVariantEntity;->p:I

    return v0
.end method

.method public final J2()J
    .registers 3

    .line 1
    iget-wide v0, p0, Lcom/google/android/gms/games/leaderboard/LeaderboardVariantEntity;->t:J

    return-wide v0
.end method

.method public final N3()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/games/leaderboard/LeaderboardVariantEntity;->x:Ljava/lang/String;

    return-object v0
.end method

.method public final R2()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/games/leaderboard/LeaderboardVariantEntity;->z:Ljava/lang/String;

    return-object v0
.end method

.method public final S1()J
    .registers 3

    .line 1
    iget-wide v0, p0, Lcom/google/android/gms/games/leaderboard/LeaderboardVariantEntity;->w:J

    return-wide v0
.end method

.method public final U2()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/google/android/gms/games/leaderboard/LeaderboardVariantEntity;->o:I

    return v0
.end method

.method public final U3()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/games/leaderboard/LeaderboardVariantEntity;->v:Ljava/lang/String;

    return-object v0
.end method

.method public final Z()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/games/leaderboard/LeaderboardVariantEntity;->s:Ljava/lang/String;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 2

    .line 1
    invoke-static {p0, p1}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariantEntity;->t(Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final g0()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/games/leaderboard/LeaderboardVariantEntity;->q:Z

    return v0
.end method

.method public final g3()J
    .registers 3

    .line 1
    iget-wide v0, p0, Lcom/google/android/gms/games/leaderboard/LeaderboardVariantEntity;->r:J

    return-wide v0
.end method

.method public final hashCode()I
    .registers 2

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariantEntity;->h(Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;)I

    move-result v0

    return v0
.end method

.method public final i3()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/games/leaderboard/LeaderboardVariantEntity;->u:Ljava/lang/String;

    return-object v0
.end method

.method public final bridge synthetic p3()Ljava/lang/Object;
    .registers 1

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .registers 2

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariantEntity;->v(Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final u2()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/games/leaderboard/LeaderboardVariantEntity;->y:Ljava/lang/String;

    return-object v0
.end method
