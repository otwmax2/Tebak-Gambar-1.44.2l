###### Class com.google.android.gms.games.achievement.AchievementEntity (com.google.android.gms.games.achievement.AchievementEntity)
.class public final Lcom/google/android/gms/games/achievement/AchievementEntity;
.super Lcom/google/android/gms/games/internal/zzb;
.source "com.google.android.gms:play-services-games@@21.0.0"

# interfaces
.implements Lcom/google/android/gms/games/achievement/Achievement;


# annotations
.annotation build Lcom/google/android/apps/common/proguard/UsedByReflection;
    value = "GamesGmsClientImpl.java"
.end annotation

.annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Class;
.end annotation

.annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Reserved;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/games/achievement/AchievementEntity;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final A:I
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
    .end annotation
.end field

.field private final B:Ljava/lang/String;
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
    .end annotation
.end field

.field private final C:J
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
    .end annotation
.end field

.field private final D:J
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
    .end annotation
.end field

.field private final E:F
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
    .end annotation
.end field

.field private final F:Ljava/lang/String;
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
    .end annotation
.end field

.field private final o:Ljava/lang/String;
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
    .end annotation
.end field

.field private final p:I
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
    .end annotation
.end field

.field private final q:Ljava/lang/String;
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
    .end annotation
.end field

.field private final r:Ljava/lang/String;
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
    .end annotation
.end field

.field private final s:Landroid/net/Uri;
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
    .end annotation
.end field

.field private final t:Ljava/lang/String;
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
    .end annotation
.end field

.field private final u:Landroid/net/Uri;
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
    .end annotation
.end field

.field private final v:Ljava/lang/String;
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
    .end annotation
.end field

.field private final w:I
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
    .end annotation
.end field

.field private final x:Ljava/lang/String;
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
    .end annotation
.end field

.field private final y:Lcom/google/android/gms/games/PlayerEntity;
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
    .end annotation
.end field

