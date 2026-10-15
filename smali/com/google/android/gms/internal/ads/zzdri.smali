###### Class com.google.android.gms.internal.ads.zzdri (com.google.android.gms.internal.ads.zzdri)
.class final Lcom/google/android/gms/internal/ads/zzdri;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzfuf;


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/ads/zzdrk;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzdrk;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdri;->a:Lcom/google/android/gms/internal/ads/zzdrk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Throwable;)V
    .registers 9

    .line 1
    monitor-enter p0

    :try_start_1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdri;->a:Lcom/google/android/gms/internal/ads/zzdrk;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzdrk;->i(Lcom/google/android/gms/internal/ads/zzdrk;Z)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdri;->a:Lcom/google/android/gms/internal/ads/zzdrk;

    const-string v0, "com.google.android.gms.ads.MobileAds"

    const/4 v1, 0x0

    const-string v2, "Internal Error."

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->b()Lcom/google/android/gms/common/util/Clock;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/android/gms/common/util/Clock;->b()J

    move-result-wide v3

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzdri;->a:Lcom/google/android/gms/internal/ads/zzdrk;

    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzdrk;->a(Lcom/google/android/gms/internal/ads/zzdrk;)J

    move-result-wide v5

    sub-long/2addr v3, v5

    long-to-int v4, v3

    .line 3
    invoke-static {p1, v0, v1, v2, v4}, Lcom/google/android/gms/internal/ads/zzdrk;->k(Lcom/google/android/gms/internal/ads/zzdrk;Ljava/lang/String;ZLjava/lang/String;I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdri;->a:Lcom/google/android/gms/internal/ads/zzdrk;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdrk;->b(Lcom/google/android/gms/internal/ads/zzdrk;)Lcom/google/android/gms/internal/ads/zzbzs;

    move-result-object p1

    new-instance v0, Ljava/lang/Exception;

    .line 4
    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzbzs;->d(Ljava/lang/Throwable;)Z

    .line 5
    monitor-exit p0

    return-void

    :catchall_31
    move-exception p1

    monitor-exit p0
    :try_end_33
    .catchall {:try_start_1 .. :try_end_33} :catchall_31

    throw p1
.end method

.method public final bridge synthetic c(Ljava/lang/Object;)V
    .registers 10
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    check-cast p1, Ljava/lang/String;

    monitor-enter p0

    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdri;->a:Lcom/google/android/gms/internal/ads/zzdrk;

    const/4 v1, 0x1

    .line 2
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzdrk;->i(Lcom/google/android/gms/internal/ads/zzdrk;Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdri;->a:Lcom/google/android/gms/internal/ads/zzdrk;

    const-string v2, "com.google.android.gms.ads.MobileAds"

    const-string v3, ""

    .line 3
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->b()Lcom/google/android/gms/common/util/Clock;

    move-result-object v4

    invoke-interface {v4}, Lcom/google/android/gms/common/util/Clock;->b()J

    move-result-wide v4

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzdri;->a:Lcom/google/android/gms/internal/ads/zzdrk;

    invoke-static {v6}, Lcom/google/android/gms/internal/ads/zzdrk;->a(Lcom/google/android/gms/internal/ads/zzdrk;)J

    move-result-wide v6

    sub-long/2addr v4, v6

    long-to-int v5, v4

    .line 4
    invoke-static {v0, v2, v1, v3, v5}, Lcom/google/android/gms/internal/ads/zzdrk;->k(Lcom/google/android/gms/internal/ads/zzdrk;Ljava/lang/String;ZLjava/lang/String;I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdri;->a:Lcom/google/android/gms/internal/ads/zzdrk;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdrk;->h(Lcom/google/android/gms/internal/ads/zzdrk;)Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzdrh;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/zzdrh;-><init>(Lcom/google/android/gms/internal/ads/zzdri;Ljava/lang/String;)V

    .line 5
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 6
    monitor-exit p0

    return-void

    :catchall_32
    move-exception p1

    monitor-exit p0
    :try_end_34
    .catchall {:try_start_3 .. :try_end_34} :catchall_32

    throw p1
.end method

###### Class com.google.android.gms.internal.ads.zzdrh (com.google.android.gms.internal.ads.zzdrh)
.class public final synthetic Lcom/google/android/gms/internal/ads/zzdrh;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic o:Lcom/google/android/gms/internal/ads/zzdri;

.field public final synthetic p:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzdri;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdrh;->o:Lcom/google/android/gms/internal/ads/zzdri;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdrh;->p:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdrh;->o:Lcom/google/android/gms/internal/ads/zzdri;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdrh;->p:Ljava/lang/String;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzdri;->a:Lcom/google/android/gms/internal/ads/zzdrk;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzdrk;->j(Lcom/google/android/gms/internal/ads/zzdrk;Ljava/lang/String;)V

    return-void
.end method
