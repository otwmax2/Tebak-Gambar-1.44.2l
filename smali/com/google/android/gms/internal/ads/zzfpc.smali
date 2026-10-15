###### Class com.google.android.gms.internal.ads.zzfpc (com.google.android.gms.internal.ads.zzfpc)
.class Lcom/google/android/gms/internal/ads/zzfpc;
.super Ljava/util/AbstractCollection;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# instance fields
.field final o:Ljava/lang/Object;

.field p:Ljava/util/Collection;

.field final q:Lcom/google/android/gms/internal/ads/zzfpc;
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field

.field final r:Ljava/util/Collection;
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field

.field final synthetic s:Lcom/google/android/gms/internal/ads/zzfpf;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzfpf;Ljava/lang/Object;Ljava/util/Collection;Lcom/google/android/gms/internal/ads/zzfpc;)V
    .registers 5
    .param p3    # Ljava/util/Collection;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfpc;->s:Lcom/google/android/gms/internal/ads/zzfpf;

    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzfpc;->o:Ljava/lang/Object;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzfpc;->p:Ljava/util/Collection;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzfpc;->q:Lcom/google/android/gms/internal/ads/zzfpc;

    if-nez p4, :cond_f

    const/4 p1, 0x0

    goto :goto_11

    :cond_f
    iget-object p1, p4, Lcom/google/android/gms/internal/ads/zzfpc;->p:Ljava/util/Collection;

    :goto_11
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfpc;->r:Ljava/util/Collection;

    return-void
.end method


