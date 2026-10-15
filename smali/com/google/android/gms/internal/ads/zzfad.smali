###### Class com.google.android.gms.internal.ads.zzfad (com.google.android.gms.internal.ads.zzfad)
.class public final Lcom/google/android/gms/internal/ads/zzfad;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzcur;


# instance fields
.field private final o:Ljava/util/HashSet;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private final p:Landroid/content/Context;

.field private final q:Lcom/google/android/gms/internal/ads/zzbyn;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbyn;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfad;->o:Ljava/util/HashSet;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfad;->p:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzfad;->q:Lcom/google/android/gms/internal/ads/zzbyn;

    return-void
.end method


# virtual methods
.method public final a()Landroid/os/Bundle;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfad;->q:Lcom/google/android/gms/internal/ads/zzbyn;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfad;->p:Landroid/content/Context;

    invoke-virtual {v0, v1, p0}, Lcom/google/android/gms/internal/ads/zzbyn;->j(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzfad;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public final declared-synchronized b(Ljava/util/HashSet;)V
    .registers 3

    monitor-enter p0

    .line 1
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfad;->o:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfad;->o:Ljava/util/HashSet;

    .line 2
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    monitor-exit p0

    return-void

    :catchall_d
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized v(Lcom/google/android/gms/ads/internal/client/zze;)V
    .registers 3

    monitor-enter p0

    .line 1
    :try_start_1
    iget p1, p1, Lcom/google/android/gms/ads/internal/client/zze;->o:I

    const/4 v0, 0x3

    if-eq p1, v0, :cond_f

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzfad;->q:Lcom/google/android/gms/internal/ads/zzbyn;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfad;->o:Ljava/util/HashSet;

    .line 2
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzbyn;->h(Ljava/util/HashSet;)V
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_11

    monitor-exit p0

    return-void

    :cond_f
    monitor-exit p0

    return-void

    :catchall_11
    move-exception p1

    monitor-exit p0

    throw p1
.end method
