###### Class com.google.android.gms.internal.ads.zzfoz (com.google.android.gms.internal.ads.zzfoz)
.class Lcom/google/android/gms/internal/ads/zzfoz;
.super Lcom/google/android/gms/internal/ads/zzfos;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Ljava/util/SortedMap;


# instance fields
.field t:Ljava/util/SortedSet;
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field

.field final synthetic u:Lcom/google/android/gms/internal/ads/zzfpf;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzfpf;Ljava/util/SortedMap;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfoz;->u:Lcom/google/android/gms/internal/ads/zzfpf;

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzfos;-><init>(Lcom/google/android/gms/internal/ads/zzfpf;Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method bridge synthetic b()Ljava/util/Set;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfoz;->e()Ljava/util/SortedSet;

    move-result-object v0

    return-object v0
.end method

.method public final comparator()Ljava/util/Comparator;
    .registers 2
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfoz;->d()Ljava/util/SortedMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SortedMap;->comparator()Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method

.method d()Ljava/util/SortedMap;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfos;->r:Ljava/util/Map;

    check-cast v0, Ljava/util/SortedMap;

    return-object v0
.end method

.method e()Ljava/util/SortedSet;
    .registers 4

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzfpa;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfoz;->u:Lcom/google/android/gms/internal/ads/zzfpf;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfoz;->d()Ljava/util/SortedMap;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzfpa;-><init>(Lcom/google/android/gms/internal/ads/zzfpf;Ljava/util/SortedMap;)V

    return-object v0
.end method

.method public f()Ljava/util/SortedSet;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfoz;->t:Ljava/util/SortedSet;

    if-nez v0, :cond_a

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfoz;->e()Ljava/util/SortedSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfoz;->t:Ljava/util/SortedSet;

    :cond_a
    return-object v0
.end method

.method public final firstKey()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfoz;->d()Ljava/util/SortedMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SortedMap;->firstKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public headMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .registers 5

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzfoz;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfoz;->u:Lcom/google/android/gms/internal/ads/zzfpf;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfoz;->d()Ljava/util/SortedMap;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/SortedMap;->headMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzfoz;-><init>(Lcom/google/android/gms/internal/ads/zzfpf;Ljava/util/SortedMap;)V

    return-object v0
.end method

.method public bridge synthetic keySet()Ljava/util/Set;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfoz;->f()Ljava/util/SortedSet;

    move-result-object v0

    return-object v0
.end method

.method public final lastKey()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfoz;->d()Ljava/util/SortedMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SortedMap;->lastKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedMap;
    .registers 6

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzfoz;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfoz;->u:Lcom/google/android/gms/internal/ads/zzfpf;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfoz;->d()Ljava/util/SortedMap;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Ljava/util/SortedMap;->subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzfoz;-><init>(Lcom/google/android/gms/internal/ads/zzfpf;Ljava/util/SortedMap;)V

    return-object v0
.end method

.method public tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .registers 5

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzfoz;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfoz;->u:Lcom/google/android/gms/internal/ads/zzfpf;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfoz;->d()Ljava/util/SortedMap;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/SortedMap;->tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzfoz;-><init>(Lcom/google/android/gms/internal/ads/zzfpf;Ljava/util/SortedMap;)V

    return-object v0
.end method
