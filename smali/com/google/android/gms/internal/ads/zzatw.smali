###### Class com.google.android.gms.internal.ads.zzatw (com.google.android.gms.internal.ads.zzatw)
.class final Lcom/google/android/gms/internal/ads/zzatw;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic o:Lcom/google/android/gms/internal/ads/zzatx;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzatx;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzatw;->o:Lcom/google/android/gms/internal/ads/zzatx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzatw;->o:Lcom/google/android/gms/internal/ads/zzatx;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzatx;->c(Lcom/google/android/gms/internal/ads/zzatx;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_7
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzatw;->o:Lcom/google/android/gms/internal/ads/zzatx;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzatx;->i(Lcom/google/android/gms/internal/ads/zzatx;)Z

    move-result v2

    if-eqz v2, :cond_3f

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzatx;->j(Lcom/google/android/gms/internal/ads/zzatx;)Z

    move-result v2

    if-eqz v2, :cond_3f

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzatx;->e(Lcom/google/android/gms/internal/ads/zzatx;Z)V

    const-string v1, "App went background"

    .line 2
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzbza;->b(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzatw;->o:Lcom/google/android/gms/internal/ads/zzatx;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzatx;->d(Lcom/google/android/gms/internal/ads/zzatx;)Ljava/util/List;

    move-result-object v1

    .line 3
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_28
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_44

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/zzaty;
    :try_end_34
    .catchall {:try_start_7 .. :try_end_34} :catchall_46

    .line 4
    :try_start_34
    invoke-interface {v3, v2}, Lcom/google/android/gms/internal/ads/zzaty;->S(Z)V
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_37} :catch_38
    .catchall {:try_start_34 .. :try_end_37} :catchall_46

    goto :goto_28

    :catch_38
    move-exception v3

    :try_start_39
    const-string v4, ""

    .line 5
    invoke-static {v4, v3}, Lcom/google/android/gms/internal/ads/zzbza;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_28

    :cond_3f
    const-string v1, "App is still foreground"

    .line 6
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzbza;->b(Ljava/lang/String;)V

    .line 7
    :cond_44
    monitor-exit v0

    return-void

    :catchall_46
    move-exception v1

    monitor-exit v0
    :try_end_48
    .catchall {:try_start_39 .. :try_end_48} :catchall_46

    goto :goto_4a

    :goto_49
    throw v1

    :goto_4a
    goto :goto_49
.end method
