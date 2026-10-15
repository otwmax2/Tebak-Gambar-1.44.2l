###### Class com.google.android.gms.internal.ads.zzavy (com.google.android.gms.internal.ads.zzavy)
.class final Lcom/google/android/gms/internal/ads/zzavy;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/common/internal/BaseGmsClient$BaseConnectionCallbacks;


# instance fields
.field final synthetic o:Lcom/google/android/gms/internal/ads/zzavq;

.field final synthetic p:Lcom/google/android/gms/internal/ads/zzbzs;

.field final synthetic q:Lcom/google/android/gms/internal/ads/zzawa;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzawa;Lcom/google/android/gms/internal/ads/zzavq;Lcom/google/android/gms/internal/ads/zzbzs;)V
    .registers 4

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzavy;->q:Lcom/google/android/gms/internal/ads/zzawa;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzavy;->o:Lcom/google/android/gms/internal/ads/zzavq;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzavy;->p:Lcom/google/android/gms/internal/ads/zzbzs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final P0(I)V
    .registers 2

    return-void
.end method

.method public final t1(Landroid/os/Bundle;)V
    .registers 7

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzavy;->q:Lcom/google/android/gms/internal/ads/zzawa;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzawa;->b(Lcom/google/android/gms/internal/ads/zzawa;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    :try_start_7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzavy;->q:Lcom/google/android/gms/internal/ads/zzawa;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzawa;->f(Lcom/google/android/gms/internal/ads/zzawa;)Z

    move-result v1

    if-nez v1, :cond_3a

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzawa;->d(Lcom/google/android/gms/internal/ads/zzawa;Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzavy;->q:Lcom/google/android/gms/internal/ads/zzawa;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzawa;->a(Lcom/google/android/gms/internal/ads/zzawa;)Lcom/google/android/gms/internal/ads/zzavp;

    move-result-object v0

    if-nez v0, :cond_1d

    .line 2
    monitor-exit p1

    return-void

    .line 3
    :cond_1d
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbzn;->a:Lcom/google/android/gms/internal/ads/zzfuu;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzavy;->o:Lcom/google/android/gms/internal/ads/zzavq;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzavy;->p:Lcom/google/android/gms/internal/ads/zzbzs;

    new-instance v4, Lcom/google/android/gms/internal/ads/zzavv;

    invoke-direct {v4, p0, v0, v2, v3}, Lcom/google/android/gms/internal/ads/zzavv;-><init>(Lcom/google/android/gms/internal/ads/zzavy;Lcom/google/android/gms/internal/ads/zzavp;Lcom/google/android/gms/internal/ads/zzavq;Lcom/google/android/gms/internal/ads/zzbzs;)V

    .line 4
    invoke-interface {v1, v4}, Lcom/google/android/gms/internal/ads/zzfuu;->g(Ljava/lang/Runnable;)Lcom/google/android/gms/internal/ads/zzfut;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzavy;->p:Lcom/google/android/gms/internal/ads/zzbzs;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzavw;

    invoke-direct {v2, v1, v0}, Lcom/google/android/gms/internal/ads/zzavw;-><init>(Lcom/google/android/gms/internal/ads/zzbzs;Ljava/util/concurrent/Future;)V

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbzn;->f:Lcom/google/android/gms/internal/ads/zzfuu;

    .line 5
    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/ads/zzbzs;->f(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 6
    monitor-exit p1

    return-void

    .line 7
    :cond_3a
    monitor-exit p1

    return-void

    :catchall_3c
    move-exception v0

    .line 8
    monitor-exit p1
    :try_end_3e
    .catchall {:try_start_7 .. :try_end_3e} :catchall_3c

    throw v0
.end method

###### Class com.google.android.gms.internal.ads.zzavv (com.google.android.gms.internal.ads.zzavv)
.class public final synthetic Lcom/google/android/gms/internal/ads/zzavv;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic o:Lcom/google/android/gms/internal/ads/zzavy;

.field public final synthetic p:Lcom/google/android/gms/internal/ads/zzavp;

.field public final synthetic q:Lcom/google/android/gms/internal/ads/zzavq;

.field public final synthetic r:Lcom/google/android/gms/internal/ads/zzbzs;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzavy;Lcom/google/android/gms/internal/ads/zzavp;Lcom/google/android/gms/internal/ads/zzavq;Lcom/google/android/gms/internal/ads/zzbzs;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzavv;->o:Lcom/google/android/gms/internal/ads/zzavy;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzavv;->p:Lcom/google/android/gms/internal/ads/zzavp;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzavv;->q:Lcom/google/android/gms/internal/ads/zzavq;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzavv;->r:Lcom/google/android/gms/internal/ads/zzbzs;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 11

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzavv;->o:Lcom/google/android/gms/internal/ads/zzavy;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzavv;->p:Lcom/google/android/gms/internal/ads/zzavp;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzavv;->q:Lcom/google/android/gms/internal/ads/zzavq;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzavv;->r:Lcom/google/android/gms/internal/ads/zzbzs;

    :try_start_8
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzavp;->p0()Lcom/google/android/gms/internal/ads/zzavs;

    move-result-object v4

    .line 2
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzavp;->o0()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 3
    invoke-virtual {v4, v2}, Lcom/google/android/gms/internal/ads/zzavs;->Sa(Lcom/google/android/gms/internal/ads/zzavq;)Lcom/google/android/gms/internal/ads/zzavn;

    move-result-object v1

    goto :goto_1b

    .line 4
    :cond_17
    invoke-virtual {v4, v2}, Lcom/google/android/gms/internal/ads/zzavs;->Ra(Lcom/google/android/gms/internal/ads/zzavq;)Lcom/google/android/gms/internal/ads/zzavn;

    move-result-object v1

    .line 5
    :goto_1b
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzavn;->b()Z

    move-result v2

    if-nez v2, :cond_31

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "No entry contents."

    .line 6
    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/ads/zzbzs;->d(Ljava/lang/Throwable;)Z

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzavy;->q:Lcom/google/android/gms/internal/ads/zzawa;

    .line 7
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzawa;->e(Lcom/google/android/gms/internal/ads/zzawa;)V

    return-void

    .line 8
    :cond_31
    new-instance v4, Lcom/google/android/gms/internal/ads/zzavx;

    .line 9
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzavn;->X3()Ljava/io/InputStream;

    move-result-object v2

    const/4 v5, 0x1

    invoke-direct {v4, v0, v2, v5}, Lcom/google/android/gms/internal/ads/zzavx;-><init>(Lcom/google/android/gms/internal/ads/zzavy;Ljava/io/InputStream;I)V

    .line 10
    invoke-virtual {v4}, Ljava/io/PushbackInputStream;->read()I

    move-result v2

    const/4 v5, -0x1

    if-eq v2, v5, :cond_5d

    .line 11
    invoke-virtual {v4, v2}, Ljava/io/PushbackInputStream;->unread(I)V

    .line 12
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzavn;->d()Z

    move-result v5

    .line 13
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzavn;->e()Z

    move-result v6

    .line 14
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzavn;->V3()J

    move-result-wide v7

    .line 15
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzavn;->Y3()Z

    move-result v9

    invoke-static/range {v4 .. v9}, Lcom/google/android/gms/internal/ads/zzawc;->b(Ljava/io/InputStream;ZZJZ)Lcom/google/android/gms/internal/ads/zzawc;

    move-result-object v1

    .line 16
    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/ads/zzbzs;->c(Ljava/lang/Object;)Z

    return-void

    .line 17
    :cond_5d
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Unable to read from cache."

    .line 18
    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_65
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_65} :catch_67
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_65} :catch_65

    :catch_65
    move-exception v1

    goto :goto_68

    :catch_67
    move-exception v1

    :goto_68
    const-string v2, "Unable to obtain a cache service instance."

    .line 19
    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/zzbza;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 20
    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/ads/zzbzs;->d(Ljava/lang/Throwable;)Z

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzavy;->q:Lcom/google/android/gms/internal/ads/zzawa;

    .line 21
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzawa;->e(Lcom/google/android/gms/internal/ads/zzawa;)V

    return-void
.end method

###### Class com.google.android.gms.internal.ads.zzavw (com.google.android.gms.internal.ads.zzavw)
.class public final synthetic Lcom/google/android/gms/internal/ads/zzavw;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic o:Lcom/google/android/gms/internal/ads/zzbzs;

.field public final synthetic p:Ljava/util/concurrent/Future;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzbzs;Ljava/util/concurrent/Future;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzavw;->o:Lcom/google/android/gms/internal/ads/zzbzs;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzavw;->p:Ljava/util/concurrent/Future;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzavw;->o:Lcom/google/android/gms/internal/ads/zzbzs;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzavw;->p:Ljava/util/concurrent/Future;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbzs;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    .line 2
    invoke-interface {v1, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z

    :cond_e
    return-void
.end method
