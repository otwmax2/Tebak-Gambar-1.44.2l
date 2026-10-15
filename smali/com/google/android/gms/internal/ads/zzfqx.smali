###### Class com.google.android.gms.internal.ads.zzfqx (com.google.android.gms.internal.ads.zzfqx)
.class final Lcom/google/android/gms/internal/ads/zzfqx;
.super Ljava/util/AbstractSequentialList;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field final o:Ljava/util/List;

.field final p:Lcom/google/android/gms/internal/ads/zzfnj;


# direct methods
.method constructor <init>(Ljava/util/List;Lcom/google/android/gms/internal/ads/zzfnj;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/util/AbstractSequentialList;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfqx;->o:Ljava/util/List;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzfqx;->p:Lcom/google/android/gms/internal/ads/zzfnj;

    return-void
.end method


# virtual methods
.method public final clear()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfqx;->o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public final listIterator(I)Ljava/util/ListIterator;
    .registers 4

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzfqw;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfqx;->o:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzfqw;-><init>(Lcom/google/android/gms/internal/ads/zzfqx;Ljava/util/ListIterator;)V

    return-object v0
.end method

.method public final size()I
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfqx;->o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
