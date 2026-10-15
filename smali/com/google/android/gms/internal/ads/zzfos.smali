###### Class com.google.android.gms.internal.ads.zzfos (com.google.android.gms.internal.ads.zzfos)
.class Lcom/google/android/gms/internal/ads/zzfos;
.super Lcom/google/android/gms/internal/ads/zzfre;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# instance fields
.field final transient r:Ljava/util/Map;

.field final synthetic s:Lcom/google/android/gms/internal/ads/zzfpf;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzfpf;Ljava/util/Map;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfos;->s:Lcom/google/android/gms/internal/ads/zzfpf;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzfre;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzfos;->r:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method protected final a()Ljava/util/Set;
    .registers 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzfoq;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzfoq;-><init>(Lcom/google/android/gms/internal/ads/zzfos;)V

    return-object v0
.end method

.method final c(Ljava/util/Map$Entry;)Ljava/util/Map$Entry;
    .registers 4

    .line 1
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfos;->s:Lcom/google/android/gms/internal/ads/zzfpf;

    .line 2
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    invoke-virtual {v1, v0, p1}, Lcom/google/android/gms/internal/ads/zzfpf;->j(Ljava/lang/Object;Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p1

    new-instance v1, Lcom/google/android/gms/internal/ads/zzfqg;

    invoke-direct {v1, v0, p1}, Lcom/google/android/gms/internal/ads/zzfqg;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1
.end method

.method public final clear()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfos;->r:Ljava/util/Map;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfos;->s:Lcom/google/android/gms/internal/ads/zzfpf;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzfpf;->q(Lcom/google/android/gms/internal/ads/zzfpf;)Ljava/util/Map;

    move-result-object v2

    if-ne v0, v2, :cond_e

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzfpf;->p()V

    return-void

    :cond_e
    new-instance v0, Lcom/google/android/gms/internal/ads/zzfor;

    .line 2
    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzfor;-><init>(Lcom/google/android/gms/internal/ads/zzfos;)V

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzfqu;->b(Ljava/util/Iterator;)V

    return-void
.end method

.method public final containsKey(Ljava/lang/Object;)Z
    .registers 3
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfos;->r:Ljava/util/Map;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    :try_start_5
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1
    :try_end_9
    .catch Ljava/lang/ClassCastException; {:try_start_5 .. :try_end_9} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_9} :catch_a

    goto :goto_b

    :catch_a
    const/4 p1, 0x0

    :goto_b
    return p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 3
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    if-eq p0, p1, :cond_d

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfos;->r:Ljava/util/Map;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    goto :goto_d

    :cond_b
    const/4 p1, 0x0

    return p1

    :cond_d
    :goto_d
    const/4 p1, 0x1

    return p1
.end method

.method public final bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfos;->r:Ljava/util/Map;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzfrf;->a(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    if-nez v0, :cond_c

    const/4 p1, 0x0

    return-object p1

    :cond_c
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfos;->s:Lcom/google/android/gms/internal/ads/zzfpf;

    .line 2
    invoke-virtual {v1, p1, v0}, Lcom/google/android/gms/internal/ads/zzfpf;->j(Ljava/lang/Object;Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p1

    return-object p1
.end method

.method public final hashCode()I
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfos;->r:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public keySet()Ljava/util/Set;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfos;->s:Lcom/google/android/gms/internal/ads/zzfpf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfpi;->g()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic remove(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfos;->r:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    if-nez p1, :cond_c

    const/4 p1, 0x0

    return-object p1

    :cond_c
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfos;->s:Lcom/google/android/gms/internal/ads/zzfpf;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfpf;->h()Ljava/util/Collection;

    move-result-object v0

    .line 3
    invoke-interface {v0, p1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfos;->s:Lcom/google/android/gms/internal/ads/zzfpf;

    .line 4
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzfpf;->n(Lcom/google/android/gms/internal/ads/zzfpf;I)I

    .line 5
    invoke-interface {p1}, Ljava/util/Collection;->clear()V

    return-object v0
.end method

.method public final size()I
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfos;->r:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfos;->r:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
