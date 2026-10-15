###### Class com.google.android.gms.internal.ads.zzfvd (com.google.android.gms.internal.ads.zzfvd)
.class final Lcom/google/android/gms/internal/ads/zzfvd;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field o:Lcom/google/android/gms/internal/ads/zzfvg;
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzfvg;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfvd;->o:Lcom/google/android/gms/internal/ads/zzfvg;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 11

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfvd;->o:Lcom/google/android/gms/internal/ads/zzfvg;

    if-nez v0, :cond_5

    return-void

    :cond_5
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzfvg;->E(Lcom/google/android/gms/internal/ads/zzfvg;)Lcom/google/android/gms/internal/ads/zzfut;

    move-result-object v1

    if-nez v1, :cond_c

    return-void

    :cond_c
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zzfvd;->o:Lcom/google/android/gms/internal/ads/zzfvg;

    invoke-interface {v1}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v3

    if-eqz v3, :cond_19

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzfsx;->w(Lcom/google/android/gms/internal/ads/zzfut;)Z

    return-void

    :cond_19
    const/4 v3, 0x1

    :try_start_1a
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzfvg;->G(Lcom/google/android/gms/internal/ads/zzfvg;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v4

    .line 3
    invoke-static {v0, v2}, Lcom/google/android/gms/internal/ads/zzfvg;->H(Lcom/google/android/gms/internal/ads/zzfvg;Ljava/util/concurrent/ScheduledFuture;)V

    const-string v5, "Timed out"
    :try_end_23
    .catchall {:try_start_1a .. :try_end_23} :catchall_7f

    if-eqz v4, :cond_52

    :try_start_25
    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 4
    invoke-interface {v4, v6}, Ljava/util/concurrent/ScheduledFuture;->getDelay(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(J)J

    move-result-wide v6

    const-wide/16 v8, 0xa

    cmp-long v4, v6, v8

    if-lez v4, :cond_52

    new-instance v4, Ljava/lang/StringBuilder;

    .line 5
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " (timeout delayed by "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, " ms after scheduled time)"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v5, v4

    goto :goto_52

    :catchall_50
    move-exception v4

    goto :goto_76

    .line 6
    :cond_52
    :goto_52
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4
    :try_end_6a
    .catchall {:try_start_25 .. :try_end_6a} :catchall_50

    .line 7
    :try_start_6a
    new-instance v5, Lcom/google/android/gms/internal/ads/zzfvf;

    invoke-direct {v5, v4, v2}, Lcom/google/android/gms/internal/ads/zzfvf;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzfve;)V

    invoke-virtual {v0, v5}, Lcom/google/android/gms/internal/ads/zzfsx;->i(Ljava/lang/Throwable;)Z
    :try_end_72
    .catchall {:try_start_6a .. :try_end_72} :catchall_7f

    .line 8
    invoke-interface {v1, v3}, Ljava/util/concurrent/Future;->cancel(Z)Z

    return-void

    .line 9
    :goto_76
    :try_start_76
    new-instance v6, Lcom/google/android/gms/internal/ads/zzfvf;

    invoke-direct {v6, v5, v2}, Lcom/google/android/gms/internal/ads/zzfvf;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzfve;)V

    invoke-virtual {v0, v6}, Lcom/google/android/gms/internal/ads/zzfsx;->i(Ljava/lang/Throwable;)Z

    .line 10
    throw v4
    :try_end_7f
    .catchall {:try_start_76 .. :try_end_7f} :catchall_7f

    :catchall_7f
    move-exception v0

    .line 11
    invoke-interface {v1, v3}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 12
    throw v0
.end method
