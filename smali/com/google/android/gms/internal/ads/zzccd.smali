###### Class com.google.android.gms.internal.ads.zzccd (com.google.android.gms.internal.ads.zzccd)
.class public final Lcom/google/android/gms/internal/ads/zzccd;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzfg;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/google/android/gms/internal/ads/zzfg;

.field private final c:Ljava/lang/String;

.field private final d:I

.field private final e:Z

.field private f:Ljava/io/InputStream;

.field private g:Z

.field private h:Landroid/net/Uri;

.field private volatile i:Lcom/google/android/gms/internal/ads/zzavq;

.field private j:Z

.field private k:Z

.field private final l:Ljava/util/concurrent/atomic/AtomicLong;

.field private m:Lcom/google/android/gms/internal/ads/zzfl;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzfg;Ljava/lang/String;ILcom/google/android/gms/internal/ads/zzgi;Lcom/google/android/gms/internal/ads/zzccc;)V
    .registers 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzccd;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzccd;->b:Lcom/google/android/gms/internal/ads/zzfg;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzccd;->c:Ljava/lang/String;

    iput p4, p0, Lcom/google/android/gms/internal/ads/zzccd;->d:I

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzccd;->j:Z

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzccd;->k:Z

    new-instance p1, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 p2, -0x1

    invoke-direct {p1, p2, p3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzccd;->l:Ljava/util/concurrent/atomic/AtomicLong;

    .line 2
    sget-object p1, Lcom/google/android/gms/internal/ads/zzbar;->G1:Lcom/google/android/gms/internal/ads/zzbaj;

    .line 3
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->c()Lcom/google/android/gms/internal/ads/zzbap;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzbap;->b(Lcom/google/android/gms/internal/ads/zzbaj;)Ljava/lang/Object;

    move-result-object p1

    .line 4
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzccd;->e:Z

    return-void
.end method

.method private final n()Z
    .registers 5

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzccd;->e:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbar;->T3:Lcom/google/android/gms/internal/ads/zzbaj;

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->c()Lcom/google/android/gms/internal/ads/zzbap;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/zzbap;->b(Lcom/google/android/gms/internal/ads/zzbaj;)Ljava/lang/Object;

    move-result-object v0

    .line 3
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1f

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzccd;->j:Z

    if-eqz v0, :cond_1e

    goto :goto_1f

    :cond_1e
    return v2

    :cond_1f
    :goto_1f
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbar;->U3:Lcom/google/android/gms/internal/ads/zzbaj;

    .line 4
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->c()Lcom/google/android/gms/internal/ads/zzbap;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/ads/zzbap;->b(Lcom/google/android/gms/internal/ads/zzbaj;)Ljava/lang/Object;

    move-result-object v0

    .line 5
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_36

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzccd;->k:Z

    if-nez v0, :cond_36

    return v2

    :cond_36
    return v1
.end method


# virtual methods
.method public final a()Landroid/net/Uri;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzccd;->h:Landroid/net/Uri;

    return-object v0
.end method

.method public final synthetic b()Ljava/util/Map;
    .registers 2

    .line 1
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final d()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzccd;->g:Z

    if-eqz v0, :cond_1a

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzccd;->g:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzccd;->h:Landroid/net/Uri;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzccd;->f:Ljava/io/InputStream;

    if-eqz v1, :cond_14

    .line 2
    invoke-static {v1}, Lcom/google/android/gms/common/util/IOUtils;->b(Ljava/io/Closeable;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzccd;->f:Ljava/io/InputStream;

    return-void

    :cond_14
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzccd;->b:Lcom/google/android/gms/internal/ads/zzfg;

    .line 3
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzfg;->d()V

    return-void

    .line 4
    :cond_1a
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Attempt to close an already closed CacheDataSource."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final e([BII)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzccd;->g:Z

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzccd;->f:Ljava/io/InputStream;

    if-eqz v0, :cond_d

    .line 2
    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p1

    goto :goto_13

    :cond_d
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzccd;->b:Lcom/google/android/gms/internal/ads/zzfg;

    .line 3
    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzr;->e([BII)I

    move-result p1

    :goto_13
    return p1

    .line 4
    :cond_14
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Attempt to read closed CacheDataSource."

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final f(Lcom/google/android/gms/internal/ads/zzgi;)V
    .registers 2

    return-void
.end method

.method public final j(Lcom/google/android/gms/internal/ads/zzfl;)J
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzccd;->g:Z

    if-nez v0, :cond_13f

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzccd;->g:Z

    .line 2
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzfl;->a:Landroid/net/Uri;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzccd;->h:Landroid/net/Uri;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzccd;->m:Lcom/google/android/gms/internal/ads/zzfl;

    .line 3
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzavq;->V3(Landroid/net/Uri;)Lcom/google/android/gms/internal/ads/zzavq;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzccd;->i:Lcom/google/android/gms/internal/ads/zzavq;

    .line 4
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbar;->Q3:Lcom/google/android/gms/internal/ads/zzbaj;

    .line 5
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->c()Lcom/google/android/gms/internal/ads/zzbap;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbap;->b(Lcom/google/android/gms/internal/ads/zzbaj;)Ljava/lang/Object;

    move-result-object v0

    .line 6
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_d1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzccd;->i:Lcom/google/android/gms/internal/ads/zzavq;

    if-eqz v0, :cond_118

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzccd;->i:Lcom/google/android/gms/internal/ads/zzavq;

    .line 7
    iget-wide v2, p1, Lcom/google/android/gms/internal/ads/zzfl;->f:J

    iput-wide v2, v0, Lcom/google/android/gms/internal/ads/zzavq;->v:J

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzccd;->i:Lcom/google/android/gms/internal/ads/zzavq;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzccd;->c:Ljava/lang/String;

    .line 8
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzfoj;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/google/android/gms/internal/ads/zzavq;->w:Ljava/lang/String;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzccd;->i:Lcom/google/android/gms/internal/ads/zzavq;

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzccd;->d:I

    .line 9
    iput v0, p1, Lcom/google/android/gms/internal/ads/zzavq;->x:I

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzccd;->i:Lcom/google/android/gms/internal/ads/zzavq;

    .line 10
    iget-boolean p1, p1, Lcom/google/android/gms/internal/ads/zzavq;->u:Z

    if-eqz p1, :cond_53

    sget-object p1, Lcom/google/android/gms/internal/ads/zzbar;->S3:Lcom/google/android/gms/internal/ads/zzbaj;

    .line 11
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->c()Lcom/google/android/gms/internal/ads/zzbap;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzbap;->b(Lcom/google/android/gms/internal/ads/zzbaj;)Ljava/lang/Object;

    move-result-object p1

    .line 12
    check-cast p1, Ljava/lang/Long;

    goto :goto_5f

    .line 13
    :cond_53
    sget-object p1, Lcom/google/android/gms/internal/ads/zzbar;->R3:Lcom/google/android/gms/internal/ads/zzbaj;

    .line 14
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->c()Lcom/google/android/gms/internal/ads/zzbap;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzbap;->b(Lcom/google/android/gms/internal/ads/zzbaj;)Ljava/lang/Object;

    move-result-object p1

    .line 15
    check-cast p1, Ljava/lang/Long;

    .line 16
    :goto_5f
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 17
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->b()Lcom/google/android/gms/common/util/Clock;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/gms/common/util/Clock;->b()J

    .line 18
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->f()Lcom/google/android/gms/internal/ads/zzawb;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzccd;->a:Landroid/content/Context;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzccd;->i:Lcom/google/android/gms/internal/ads/zzavq;

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzawb;->a(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzavq;)Ljava/util/concurrent/Future;

    move-result-object p1

    const/4 v0, 0x0

    :try_start_76
    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 19
    invoke-interface {p1, v2, v3, v4}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzawc;

    .line 20
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzawc;->d()Z

    .line 21
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzawc;->f()Z

    move-result v3

    iput-boolean v3, p0, Lcom/google/android/gms/internal/ads/zzccd;->j:Z

    .line 22
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzawc;->e()Z

    move-result v3

    iput-boolean v3, p0, Lcom/google/android/gms/internal/ads/zzccd;->k:Z

    .line 23
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzawc;->a()J

    .line 24
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzccd;->n()Z

    move-result v3

    if-nez v3, :cond_a4

    .line 25
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzawc;->c()Ljava/io/InputStream;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zzccd;->f:Ljava/io/InputStream;
    :try_end_9c
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_76 .. :try_end_9c} :catch_be
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_76 .. :try_end_9c} :catch_be
    .catch Ljava/lang/InterruptedException; {:try_start_76 .. :try_end_9c} :catch_ac
    .catchall {:try_start_76 .. :try_end_9c} :catchall_c9

    .line 26
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->b()Lcom/google/android/gms/common/util/Clock;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/gms/common/util/Clock;->b()J

    .line 27
    throw v1

    .line 28
    :cond_a4
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->b()Lcom/google/android/gms/common/util/Clock;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/gms/common/util/Clock;->b()J

    .line 29
    throw v1

    .line 30
    :catch_ac
    :try_start_ac
    invoke-interface {p1, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 31
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V
    :try_end_b6
    .catchall {:try_start_ac .. :try_end_b6} :catchall_c9

    .line 32
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->b()Lcom/google/android/gms/common/util/Clock;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/gms/common/util/Clock;->b()J

    .line 33
    throw v1

    .line 34
    :catch_be
    :try_start_be
    invoke-interface {p1, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z
    :try_end_c1
    .catchall {:try_start_be .. :try_end_c1} :catchall_c9

    .line 35
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->b()Lcom/google/android/gms/common/util/Clock;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/gms/common/util/Clock;->b()J

    .line 36
    throw v1

    .line 37
    :catchall_c9
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->b()Lcom/google/android/gms/common/util/Clock;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/gms/common/util/Clock;->b()J

    .line 38
    throw v1

    .line 39
    :cond_d1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzccd;->i:Lcom/google/android/gms/internal/ads/zzavq;

    if-eqz v0, :cond_f5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzccd;->i:Lcom/google/android/gms/internal/ads/zzavq;

    .line 40
    iget-wide v1, p1, Lcom/google/android/gms/internal/ads/zzfl;->f:J

    iput-wide v1, v0, Lcom/google/android/gms/internal/ads/zzavq;->v:J

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzccd;->i:Lcom/google/android/gms/internal/ads/zzavq;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzccd;->c:Ljava/lang/String;

    .line 41
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzfoj;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzavq;->w:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzccd;->i:Lcom/google/android/gms/internal/ads/zzavq;

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzccd;->d:I

    .line 42
    iput v1, v0, Lcom/google/android/gms/internal/ads/zzavq;->x:I

    .line 43
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->e()Lcom/google/android/gms/internal/ads/zzavm;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzccd;->i:Lcom/google/android/gms/internal/ads/zzavq;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzavm;->b(Lcom/google/android/gms/internal/ads/zzavq;)Lcom/google/android/gms/internal/ads/zzavn;

    move-result-object v1

    :cond_f5
    if-eqz v1, :cond_118

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzavn;->b()Z

    move-result v0

    if-eqz v0, :cond_118

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzavn;->e()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzccd;->j:Z

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzavn;->Y3()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzccd;->k:Z

    .line 44
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzccd;->n()Z

    move-result v0

    if-nez v0, :cond_118

    .line 45
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzavn;->X3()Ljava/io/InputStream;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzccd;->f:Ljava/io/InputStream;

    const-wide/16 v0, -0x1

    return-wide v0

    .line 46
    :cond_118
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzccd;->i:Lcom/google/android/gms/internal/ads/zzavq;

    if-eqz v0, :cond_136

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfl;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzccd;->i:Lcom/google/android/gms/internal/ads/zzavq;

    .line 47
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzavq;->o:Ljava/lang/String;

    .line 48
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    iget-wide v4, p1, Lcom/google/android/gms/internal/ads/zzfl;->e:J

    iget-wide v6, p1, Lcom/google/android/gms/internal/ads/zzfl;->f:J

    iget-wide v8, p1, Lcom/google/android/gms/internal/ads/zzfl;->g:J

    const/4 v10, 0x0

    iget v11, p1, Lcom/google/android/gms/internal/ads/zzfl;->i:I

    move-object v1, v0

    invoke-direct/range {v1 .. v11}, Lcom/google/android/gms/internal/ads/zzfl;-><init>(Landroid/net/Uri;[BJJJLjava/lang/String;I)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzccd;->m:Lcom/google/android/gms/internal/ads/zzfl;

    :cond_136
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzccd;->b:Lcom/google/android/gms/internal/ads/zzfg;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzccd;->m:Lcom/google/android/gms/internal/ads/zzfl;

    .line 49
    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/zzfg;->j(Lcom/google/android/gms/internal/ads/zzfl;)J

    move-result-wide v0

    return-wide v0

    .line 50
    :cond_13f
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Attempt to open an already open CacheDataSource."

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