.field private final z:I
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lcom/google/android/gms/games/achievement/zza;

    invoke-direct {v0}, Lcom/google/android/gms/games/achievement/zza;-><init>()V

    sput-object v0, Lcom/google/android/gms/games/achievement/AchievementEntity;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/games/achievement/Achievement;)V
    .registers 8

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/games/internal/zzb;-><init>()V

    .line 2
    invoke-interface {p1}, Lcom/google/android/gms/games/achievement/Achievement;->Y1()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/games/achievement/AchievementEntity;->o:Ljava/lang/String;

    .line 3
    invoke-interface {p1}, Lcom/google/android/gms/games/achievement/Achievement;->o()I

    move-result v1

    iput v1, p0, Lcom/google/android/gms/games/achievement/AchievementEntity;->p:I

    .line 4
    invoke-interface {p1}, Lcom/google/android/gms/games/achievement/Achievement;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/games/achievement/AchievementEntity;->q:Ljava/lang/String;

    .line 5
    invoke-interface {p1}, Lcom/google/android/gms/games/achievement/Achievement;->getDescription()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/games/achievement/AchievementEntity;->r:Ljava/lang/String;

    .line 6
    invoke-interface {p1}, Lcom/google/android/gms/games/achievement/Achievement;->Y()Landroid/net/Uri;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/games/achievement/AchievementEntity;->s:Landroid/net/Uri;

    .line 7
    invoke-interface {p1}, Lcom/google/android/gms/games/achievement/Achievement;->getUnlockedImageUrl()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/games/achievement/AchievementEntity;->t:Ljava/lang/String;

    .line 8
    invoke-interface {p1}, Lcom/google/android/gms/games/achievement/Achievement;->g2()Landroid/net/Uri;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/games/achievement/AchievementEntity;->u:Landroid/net/Uri;

    .line 9
    invoke-interface {p1}, Lcom/google/android/gms/games/achievement/Achievement;->getRevealedImageUrl()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/games/achievement/AchievementEntity;->v:Ljava/lang/String;

    .line 10
    invoke-interface {p1}, Lcom/google/android/gms/games/achievement/Achievement;->R()Lcom/google/android/gms/games/Player;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_47

    .line 11
    invoke-interface {p1}, Lcom/google/android/gms/games/achievement/Achievement;->R()Lcom/google/android/gms/games/Player;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gms/common/data/Freezable;->p3()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/games/PlayerEntity;

    iput-object v2, p0, Lcom/google/android/gms/games/achievement/AchievementEntity;->y:Lcom/google/android/gms/games/PlayerEntity;

    goto :goto_49

    .line 12
    :cond_47
    iput-object v3, p0, Lcom/google/android/gms/games/achievement/AchievementEntity;->y:Lcom/google/android/gms/games/PlayerEntity;

    .line 13
    :goto_49
    invoke-interface {p1}, Lcom/google/android/gms/games/achievement/Achievement;->getState()I

    move-result v2

    iput v2, p0, Lcom/google/android/gms/games/achievement/AchievementEntity;->z:I

    .line 14
    invoke-interface {p1}, Lcom/google/android/gms/games/achievement/Achievement;->W2()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/android/gms/games/achievement/AchievementEntity;->C:J

    .line 15
    invoke-interface {p1}, Lcom/google/android/gms/games/achievement/Achievement;->t1()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/android/gms/games/achievement/AchievementEntity;->D:J

    .line 16
    invoke-interface {p1}, Lcom/google/android/gms/games/achievement/Achievement;->P()F

    move-result v2

    iput v2, p0, Lcom/google/android/gms/games/achievement/AchievementEntity;->E:F

    .line 17
    invoke-interface {p1}, Lcom/google/android/gms/games/achievement/Achievement;->getApplicationId()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/games/achievement/AchievementEntity;->F:Ljava/lang/String;

    .line 18
    invoke-interface {p1}, Lcom/google/android/gms/games/achievement/Achievement;->o()I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_87

    .line 19
    invoke-interface {p1}, Lcom/google/android/gms/games/achievement/Achievement;->j3()I

    move-result v2

    iput v2, p0, Lcom/google/android/gms/games/achievement/AchievementEntity;->w:I

    .line 20
    invoke-interface {p1}, Lcom/google/android/gms/games/achievement/Achievement;->f0()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/games/achievement/AchievementEntity;->x:Ljava/lang/String;

    .line 21
    invoke-interface {p1}, Lcom/google/android/gms/games/achievement/Achievement;->r2()I

    move-result v2

    iput v2, p0, Lcom/google/android/gms/games/achievement/AchievementEntity;->A:I

    .line 22
    invoke-interface {p1}, Lcom/google/android/gms/games/achievement/Achievement;->D0()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/games/achievement/AchievementEntity;->B:Ljava/lang/String;

    goto :goto_90

    :cond_87
    const/4 p1, 0x0

    .line 23
    iput p1, p0, Lcom/google/android/gms/games/achievement/AchievementEntity;->w:I

    .line 24
    iput-object v3, p0, Lcom/google/android/gms/games/achievement/AchievementEntity;->x:Ljava/lang/String;

    .line 25
    iput p1, p0, Lcom/google/android/gms/games/achievement/AchievementEntity;->A:I

    .line 26
    iput-object v3, p0, Lcom/google/android/gms/games/achievement/AchievementEntity;->B:Ljava/lang/String;

    .line 27
    :goto_90
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Asserts;->a(Ljava/lang/Object;)V

    .line 28
    invoke-static {v1}, Lcom/google/android/gms/common/internal/Asserts;->a(Ljava/lang/Object;)V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;ILjava/lang/String;Lcom/google/android/gms/games/PlayerEntity;IILjava/lang/String;JJFLjava/lang/String;)V
    .registers 24
    .param p1    # Ljava/lang/String;
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
        .end annotation
    .end param
    .param p5    # Landroid/net/Uri;
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
        .end annotation
    .end param
    .param p7    # Landroid/net/Uri;
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
        .end annotation
    .end param
    .param p8    # Ljava/lang/String;
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
        .end annotation
    .end param
    .param p9    # I
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
        .end annotation
    .end param
    .param p10    # Ljava/lang/String;
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
        .end annotation
    .end param
    .param p11    # Lcom/google/android/gms/games/PlayerEntity;
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
        .end annotation
    .end param
    .param p12    # I
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
        .end annotation
    .end param
    .param p13    # I
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
        .end annotation
    .end param
    .param p14    # Ljava/lang/String;
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
        .end annotation
    .end param
    .param p15    # J
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
        .end annotation
    .end param
    .param p17    # J
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
        .end annotation
    .end param
    .param p19    # F
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
        .end annotation
    .end param
    .param p20    # Ljava/lang/String;
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
        .end annotation
    .end param
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Constructor;
    .end annotation

    move-object v0, p0

    .line 29
    invoke-direct {p0}, Lcom/google/android/gms/games/internal/zzb;-><init>()V

    move-object v1, p1

    .line 30
    iput-object v1, v0, Lcom/google/android/gms/games/achievement/AchievementEntity;->o:Ljava/lang/String;

    move v1, p2

    .line 31
    iput v1, v0, Lcom/google/android/gms/games/achievement/AchievementEntity;->p:I

    move-object v1, p3

    .line 32
    iput-object v1, v0, Lcom/google/android/gms/games/achievement/AchievementEntity;->q:Ljava/lang/String;

    move-object v1, p4

    .line 33
    iput-object v1, v0, Lcom/google/android/gms/games/achievement/AchievementEntity;->r:Ljava/lang/String;

    move-object v1, p5

    .line 34
    iput-object v1, v0, Lcom/google/android/gms/games/achievement/AchievementEntity;->s:Landroid/net/Uri;

    move-object v1, p6

    .line 35
    iput-object v1, v0, Lcom/google/android/gms/games/achievement/AchievementEntity;->t:Ljava/lang/String;

    move-object v1, p7

    .line 36
    iput-object v1, v0, Lcom/google/android/gms/games/achievement/AchievementEntity;->u:Landroid/net/Uri;

    move-object v1, p8

    .line 37
    iput-object v1, v0, Lcom/google/android/gms/games/achievement/AchievementEntity;->v:Ljava/lang/String;

    move v1, p9

    .line 38
    iput v1, v0, Lcom/google/android/gms/games/achievement/AchievementEntity;->w:I

    move-object v1, p10

    .line 39
    iput-object v1, v0, Lcom/google/android/gms/games/achievement/AchievementEntity;->x:Ljava/lang/String;

    move-object v1, p11

    .line 40
    iput-object v1, v0, Lcom/google/android/gms/games/achievement/AchievementEntity;->y:Lcom/google/android/gms/games/PlayerEntity;

    move v1, p12

    .line 41
    iput v1, v0, Lcom/google/android/gms/games/achievement/AchievementEntity;->z:I

    move/from16 v1, p13

    .line 42
    iput v1, v0, Lcom/google/android/gms/games/achievement/AchievementEntity;->A:I

    move-object/from16 v1, p14

    .line 43
    iput-object v1, v0, Lcom/google/android/gms/games/achievement/AchievementEntity;->B:Ljava/lang/String;

    move-wide/from16 v1, p15

    .line 44
    iput-wide v1, v0, Lcom/google/android/gms/games/achievement/AchievementEntity;->C:J

    move-wide/from16 v1, p17

    .line 45
    iput-wide v1, v0, Lcom/google/android/gms/games/achievement/AchievementEntity;->D:J

    move/from16 v1, p19

    .line 46
    iput v1, v0, Lcom/google/android/gms/games/achievement/AchievementEntity;->E:F

    move-object/from16 v1, p20

    .line 47
    iput-object v1, v0, Lcom/google/android/gms/games/achievement/AchievementEntity;->F:Ljava/lang/String;

    return-void
