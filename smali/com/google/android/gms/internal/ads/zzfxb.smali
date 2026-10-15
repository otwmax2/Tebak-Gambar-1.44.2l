###### Class com.google.android.gms.internal.ads.zzfxb (com.google.android.gms.internal.ads.zzfxb)
.class public final Lcom/google/android/gms/internal/ads/zzfxb;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# instance fields
.field private final a:Ljava/util/concurrent/ConcurrentMap;

.field private final b:Lcom/google/android/gms/internal/ads/zzfwx;

.field private final c:Ljava/lang/Class;

.field private final d:Lcom/google/android/gms/internal/ads/zzggl;


# direct methods
.method synthetic constructor <init>(Ljava/util/concurrent/ConcurrentMap;Lcom/google/android/gms/internal/ads/zzfwx;Lcom/google/android/gms/internal/ads/zzggl;Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzfxa;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfxb;->a:Ljava/util/concurrent/ConcurrentMap;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzfxb;->b:Lcom/google/android/gms/internal/ads/zzfwx;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzfxb;->c:Ljava/lang/Class;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzfxb;->d:Lcom/google/android/gms/internal/ads/zzggl;

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/internal/ads/zzfwx;
    .registers 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfxb;->b:Lcom/google/android/gms/internal/ads/zzfwx;

    return-object v0
.end method

.method public final b()Lcom/google/android/gms/internal/ads/zzggl;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfxb;->d:Lcom/google/android/gms/internal/ads/zzggl;

    return-object v0
.end method

.method public final c()Ljava/lang/Class;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfxb;->c:Ljava/lang/Class;

    return-object v0
.end method

.method public final d()Ljava/util/Collection;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfxb;->a:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public final e([B)Ljava/util/List;
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfxb;->a:Ljava/util/concurrent/ConcurrentMap;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzfwz;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lcom/google/android/gms/internal/ads/zzfwz;-><init>([BLcom/google/android/gms/internal/ads/zzfwy;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_11

    return-object p1

    .line 2
    :cond_11
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final f()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfxb;->d:Lcom/google/android/gms/internal/ads/zzggl;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzggl;->a()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x1

    return v0

    :cond_e
    const/4 v0, 0x0

    return v0
.end method
