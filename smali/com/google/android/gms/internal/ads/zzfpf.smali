###### Class com.google.android.gms.internal.ads.zzfpf (com.google.android.gms.internal.ads.zzfpf)
.class abstract Lcom/google/android/gms/internal/ads/zzfpf;
.super Lcom/google/android/gms/internal/ads/zzfpi;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private final transient r:Ljava/util/Map;

.field private transient s:I


# direct methods
.method protected constructor <init>(Ljava/util/Map;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzfpi;-><init>()V

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzfnu;->e(Z)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfpf;->r:Ljava/util/Map;

    return-void
.end method

.method static synthetic k(Lcom/google/android/gms/internal/ads/zzfpf;)I
    .registers 3

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzfpf;->s:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzfpf;->s:I

    return v0
.end method

.method static synthetic l(Lcom/google/android/gms/internal/ads/zzfpf;)I
    .registers 3

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzfpf;->s:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzfpf;->s:I

    return v0
.end method

.method static synthetic m(Lcom/google/android/gms/internal/ads/zzfpf;I)I
    .registers 3

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzfpf;->s:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzfpf;->s:I

    return v0
.end method

.method static synthetic n(Lcom/google/android/gms/internal/ads/zzfpf;I)I
    .registers 3

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzfpf;->s:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzfpf;->s:I

    return v0
.end method

.method static synthetic q(Lcom/google/android/gms/internal/ads/zzfpf;)Ljava/util/Map;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzfpf;->r:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic t(Lcom/google/android/gms/internal/ads/zzfpf;Ljava/lang/Object;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfpf;->r:Ljava/util/Map;

    :try_start_2
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_6
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_6} :catch_7
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_6} :catch_7

    goto :goto_8

    :catch_7
    const/4 p1, 0x0

    .line 2
    :goto_8
    check-cast p1, Ljava/util/Collection;

    if-eqz p1, :cond_18

    .line 3
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    .line 4
    invoke-interface {p1}, Ljava/util/Collection;->clear()V

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzfpf;->s:I

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzfpf;->s:I

    :cond_18
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfpf;->r:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    const/4 v1, 0x1

    if-nez v0, :cond_28

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfpf;->h()Ljava/util/Collection;

    move-result-object v0

    .line 3
    invoke-interface {v0, p2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_20

    iget p2, p0, Lcom/google/android/gms/internal/ads/zzfpf;->s:I

    add-int/2addr p2, v1

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzfpf;->s:I

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzfpf;->r:Ljava/util/Map;

    .line 4
    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return v1

    .line 5
    :cond_20
    new-instance p1, Ljava/lang/AssertionError;

    const-string p2, "New Collection violated the Collection spec"

    .line 6
    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    .line 7
    :cond_28
    invoke-interface {v0, p2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_34

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzfpf;->s:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzfpf;->s:I

    return v1

    :cond_34
    const/4 p1, 0x0

    return p1
.end method

.method final b()Ljava/util/Collection;
    .registers 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzfph;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzfph;-><init>(Lcom/google/android/gms/internal/ads/zzfpi;)V

    return-object v0
.end method

.method final c()Ljava/util/Iterator;
    .registers 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzfop;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzfop;-><init>(Lcom/google/android/gms/internal/ads/zzfpf;)V

    return-object v0
.end method

.method d()Ljava/util/Map;
    .registers 2

    const/4 v0, 0x0

    throw v0
.end method

.method e()Ljava/util/Set;
    .registers 2

    const/4 v0, 0x0

    throw v0
.end method

.method public final f()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzfpf;->s:I

    return v0
.end method

.method abstract h()Ljava/util/Collection;
.end method

.method i(Ljava/util/Collection;)Ljava/util/Collection;
    .registers 2

    const/4 p1, 0x0

    throw p1
.end method

.method j(Ljava/lang/Object;Ljava/util/Collection;)Ljava/util/Collection;
    .registers 3

    const/4 p1, 0x0

    throw p1
.end method

.method final o(Ljava/lang/Object;Ljava/util/List;Lcom/google/android/gms/internal/ads/zzfpc;)Ljava/util/List;
    .registers 5
    .param p3    # Lcom/google/android/gms/internal/ads/zzfpc;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    .line 1
    instance-of v0, p2, Ljava/util/RandomAccess;

    if-eqz v0, :cond_a

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfoy;

    .line 2
    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzfoy;-><init>(Lcom/google/android/gms/internal/ads/zzfpf;Ljava/lang/Object;Ljava/util/List;Lcom/google/android/gms/internal/ads/zzfpc;)V

    goto :goto_f

    :cond_a
    new-instance v0, Lcom/google/android/gms/internal/ads/zzfpe;

    .line 3
    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzfpe;-><init>(Lcom/google/android/gms/internal/ads/zzfpf;Ljava/lang/Object;Ljava/util/List;Lcom/google/android/gms/internal/ads/zzfpc;)V

    :goto_f
    return-object v0
.end method

.method public final p()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfpf;->r:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    .line 2
    invoke-interface {v1}, Ljava/util/Collection;->clear()V

    goto :goto_a

    :cond_1a
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfpf;->r:Ljava/util/Map;

    .line 3
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzfpf;->s:I

    return-void
.end method

.method final r()Ljava/util/Map;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfpf;->r:Ljava/util/Map;

    instance-of v1, v0, Ljava/util/NavigableMap;

    if-eqz v1, :cond_e

    new-instance v1, Lcom/google/android/gms/internal/ads/zzfow;

    .line 2
    check-cast v0, Ljava/util/NavigableMap;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/ads/zzfow;-><init>(Lcom/google/android/gms/internal/ads/zzfpf;Ljava/util/NavigableMap;)V

    return-object v1

    .line 3
    :cond_e
    instance-of v1, v0, Ljava/util/SortedMap;

    if-eqz v1, :cond_1a

    new-instance v1, Lcom/google/android/gms/internal/ads/zzfoz;

    .line 4
    check-cast v0, Ljava/util/SortedMap;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/ads/zzfoz;-><init>(Lcom/google/android/gms/internal/ads/zzfpf;Ljava/util/SortedMap;)V

    return-object v1

    :cond_1a
    new-instance v1, Lcom/google/android/gms/internal/ads/zzfos;

    .line 5
    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/ads/zzfos;-><init>(Lcom/google/android/gms/internal/ads/zzfpf;Ljava/util/Map;)V

    return-object v1
.end method

.method final s()Ljava/util/Set;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfpf;->r:Ljava/util/Map;

    instance-of v1, v0, Ljava/util/NavigableMap;

    if-eqz v1, :cond_e

    new-instance v1, Lcom/google/android/gms/internal/ads/zzfox;

    .line 2
    check-cast v0, Ljava/util/NavigableMap;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/ads/zzfox;-><init>(Lcom/google/android/gms/internal/ads/zzfpf;Ljava/util/NavigableMap;)V

    return-object v1

    .line 3
    :cond_e
    instance-of v1, v0, Ljava/util/SortedMap;

    if-eqz v1, :cond_1a

    new-instance v1, Lcom/google/android/gms/internal/ads/zzfpa;

    .line 4
    check-cast v0, Ljava/util/SortedMap;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/ads/zzfpa;-><init>(Lcom/google/android/gms/internal/ads/zzfpf;Ljava/util/SortedMap;)V

    return-object v1

    :cond_1a
    new-instance v1, Lcom/google/android/gms/internal/ads/zzfov;

    .line 5
    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/ads/zzfov;-><init>(Lcom/google/android/gms/internal/ads/zzfpf;Ljava/util/Map;)V

    return-object v1
.end method
