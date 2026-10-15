###### Class com.google.android.gms.internal.ads.zzfsv (com.google.android.gms.internal.ads.zzfsv)
.class abstract Lcom/google/android/gms/internal/ads/zzfsv;
.super Lcom/google/android/gms/internal/ads/zzftz;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field v:Lcom/google/android/gms/internal/ads/zzfut;
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field

.field w:Ljava/lang/Class;
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field

.field x:Ljava/lang/Object;
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzfut;Ljava/lang/Class;Ljava/lang/Object;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzftz;-><init>()V

    .line 2
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfsv;->v:Lcom/google/android/gms/internal/ads/zzfut;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzfsv;->w:Ljava/lang/Class;

    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzfsv;->x:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method abstract E(Ljava/lang/Object;Ljava/lang/Throwable;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method abstract F(Ljava/lang/Object;)V
.end method

.method protected final d()Ljava/lang/String;
    .registers 7
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfsv;->v:Lcom/google/android/gms/internal/ads/zzfut;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfsv;->w:Ljava/lang/Class;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzfsv;->x:Ljava/lang/Object;

    invoke-super {p0}, Lcom/google/android/gms/internal/ads/zzfsx;->d()Ljava/lang/String;

    move-result-object v3

    if-eqz v0, :cond_27

    .line 2
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "inputFuture=["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "], "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_29

    :cond_27
    const-string v0, ""

    :goto_29
    if-eqz v1, :cond_58

    if-nez v2, :cond_2e

    goto :goto_58

    .line 3
    :cond_2e
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "exceptionType=["

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "], fallback=["

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_58
    :goto_58
    if-eqz v3, :cond_5f

    .line 4
    invoke-virtual {v0, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_5f
    const/4 v0, 0x0

    return-object v0
.end method

.method protected final g()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfsv;->v:Lcom/google/android/gms/internal/ads/zzfut;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzfsx;->v(Ljava/util/concurrent/Future;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfsv;->v:Lcom/google/android/gms/internal/ads/zzfut;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfsv;->w:Ljava/lang/Class;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfsv;->x:Ljava/lang/Object;

    return-void
.end method

.method public final run()V
    .registers 10

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfsv;->v:Lcom/google/android/gms/internal/ads/zzfut;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfsv;->w:Ljava/lang/Class;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzfsv;->x:Ljava/lang/Object;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v0, :cond_c

    const/4 v5, 0x1

    goto :goto_d

    :cond_c
    const/4 v5, 0x0

    :goto_d
    if-nez v1, :cond_11

    const/4 v6, 0x1

    goto :goto_12

    :cond_11
    const/4 v6, 0x0

    :goto_12
    or-int/2addr v5, v6

    if-nez v2, :cond_16

    goto :goto_17

    :cond_16
    const/4 v3, 0x0

    :goto_17
    or-int/2addr v3, v5

    if-nez v3, :cond_a7

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfsx;->isCancelled()Z

    move-result v3

    if-eqz v3, :cond_22

    goto/16 :goto_a7

    :cond_22
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/google/android/gms/internal/ads/zzfsv;->v:Lcom/google/android/gms/internal/ads/zzfut;

    .line 2
    :try_start_25
    instance-of v4, v0, Lcom/google/android/gms/internal/ads/zzfvm;

    if-eqz v4, :cond_31

    .line 3
    move-object v4, v0

    check-cast v4, Lcom/google/android/gms/internal/ads/zzfvm;

    .line 4
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzfvm;->a()Ljava/lang/Throwable;

    move-result-object v4

    goto :goto_32

    :cond_31
    move-object v4, v3

    :goto_32
    if-nez v4, :cond_3c

    .line 5
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzfuj;->o(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v5
    :try_end_38
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_25 .. :try_end_38} :catch_3e
    .catch Ljava/lang/RuntimeException; {:try_start_25 .. :try_end_38} :catch_3b
    .catch Ljava/lang/Error; {:try_start_25 .. :try_end_38} :catch_39

    goto :goto_7a

    :catch_39
    move-exception v4

    goto :goto_3c

    :catch_3b
    move-exception v4

    :cond_3c
    :goto_3c
    move-object v5, v3

    goto :goto_7a

    :catch_3e
    move-exception v4

    .line 6
    invoke-virtual {v4}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v5

    if-nez v5, :cond_78

    new-instance v5, Ljava/lang/NullPointerException;

    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    .line 8
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Future type "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " threw "

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " without a cause"

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    :cond_78
    move-object v4, v5

    goto :goto_3c

    :goto_7a
    if-nez v4, :cond_80

    .line 9
    invoke-virtual {p0, v5}, Lcom/google/android/gms/internal/ads/zzfsx;->h(Ljava/lang/Object;)Z

    return-void

    .line 10
    :cond_80
    invoke-virtual {v1, v4}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a4

    .line 11
    :try_start_86
    invoke-virtual {p0, v2, v4}, Lcom/google/android/gms/internal/ads/zzfsv;->E(Ljava/lang/Object;Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0
    :try_end_8a
    .catchall {:try_start_86 .. :try_end_8a} :catchall_92

    iput-object v3, p0, Lcom/google/android/gms/internal/ads/zzfsv;->w:Ljava/lang/Class;

    iput-object v3, p0, Lcom/google/android/gms/internal/ads/zzfsv;->x:Ljava/lang/Object;

    .line 12
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzfsv;->F(Ljava/lang/Object;)V

    return-void

    :catchall_92
    move-exception v0

    .line 13
    :try_start_93
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzfvb;->a(Ljava/lang/Throwable;)V

    .line 14
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzfsx;->i(Ljava/lang/Throwable;)Z
    :try_end_99
    .catchall {:try_start_93 .. :try_end_99} :catchall_9e

    iput-object v3, p0, Lcom/google/android/gms/internal/ads/zzfsv;->w:Ljava/lang/Class;

    iput-object v3, p0, Lcom/google/android/gms/internal/ads/zzfsv;->x:Ljava/lang/Object;

    return-void

    :catchall_9e
    move-exception v0

    iput-object v3, p0, Lcom/google/android/gms/internal/ads/zzfsv;->w:Ljava/lang/Class;

    iput-object v3, p0, Lcom/google/android/gms/internal/ads/zzfsv;->x:Ljava/lang/Object;

    .line 15
    throw v0

    .line 16
    :cond_a4
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzfsx;->w(Lcom/google/android/gms/internal/ads/zzfut;)Z

    :cond_a7
    :goto_a7
    return-void
.end method
