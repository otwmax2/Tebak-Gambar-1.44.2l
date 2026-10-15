###### Class com.google.android.gms.internal.ads.zzftf (com.google.android.gms.internal.ads.zzftf)
.class abstract Lcom/google/android/gms/internal/ads/zzftf;
.super Lcom/google/android/gms/internal/ads/zzftz;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final synthetic x:I


# instance fields
.field v:Lcom/google/android/gms/internal/ads/zzfut;
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field

.field w:Ljava/lang/Object;
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzfut;Ljava/lang/Object;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzftz;-><init>()V

    .line 2
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzftf;->v:Lcom/google/android/gms/internal/ads/zzfut;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzftf;->w:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method abstract E(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method abstract F(Ljava/lang/Object;)V
.end method

.method protected final d()Ljava/lang/String;
    .registers 6
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzftf;->v:Lcom/google/android/gms/internal/ads/zzfut;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzftf;->w:Ljava/lang/Object;

    invoke-super {p0}, Lcom/google/android/gms/internal/ads/zzfsx;->d()Ljava/lang/String;

    move-result-object v2

    if-eqz v0, :cond_25

    .line 2
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "inputFuture=["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "], "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_27

    :cond_25
    const-string v0, ""

    :goto_27
    if-eqz v1, :cond_47

    .line 3
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "function=["

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_47
    if-eqz v2, :cond_4e

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_4e
    const/4 v0, 0x0

    return-object v0
.end method

.method protected final g()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzftf;->v:Lcom/google/android/gms/internal/ads/zzfut;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzfsx;->v(Ljava/util/concurrent/Future;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzftf;->v:Lcom/google/android/gms/internal/ads/zzfut;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzftf;->w:Ljava/lang/Object;

    return-void
.end method

.method public final run()V
    .registers 7

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzftf;->v:Lcom/google/android/gms/internal/ads/zzfut;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzftf;->w:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfsx;->isCancelled()Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v0, :cond_e

    const/4 v5, 0x1

    goto :goto_f

    :cond_e
    const/4 v5, 0x0

    :goto_f
    or-int/2addr v2, v5

    if-nez v1, :cond_13

    goto :goto_14

    :cond_13
    const/4 v3, 0x0

    :goto_14
    or-int/2addr v2, v3

    if-eqz v2, :cond_18

    return-void

    :cond_18
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zzftf;->v:Lcom/google/android/gms/internal/ads/zzfut;

    .line 2
    invoke-interface {v0}, Ljava/util/concurrent/Future;->isCancelled()Z

    move-result v3

    if-eqz v3, :cond_25

    .line 3
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzfsx;->w(Lcom/google/android/gms/internal/ads/zzfut;)Z

    return-void

    .line 4
    :cond_25
    :try_start_25
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzfuj;->o(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v0
    :try_end_29
    .catch Ljava/util/concurrent/CancellationException; {:try_start_25 .. :try_end_29} :catch_54
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_25 .. :try_end_29} :catch_4b
    .catch Ljava/lang/RuntimeException; {:try_start_25 .. :try_end_29} :catch_46
    .catch Ljava/lang/Error; {:try_start_25 .. :try_end_29} :catch_41

    .line 5
    :try_start_29
    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/ads/zzftf;->E(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_2d
    .catchall {:try_start_29 .. :try_end_2d} :catchall_33

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zzftf;->w:Ljava/lang/Object;

    .line 6
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzftf;->F(Ljava/lang/Object;)V

    return-void

    :catchall_33
    move-exception v0

    .line 7
    :try_start_34
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzfvb;->a(Ljava/lang/Throwable;)V

    .line 8
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzfsx;->i(Ljava/lang/Throwable;)Z
    :try_end_3a
    .catchall {:try_start_34 .. :try_end_3a} :catchall_3d

    .line 9
    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zzftf;->w:Ljava/lang/Object;

    return-void

    :catchall_3d
    move-exception v0

    .line 10
    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zzftf;->w:Ljava/lang/Object;

    .line 11
    throw v0

    :catch_41
    move-exception v0

    .line 12
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzfsx;->i(Ljava/lang/Throwable;)Z

    return-void

    :catch_46
    move-exception v0

    .line 13
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzfsx;->i(Ljava/lang/Throwable;)Z

    return-void

    :catch_4b
    move-exception v0

    .line 14
    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzfsx;->i(Ljava/lang/Throwable;)Z

    return-void

    .line 15
    :catch_54
    invoke-virtual {p0, v4}, Lcom/google/android/gms/internal/ads/zzfsx;->cancel(Z)Z

    return-void
.end method
