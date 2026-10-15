###### Class com.google.android.gms.internal.ads.zztk (com.google.android.gms.internal.ads.zztk)
.class public final Lcom/google/android/gms/internal/ads/zztk;
.super Lcom/google/android/gms/internal/ads/zzsb;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# static fields
.field private static final t:Lcom/google/android/gms/internal/ads/zzbg;


# instance fields
.field private final k:[Lcom/google/android/gms/internal/ads/zzsu;

.field private final l:[Lcom/google/android/gms/internal/ads/zzcn;

.field private final m:Ljava/util/ArrayList;

.field private final n:Ljava/util/Map;

.field private final o:Lcom/google/android/gms/internal/ads/zzfrg;

.field private p:I

.field private q:[[J

.field private r:Lcom/google/android/gms/internal/ads/zztj;

.field private final s:Lcom/google/android/gms/internal/ads/zzsd;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzaj;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzaj;-><init>()V

    const-string v1, "MergingMediaSource"

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzaj;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzaj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzaj;->c()Lcom/google/android/gms/internal/ads/zzbg;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zztk;->t:Lcom/google/android/gms/internal/ads/zzbg;

    return-void
.end method

.method public varargs constructor <init>(ZZ[Lcom/google/android/gms/internal/ads/zzsu;)V
    .registers 4

    .line 1
    new-instance p1, Lcom/google/android/gms/internal/ads/zzsd;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzsd;-><init>()V

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzsb;-><init>()V

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zztk;->k:[Lcom/google/android/gms/internal/ads/zzsu;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zztk;->s:Lcom/google/android/gms/internal/ads/zzsd;

    new-instance p1, Ljava/util/ArrayList;

    .line 2
    invoke-static {p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zztk;->m:Ljava/util/ArrayList;

    const/4 p1, -0x1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zztk;->p:I

    array-length p1, p3

    new-array p1, p1, [Lcom/google/android/gms/internal/ads/zzcn;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zztk;->l:[Lcom/google/android/gms/internal/ads/zzcn;

    const/4 p1, 0x0

    new-array p1, p1, [[J

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zztk;->q:[[J

    new-instance p1, Ljava/util/HashMap;

    .line 3
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zztk;->n:Ljava/util/Map;

    const/16 p1, 0x8

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzfrn;->a(I)Lcom/google/android/gms/internal/ads/zzfrm;

    move-result-object p1

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzfrm;->b(I)Lcom/google/android/gms/internal/ads/zzfrk;

    move-result-object p1

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfrk;->c()Lcom/google/android/gms/internal/ads/zzfqv;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zztk;->o:Lcom/google/android/gms/internal/ads/zzfrg;

    return-void
.end method


# virtual methods
.method protected final bridge synthetic A(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzss;)Lcom/google/android/gms/internal/ads/zzss;
    .registers 3

    check-cast p1, Ljava/lang/Integer;

    .line 1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-nez p1, :cond_9

    return-object p2

    :cond_9
    const/4 p1, 0x0

    return-object p1
.end method

.method protected final bridge synthetic B(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzsu;Lcom/google/android/gms/internal/ads/zzcn;)V
    .registers 9

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zztk;->r:Lcom/google/android/gms/internal/ads/zztj;

    if-eqz v0, :cond_5

    goto :goto_5b

    :cond_5
    iget v0, p0, Lcom/google/android/gms/internal/ads/zztk;->p:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_12

    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/zzcn;->b()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zztk;->p:I

    goto :goto_23

    .line 2
    :cond_12
    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/zzcn;->b()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/zztk;->p:I

    if-eq v0, v1, :cond_22

    new-instance p1, Lcom/google/android/gms/internal/ads/zztj;

    .line 3
    invoke-direct {p1, v2}, Lcom/google/android/gms/internal/ads/zztj;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zztk;->r:Lcom/google/android/gms/internal/ads/zztj;

    return-void

    :cond_22
    move v0, v1

    .line 4
    :goto_23
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zztk;->q:[[J

    .line 5
    array-length v1, v1

    if-nez v1, :cond_3d

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zztk;->l:[Lcom/google/android/gms/internal/ads/zzcn;

    array-length v1, v1

    const/4 v3, 0x2

    new-array v3, v3, [I

    const/4 v4, 0x1

    aput v1, v3, v4

    aput v0, v3, v2

    .line 6
    const-class v0, J

    invoke-static {v0, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[J

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zztk;->q:[[J

    :cond_3d
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zztk;->m:Ljava/util/ArrayList;

    .line 7
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zztk;->l:[Lcom/google/android/gms/internal/ads/zzcn;

    check-cast p1, Ljava/lang/Integer;

    .line 8
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    aput-object p3, p2, p1

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zztk;->m:Ljava/util/ArrayList;

    .line 9
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_5b

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zztk;->l:[Lcom/google/android/gms/internal/ads/zzcn;

    .line 10
    aget-object p1, p1, v2

    .line 11
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzrt;->t(Lcom/google/android/gms/internal/ads/zzcn;)V

    :cond_5b
    :goto_5b
    return-void
.end method

.method public final E()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zztk;->r:Lcom/google/android/gms/internal/ads/zztj;

    if-nez v0, :cond_8

    .line 2
    invoke-super {p0}, Lcom/google/android/gms/internal/ads/zzsb;->E()V

    return-void

    .line 3
    :cond_8
    throw v0
.end method

.method public final T()Lcom/google/android/gms/internal/ads/zzbg;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zztk;->k:[Lcom/google/android/gms/internal/ads/zzsu;

    array-length v1, v0

    if-lez v1, :cond_d

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzsu;->T()Lcom/google/android/gms/internal/ads/zzbg;

    move-result-object v0

    goto :goto_f

    :cond_d
    sget-object v0, Lcom/google/android/gms/internal/ads/zztk;->t:Lcom/google/android/gms/internal/ads/zzbg;

    :goto_f
    return-object v0
.end method

.method public final a(Lcom/google/android/gms/internal/ads/zzsq;)V
    .registers 5

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzti;

    const/4 v0, 0x0

    :goto_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zztk;->k:[Lcom/google/android/gms/internal/ads/zzsu;

    array-length v2, v1

    if-ge v0, v2, :cond_14

    .line 2
    aget-object v1, v1, v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzti;->k(I)Lcom/google/android/gms/internal/ads/zzsq;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/zzsu;->a(Lcom/google/android/gms/internal/ads/zzsq;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_14
    return-void
.end method

.method public final i(Lcom/google/android/gms/internal/ads/zzss;Lcom/google/android/gms/internal/ads/zzwt;J)Lcom/google/android/gms/internal/ads/zzsq;
    .registers 14

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zztk;->k:[Lcom/google/android/gms/internal/ads/zzsu;

    array-length v0, v0

    new-array v1, v0, [Lcom/google/android/gms/internal/ads/zzsq;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zztk;->l:[Lcom/google/android/gms/internal/ads/zzcn;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    iget-object v4, p1, Lcom/google/android/gms/internal/ads/zzbn;->a:Ljava/lang/Object;

    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/ads/zzcn;->a(Ljava/lang/Object;)I

    move-result v2

    :goto_10
    if-ge v3, v0, :cond_33

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zztk;->l:[Lcom/google/android/gms/internal/ads/zzcn;

    .line 2
    aget-object v4, v4, v3

    .line 3
    invoke-virtual {v4, v2}, Lcom/google/android/gms/internal/ads/zzcn;->f(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/google/android/gms/internal/ads/zzss;->c(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzss;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zztk;->k:[Lcom/google/android/gms/internal/ads/zzsu;

    .line 4
    aget-object v5, v5, v3

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zztk;->q:[[J

    aget-object v6, v6, v2

    aget-wide v7, v6, v3

    sub-long v7, p3, v7

    .line 5
    invoke-interface {v5, v4, p2, v7, v8}, Lcom/google/android/gms/internal/ads/zzsu;->i(Lcom/google/android/gms/internal/ads/zzss;Lcom/google/android/gms/internal/ads/zzwt;J)Lcom/google/android/gms/internal/ads/zzsq;

    move-result-object v4

    aput-object v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    :cond_33
    new-instance p1, Lcom/google/android/gms/internal/ads/zzti;

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zztk;->s:Lcom/google/android/gms/internal/ads/zzsd;

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zztk;->q:[[J

    .line 6
    aget-object p3, p3, v2

    const/4 p4, 0x0

    invoke-direct {p1, p2, p3, v1, p4}, Lcom/google/android/gms/internal/ads/zzti;-><init>(Lcom/google/android/gms/internal/ads/zzsd;[J[Lcom/google/android/gms/internal/ads/zzsq;[B)V

    return-object p1
.end method

.method protected final s(Lcom/google/android/gms/internal/ads/zzgi;)V
    .registers 4

    .line 1
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ads/zzsb;->s(Lcom/google/android/gms/internal/ads/zzgi;)V

    const/4 p1, 0x0

    :goto_4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zztk;->k:[Lcom/google/android/gms/internal/ads/zzsu;

    array-length v0, v0

    if-ge p1, v0, :cond_17

    .line 2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zztk;->k:[Lcom/google/android/gms/internal/ads/zzsu;

    aget-object v1, v1, p1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/ads/zzsb;->x(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzsu;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_4

    :cond_17
    return-void
.end method

.method protected final u()V
    .registers 3

    .line 1
    invoke-super {p0}, Lcom/google/android/gms/internal/ads/zzsb;->u()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zztk;->l:[Lcom/google/android/gms/internal/ads/zzcn;

    const/4 v1, 0x0

    .line 2
    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zztk;->p:I

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zztk;->r:Lcom/google/android/gms/internal/ads/zztj;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zztk;->m:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zztk;->m:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zztk;->k:[Lcom/google/android/gms/internal/ads/zzsu;

    .line 4
    invoke-static {v0, v1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    return-void
.end method
