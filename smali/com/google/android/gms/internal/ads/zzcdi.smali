###### Class com.google.android.gms.internal.ads.zzcdi (com.google.android.gms.internal.ads.zzcdi)
.class public final Lcom/google/android/gms/internal/ads/zzcdi;
.super Lcom/google/android/gms/internal/ads/zzfa;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# instance fields
.field private final e:Landroid/content/Context;

.field private final f:Lcom/google/android/gms/internal/ads/zzfg;

.field private final g:Ljava/lang/String;

.field private final h:I

.field private final i:Z

.field private j:Ljava/io/InputStream;

.field private k:Z

.field private l:Landroid/net/Uri;

.field private volatile m:Lcom/google/android/gms/internal/ads/zzavq;

.field private n:Z

.field private o:Z

.field private p:Z

.field private q:Z

.field private r:J

.field private s:Lcom/google/android/gms/internal/ads/zzfut;

.field private final t:Ljava/util/concurrent/atomic/AtomicLong;

.field private final u:Lcom/google/android/gms/internal/ads/zzcdl;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzfg;Ljava/lang/String;ILcom/google/android/gms/internal/ads/zzgi;Lcom/google/android/gms/internal/ads/zzcdl;[B)V
    .registers 8

    const/4 p7, 0x0

    .line 1
    invoke-direct {p0, p7}, Lcom/google/android/gms/internal/ads/zzfa;-><init>(Z)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcdi;->e:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcdi;->f:Lcom/google/android/gms/internal/ads/zzfg;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzcdi;->u:Lcom/google/android/gms/internal/ads/zzcdl;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcdi;->g:Ljava/lang/String;

    iput p4, p0, Lcom/google/android/gms/internal/ads/zzcdi;->h:I

    iput-boolean p7, p0, Lcom/google/android/gms/internal/ads/zzcdi;->n:Z

    iput-boolean p7, p0, Lcom/google/android/gms/internal/ads/zzcdi;->o:Z

    iput-boolean p7, p0, Lcom/google/android/gms/internal/ads/zzcdi;->p:Z

    iput-boolean p7, p0, Lcom/google/android/gms/internal/ads/zzcdi;->q:Z

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzcdi;->r:J

    .line 2
    new-instance p1, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 p2, -0x1

    invoke-direct {p1, p2, p3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcdi;->t:Ljava/util/concurrent/atomic/AtomicLong;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcdi;->s:Lcom/google/android/gms/internal/ads/zzfut;

    .line 3
    sget-object p1, Lcom/google/android/gms/internal/ads/zzbar;->G1:Lcom/google/android/gms/internal/ads/zzbaj;

    .line 4
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->c()Lcom/google/android/gms/internal/ads/zzbap;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzbap;->b(Lcom/google/android/gms/internal/ads/zzbaj;)Ljava/lang/Object;

    move-result-object p1

    .line 5
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzcdi;->i:Z

    .line 6
    invoke-virtual {p0, p5}, Lcom/google/android/gms/internal/ads/zzfa;->f(Lcom/google/android/gms/internal/ads/zzgi;)V

    return-void
.end method

.method private final y()Z
    .registers 5

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcdi;->i:Z

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

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcdi;->p:Z

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

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcdi;->q:Z

    if-nez v0, :cond_36

    return v2

    :cond_36
    return v1
.end method


# virtual methods
.method public final a()Landroid/net/Uri;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcdi;->l:Landroid/net/Uri;

    return-object v0
.end method

.method public final d()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcdi;->k:Z

    if-eqz v0, :cond_29

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcdi;->k:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzcdi;->l:Landroid/net/Uri;

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzcdi;->i:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_13

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcdi;->j:Ljava/io/InputStream;

    if-eqz v2, :cond_14

    :cond_13
    const/4 v0, 0x1

    :cond_14
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcdi;->j:Ljava/io/InputStream;

    if-eqz v2, :cond_1e

    .line 2
    invoke-static {v2}, Lcom/google/android/gms/common/util/IOUtils;->b(Ljava/io/Closeable;)V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzcdi;->j:Ljava/io/InputStream;

    goto :goto_23

    .line 3
    :cond_1e
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcdi;->f:Lcom/google/android/gms/internal/ads/zzfg;

    .line 4
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzfg;->d()V

    :goto_23
    if-eqz v0, :cond_28

    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfa;->n()V

    :cond_28
    return-void

    .line 6
    :cond_29
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Attempt to close an already closed GcacheDataSource."

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
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcdi;->k:Z

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcdi;->j:Ljava/io/InputStream;

    if-eqz v0, :cond_d

    .line 2
    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p1

    goto :goto_13

    .line 3
    :cond_d
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcdi;->f:Lcom/google/android/gms/internal/ads/zzfg;

    .line 4
    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzr;->e([BII)I

    move-result p1

    .line 5
    :goto_13
    iget-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzcdi;->i:Z

    if-eqz p2, :cond_1b

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzcdi;->j:Ljava/io/InputStream;

    if-eqz p2, :cond_1e

    .line 6
    :cond_1b
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzfa;->w(I)V

    :cond_1e
    return p1

    .line 7
    :cond_1f
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Attempt to read closed GcacheDataSource."

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final j(Lcom/google/android/gms/internal/ads/zzfl;)J
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "ms"

    const-string v1, "Cache connection took "

    .line 1
    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzcdi;->k:Z

    if-nez v2, :cond_208

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzcdi;->k:Z

    .line 2
    iget-object v3, p1, Lcom/google/android/gms/internal/ads/zzfl;->a:Landroid/net/Uri;

    iput-object v3, p0, Lcom/google/android/gms/internal/ads/zzcdi;->l:Landroid/net/Uri;

    iget-boolean v3, p0, Lcom/google/android/gms/internal/ads/zzcdi;->i:Z

    if-nez v3, :cond_16

    .line 3
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzfa;->p(Lcom/google/android/gms/internal/ads/zzfl;)V

    .line 4
    :cond_16
    iget-object v3, p1, Lcom/google/android/gms/internal/ads/zzfl;->a:Landroid/net/Uri;

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzavq;->V3(Landroid/net/Uri;)Lcom/google/android/gms/internal/ads/zzavq;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/gms/internal/ads/zzcdi;->m:Lcom/google/android/gms/internal/ads/zzavq;

    .line 5
    sget-object v3, Lcom/google/android/gms/internal/ads/zzbar;->Q3:Lcom/google/android/gms/internal/ads/zzbaj;

    .line 6
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->c()Lcom/google/android/gms/internal/ads/zzbap;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/ads/zzbap;->b(Lcom/google/android/gms/internal/ads/zzbaj;)Ljava/lang/Object;

    move-result-object v3

    .line 7
    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    const-wide/16 v4, -0x1

    const/4 v6, 0x0

    if-eqz v3, :cond_186

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzcdi;->m:Lcom/google/android/gms/internal/ads/zzavq;

    if-eqz v3, :cond_1e2

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzcdi;->m:Lcom/google/android/gms/internal/ads/zzavq;

    .line 8
    iget-wide v7, p1, Lcom/google/android/gms/internal/ads/zzfl;->f:J

    iput-wide v7, v3, Lcom/google/android/gms/internal/ads/zzavq;->v:J

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzcdi;->m:Lcom/google/android/gms/internal/ads/zzavq;

    iget-object v7, p0, Lcom/google/android/gms/internal/ads/zzcdi;->g:Ljava/lang/String;

    .line 9
    invoke-static {v7}, Lcom/google/android/gms/internal/ads/zzfoj;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v3, Lcom/google/android/gms/internal/ads/zzavq;->w:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzcdi;->m:Lcom/google/android/gms/internal/ads/zzavq;

    iget v7, p0, Lcom/google/android/gms/internal/ads/zzcdi;->h:I

    .line 10
    iput v7, v3, Lcom/google/android/gms/internal/ads/zzavq;->x:I

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzcdi;->m:Lcom/google/android/gms/internal/ads/zzavq;

    .line 11
    iget-boolean v3, v3, Lcom/google/android/gms/internal/ads/zzavq;->u:Z

    if-eqz v3, :cond_60

    sget-object v3, Lcom/google/android/gms/internal/ads/zzbar;->S3:Lcom/google/android/gms/internal/ads/zzbaj;

    .line 12
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->c()Lcom/google/android/gms/internal/ads/zzbap;

    move-result-object v7

    invoke-virtual {v7, v3}, Lcom/google/android/gms/internal/ads/zzbap;->b(Lcom/google/android/gms/internal/ads/zzbaj;)Ljava/lang/Object;

    move-result-object v3

    .line 13
    check-cast v3, Ljava/lang/Long;

    goto :goto_6c

    .line 14
    :cond_60
    sget-object v3, Lcom/google/android/gms/internal/ads/zzbar;->R3:Lcom/google/android/gms/internal/ads/zzbaj;

    .line 15
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->c()Lcom/google/android/gms/internal/ads/zzbap;

    move-result-object v7

    invoke-virtual {v7, v3}, Lcom/google/android/gms/internal/ads/zzbap;->b(Lcom/google/android/gms/internal/ads/zzbaj;)Ljava/lang/Object;

    move-result-object v3

    .line 16
    check-cast v3, Ljava/lang/Long;

    .line 17
    :goto_6c
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    .line 18
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->b()Lcom/google/android/gms/common/util/Clock;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/android/gms/common/util/Clock;->b()J

    move-result-wide v9

    .line 19
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->f()Lcom/google/android/gms/internal/ads/zzawb;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzcdi;->e:Landroid/content/Context;

    iget-object v11, p0, Lcom/google/android/gms/internal/ads/zzcdi;->m:Lcom/google/android/gms/internal/ads/zzavq;

    invoke-static {v3, v11}, Lcom/google/android/gms/internal/ads/zzawb;->a(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzavq;)Ljava/util/concurrent/Future;

    move-result-object v3

    :try_start_83
    sget-object v11, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 20
    invoke-interface {v3, v7, v8, v11}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/internal/ads/zzawc;
    :try_end_8b
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_83 .. :try_end_8b} :catch_12f
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_83 .. :try_end_8b} :catch_12f
    .catch Ljava/lang/InterruptedException; {:try_start_83 .. :try_end_8b} :catch_10c
    .catchall {:try_start_83 .. :try_end_8b} :catchall_109

    .line 21
    :try_start_8b
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzawc;->d()Z

    move-result v8

    iput-boolean v8, p0, Lcom/google/android/gms/internal/ads/zzcdi;->n:Z

    .line 22
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzawc;->f()Z

    move-result v8

    iput-boolean v8, p0, Lcom/google/android/gms/internal/ads/zzcdi;->p:Z

    .line 23
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzawc;->e()Z

    move-result v8

    iput-boolean v8, p0, Lcom/google/android/gms/internal/ads/zzcdi;->q:Z

    .line 24
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzawc;->a()J

    move-result-wide v11

    iput-wide v11, p0, Lcom/google/android/gms/internal/ads/zzcdi;->r:J

    .line 25
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzcdi;->y()Z

    move-result v8

    if-nez v8, :cond_de

    .line 26
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzawc;->c()Ljava/io/InputStream;

    move-result-object v7

    iput-object v7, p0, Lcom/google/android/gms/internal/ads/zzcdi;->j:Ljava/io/InputStream;

    iget-boolean v7, p0, Lcom/google/android/gms/internal/ads/zzcdi;->i:Z

    if-eqz v7, :cond_b6

    .line 27
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzfa;->p(Lcom/google/android/gms/internal/ads/zzfl;)V
    :try_end_b6
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_8b .. :try_end_b6} :catch_107
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_8b .. :try_end_b6} :catch_107
    .catch Ljava/lang/InterruptedException; {:try_start_8b .. :try_end_b6} :catch_105
    .catchall {:try_start_8b .. :try_end_b6} :catchall_103

    .line 28
    :cond_b6
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->b()Lcom/google/android/gms/common/util/Clock;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/gms/common/util/Clock;->b()J

    move-result-wide v6

    sub-long/2addr v6, v9

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcdi;->u:Lcom/google/android/gms/internal/ads/zzcdl;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzcdl;->a:Lcom/google/android/gms/internal/ads/zzcdv;

    .line 29
    invoke-virtual {p1, v2, v6, v7}, Lcom/google/android/gms/internal/ads/zzcdv;->Z(ZJ)V

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzcdi;->o:Z

    new-instance p1, Ljava/lang/StringBuilder;

    .line 30
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zze;->k(Ljava/lang/String;)V

    return-wide v4

    .line 31
    :cond_de
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->b()Lcom/google/android/gms/common/util/Clock;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/android/gms/common/util/Clock;->b()J

    move-result-wide v3

    sub-long/2addr v3, v9

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzcdi;->u:Lcom/google/android/gms/internal/ads/zzcdl;

    iget-object v5, v5, Lcom/google/android/gms/internal/ads/zzcdl;->a:Lcom/google/android/gms/internal/ads/zzcdv;

    .line 32
    invoke-virtual {v5, v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzcdv;->Z(ZJ)V

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzcdi;->o:Z

    new-instance v2, Ljava/lang/StringBuilder;

    .line 33
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_157

    :catchall_103
    move-exception p1

    goto :goto_15e

    :catch_105
    const/4 v4, 0x1

    goto :goto_10d

    :catch_107
    const/4 v4, 0x1

    goto :goto_130

    :catchall_109
    move-exception p1

    const/4 v2, 0x0

    goto :goto_15e

    :catch_10c
    const/4 v4, 0x0

    .line 34
    :goto_10d
    :try_start_10d
    invoke-interface {v3, v2}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 35
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V
    :try_end_117
    .catchall {:try_start_10d .. :try_end_117} :catchall_15c

    .line 36
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->b()Lcom/google/android/gms/common/util/Clock;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gms/common/util/Clock;->b()J

    move-result-wide v2

    sub-long/2addr v2, v9

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzcdi;->u:Lcom/google/android/gms/internal/ads/zzcdl;

    iget-object v5, v5, Lcom/google/android/gms/internal/ads/zzcdl;->a:Lcom/google/android/gms/internal/ads/zzcdv;

    .line 37
    invoke-virtual {v5, v4, v2, v3}, Lcom/google/android/gms/internal/ads/zzcdv;->Z(ZJ)V

    iput-boolean v4, p0, Lcom/google/android/gms/internal/ads/zzcdi;->o:Z

    new-instance v4, Ljava/lang/StringBuilder;

    .line 38
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_14a

    :catch_12f
    const/4 v4, 0x0

    .line 39
    :goto_130
    :try_start_130
    invoke-interface {v3, v2}, Ljava/util/concurrent/Future;->cancel(Z)Z
    :try_end_133
    .catchall {:try_start_130 .. :try_end_133} :catchall_15c

    .line 40
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->b()Lcom/google/android/gms/common/util/Clock;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gms/common/util/Clock;->b()J

    move-result-wide v2

    sub-long/2addr v2, v9

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzcdi;->u:Lcom/google/android/gms/internal/ads/zzcdl;

    iget-object v5, v5, Lcom/google/android/gms/internal/ads/zzcdl;->a:Lcom/google/android/gms/internal/ads/zzcdv;

    .line 41
    invoke-virtual {v5, v4, v2, v3}, Lcom/google/android/gms/internal/ads/zzcdv;->Z(ZJ)V

    iput-boolean v4, p0, Lcom/google/android/gms/internal/ads/zzcdi;->o:Z

    new-instance v4, Ljava/lang/StringBuilder;

    .line 42
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    :goto_14a
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_157
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zze;->k(Ljava/lang/String;)V

    goto/16 :goto_1e2

    :catchall_15c
    move-exception p1

    move v2, v4

    .line 43
    :goto_15e
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->b()Lcom/google/android/gms/common/util/Clock;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/android/gms/common/util/Clock;->b()J

    move-result-wide v3

    sub-long/2addr v3, v9

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzcdi;->u:Lcom/google/android/gms/internal/ads/zzcdl;

    iget-object v5, v5, Lcom/google/android/gms/internal/ads/zzcdl;->a:Lcom/google/android/gms/internal/ads/zzcdv;

    .line 44
    invoke-virtual {v5, v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzcdv;->Z(ZJ)V

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzcdi;->o:Z

    new-instance v2, Ljava/lang/StringBuilder;

    .line 45
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zze;->k(Ljava/lang/String;)V

    .line 46
    throw p1

    .line 47
    :cond_186
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcdi;->m:Lcom/google/android/gms/internal/ads/zzavq;

    if-eqz v0, :cond_1ab

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcdi;->m:Lcom/google/android/gms/internal/ads/zzavq;

    .line 48
    iget-wide v7, p1, Lcom/google/android/gms/internal/ads/zzfl;->f:J

    iput-wide v7, v0, Lcom/google/android/gms/internal/ads/zzavq;->v:J

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcdi;->m:Lcom/google/android/gms/internal/ads/zzavq;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcdi;->g:Ljava/lang/String;

    .line 49
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzfoj;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzavq;->w:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcdi;->m:Lcom/google/android/gms/internal/ads/zzavq;

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzcdi;->h:I

    .line 50
    iput v1, v0, Lcom/google/android/gms/internal/ads/zzavq;->x:I

    .line 51
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->e()Lcom/google/android/gms/internal/ads/zzavm;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcdi;->m:Lcom/google/android/gms/internal/ads/zzavq;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzavm;->b(Lcom/google/android/gms/internal/ads/zzavq;)Lcom/google/android/gms/internal/ads/zzavn;

    move-result-object v0

    goto :goto_1ac

    :cond_1ab
    const/4 v0, 0x0

    :goto_1ac
    if-eqz v0, :cond_1e2

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzavn;->b()Z

    move-result v1

    if-eqz v1, :cond_1e2

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzavn;->d()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzcdi;->n:Z

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzavn;->e()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzcdi;->p:Z

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzavn;->Y3()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzcdi;->q:Z

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzavn;->V3()J

    move-result-wide v7

    iput-wide v7, p0, Lcom/google/android/gms/internal/ads/zzcdi;->r:J

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzcdi;->o:Z

    .line 52
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzcdi;->y()Z

    move-result v1

    if-nez v1, :cond_1e2

    .line 53
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzavn;->X3()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcdi;->j:Ljava/io/InputStream;

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcdi;->i:Z

    if-eqz v0, :cond_1e1

    .line 54
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzfa;->p(Lcom/google/android/gms/internal/ads/zzfl;)V

    :cond_1e1
    return-wide v4

    .line 55
    :cond_1e2
    :goto_1e2
    iput-boolean v6, p0, Lcom/google/android/gms/internal/ads/zzcdi;->o:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcdi;->m:Lcom/google/android/gms/internal/ads/zzavq;

    if-eqz v0, :cond_201

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfl;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcdi;->m:Lcom/google/android/gms/internal/ads/zzavq;

    .line 56
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzavq;->o:Ljava/lang/String;

    .line 57
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

    move-object p1, v0

    :cond_201
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcdi;->f:Lcom/google/android/gms/internal/ads/zzfg;

    .line 58
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzfg;->j(Lcom/google/android/gms/internal/ads/zzfl;)J

    move-result-wide v0

    return-wide v0

    .line 59
    :cond_208
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Attempt to open an already open GcacheDataSource."

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final q()J
    .registers 3

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzcdi;->r:J

    return-wide v0
.end method

.method public final r()J
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcdi;->m:Lcom/google/android/gms/internal/ads/zzavq;

    const-wide/16 v1, -0x1

    if-nez v0, :cond_7

    return-wide v1

    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcdi;->t:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v3

    cmp-long v0, v3, v1

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcdi;->t:Ljava/util/concurrent/atomic/AtomicLong;

    .line 2
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    return-wide v0

    :cond_18
    monitor-enter p0

    :try_start_19
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcdi;->s:Lcom/google/android/gms/internal/ads/zzfut;

    if-nez v0, :cond_2a

    .line 3
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbzn;->a:Lcom/google/android/gms/internal/ads/zzfuu;

    new-instance v3, Lcom/google/android/gms/internal/ads/zzcdh;

    invoke-direct {v3, p0}, Lcom/google/android/gms/internal/ads/zzcdh;-><init>(Lcom/google/android/gms/internal/ads/zzcdi;)V

    .line 4
    invoke-interface {v0, v3}, Lcom/google/android/gms/internal/ads/zzfuu;->e(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/internal/ads/zzfut;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcdi;->s:Lcom/google/android/gms/internal/ads/zzfut;

    .line 5
    :cond_2a
    monitor-exit p0
    :try_end_2b
    .catchall {:try_start_19 .. :try_end_2b} :catchall_4d

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcdi;->s:Lcom/google/android/gms/internal/ads/zzfut;

    .line 6
    invoke-interface {v0}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v0

    if-nez v0, :cond_34

    return-wide v1

    :cond_34
    :try_start_34
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcdi;->t:Ljava/util/concurrent/atomic/AtomicLong;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzcdi;->s:Lcom/google/android/gms/internal/ads/zzfut;

    .line 7
    invoke-interface {v3}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v0, v1, v2, v3, v4}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z
    :try_end_45
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_34 .. :try_end_45} :catch_4c
    .catch Ljava/lang/InterruptedException; {:try_start_34 .. :try_end_45} :catch_4c

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcdi;->t:Ljava/util/concurrent/atomic/AtomicLong;

    .line 8
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    return-wide v0

    :catch_4c
    return-wide v1

    :catchall_4d
    move-exception v0

    .line 9
    :try_start_4e
    monitor-exit p0
    :try_end_4f
    .catchall {:try_start_4e .. :try_end_4f} :catchall_4d

    throw v0
.end method

.method final synthetic s()Ljava/lang/Long;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->e()Lcom/google/android/gms/internal/ads/zzavm;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcdi;->m:Lcom/google/android/gms/internal/ads/zzavq;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzavm;->a(Lcom/google/android/gms/internal/ads/zzavq;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public final t()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcdi;->n:Z

    return v0
.end method

.method public final u()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcdi;->q:Z

    return v0
.end method

.method public final v()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcdi;->p:Z

    return v0
.end method

.method public final x()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcdi;->o:Z

    return v0
.end method

###### Class com.google.android.gms.internal.ads.zzcdh (com.google.android.gms.internal.ads.zzcdh)
.class public final synthetic Lcom/google/android/gms/internal/ads/zzcdh;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:Lcom/google/android/gms/internal/ads/zzcdi;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzcdi;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcdh;->a:Lcom/google/android/gms/internal/ads/zzcdi;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcdh;->a:Lcom/google/android/gms/internal/ads/zzcdi;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcdi;->s()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method
