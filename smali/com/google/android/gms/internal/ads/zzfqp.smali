###### Class com.google.android.gms.internal.ads.zzfqp (com.google.android.gms.internal.ads.zzfqp)
.class public abstract Lcom/google/android/gms/internal/ads/zzfqp;
.super Lcom/google/android/gms/internal/ads/zzfqf;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Ljava/util/Set;


# instance fields
.field private transient p:Lcom/google/android/gms/internal/ads/zzfqk;
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzfqf;-><init>()V

    return-void
.end method

.method private static varargs A(I[Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfqp;
    .registers 15

    if-eqz p0, :cond_77

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p0, v1, :cond_6c

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzfqp;->n(I)I

    move-result v2

    .line 2
    new-array v6, v2, [Ljava/lang/Object;

    add-int/lit8 v7, v2, -0x1

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v8, 0x0

    :goto_11
    if-ge v3, p0, :cond_3b

    .line 3
    aget-object v4, p1, v3

    invoke-static {v4, v3}, Lcom/google/android/gms/internal/ads/zzfrr;->a(Ljava/lang/Object;I)Ljava/lang/Object;

    .line 4
    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v9

    .line 5
    invoke-static {v9}, Lcom/google/android/gms/internal/ads/zzfqc;->a(I)I

    move-result v10

    :goto_20
    and-int v11, v10, v7

    .line 6
    aget-object v12, v6, v11

    if-nez v12, :cond_2f

    add-int/lit8 v10, v8, 0x1

    .line 7
    aput-object v4, p1, v8

    .line 8
    aput-object v4, v6, v11

    add-int/2addr v5, v9

    move v8, v10

    goto :goto_38

    .line 9
    :cond_2f
    invoke-virtual {v12, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_38

    add-int/lit8 v10, v10, 0x1

    goto :goto_20

    :cond_38
    :goto_38
    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    :cond_3b
    const/4 v3, 0x0

    .line 10
    invoke-static {p1, v8, p0, v3}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    if-ne v8, v1, :cond_4c

    .line 11
    aget-object p0, p1, v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzfsg;

    .line 12
    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/ads/zzfsg;-><init>(Ljava/lang/Object;)V

    return-object p1

    :cond_4c
    div-int/lit8 v2, v2, 0x2

    .line 13
    invoke-static {v8}, Lcom/google/android/gms/internal/ads/zzfqp;->n(I)I

    move-result p0

    if-ge p0, v2, :cond_59

    .line 14
    invoke-static {v8, p1}, Lcom/google/android/gms/internal/ads/zzfqp;->A(I[Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfqp;

    move-result-object p0

    return-object p0

    .line 15
    :cond_59
    array-length p0, p1

    invoke-static {v8, p0}, Lcom/google/android/gms/internal/ads/zzfqp;->B(II)Z

    move-result p0

    if-eqz p0, :cond_64

    invoke-static {p1, v8}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    :cond_64
    move-object v4, p1

    .line 16
    new-instance p0, Lcom/google/android/gms/internal/ads/zzfrz;

    move-object v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/google/android/gms/internal/ads/zzfrz;-><init>([Ljava/lang/Object;I[Ljava/lang/Object;II)V

    return-object p0

    .line 17
    :cond_6c
    aget-object p0, p1, v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzfsg;

    .line 18
    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/ads/zzfsg;-><init>(Ljava/lang/Object;)V

    return-object p1

    .line 19
    :cond_77
    sget-object p0, Lcom/google/android/gms/internal/ads/zzfrz;->w:Lcom/google/android/gms/internal/ads/zzfrz;

    return-object p0
.end method

.method private static B(II)Z
    .registers 3

    shr-int/lit8 v0, p1, 0x1

    shr-int/lit8 p1, p1, 0x2

    add-int/2addr v0, p1

    if-ge p0, v0, :cond_9

    const/4 p0, 0x1

    return p0

    :cond_9
    const/4 p0, 0x0

    return p0
.end method

.method static n(I)I
    .registers 7

    const/4 v0, 0x2

    .line 1
    invoke-static {p0, v0}, Ljava/lang/Math;->max(II)I

    move-result p0

    const v0, 0x2ccccccc

    if-ge p0, v0, :cond_23

    add-int/lit8 v0, p0, -0x1

    .line 2
    invoke-static {v0}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v0

    :goto_10
    add-int/2addr v0, v0

    int-to-double v1, v0

    const-wide v3, 0x3fe6666666666666L    # 0.7

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v1, v1, v3

    int-to-double v3, p0

    cmpg-double v5, v1, v3

    if-gez v5, :cond_22

    goto :goto_10

    :cond_22
    return v0

    :cond_23
    const/high16 v0, 0x40000000    # 2.0f

    if-ge p0, v0, :cond_29

    const/4 p0, 0x1

    goto :goto_2a

    :cond_29
    const/4 p0, 0x0

    :goto_2a
    const-string v1, "collection too large"

    .line 3
    invoke-static {p0, v1}, Lcom/google/android/gms/internal/ads/zzfnu;->f(ZLjava/lang/Object;)V

    return v0
.end method

.method public static p(I)Lcom/google/android/gms/internal/ads/zzfqo;
    .registers 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzfqo;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzfqo;-><init>(I)V

    return-object v0
.end method

.method static synthetic q(I[Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfqp;
    .registers 2

    .line 1
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/ads/zzfqp;->A(I[Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfqp;

    move-result-object p0

    return-object p0
.end method

.method public static r(Ljava/util/Collection;)Lcom/google/android/gms/internal/ads/zzfqp;
    .registers 2

    .line 1
    invoke-interface {p0}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object p0

    .line 2
    array-length v0, p0

    invoke-static {v0, p0}, Lcom/google/android/gms/internal/ads/zzfqp;->A(I[Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfqp;

    move-result-object p0

    return-object p0
.end method

.method public static s()Lcom/google/android/gms/internal/ads/zzfqp;
    .registers 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzfrz;->w:Lcom/google/android/gms/internal/ads/zzfrz;

    return-object v0
.end method

.method public static t(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfqp;
    .registers 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzfsg;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzfsg;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static u(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfqp;
    .registers 8

    const/4 v0, 0x5

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    aput-object p1, v1, p0

    const/4 p0, 0x2

    aput-object p2, v1, p0

    const/4 p0, 0x3

    aput-object p3, v1, p0

    const/4 p0, 0x4

    aput-object p4, v1, p0

    .line 1
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzfqp;->A(I[Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfqp;

    move-result-object p0

    return-object p0
.end method

.method public static varargs v(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfqp;
    .registers 10
    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    const/16 v0, 0xc

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    aput-object p1, v1, p0

    const/4 p0, 0x2

    aput-object p2, v1, p0

    const/4 p0, 0x3

    aput-object p3, v1, p0

    const/4 p0, 0x4

    aput-object p4, v1, p0

    const/4 p0, 0x5

    aput-object p5, v1, p0

    const/4 p0, 0x6

    .line 1
    invoke-static {p6, v2, v1, p0, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzfqp;->A(I[Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfqp;

    move-result-object p0

    return-object p0
.end method

.method static synthetic x(II)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/ads/zzfqp;->B(II)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 4
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    if-ne p1, p0, :cond_4

    const/4 p1, 0x1

    return p1

    .line 1
    :cond_4
    instance-of v0, p1, Lcom/google/android/gms/internal/ads/zzfqp;

    if-eqz v0, :cond_23

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfqp;->y()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 2
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/ads/zzfqp;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfqp;->y()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfqp;->hashCode()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    if-eq v0, v1, :cond_23

    const/4 p1, 0x0

    return p1

    .line 5
    :cond_23
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/ads/zzfsf;->c(Ljava/util/Set;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .registers 2

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzfsf;->a(Ljava/util/Set;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfqp;->k()Lcom/google/android/gms/internal/ads/zzfsj;

    move-result-object v0

    return-object v0
.end method

.method public j()Lcom/google/android/gms/internal/ads/zzfqk;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfqp;->p:Lcom/google/android/gms/internal/ads/zzfqk;

    if-nez v0, :cond_a

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfqp;->o()Lcom/google/android/gms/internal/ads/zzfqk;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfqp;->p:Lcom/google/android/gms/internal/ads/zzfqk;

    :cond_a
    return-object v0
.end method

.method public abstract k()Lcom/google/android/gms/internal/ads/zzfsj;
.end method

.method o()Lcom/google/android/gms/internal/ads/zzfqk;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfqf;->toArray()[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzfqk;->p([Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfqk;

    move-result-object v0

    return-object v0
.end method

.method y()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method
