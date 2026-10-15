###### Class com.google.android.gms.internal.ads.zzbjk (com.google.android.gms.internal.ads.zzbjk)
.class public final Lcom/google/android/gms/internal/ads/zzbjk;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzakh;


# instance fields
.field private volatile a:Lcom/google/android/gms/internal/ads/zzbix;

.field private final b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbjk;->b:Landroid/content/Context;

    return-void
.end method

.method static bridge synthetic b(Lcom/google/android/gms/internal/ads/zzbjk;)Lcom/google/android/gms/internal/ads/zzbix;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzbjk;->a:Lcom/google/android/gms/internal/ads/zzbix;

    return-object p0
.end method

.method static bridge synthetic c(Lcom/google/android/gms/internal/ads/zzbjk;)V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbjk;->a:Lcom/google/android/gms/internal/ads/zzbix;

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzbjk;->a:Lcom/google/android/gms/internal/ads/zzbix;

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->i()V

    .line 2
    invoke-static {}, Landroid/os/Binder;->flushPendingCommands()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/zzako;)Lcom/google/android/gms/internal/ads/zzakk;
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzakx;
        }
    .end annotation

    const-string v0, "ms"

    const-string v1, "Http assets remote cache took "

    .line 1
    sget-object v2, Lcom/google/android/gms/internal/ads/zzbiy;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzako;->o()Ljava/util/Map;

    move-result-object v2

    .line 3
    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v3

    .line 4
    new-array v4, v3, [Ljava/lang/String;

    .line 5
    new-array v3, v3, [Ljava/lang/String;

    .line 6
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_1c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 7
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    aput-object v8, v4, v6

    .line 8
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    aput-object v7, v3, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_1c

    :cond_3b
    new-instance v2, Lcom/google/android/gms/internal/ads/zzbiy;

    .line 9
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzako;->n()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1, v4, v3}, Lcom/google/android/gms/internal/ads/zzbiy;-><init>(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 10
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->b()Lcom/google/android/gms/common/util/Clock;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/gms/common/util/Clock;->b()J

    move-result-wide v3

    const/4 p1, 0x0

    :try_start_4d
    new-instance v6, Lcom/google/android/gms/internal/ads/zzbzs;

    .line 11
    invoke-direct {v6}, Lcom/google/android/gms/internal/ads/zzbzs;-><init>()V

    .line 12
    new-instance v7, Lcom/google/android/gms/internal/ads/zzbji;

    invoke-direct {v7, p0, v6}, Lcom/google/android/gms/internal/ads/zzbji;-><init>(Lcom/google/android/gms/internal/ads/zzbjk;Lcom/google/android/gms/internal/ads/zzbzs;)V

    .line 13
    new-instance v8, Lcom/google/android/gms/internal/ads/zzbjj;

    invoke-direct {v8, p0, v6}, Lcom/google/android/gms/internal/ads/zzbjj;-><init>(Lcom/google/android/gms/internal/ads/zzbjk;Lcom/google/android/gms/internal/ads/zzbzs;)V

    .line 14
    new-instance v9, Lcom/google/android/gms/internal/ads/zzbix;

    iget-object v10, p0, Lcom/google/android/gms/internal/ads/zzbjk;->b:Landroid/content/Context;

    .line 15
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->v()Lcom/google/android/gms/ads/internal/util/zzbv;

    move-result-object v11

    invoke-virtual {v11}, Lcom/google/android/gms/ads/internal/util/zzbv;->b()Landroid/os/Looper;

    move-result-object v11

    invoke-direct {v9, v10, v11, v7, v8}, Lcom/google/android/gms/internal/ads/zzbix;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/BaseGmsClient$BaseConnectionCallbacks;Lcom/google/android/gms/common/internal/BaseGmsClient$BaseOnConnectionFailedListener;)V

    iput-object v9, p0, Lcom/google/android/gms/internal/ads/zzbjk;->a:Lcom/google/android/gms/internal/ads/zzbix;

    iget-object v7, p0, Lcom/google/android/gms/internal/ads/zzbjk;->a:Lcom/google/android/gms/internal/ads/zzbix;

    .line 16
    invoke-virtual {v7}, Lcom/google/android/gms/common/internal/BaseGmsClient;->v()V

    new-instance v7, Lcom/google/android/gms/internal/ads/zzbjg;

    invoke-direct {v7, p0, v2}, Lcom/google/android/gms/internal/ads/zzbjg;-><init>(Lcom/google/android/gms/internal/ads/zzbjk;Lcom/google/android/gms/internal/ads/zzbiy;)V

    .line 17
    sget-object v2, Lcom/google/android/gms/internal/ads/zzbzn;->a:Lcom/google/android/gms/internal/ads/zzfuu;

    .line 18
    invoke-static {v6, v7, v2}, Lcom/google/android/gms/internal/ads/zzfuj;->m(Lcom/google/android/gms/internal/ads/zzfut;Lcom/google/android/gms/internal/ads/zzftq;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzfut;

    move-result-object v6

    .line 19
    sget-object v7, Lcom/google/android/gms/internal/ads/zzbar;->a4:Lcom/google/android/gms/internal/ads/zzbaj;

    .line 20
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->c()Lcom/google/android/gms/internal/ads/zzbap;

    move-result-object v8

    invoke-virtual {v8, v7}, Lcom/google/android/gms/internal/ads/zzbap;->b(Lcom/google/android/gms/internal/ads/zzbaj;)Ljava/lang/Object;

    move-result-object v7

    .line 21
    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    int-to-long v7, v7

    sget-object v9, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v10, Lcom/google/android/gms/internal/ads/zzbzn;->d:Ljava/util/concurrent/ScheduledExecutorService;

    .line 22
    invoke-static {v6, v7, v8, v9, v10}, Lcom/google/android/gms/internal/ads/zzfuj;->n(Lcom/google/android/gms/internal/ads/zzfut;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lcom/google/android/gms/internal/ads/zzfut;

    move-result-object v6

    new-instance v7, Lcom/google/android/gms/internal/ads/zzbjh;

    invoke-direct {v7, p0}, Lcom/google/android/gms/internal/ads/zzbjh;-><init>(Lcom/google/android/gms/internal/ads/zzbjk;)V

    .line 23
    invoke-interface {v6, v7, v2}, Lcom/google/android/gms/internal/ads/zzfut;->f(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 24
    invoke-interface {v6}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/ParcelFileDescriptor;
    :try_end_a4
    .catch Ljava/lang/InterruptedException; {:try_start_4d .. :try_end_a4} :catch_12c
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_4d .. :try_end_a4} :catch_12c
    .catchall {:try_start_4d .. :try_end_a4} :catchall_10c

    .line 25
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->b()Lcom/google/android/gms/common/util/Clock;

    move-result-object v6

    invoke-interface {v6}, Lcom/google/android/gms/common/util/Clock;->b()J

    move-result-wide v6

    sub-long/2addr v6, v3

    new-instance v3, Ljava/lang/StringBuilder;

    .line 26
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zze;->k(Ljava/lang/String;)V

    .line 27
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbtl;

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/ads/zzbtl;-><init>(Landroid/os/ParcelFileDescriptor;)V

    sget-object v1, Lcom/google/android/gms/internal/ads/zzbja;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 28
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzbtl;->V3(Landroid/os/Parcelable$Creator;)Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzbja;

    if-nez v0, :cond_d2

    return-object p1

    :cond_d2
    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzbja;->o:Z

    if-nez v1, :cond_104

    .line 29
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzbja;->s:[Ljava/lang/String;

    .line 30
    array-length v1, v1

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzbja;->t:[Ljava/lang/String;

    array-length v2, v2

    if-eq v1, v2, :cond_df

    goto :goto_103

    :cond_df
    new-instance v9, Ljava/util/HashMap;

    .line 31
    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    :goto_e4
    iget-object p1, v0, Lcom/google/android/gms/internal/ads/zzbja;->s:[Ljava/lang/String;

    .line 32
    array-length v1, p1

    if-ge v5, v1, :cond_f5

    .line 33
    aget-object p1, p1, v5

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzbja;->t:[Ljava/lang/String;

    aget-object v1, v1, v5

    invoke-virtual {v9, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v5, v5, 0x1

    goto :goto_e4

    :cond_f5
    new-instance p1, Lcom/google/android/gms/internal/ads/zzakk;

    iget v7, v0, Lcom/google/android/gms/internal/ads/zzbja;->q:I

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/zzbja;->r:[B

    iget-boolean v10, v0, Lcom/google/android/gms/internal/ads/zzbja;->u:Z

    iget-wide v11, v0, Lcom/google/android/gms/internal/ads/zzbja;->v:J

    move-object v6, p1

    .line 34
    invoke-direct/range {v6 .. v12}, Lcom/google/android/gms/internal/ads/zzakk;-><init>(I[BLjava/util/Map;ZJ)V

    :goto_103
    return-object p1

    .line 35
    :cond_104
    new-instance p1, Lcom/google/android/gms/internal/ads/zzakx;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzbja;->p:Ljava/lang/String;

    .line 36
    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/zzakx;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_10c
    move-exception p1

    .line 37
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->b()Lcom/google/android/gms/common/util/Clock;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gms/common/util/Clock;->b()J

    move-result-wide v5

    sub-long/2addr v5, v3

    new-instance v2, Ljava/lang/StringBuilder;

    .line 38
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zze;->k(Ljava/lang/String;)V

    .line 39
    throw p1

    .line 40
    :catch_12c
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->b()Lcom/google/android/gms/common/util/Clock;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gms/common/util/Clock;->b()J

    move-result-wide v5

    sub-long/2addr v5, v3

    new-instance v2, Ljava/lang/StringBuilder;

    .line 41
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zze;->k(Ljava/lang/String;)V

    return-object p1
.end method
