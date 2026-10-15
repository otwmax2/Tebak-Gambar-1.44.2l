###### Class com.google.android.gms.internal.games.zzgb (com.google.android.gms.internal.games.zzgb)
.class final Lcom/google/android/gms/internal/games/zzgb;
.super Lcom/google/android/gms/internal/games/zzfy;
.source "com.google.android.gms:play-services-games@@21.0.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/internal/games/zzfy<",
        "TE;>;"
    }
.end annotation


# static fields
.field static final v:Lcom/google/android/gms/internal/games/zzgb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/games/zzgb<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final transient q:[Ljava/lang/Object;

.field private final transient r:[Ljava/lang/Object;

.field private final transient s:I

.field private final transient t:I

.field private final transient u:I


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .line 1
    new-instance v6, Lcom/google/android/gms/internal/games/zzgb;

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/games/zzgb;-><init>([Ljava/lang/Object;I[Ljava/lang/Object;II)V

    sput-object v6, Lcom/google/android/gms/internal/games/zzgb;->v:Lcom/google/android/gms/internal/games/zzgb;

    return-void
.end method

.method constructor <init>([Ljava/lang/Object;I[Ljava/lang/Object;II)V
    .registers 6

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/games/zzfy;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/games/zzgb;->q:[Ljava/lang/Object;

    .line 3
    iput-object p3, p0, Lcom/google/android/gms/internal/games/zzgb;->r:[Ljava/lang/Object;

    .line 4
    iput p4, p0, Lcom/google/android/gms/internal/games/zzgb;->s:I

    .line 5
    iput p2, p0, Lcom/google/android/gms/internal/games/zzgb;->t:I

    .line 6
    iput p5, p0, Lcom/google/android/gms/internal/games/zzgb;->u:I

    return-void
.end method


# virtual methods
.method final c([Ljava/lang/Object;I)I
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/games/zzgb;->q:[Ljava/lang/Object;

    iget v1, p0, Lcom/google/android/gms/internal/games/zzgb;->u:I

    const/4 v2, 0x0

    invoke-static {v0, v2, p1, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2
    iget p1, p0, Lcom/google/android/gms/internal/games/zzgb;->u:I

    add-int/2addr p2, p1

    return p2
.end method

.method public final contains(Ljava/lang/Object;)Z
    .registers 6
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/games/zzgb;->r:[Ljava/lang/Object;

    const/4 v1, 0x0

    if-eqz p1, :cond_23

    if-nez v0, :cond_8

    goto :goto_23

    .line 2
    :cond_8
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Lcom/google/android/gms/internal/games/zzfp;->a(I)I

    move-result v2

    .line 3
    :goto_10
    iget v3, p0, Lcom/google/android/gms/internal/games/zzgb;->s:I

    and-int/2addr v2, v3

    .line 4
    aget-object v3, v0, v2

    if-nez v3, :cond_18

    return v1

    .line 5
    :cond_18
    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_20

    const/4 p1, 0x1

    return p1

    :cond_20
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    :cond_23
    :goto_23
    return v1
.end method

.method public final g()Lcom/google/android/gms/internal/games/zzgg;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/games/zzgg<",
            "TE;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/games/zzfs;->l()Lcom/google/android/gms/internal/games/zzft;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/games/zzfs;->iterator()Ljava/util/Iterator;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/games/zzgg;

    return-object v0
.end method

.method public final hashCode()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/games/zzgb;->t:I

    return v0
.end method

.method final i()[Ljava/lang/Object;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/games/zzgb;->q:[Ljava/lang/Object;

    return-object v0
.end method

.method public final synthetic iterator()Ljava/util/Iterator;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/games/zzfs;->g()Lcom/google/android/gms/internal/games/zzgg;

    move-result-object v0

    return-object v0
.end method

.method final j()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method final k()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/games/zzgb;->u:I

    return v0
.end method

.method final q()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method final r()Lcom/google/android/gms/internal/games/zzft;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/games/zzft<",
            "TE;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/games/zzgb;->q:[Ljava/lang/Object;

    iget v1, p0, Lcom/google/android/gms/internal/games/zzgb;->u:I

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/games/zzft;->n([Ljava/lang/Object;I)Lcom/google/android/gms/internal/games/zzft;

    move-result-object v0

    return-object v0
.end method

.method public final size()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/games/zzgb;->u:I

    return v0
.end method
