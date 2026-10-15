###### Class com.google.android.gms.internal.ads.zzfph (com.google.android.gms.internal.ads.zzfph)
.class final Lcom/google/android/gms/internal/ads/zzfph;
.super Ljava/util/AbstractCollection;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# instance fields
.field final synthetic o:Lcom/google/android/gms/internal/ads/zzfpi;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzfpi;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfph;->o:Lcom/google/android/gms/internal/ads/zzfpi;

    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    return-void
.end method


# virtual methods
.method public final clear()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfph;->o:Lcom/google/android/gms/internal/ads/zzfpi;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzfrg;->p()V

    return-void
.end method

.method public final contains(Ljava/lang/Object;)Z
    .registers 4
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfph;->o:Lcom/google/android/gms/internal/ads/zzfpi;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfpi;->v()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_22

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    .line 2
    invoke-interface {v1, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    const/4 p1, 0x1

    goto :goto_23

    :cond_22
    const/4 p1, 0x0

    :goto_23
    return p1
.end method

.method public final iterator()Ljava/util/Iterator;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfph;->o:Lcom/google/android/gms/internal/ads/zzfpi;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfpi;->c()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public final size()I
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfph;->o:Lcom/google/android/gms/internal/ads/zzfpi;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzfrg;->f()I

    move-result v0

    return v0
.end method