.end method

.method static V3(Lcom/google/android/gms/games/achievement/Achievement;)I
    .registers 8

    .line 1
    invoke-interface {p0}, Lcom/google/android/gms/games/achievement/Achievement;->o()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_11

    .line 2
    invoke-interface {p0}, Lcom/google/android/gms/games/achievement/Achievement;->r2()I

    move-result v0

    .line 3
    invoke-interface {p0}, Lcom/google/android/gms/games/achievement/Achievement;->j3()I

    move-result v3

    goto :goto_13

    :cond_11
    const/4 v0, 0x0

    const/4 v3, 0x0

    :goto_13
    const/16 v4, 0xb

    new-array v4, v4, [Ljava/lang/Object;

    .line 4
    invoke-interface {p0}, Lcom/google/android/gms/games/achievement/Achievement;->Y1()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    .line 5
    invoke-interface {p0}, Lcom/google/android/gms/games/achievement/Achievement;->getApplicationId()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v1

    const/4 v1, 0x2

    .line 6
    invoke-interface {p0}, Lcom/google/android/gms/games/achievement/Achievement;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v1

    const/4 v1, 0x3

    .line 7
    invoke-interface {p0}, Lcom/google/android/gms/games/achievement/Achievement;->o()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v1

    const/4 v1, 0x4

    .line 8
    invoke-interface {p0}, Lcom/google/android/gms/games/achievement/Achievement;->getDescription()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v1

    const/4 v1, 0x5

    .line 9
    invoke-interface {p0}, Lcom/google/android/gms/games/achievement/Achievement;->t1()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v4, v1

    const/4 v1, 0x6

    .line 10
    invoke-interface {p0}, Lcom/google/android/gms/games/achievement/Achievement;->getState()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v1

    const/4 v1, 0x7

    .line 11
    invoke-interface {p0}, Lcom/google/android/gms/games/achievement/Achievement;->W2()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v4, v1

    const/16 v1, 0x8

    .line 12
    invoke-interface {p0}, Lcom/google/android/gms/games/achievement/Achievement;->R()Lcom/google/android/gms/games/Player;

    move-result-object p0

    aput-object p0, v4, v1

    const/16 p0, 0x9

    .line 13
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, p0

    const/16 p0, 0xa

    .line 14
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, p0

    .line 15
    invoke-static {v4}, Lcom/google/android/gms/common/internal/Objects;->c([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method static W3(Lcom/google/android/gms/games/achievement/Achievement;Ljava/lang/Object;)Z
    .registers 9

    .line 1
    instance-of v0, p1, Lcom/google/android/gms/games/achievement/Achievement;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    const/4 v0, 0x1

    if-ne p0, p1, :cond_a

    return v0

    .line 2
    :cond_a
    check-cast p1, Lcom/google/android/gms/games/achievement/Achievement;

    .line 3
    invoke-interface {p1}, Lcom/google/android/gms/games/achievement/Achievement;->o()I

    move-result v2

    invoke-interface {p0}, Lcom/google/android/gms/games/achievement/Achievement;->o()I

    move-result v3

    if-eq v2, v3, :cond_17

    return v1

    .line 4
    :cond_17
    invoke-interface {p0}, Lcom/google/android/gms/games/achievement/Achievement;->o()I

    move-result v2

    if-ne v2, v0, :cond_33

    .line 5
    invoke-interface {p1}, Lcom/google/android/gms/games/achievement/Achievement;->r2()I

    move-result v2

    invoke-interface {p0}, Lcom/google/android/gms/games/achievement/Achievement;->r2()I

    move-result v3

    if-eq v2, v3, :cond_28

    return v1

    .line 6
    :cond_28
    invoke-interface {p1}, Lcom/google/android/gms/games/achievement/Achievement;->j3()I

    move-result v2

    invoke-interface {p0}, Lcom/google/android/gms/games/achievement/Achievement;->j3()I

    move-result v3

    if-eq v2, v3, :cond_33

    return v1

    .line 7
    :cond_33
    invoke-interface {p1}, Lcom/google/android/gms/games/achievement/Achievement;->t1()J

    move-result-wide v2

    invoke-interface {p0}, Lcom/google/android/gms/games/achievement/Achievement;->t1()J

    move-result-wide v4

    cmp-long v6, v2, v4

    if-nez v6, :cond_a8

    .line 8
    invoke-interface {p1}, Lcom/google/android/gms/games/achievement/Achievement;->getState()I

    move-result v2

    invoke-interface {p0}, Lcom/google/android/gms/games/achievement/Achievement;->getState()I

    move-result v3

    if-ne v2, v3, :cond_a8

    .line 9
    invoke-interface {p1}, Lcom/google/android/gms/games/achievement/Achievement;->W2()J

    move-result-wide v2

    invoke-interface {p0}, Lcom/google/android/gms/games/achievement/Achievement;->W2()J

    move-result-wide v4

    cmp-long v6, v2, v4

    if-nez v6, :cond_a8

    .line 10
    invoke-interface {p1}, Lcom/google/android/gms/games/achievement/Achievement;->Y1()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0}, Lcom/google/android/gms/games/achievement/Achievement;->Y1()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/Objects;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a8

    .line 11
    invoke-interface {p1}, Lcom/google/android/gms/games/achievement/Achievement;->getApplicationId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0}, Lcom/google/android/gms/games/achievement/Achievement;->getApplicationId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/Objects;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a8

    .line 12
    invoke-interface {p1}, Lcom/google/android/gms/games/achievement/Achievement;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0}, Lcom/google/android/gms/games/achievement/Achievement;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/Objects;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a8

    .line 13
    invoke-interface {p1}, Lcom/google/android/gms/games/achievement/Achievement;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0}, Lcom/google/android/gms/games/achievement/Achievement;->getDescription()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/Objects;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a8

    .line 14
    invoke-interface {p1}, Lcom/google/android/gms/games/achievement/Achievement;->R()Lcom/google/android/gms/games/Player;

    move-result-object v2

    invoke-interface {p0}, Lcom/google/android/gms/games/achievement/Achievement;->R()Lcom/google/android/gms/games/Player;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/Objects;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a8

    .line 15
    invoke-interface {p1}, Lcom/google/android/gms/games/achievement/Achievement;->P()F

    move-result p1

    invoke-interface {p0}, Lcom/google/android/gms/games/achievement/Achievement;->P()F

    move-result p0

    cmpl-float p0, p1, p0

    if-nez p0, :cond_a8

    return v0

    :cond_a8
    return v1
