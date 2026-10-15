###### Class com.google.android.gms.internal.ads.zzfpp (com.google.android.gms.internal.ads.zzfpp)
.class final Lcom/google/android/gms/internal/ads/zzfpp;
.super Ljava/util/AbstractSet;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# instance fields
.field final synthetic o:Lcom/google/android/gms/internal/ads/zzfpu;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzfpu;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfpp;->o:Lcom/google/android/gms/internal/ads/zzfpu;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public final clear()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfpp;->o:Lcom/google/android/gms/internal/ads/zzfpu;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfpu;->clear()V

    return-void
.end method

.method public final contains(Ljava/lang/Object;)Z
    .registers 5
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfpp;->o:Lcom/google/android/gms/internal/ads/zzfpu;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfpu;->l()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 2
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 3
    :cond_11
    instance-of v0, p1, Ljava/util/Map$Entry;

    const/4 v1, 0x0

    if-eqz v0, :cond_3a

    .line 4
    check-cast p1, Ljava/util/Map$Entry;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfpp;->o:Lcom/google/android/gms/internal/ads/zzfpu;

    .line 5
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/ads/zzfpu;->c(Lcom/google/android/gms/internal/ads/zzfpu;Ljava/lang/Object;)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_3a

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzfpp;->o:Lcom/google/android/gms/internal/ads/zzfpu;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzfpu;->r:[Ljava/lang/Object;

    .line 6
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    aget-object v0, v2, v0

    .line 8
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzfnp;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3a

    const/4 p1, 0x1

    return p1

    :cond_3a
    return v1
.end method

.method public final iterator()Ljava/util/Iterator;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfpp;->o:Lcom/google/android/gms/internal/ads/zzfpu;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfpu;->l()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_11

    .line 2
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    goto :goto_17

    :cond_11
    new-instance v1, Lcom/google/android/gms/internal/ads/zzfpn;

    .line 3
    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/zzfpn;-><init>(Lcom/google/android/gms/internal/ads/zzfpu;)V

    move-object v0, v1

    :goto_17
    return-object v0
.end method

.method public final remove(Ljava/lang/Object;)Z
    .registers 12
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfpp;->o:Lcom/google/android/gms/internal/ads/zzfpu;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfpu;->l()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 2
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 3
    :cond_11
    instance-of v0, p1, Ljava/util/Map$Entry;

    const/4 v1, 0x0

    if-eqz v0, :cond_5e

    .line 4
    check-cast p1, Ljava/util/Map$Entry;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfpp;->o:Lcom/google/android/gms/internal/ads/zzfpu;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfpu;->p()Z

    move-result v2

    if-eqz v2, :cond_21

    return v1

    :cond_21
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzfpu;->d(Lcom/google/android/gms/internal/ads/zzfpu;)I

    move-result v0

    .line 5
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    .line 6
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzfpp;->o:Lcom/google/android/gms/internal/ads/zzfpu;

    .line 7
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzfpu;->k(Lcom/google/android/gms/internal/ads/zzfpu;)Ljava/lang/Object;

    move-result-object v6

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzfpp;->o:Lcom/google/android/gms/internal/ads/zzfpu;

    iget-object v7, p1, Lcom/google/android/gms/internal/ads/zzfpu;->p:[I

    .line 8
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v8, p1, Lcom/google/android/gms/internal/ads/zzfpu;->q:[Ljava/lang/Object;

    .line 9
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v9, p1, Lcom/google/android/gms/internal/ads/zzfpu;->r:[Ljava/lang/Object;

    .line 10
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move v5, v0

    .line 11
    invoke-static/range {v3 .. v9}, Lcom/google/android/gms/internal/ads/zzfpv;->b(Ljava/lang/Object;Ljava/lang/Object;ILjava/lang/Object;[I[Ljava/lang/Object;[Ljava/lang/Object;)I

    move-result p1

    const/4 v2, -0x1

    if-ne p1, v2, :cond_4d

    return v1

    :cond_4d
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfpp;->o:Lcom/google/android/gms/internal/ads/zzfpu;

    .line 12
    invoke-virtual {v1, p1, v0}, Lcom/google/android/gms/internal/ads/zzfpu;->o(II)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzfpp;->o:Lcom/google/android/gms/internal/ads/zzfpu;

    .line 13
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzfpu;->b(Lcom/google/android/gms/internal/ads/zzfpu;)I

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzfpp;->o:Lcom/google/android/gms/internal/ads/zzfpu;

    .line 14
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfpu;->m()V

    const/4 p1, 0x1

    return p1

    :cond_5e
    return v1
.end method

.method public final size()I
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfpp;->o:Lcom/google/android/gms/internal/ads/zzfpu;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfpu;->size()I

    move-result v0

    return v0
.end method
