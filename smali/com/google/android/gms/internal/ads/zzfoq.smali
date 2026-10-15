###### Class com.google.android.gms.internal.ads.zzfoq (com.google.android.gms.internal.ads.zzfoq)
.class final Lcom/google/android/gms/internal/ads/zzfoq;
.super Lcom/google/android/gms/internal/ads/zzfrb;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# instance fields
.field final synthetic o:Lcom/google/android/gms/internal/ads/zzfos;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzfos;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfoq;->o:Lcom/google/android/gms/internal/ads/zzfos;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzfrb;-><init>()V

    return-void
.end method


# virtual methods
.method final c()Ljava/util/Map;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfoq;->o:Lcom/google/android/gms/internal/ads/zzfos;

    return-object v0
.end method

.method public final contains(Ljava/lang/Object;)Z
    .registers 3
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfoq;->o:Lcom/google/android/gms/internal/ads/zzfos;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzfos;->r:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzfpl;->a(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final iterator()Ljava/util/Iterator;
    .registers 3

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzfor;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfoq;->o:Lcom/google/android/gms/internal/ads/zzfos;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzfor;-><init>(Lcom/google/android/gms/internal/ads/zzfos;)V

    return-object v0
.end method

.method public final remove(Ljava/lang/Object;)Z
    .registers 3
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzfrb;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_8
    check-cast p1, Ljava/util/Map$Entry;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfoq;->o:Lcom/google/android/gms/internal/ads/zzfos;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzfos;->s:Lcom/google/android/gms/internal/ads/zzfpf;

    .line 3
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzfpf;->t(Lcom/google/android/gms/internal/ads/zzfpf;Ljava/lang/Object;)V

    const/4 p1, 0x1

    return p1
.end method