.end method

.method static X3(Lcom/google/android/gms/games/achievement/Achievement;)Ljava/lang/String;
    .registers 4

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/common/internal/Objects;->d(Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    .line 2
    invoke-interface {p0}, Lcom/google/android/gms/games/achievement/Achievement;->Y1()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Id"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    .line 3
    invoke-interface {p0}, Lcom/google/android/gms/games/achievement/Achievement;->getApplicationId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Game Id"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    .line 4
    invoke-interface {p0}, Lcom/google/android/gms/games/achievement/Achievement;->o()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Type"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    .line 5
    invoke-interface {p0}, Lcom/google/android/gms/games/achievement/Achievement;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Name"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    .line 6
    invoke-interface {p0}, Lcom/google/android/gms/games/achievement/Achievement;->getDescription()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Description"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    .line 7
    invoke-interface {p0}, Lcom/google/android/gms/games/achievement/Achievement;->R()Lcom/google/android/gms/games/Player;

    move-result-object v1

    const-string v2, "Player"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    .line 8
    invoke-interface {p0}, Lcom/google/android/gms/games/achievement/Achievement;->getState()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "State"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    .line 9
    invoke-interface {p0}, Lcom/google/android/gms/games/achievement/Achievement;->P()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const-string v2, "Rarity Percent"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    .line 10
    invoke-interface {p0}, Lcom/google/android/gms/games/achievement/Achievement;->o()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_81

    .line 11
    invoke-interface {p0}, Lcom/google/android/gms/games/achievement/Achievement;->r2()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CurrentSteps"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    .line 12
    invoke-interface {p0}, Lcom/google/android/gms/games/achievement/Achievement;->j3()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string v1, "TotalSteps"

    invoke-virtual {v0, v1, p0}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    .line 13
    :cond_81
    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final D0()Ljava/lang/String;
    .registers 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/games/achievement/AchievementEntity;->o()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    goto :goto_9

    :cond_8
    const/4 v1, 0x0

    :goto_9
    invoke-static {v1}, Lcom/google/android/gms/common/internal/Asserts;->b(Z)V

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/games/achievement/AchievementEntity;->B:Ljava/lang/String;

    return-object v0
.end method

.method public final P()F
    .registers 2

    .line 1
    iget v0, p0, Lcom/google/android/gms/games/achievement/AchievementEntity;->E:F

    return v0
.end method

.method public final R()Lcom/google/android/gms/games/Player;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/games/achievement/AchievementEntity;->y:Lcom/google/android/gms/games/PlayerEntity;

    return-object v0
.end method

.method public final W2()J
    .registers 3

    .line 1
    iget-wide v0, p0, Lcom/google/android/gms/games/achievement/AchievementEntity;->C:J

    return-wide v0
.end method

.method public final Y()Landroid/net/Uri;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/games/achievement/AchievementEntity;->s:Landroid/net/Uri;

    return-object v0
.end method

.method public final Y1()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/games/achievement/AchievementEntity;->o:Ljava/lang/String;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 2

    .line 1
    invoke-static {p0, p1}, Lcom/google/android/gms/games/achievement/AchievementEntity;->W3(Lcom/google/android/gms/games/achievement/Achievement;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final f0()Ljava/lang/String;
    .registers 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/games/achievement/AchievementEntity;->o()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    goto :goto_9

    :cond_8
    const/4 v1, 0x0

    :goto_9
    invoke-static {v1}, Lcom/google/android/gms/common/internal/Asserts;->b(Z)V

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/games/achievement/AchievementEntity;->x:Ljava/lang/String;

    return-object v0
.end method

.method public final g2()Landroid/net/Uri;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/games/achievement/AchievementEntity;->u:Landroid/net/Uri;

    return-object v0
.end method

.method public final getApplicationId()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/games/achievement/AchievementEntity;->F:Ljava/lang/String;

    return-object v0
.end method

.method public final getDescription()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/games/achievement/AchievementEntity;->r:Ljava/lang/String;

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/games/achievement/AchievementEntity;->q:Ljava/lang/String;

    return-object v0
.end method

.method public final getRevealedImageUrl()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/games/achievement/AchievementEntity;->v:Ljava/lang/String;

    return-object v0
.end method

.method public final getState()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/google/android/gms/games/achievement/AchievementEntity;->z:I

    return v0
.end method

.method public final getUnlockedImageUrl()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/games/achievement/AchievementEntity;->t:Ljava/lang/String;

    return-object v0
.end method

.method public final hashCode()I
    .registers 2

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/games/achievement/AchievementEntity;->V3(Lcom/google/android/gms/games/achievement/Achievement;)I

    move-result v0

    return v0
.end method

.method public final j3()I
    .registers 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/games/achievement/AchievementEntity;->o()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    goto :goto_9

    :cond_8
    const/4 v1, 0x0

    :goto_9
    invoke-static {v1}, Lcom/google/android/gms/common/internal/Asserts;->b(Z)V

    .line 2
    iget v0, p0, Lcom/google/android/gms/games/achievement/AchievementEntity;->w:I

    return v0
.end method

.method public final o()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/google/android/gms/games/achievement/AchievementEntity;->p:I

    return v0
.end method

.method public final r2()I
    .registers 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/games/achievement/AchievementEntity;->o()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    goto :goto_9

    :cond_8
    const/4 v1, 0x0

    :goto_9
    invoke-static {v1}, Lcom/google/android/gms/common/internal/Asserts;->b(Z)V

    .line 2
    iget v0, p0, Lcom/google/android/gms/games/achievement/AchievementEntity;->A:I

    return v0
.end method

.method public final t1()J
    .registers 3

    .line 1
    iget-wide v0, p0, Lcom/google/android/gms/games/achievement/AchievementEntity;->D:J

    return-wide v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 2

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/games/achievement/AchievementEntity;->X3(Lcom/google/android/gms/games/achievement/Achievement;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .registers 7

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->a(Landroid/os/Parcel;)I

    move-result v0

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/games/achievement/AchievementEntity;->Y1()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 3
    invoke-static {p1, v2, v1, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->t(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/games/achievement/AchievementEntity;->o()I

    move-result v1

    const/4 v2, 0x2

    .line 5
    invoke-static {p1, v2, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->l(Landroid/os/Parcel;II)V

    .line 6
    invoke-virtual {p0}, Lcom/google/android/gms/games/achievement/AchievementEntity;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    .line 7
    invoke-static {p1, v2, v1, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->t(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 8
    invoke-virtual {p0}, Lcom/google/android/gms/games/achievement/AchievementEntity;->getDescription()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    .line 9
    invoke-static {p1, v2, v1, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->t(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 10
    invoke-virtual {p0}, Lcom/google/android/gms/games/achievement/AchievementEntity;->Y()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x5

    .line 11
    invoke-static {p1, v2, v1, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->s(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 12
    invoke-virtual {p0}, Lcom/google/android/gms/games/achievement/AchievementEntity;->getUnlockedImageUrl()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x6

    .line 13
    invoke-static {p1, v2, v1, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->t(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 14
    invoke-virtual {p0}, Lcom/google/android/gms/games/achievement/AchievementEntity;->g2()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x7

    .line 15
    invoke-static {p1, v2, v1, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->s(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 16
    invoke-virtual {p0}, Lcom/google/android/gms/games/achievement/AchievementEntity;->getRevealedImageUrl()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x8

    .line 17
    invoke-static {p1, v2, v1, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->t(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 18
    iget v1, p0, Lcom/google/android/gms/games/achievement/AchievementEntity;->w:I

    const/16 v2, 0x9

    .line 19
    invoke-static {p1, v2, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->l(Landroid/os/Parcel;II)V

    .line 20
    iget-object v1, p0, Lcom/google/android/gms/games/achievement/AchievementEntity;->x:Ljava/lang/String;

    const/16 v2, 0xa

    .line 21
    invoke-static {p1, v2, v1, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->t(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 22
    iget-object v1, p0, Lcom/google/android/gms/games/achievement/AchievementEntity;->y:Lcom/google/android/gms/games/PlayerEntity;

    const/16 v2, 0xb

    .line 23
    invoke-static {p1, v2, v1, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->s(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 24
    invoke-virtual {p0}, Lcom/google/android/gms/games/achievement/AchievementEntity;->getState()I

    move-result p2

    const/16 v1, 0xc

    .line 25
    invoke-static {p1, v1, p2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->l(Landroid/os/Parcel;II)V

    .line 26
    iget p2, p0, Lcom/google/android/gms/games/achievement/AchievementEntity;->A:I

    const/16 v1, 0xd

    .line 27
    invoke-static {p1, v1, p2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->l(Landroid/os/Parcel;II)V

    .line 28
    iget-object p2, p0, Lcom/google/android/gms/games/achievement/AchievementEntity;->B:Ljava/lang/String;

    const/16 v1, 0xe

    .line 29
    invoke-static {p1, v1, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->t(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 30
    invoke-virtual {p0}, Lcom/google/android/gms/games/achievement/AchievementEntity;->W2()J

    move-result-wide v1

    const/16 p2, 0xf

    .line 31
    invoke-static {p1, p2, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->p(Landroid/os/Parcel;IJ)V

    .line 32
    invoke-virtual {p0}, Lcom/google/android/gms/games/achievement/AchievementEntity;->t1()J

    move-result-wide v1

    const/16 p2, 0x10

    .line 33
    invoke-static {p1, p2, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->p(Landroid/os/Parcel;IJ)V

    .line 34
    iget p2, p0, Lcom/google/android/gms/games/achievement/AchievementEntity;->E:F

    const/16 v1, 0x11

    .line 35
    invoke-static {p1, v1, p2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->i(Landroid/os/Parcel;IF)V

    .line 36
    iget-object p2, p0, Lcom/google/android/gms/games/achievement/AchievementEntity;->F:Ljava/lang/String;

    const/16 v1, 0x12

    .line 37
    invoke-static {p1, v1, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->t(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 38
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->b(Landroid/os/Parcel;I)V

    return-void
.end method
