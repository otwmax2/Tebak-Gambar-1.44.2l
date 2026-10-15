###### Class com.google.android.gms.games.PlayerRef (com.google.android.gms.games.PlayerRef)
.class public final Lcom/google/android/gms/games/PlayerRef;
.super Lcom/google/android/gms/games/zzh;
.source "com.google.android.gms:play-services-games@@21.0.0"

# interfaces
.implements Lcom/google/android/gms/games/Player;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ParcelCreator"
    }
.end annotation


# instance fields
.field private final r:Lcom/google/android/gms/games/internal/player/zzd;

.field private final s:Lcom/google/android/gms/games/PlayerLevelInfo;

.field private final t:Lcom/google/android/gms/games/internal/player/zzb;

.field private final u:Lcom/google/android/gms/games/zzn;

.field private final v:Lcom/google/android/gms/games/zzb;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/data/DataHolder;I)V
    .registers 4

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/games/PlayerRef;-><init>(Lcom/google/android/gms/common/data/DataHolder;ILjava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/common/data/DataHolder;ILjava/lang/String;)V
    .registers 11

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/games/zzh;-><init>(Lcom/google/android/gms/common/data/DataHolder;I)V

    .line 3
    new-instance p3, Lcom/google/android/gms/games/internal/player/zzd;

    const/4 v0, 0x0

    invoke-direct {p3, v0}, Lcom/google/android/gms/games/internal/player/zzd;-><init>(Ljava/lang/String;)V

    iput-object p3, p0, Lcom/google/android/gms/games/PlayerRef;->r:Lcom/google/android/gms/games/internal/player/zzd;

    .line 4
    new-instance v1, Lcom/google/android/gms/games/internal/player/zzb;

    invoke-direct {v1, p1, p2, p3}, Lcom/google/android/gms/games/internal/player/zzb;-><init>(Lcom/google/android/gms/common/data/DataHolder;ILcom/google/android/gms/games/internal/player/zzd;)V

    iput-object v1, p0, Lcom/google/android/gms/games/PlayerRef;->t:Lcom/google/android/gms/games/internal/player/zzb;

    .line 5
    new-instance v1, Lcom/google/android/gms/games/zzn;

    invoke-direct {v1, p1, p2, p3}, Lcom/google/android/gms/games/zzn;-><init>(Lcom/google/android/gms/common/data/DataHolder;ILcom/google/android/gms/games/internal/player/zzd;)V

    iput-object v1, p0, Lcom/google/android/gms/games/PlayerRef;->u:Lcom/google/android/gms/games/zzn;

    .line 6
    new-instance v1, Lcom/google/android/gms/games/zzb;

    invoke-direct {v1, p1, p2, p3}, Lcom/google/android/gms/games/zzb;-><init>(Lcom/google/android/gms/common/data/DataHolder;ILcom/google/android/gms/games/internal/player/zzd;)V

    iput-object v1, p0, Lcom/google/android/gms/games/PlayerRef;->v:Lcom/google/android/gms/games/zzb;

    .line 7
    iget-object p1, p3, Lcom/google/android/gms/games/internal/player/zzd;->j:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/data/DataBufferRef;->z(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_36

    .line 8
    iget-object p1, p3, Lcom/google/android/gms/games/internal/player/zzd;->j:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/data/DataBufferRef;->w(Ljava/lang/String;)J

    move-result-wide p1

    const-wide/16 v1, -0x1

    cmp-long v3, p1, v1

    if-eqz v3, :cond_36

    const/4 p1, 0x1

    goto :goto_37

    :cond_36
    const/4 p1, 0x0

    :goto_37
    if-eqz p1, :cond_86

    .line 9
    iget-object p1, p3, Lcom/google/android/gms/games/internal/player/zzd;->k:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/data/DataBufferRef;->v(Ljava/lang/String;)I

    move-result p1

    .line 10
    iget-object p2, p3, Lcom/google/android/gms/games/internal/player/zzd;->n:Ljava/lang/String;

    invoke-virtual {p0, p2}, Lcom/google/android/gms/common/data/DataBufferRef;->v(Ljava/lang/String;)I

    move-result p2

    .line 11
    new-instance v6, Lcom/google/android/gms/games/PlayerLevel;

    iget-object v0, p3, Lcom/google/android/gms/games/internal/player/zzd;->l:Ljava/lang/String;

    .line 12
    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/data/DataBufferRef;->w(Ljava/lang/String;)J

    move-result-wide v2

    iget-object v0, p3, Lcom/google/android/gms/games/internal/player/zzd;->m:Ljava/lang/String;

    .line 13
    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/data/DataBufferRef;->w(Ljava/lang/String;)J

    move-result-wide v4

    move-object v0, v6

    move v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/games/PlayerLevel;-><init>(IJJ)V

    if-eq p1, p2, :cond_6e

    .line 14
    new-instance p1, Lcom/google/android/gms/games/PlayerLevel;

    iget-object v0, p3, Lcom/google/android/gms/games/internal/player/zzd;->m:Ljava/lang/String;

    .line 15
    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/data/DataBufferRef;->w(Ljava/lang/String;)J

    move-result-wide v2

    iget-object v0, p3, Lcom/google/android/gms/games/internal/player/zzd;->o:Ljava/lang/String;

    .line 16
    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/data/DataBufferRef;->w(Ljava/lang/String;)J

    move-result-wide v4

    move-object v0, p1

    move v1, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/games/PlayerLevel;-><init>(IJJ)V

    goto :goto_6f

    :cond_6e
    move-object p1, v6

    .line 17
    :goto_6f
    new-instance p2, Lcom/google/android/gms/games/PlayerLevelInfo;

    iget-object v0, p3, Lcom/google/android/gms/games/internal/player/zzd;->j:Ljava/lang/String;

    .line 18
    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/data/DataBufferRef;->w(Ljava/lang/String;)J

    move-result-wide v1

    iget-object p3, p3, Lcom/google/android/gms/games/internal/player/zzd;->p:Ljava/lang/String;

    .line 19
    invoke-virtual {p0, p3}, Lcom/google/android/gms/common/data/DataBufferRef;->w(Ljava/lang/String;)J

    move-result-wide v3

    move-object v0, p2

    move-object v5, v6

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/games/PlayerLevelInfo;-><init>(JJLcom/google/android/gms/games/PlayerLevel;Lcom/google/android/gms/games/PlayerLevel;)V

    iput-object p2, p0, Lcom/google/android/gms/games/PlayerRef;->s:Lcom/google/android/gms/games/PlayerLevelInfo;

    return-void

    .line 20
    :cond_86
    iput-object v0, p0, Lcom/google/android/gms/games/PlayerRef;->s:Lcom/google/android/gms/games/PlayerLevelInfo;

    return-void
.end method


# virtual methods
.method public final F1()Lcom/google/android/gms/games/PlayerLevelInfo;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/games/PlayerRef;->s:Lcom/google/android/gms/games/PlayerLevelInfo;

    return-object v0
.end method

.method public final H2()Lcom/google/android/gms/games/PlayerRelationshipInfo;
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/games/PlayerRef;->u:Lcom/google/android/gms/games/zzn;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/games/zzn;->H0()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_18

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/games/zzn;->r()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_18

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/games/zzn;->p()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_16

    goto :goto_18

    :cond_16
    const/4 v0, 0x0

    goto :goto_19

    :cond_18
    :goto_18
    const/4 v0, 0x1

    :goto_19
    if-eqz v0, :cond_1e

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/games/PlayerRef;->u:Lcom/google/android/gms/games/zzn;

    return-object v0

    :cond_1e
    const/4 v0, 0x0

    return-object v0
.end method

.method public final J0()J
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/games/PlayerRef;->r:Lcom/google/android/gms/games/internal/player/zzd;

    iget-object v0, v0, Lcom/google/android/gms/games/internal/player/zzd;->g:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/data/DataBufferRef;->w(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final J3()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/games/PlayerRef;->r:Lcom/google/android/gms/games/internal/player/zzd;

    iget-object v0, v0, Lcom/google/android/gms/games/internal/player/zzd;->a:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/data/DataBufferRef;->x(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final N0()Landroid/net/Uri;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/games/PlayerRef;->r:Lcom/google/android/gms/games/internal/player/zzd;

    iget-object v0, v0, Lcom/google/android/gms/games/internal/player/zzd;->E:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/data/DataBufferRef;->A(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public final O()Landroid/net/Uri;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/games/PlayerRef;->r:Lcom/google/android/gms/games/internal/player/zzd;

    iget-object v0, v0, Lcom/google/android/gms/games/internal/player/zzd;->e:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/data/DataBufferRef;->A(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public final a0()Landroid/net/Uri;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/games/PlayerRef;->r:Lcom/google/android/gms/games/internal/player/zzd;

    iget-object v0, v0, Lcom/google/android/gms/games/internal/player/zzd;->C:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/data/DataBufferRef;->A(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public final b1()Lcom/google/android/gms/games/CurrentPlayerInfo;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/games/PlayerRef;->v:Lcom/google/android/gms/games/zzb;

    invoke-virtual {v0}, Lcom/google/android/gms/games/zzb;->E()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/games/PlayerRef;->v:Lcom/google/android/gms/games/zzb;

    return-object v0

    :cond_b
    const/4 v0, 0x0

    return-object v0
.end method

.method public final describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 2

    .line 1
    invoke-static {p0, p1}, Lcom/google/android/gms/games/PlayerEntity;->b4(Lcom/google/android/gms/games/Player;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final g()Landroid/net/Uri;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/games/PlayerRef;->r:Lcom/google/android/gms/games/internal/player/zzd;

    iget-object v0, v0, Lcom/google/android/gms/games/internal/player/zzd;->c:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/data/DataBufferRef;->A(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public final getBannerImageLandscapeUrl()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/games/PlayerRef;->r:Lcom/google/android/gms/games/internal/player/zzd;

    iget-object v0, v0, Lcom/google/android/gms/games/internal/player/zzd;->D:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/data/DataBufferRef;->x(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getBannerImagePortraitUrl()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/games/PlayerRef;->r:Lcom/google/android/gms/games/internal/player/zzd;

    iget-object v0, v0, Lcom/google/android/gms/games/internal/player/zzd;->F:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/data/DataBufferRef;->x(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getHiResImageUrl()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/games/PlayerRef;->r:Lcom/google/android/gms/games/internal/player/zzd;

    iget-object v0, v0, Lcom/google/android/gms/games/internal/player/zzd;->f:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/data/DataBufferRef;->x(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getIconImageUrl()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/games/PlayerRef;->r:Lcom/google/android/gms/games/internal/player/zzd;

    iget-object v0, v0, Lcom/google/android/gms/games/internal/player/zzd;->d:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/data/DataBufferRef;->x(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/games/PlayerRef;->r:Lcom/google/android/gms/games/internal/player/zzd;

    iget-object v0, v0, Lcom/google/android/gms/games/internal/player/zzd;->B:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/data/DataBufferRef;->x(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getTitle()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/games/PlayerRef;->r:Lcom/google/android/gms/games/internal/player/zzd;

    iget-object v0, v0, Lcom/google/android/gms/games/internal/player/zzd;->q:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/data/DataBufferRef;->x(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final hashCode()I
    .registers 2

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/games/PlayerEntity;->a4(Lcom/google/android/gms/games/Player;)I

    move-result v0

    return v0
.end method

.method public final i()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/games/PlayerRef;->r:Lcom/google/android/gms/games/internal/player/zzd;

    iget-object v0, v0, Lcom/google/android/gms/games/internal/player/zzd;->A:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/data/DataBufferRef;->x(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final j()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/games/PlayerRef;->r:Lcom/google/android/gms/games/internal/player/zzd;

    iget-object v0, v0, Lcom/google/android/gms/games/internal/player/zzd;->z:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/data/DataBufferRef;->h(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public final k()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/games/PlayerRef;->r:Lcom/google/android/gms/games/internal/player/zzd;

    iget-object v0, v0, Lcom/google/android/gms/games/internal/player/zzd;->s:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/data/DataBufferRef;->h(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public final l()I
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/games/PlayerRef;->r:Lcom/google/android/gms/games/internal/player/zzd;

    iget-object v0, v0, Lcom/google/android/gms/games/internal/player/zzd;->h:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/data/DataBufferRef;->v(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public final m()Lcom/google/android/gms/games/internal/player/zza;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/games/PlayerRef;->r:Lcom/google/android/gms/games/internal/player/zzd;

    iget-object v0, v0, Lcom/google/android/gms/games/internal/player/zzd;->t:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/data/DataBufferRef;->z(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_c
    iget-object v0, p0, Lcom/google/android/gms/games/PlayerRef;->t:Lcom/google/android/gms/games/internal/player/zzb;

    return-object v0
.end method

.method public final n()J
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/games/PlayerRef;->r:Lcom/google/android/gms/games/internal/player/zzd;

    iget-object v0, v0, Lcom/google/android/gms/games/internal/player/zzd;->J:Ljava/lang/String;

    .line 2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/data/DataBufferRef;->y(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/data/DataBufferRef;->z(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_11

    goto :goto_16

    .line 3
    :cond_11
    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/data/DataBufferRef;->w(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0

    :cond_16
    :goto_16
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public final synthetic p3()Ljava/lang/Object;
    .registers 2

    .line 1
    new-instance v0, Lcom/google/android/gms/games/PlayerEntity;

    invoke-direct {v0, p0}, Lcom/google/android/gms/games/PlayerEntity;-><init>(Lcom/google/android/gms/games/Player;)V

    return-object v0
.end method

.method public final s()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/games/PlayerRef;->r:Lcom/google/android/gms/games/internal/player/zzd;

    iget-object v0, v0, Lcom/google/android/gms/games/internal/player/zzd;->b:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/data/DataBufferRef;->x(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 2

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/games/PlayerEntity;->e4(Lcom/google/android/gms/games/Player;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final v1()J
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/games/PlayerRef;->r:Lcom/google/android/gms/games/internal/player/zzd;

    iget-object v0, v0, Lcom/google/android/gms/games/internal/player/zzd;->i:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/data/DataBufferRef;->y(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/google/android/gms/games/PlayerRef;->r:Lcom/google/android/gms/games/internal/player/zzd;

    iget-object v0, v0, Lcom/google/android/gms/games/internal/player/zzd;->i:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/data/DataBufferRef;->z(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    goto :goto_1e

    .line 2
    :cond_15
    iget-object v0, p0, Lcom/google/android/gms/games/PlayerRef;->r:Lcom/google/android/gms/games/internal/player/zzd;

    iget-object v0, v0, Lcom/google/android/gms/games/internal/player/zzd;->i:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/data/DataBufferRef;->w(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0

    :cond_1e
    :goto_1e
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/games/PlayerRef;->p3()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/Player;

    check-cast v0, Lcom/google/android/gms/games/PlayerEntity;

    .line 2
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/games/PlayerEntity;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
