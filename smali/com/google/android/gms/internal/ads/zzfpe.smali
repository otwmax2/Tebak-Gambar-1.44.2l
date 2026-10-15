###### Class com.google.android.gms.internal.ads.zzfpe (com.google.android.gms.internal.ads.zzfpe)
.class Lcom/google/android/gms/internal/ads/zzfpe;
.super Lcom/google/android/gms/internal/ads/zzfpc;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Ljava/util/List;


# instance fields
.field final synthetic t:Lcom/google/android/gms/internal/ads/zzfpf;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzfpf;Ljava/lang/Object;Ljava/util/List;Lcom/google/android/gms/internal/ads/zzfpc;)V
    .registers 5
    .param p3    # Ljava/util/List;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfpe;->t:Lcom/google/android/gms/internal/ads/zzfpf;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/ads/zzfpc;-><init>(Lcom/google/android/gms/internal/ads/zzfpf;Ljava/lang/Object;Ljava/util/Collection;Lcom/google/android/gms/internal/ads/zzfpc;)V

    return-void
.end method


# virtual methods
.method public final add(ILjava/lang/Object;)V
    .registers 5

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfpc;->zzb()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfpc;->p:Ljava/util/Collection;

    .line 2
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfpc;->p:Ljava/util/Collection;

    .line 3
    check-cast v1, Ljava/util/List;

    .line 4
    invoke-interface {v1, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzfpe;->t:Lcom/google/android/gms/internal/ads/zzfpf;

    .line 5
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzfpf;->k(Lcom/google/android/gms/internal/ads/zzfpf;)I

    if-eqz v0, :cond_1a

    .line 6
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfpc;->c()V

    :cond_1a
    return-void
.end method

.method public final addAll(ILjava/util/Collection;)Z
    .registers 5

    .line 1
    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

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
    check-cast v1, Ljava/util/List;

    .line 4
    invoke-interface {v1, p1, p2}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    move-result p1

    if-eqz p1, :cond_28

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzfpc;->p:Ljava/util/Collection;

    .line 5
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result p2

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfpe;->t:Lcom/google/android/gms/internal/ads/zzfpf;

    sub-int/2addr p2, v0

    .line 6
    invoke-static {v1, p2}, Lcom/google/android/gms/internal/ads/zzfpf;->m(Lcom/google/android/gms/internal/ads/zzfpf;I)I

    if-nez v0, :cond_28

    .line 7
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfpc;->c()V

    const/4 p1, 0x1

    :cond_28
    return p1
.end method

.method public final get(I)Ljava/lang/Object;
    .registers 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfpc;->zzb()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfpc;->p:Ljava/util/Collection;

    .line 2
    check-cast v0, Ljava/util/List;

    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final indexOf(Ljava/lang/Object;)I
    .registers 3
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfpc;->zzb()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfpc;->p:Ljava/util/Collection;

    .line 2
    check-cast v0, Ljava/util/List;

    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public final lastIndexOf(Ljava/lang/Object;)I
    .registers 3
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfpc;->zzb()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfpc;->p:Ljava/util/Collection;

    .line 2
    check-cast v0, Ljava/util/List;

    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->lastIndexOf(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public final listIterator()Ljava/util/ListIterator;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfpc;->zzb()V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfpd;

    .line 2
    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzfpd;-><init>(Lcom/google/android/gms/internal/ads/zzfpe;)V

    return-object v0
.end method

.method public final listIterator(I)Ljava/util/ListIterator;
    .registers 3

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfpc;->zzb()V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfpd;

    .line 4
    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzfpd;-><init>(Lcom/google/android/gms/internal/ads/zzfpe;I)V

    return-object v0
.end method

.method public final remove(I)Ljava/lang/Object;
    .registers 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfpc;->zzb()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfpc;->p:Ljava/util/Collection;

    .line 2
    check-cast v0, Ljava/util/List;

    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfpe;->t:Lcom/google/android/gms/internal/ads/zzfpf;

    .line 4
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzfpf;->l(Lcom/google/android/gms/internal/ads/zzfpf;)I

    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfpc;->g()V

    return-object p1
.end method

.method public final set(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfpc;->zzb()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfpc;->p:Ljava/util/Collection;

    .line 2
    check-cast v0, Ljava/util/List;

    .line 3
    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final subList(II)Ljava/util/List;
    .registers 6

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfpc;->zzb()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfpe;->t:Lcom/google/android/gms/internal/ads/zzfpf;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfpc;->o:Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzfpc;->p:Ljava/util/Collection;

    .line 2
    check-cast v2, Ljava/util/List;

    .line 3
    invoke-interface {v2, p1, p2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzfpc;->q:Lcom/google/android/gms/internal/ads/zzfpc;

    if-eqz p2, :cond_14

    goto :goto_15

    :cond_14
    move-object p2, p0

    .line 4
    :goto_15
    invoke-virtual {v0, v1, p1, p2}, Lcom/google/android/gms/internal/ads/zzfpf;->o(Ljava/lang/Object;Ljava/util/List;Lcom/google/android/gms/internal/ads/zzfpc;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
