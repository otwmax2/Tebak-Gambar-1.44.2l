###### Class com.google.android.gms.internal.games.zzfy (com.google.android.gms.internal.games.zzfy)
.class public abstract Lcom/google/android/gms/internal/games/zzfy;
.super Lcom/google/android/gms/internal/games/zzfs;
.source "com.google.android.gms:play-services-games@@21.0.0"

# interfaces
.implements Ljava/util/Set;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/internal/games/zzfs<",
        "TE;>;",
        "Ljava/util/Set<",
        "TE;>;"
    }
.end annotation


# instance fields
.field private transient p:Lcom/google/android/gms/internal/games/zzft;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/games/zzft<",
            "TE;>;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/games/zzfs;-><init>()V

    return-void
.end method

.method private static varargs m(I[Ljava/lang/Object;)Lcom/google/android/gms/internal/games/zzfy;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(I[",
            "Ljava/lang/Object;",
            ")",
            "Lcom/google/android/gms/internal/games/zzfy<",
            "TE;>;"
        }
    .end annotation

    :goto_0
    if-eqz p0, :cond_6f

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p0, v1, :cond_68

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/internal/games/zzfy;->t(I)I

    move-result v2

    .line 2
    new-array v6, v2, [Ljava/lang/Object;

    add-int/lit8 v7, v2, -0x1

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v8, 0x0

    :goto_11
    if-ge v3, p0, :cond_3c

    .line 3
    aget-object v4, p1, v3

    invoke-static {v4, v3}, Lcom/google/android/gms/internal/games/zzfz;->a(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v4

    .line 4
    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v9

    .line 5
    invoke-static {v9}, Lcom/google/android/gms/internal/games/zzfp;->a(I)I

    move-result v10

    :goto_21
    and-int v11, v10, v7

    .line 6
    aget-object v12, v6, v11

    if-nez v12, :cond_30

    add-int/lit8 v10, v8, 0x1

    .line 7
    aput-object v4, p1, v8

    .line 8
    aput-object v4, v6, v11

    add-int/2addr v5, v9

    move v8, v10

    goto :goto_39

    .line 9
    :cond_30
    invoke-virtual {v12, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_39

    add-int/lit8 v10, v10, 0x1

    goto :goto_21

    :cond_39
    :goto_39
    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    :cond_3c
    const/4 v3, 0x0

    .line 10
    invoke-static {p1, v8, p0, v3}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    if-ne v8, v1, :cond_4a

    .line 11
    aget-object p0, p1, v0

    .line 12
    new-instance p1, Lcom/google/android/gms/internal/games/zzgd;

    invoke-direct {p1, p0, v5}, Lcom/google/android/gms/internal/games/zzgd;-><init>(Ljava/lang/Object;I)V

    return-object p1

    .line 13
    :cond_4a
    invoke-static {v8}, Lcom/google/android/gms/internal/games/zzfy;->t(I)I

    move-result p0

    div-int/lit8 v2, v2, 0x2

    if-ge p0, v2, :cond_54

    move p0, v8

    goto :goto_0

    .line 14
    :cond_54
    array-length p0, p1

    shr-int/lit8 v0, p0, 0x1

    shr-int/lit8 p0, p0, 0x2

    add-int/2addr v0, p0

    if-ge v8, v0, :cond_60

    .line 15
    invoke-static {p1, v8}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    :cond_60
    move-object v4, p1

    .line 16
    new-instance p0, Lcom/google/android/gms/internal/games/zzgb;

    move-object v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/google/android/gms/internal/games/zzgb;-><init>([Ljava/lang/Object;I[Ljava/lang/Object;II)V

    return-object p0

    .line 17
    :cond_68
    aget-object p0, p1, v0

    .line 18
    invoke-static {p0}, Lcom/google/android/gms/internal/games/zzfy;->s(Ljava/lang/Object;)Lcom/google/android/gms/internal/games/zzfy;

    move-result-object p0

    return-object p0

    .line 19
    :cond_6f
    sget-object p0, Lcom/google/android/gms/internal/games/zzgb;->v:Lcom/google/android/gms/internal/games/zzgb;

    return-object p0
.end method

.method public static n(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/games/zzfy;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(TE;TE;TE;)",
            "Lcom/google/android/gms/internal/games/zzfy<",
            "TE;>;"
        }
    .end annotation

    const/4 v0, 0x3

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    aput-object p1, v1, p0

    const/4 p0, 0x2

    aput-object p2, v1, p0

    .line 1
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/games/zzfy;->m(I[Ljava/lang/Object;)Lcom/google/android/gms/internal/games/zzfy;

    move-result-object p0

    return-object p0
.end method

.method public static varargs o(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Lcom/google/android/gms/internal/games/zzfy;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(TE;TE;TE;TE;TE;TE;[TE;)",
            "Lcom/google/android/gms/internal/games/zzfy<",
            "TE;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 1
    array-length v0, p6

    const/4 v1, 0x1

    const/4 v2, 0x0

    const v3, 0x7ffffff9

    if-gt v0, v3, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    const-string v3, "the total number of elements must fit in an int"

    invoke-static {v0, v3}, Lcom/google/android/gms/internal/games/zzfo;->a(ZLjava/lang/Object;)V

    .line 2
    array-length v0, p6

    const/4 v3, 0x6

    add-int/2addr v0, v3

    new-array v4, v0, [Ljava/lang/Object;

    .line 3
    aput-object p0, v4, v2

    .line 4
    aput-object p1, v4, v1

    const/4 p0, 0x2

    .line 5
    aput-object p2, v4, p0

    const/4 p0, 0x3

    .line 6
    aput-object p3, v4, p0

    const/4 p0, 0x4

    .line 7
    aput-object p4, v4, p0

    const/4 p0, 0x5

    .line 8
    aput-object p5, v4, p0

    .line 9
    array-length p0, p6

    invoke-static {p6, v2, v4, v3, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 10
    invoke-static {v0, v4}, Lcom/google/android/gms/internal/games/zzfy;->m(I[Ljava/lang/Object;)Lcom/google/android/gms/internal/games/zzfy;

    move-result-object p0

    return-object p0
.end method

.method static synthetic p(I[Ljava/lang/Object;)Lcom/google/android/gms/internal/games/zzfy;
    .registers 2

    .line 1
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/games/zzfy;->m(I[Ljava/lang/Object;)Lcom/google/android/gms/internal/games/zzfy;

    move-result-object p0

    return-object p0
.end method

.method public static s(Ljava/lang/Object;)Lcom/google/android/gms/internal/games/zzfy;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(TE;)",
            "Lcom/google/android/gms/internal/games/zzfy<",
            "TE;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/games/zzgd;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/games/zzgd;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method private static t(I)I
    .registers 7

    const/4 v0, 0x2

    .line 1
    invoke-static {p0, v0}, Ljava/lang/Math;->max(II)I

    move-result p0

    const/4 v0, 0x1

    const v1, 0x2ccccccc

    if-ge p0, v1, :cond_27

    add-int/lit8 v1, p0, -0x1

    .line 2
    invoke-static {v1}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v1

    shl-int/lit8 v0, v1, 0x1

    :goto_13
    int-to-double v1, v0

    const-wide v3, 0x3fe6666666666666L    # 0.7

    .line 3
    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v1, v1, v3

    int-to-double v3, p0

    cmpg-double v5, v1, v3

    if-gez v5, :cond_26

    shl-int/lit8 v0, v0, 0x1

    goto :goto_13

    :cond_26
    return v0

    :cond_27
    const/high16 v1, 0x40000000    # 2.0f

    if-ge p0, v1, :cond_2c

    goto :goto_2d

    :cond_2c
    const/4 v0, 0x0

    :goto_2d
    const-string p0, "collection too large"

    .line 4
    invoke-static {v0, p0}, Lcom/google/android/gms/internal/games/zzfo;->a(ZLjava/lang/Object;)V

    return v1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 4
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    if-ne p1, p0, :cond_4

    const/4 p1, 0x1

    return p1

    .line 1
    :cond_4
    instance-of v0, p1, Lcom/google/android/gms/internal/games/zzfy;

    if-eqz v0, :cond_23

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/games/zzfy;->q()Z

    move-result v0

    if-eqz v0, :cond_23

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/games/zzfy;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/games/zzfy;->q()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/games/zzfy;->hashCode()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    if-eq v0, v1, :cond_23

    const/4 p1, 0x0

    return p1

    .line 5
    :cond_23
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/games/zzge;->a(Ljava/util/Set;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .registers 5

    .line 1
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_17

    .line 2
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto :goto_18

    :cond_17
    const/4 v3, 0x0

    :goto_18
    add-int/2addr v2, v3

    xor-int/lit8 v2, v2, -0x1

    xor-int/lit8 v2, v2, -0x1

    goto :goto_6

    :cond_1e
    return v2
.end method

.method public synthetic iterator()Ljava/util/Iterator;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/games/zzfs;->g()Lcom/google/android/gms/internal/games/zzgg;

    move-result-object v0

    return-object v0
.end method

.method public final l()Lcom/google/android/gms/internal/games/zzft;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/games/zzft<",
            "TE;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/games/zzfy;->p:Lcom/google/android/gms/internal/games/zzft;

    if-nez v0, :cond_a

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/games/zzfy;->r()Lcom/google/android/gms/internal/games/zzft;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/games/zzfy;->p:Lcom/google/android/gms/internal/games/zzft;

    :cond_a
    return-object v0
.end method

.method q()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method r()Lcom/google/android/gms/internal/games/zzft;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/games/zzft<",
            "TE;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/games/zzfs;->toArray()[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/games/zzft;->m([Ljava/lang/Object;)Lcom/google/android/gms/internal/games/zzft;

    move-result-object v0

    return-object v0
.end method
