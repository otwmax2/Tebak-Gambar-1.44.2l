###### Class com.google.android.gms.internal.ads.zzfpd (com.google.android.gms.internal.ads.zzfpd)
.class final Lcom/google/android/gms/internal/ads/zzfpd;
.super Lcom/google/android/gms/internal/ads/zzfpb;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Ljava/util/ListIterator;


# instance fields
.field final synthetic r:Lcom/google/android/gms/internal/ads/zzfpe;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzfpe;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfpd;->r:Lcom/google/android/gms/internal/ads/zzfpe;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzfpb;-><init>(Lcom/google/android/gms/internal/ads/zzfpc;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzfpe;I)V
    .registers 4

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfpd;->r:Lcom/google/android/gms/internal/ads/zzfpe;

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzfpc;->p:Ljava/util/Collection;

    check-cast v0, Ljava/util/List;

    .line 3
    invoke-interface {v0, p2}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzfpb;-><init>(Lcom/google/android/gms/internal/ads/zzfpc;Ljava/util/Iterator;)V

    return-void
.end method


# virtual methods
.method public final add(Ljava/lang/Object;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfpd;->r:Lcom/google/android/gms/internal/ads/zzfpe;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfpb;->a()V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfpb;->o:Ljava/util/Iterator;

    .line 3
    check-cast v1, Ljava/util/ListIterator;

    .line 4
    invoke-interface {v1, p1}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzfpd;->r:Lcom/google/android/gms/internal/ads/zzfpe;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzfpe;->t:Lcom/google/android/gms/internal/ads/zzfpf;

    .line 5
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzfpf;->k(Lcom/google/android/gms/internal/ads/zzfpf;)I

    if-eqz v0, :cond_1e

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzfpd;->r:Lcom/google/android/gms/internal/ads/zzfpe;

    .line 6
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfpc;->c()V

    :cond_1e
    return-void
.end method

.method public final hasPrevious()Z
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfpb;->a()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfpb;->o:Ljava/util/Iterator;

    .line 2
    check-cast v0, Ljava/util/ListIterator;

    .line 3
    invoke-interface {v0}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v0

    return v0
.end method

.method public final nextIndex()I
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfpb;->a()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfpb;->o:Ljava/util/Iterator;

    .line 2
    check-cast v0, Ljava/util/ListIterator;

    .line 3
    invoke-interface {v0}, Ljava/util/ListIterator;->nextIndex()I

    move-result v0

    return v0
.end method

.method public final previous()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfpb;->a()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfpb;->o:Ljava/util/Iterator;

    .line 2
    check-cast v0, Ljava/util/ListIterator;

    .line 3
    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final previousIndex()I
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfpb;->a()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfpb;->o:Ljava/util/Iterator;

    .line 2
    check-cast v0, Ljava/util/ListIterator;

    .line 3
    invoke-interface {v0}, Ljava/util/ListIterator;->previousIndex()I

    move-result v0

    return v0
.end method

.method public final set(Ljava/lang/Object;)V
    .registers 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfpb;->a()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfpb;->o:Ljava/util/Iterator;

    .line 2
    check-cast v0, Ljava/util/ListIterator;

    .line 3
    invoke-interface {v0, p1}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    return-void
.end method