# virtual methods
.method public final add(Ljava/lang/Object;)Z
    .registers 4

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfpc;->zzb()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfpc;->p:Ljava/util/Collection;

    .line 2
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfpc;->p:Ljava/util/Collection;

    .line 3
    invoke-interface {v1, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1c

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfpc;->s:Lcom/google/android/gms/internal/ads/zzfpf;

    .line 4
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzfpf;->k(Lcom/google/android/gms/internal/ads/zzfpf;)I

    if-eqz v0, :cond_1c

    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfpc;->c()V

    const/4 p1, 0x1

    :cond_1c
    return p1
.end method

.method public final addAll(Ljava/util/Collection;)Z
    .registers 5

    .line 1
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_8
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfpc;->size()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfpc;->p:Ljava/util/Collection;

    .line 3
    invoke-interface {v1, p1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    move-result p1

    if-eqz p1, :cond_26

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfpc;->p:Ljava/util/Collection;

    .line 4
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzfpc;->s:Lcom/google/android/gms/internal/ads/zzfpf;

    sub-int/2addr v1, v0

    .line 5
    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/zzfpf;->m(Lcom/google/android/gms/internal/ads/zzfpf;I)I

    if-nez v0, :cond_26

    .line 6
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfpc;->c()V

    const/4 p1, 0x1

    :cond_26
    return p1
.end method

.method final c()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfpc;->q:Lcom/google/android/gms/internal/ads/zzfpc;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfpc;->c()V

    return-void

    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfpc;->s:Lcom/google/android/gms/internal/ads/zzfpf;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzfpf;->q(Lcom/google/android/gms/internal/ads/zzfpf;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfpc;->o:Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzfpc;->p:Ljava/util/Collection;

    .line 2
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final clear()V
    .registers 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfpc;->size()I

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfpc;->p:Ljava/util/Collection;

    .line 2
    invoke-interface {v1}, Ljava/util/Collection;->clear()V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfpc;->s:Lcom/google/android/gms/internal/ads/zzfpf;

    .line 3
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzfpf;->n(Lcom/google/android/gms/internal/ads/zzfpf;I)I

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfpc;->g()V

    return-void
.end method

.method public final contains(Ljava/lang/Object;)Z
    .registers 3
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfpc;->zzb()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfpc;->p:Ljava/util/Collection;

    .line 2
    invoke-interface {v0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final containsAll(Ljava/util/Collection;)Z
    .registers 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfpc;->zzb()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfpc;->p:Ljava/util/Collection;

    .line 2
    invoke-interface {v0, p1}, Ljava/util/Collection;->containsAll(Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 3
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    if-ne p1, p0, :cond_4

    const/4 p1, 0x1

    return p1

    .line 1
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfpc;->zzb()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfpc;->p:Ljava/util/Collection;

    .line 2
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method final g()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfpc;->q:Lcom/google/android/gms/internal/ads/zzfpc;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfpc;->g()V

    return-void

    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfpc;->p:Ljava/util/Collection;

    .line 2
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfpc;->s:Lcom/google/android/gms/internal/ads/zzfpf;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzfpf;->q(Lcom/google/android/gms/internal/ads/zzfpf;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfpc;->o:Ljava/lang/Object;

    .line 3
    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1b
    return-void
.end method

.method public final hashCode()I
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfpc;->zzb()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfpc;->p:Ljava/util/Collection;

    .line 2
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfpc;->zzb()V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfpb;

    .line 2
    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzfpb;-><init>(Lcom/google/android/gms/internal/ads/zzfpc;)V

    return-object v0
.end method

.method public final remove(Ljava/lang/Object;)Z
    .registers 3
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfpc;->zzb()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfpc;->p:Ljava/util/Collection;

    .line 2
    invoke-interface {v0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_13

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfpc;->s:Lcom/google/android/gms/internal/ads/zzfpf;

    .line 3
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzfpf;->l(Lcom/google/android/gms/internal/ads/zzfpf;)I

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfpc;->g()V

    :cond_13
    return p1
.end method

.method public final removeAll(Ljava/util/Collection;)Z
    .registers 5

    .line 1
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_8
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfpc;->size()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfpc;->p:Ljava/util/Collection;

    .line 3
    invoke-interface {v1, p1}, Ljava/util/Collection;->removeAll(Ljava/util/Collection;)Z

    move-result p1

    if-eqz p1, :cond_23

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfpc;->p:Ljava/util/Collection;

    .line 4
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzfpc;->s:Lcom/google/android/gms/internal/ads/zzfpf;

    sub-int/2addr v1, v0

    .line 5
    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/zzfpf;->m(Lcom/google/android/gms/internal/ads/zzfpf;I)I

    .line 6
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfpc;->g()V

    :cond_23
    return p1
.end method

.method public final retainAll(Ljava/util/Collection;)Z
    .registers 5

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfpc;->size()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfpc;->p:Ljava/util/Collection;

    .line 3
    invoke-interface {v1, p1}, Ljava/util/Collection;->retainAll(Ljava/util/Collection;)Z

    move-result p1

    if-eqz p1, :cond_1e

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfpc;->p:Ljava/util/Collection;

    .line 4
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzfpc;->s:Lcom/google/android/gms/internal/ads/zzfpf;

    sub-int/2addr v1, v0

    .line 5
    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/zzfpf;->m(Lcom/google/android/gms/internal/ads/zzfpf;I)I

    .line 6
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfpc;->g()V

    :cond_1e
    return p1
.end method

.method public final size()I
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfpc;->zzb()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfpc;->p:Ljava/util/Collection;

    .line 2
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfpc;->zzb()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfpc;->p:Ljava/util/Collection;

    .line 2
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final zzb()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfpc;->q:Lcom/google/android/gms/internal/ads/zzfpc;

    if-eqz v0, :cond_16

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfpc;->zzb()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfpc;->q:Lcom/google/android/gms/internal/ads/zzfpc;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzfpc;->p:Ljava/util/Collection;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfpc;->r:Ljava/util/Collection;

    if-ne v0, v1, :cond_10

    goto :goto_30

    :cond_10
    new-instance v0, Ljava/util/ConcurrentModificationException;

    .line 2
    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    :cond_16
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfpc;->p:Ljava/util/Collection;

    .line 3
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_30

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfpc;->s:Lcom/google/android/gms/internal/ads/zzfpf;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzfpf;->q(Lcom/google/android/gms/internal/ads/zzfpf;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfpc;->o:Ljava/lang/Object;

    .line 4
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    if-eqz v0, :cond_30

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfpc;->p:Ljava/util/Collection;

    :cond_30
    :goto_30
    return-void
.end method
