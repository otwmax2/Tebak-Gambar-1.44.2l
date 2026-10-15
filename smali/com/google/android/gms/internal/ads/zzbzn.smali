###### Class com.google.android.gms.internal.ads.zzbzn (com.google.android.gms.internal.ads.zzbzn)
.class public final Lcom/google/android/gms/internal/ads/zzbzn;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# static fields
.field public static final a:Lcom/google/android/gms/internal/ads/zzfuu;

.field public static final b:Lcom/google/android/gms/internal/ads/zzfuu;

.field public static final c:Lcom/google/android/gms/internal/ads/zzfuu;

.field public static final d:Ljava/util/concurrent/ScheduledExecutorService;

.field public static final e:Lcom/google/android/gms/internal/ads/zzfuu;

.field public static final f:Lcom/google/android/gms/internal/ads/zzfuu;


# direct methods
.method static constructor <clinit>()V
    .registers 12

    .line 1
    invoke-static {}, Lcom/google/android/gms/common/util/ClientLibraryUtils;->a()Z

    move-result v0

    const-string v1, "Default"

    if-eqz v0, :cond_19

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfkq;->a()Lcom/google/android/gms/internal/ads/zzfkn;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzbzj;

    .line 3
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzbzj;-><init>(Ljava/lang/String;)V

    .line 4
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newCachedThreadPool(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-static {v0}, Ljava/util/concurrent/Executors;->unconfigurableExecutorService(Ljava/util/concurrent/ExecutorService;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    goto :goto_31

    .line 5
    :cond_19
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v2, 0x2

    const v3, 0x7fffffff

    const-wide/16 v4, 0xa

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 6
    new-instance v7, Ljava/util/concurrent/SynchronousQueue;

    invoke-direct {v7}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    new-instance v8, Lcom/google/android/gms/internal/ads/zzbzj;

    .line 7
    invoke-direct {v8, v1}, Lcom/google/android/gms/internal/ads/zzbzj;-><init>(Ljava/lang/String;)V

    move-object v1, v0

    .line 8
    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    .line 9
    :goto_31
    new-instance v1, Lcom/google/android/gms/internal/ads/zzbzm;

    const/4 v2, 0x0

    .line 10
    invoke-direct {v1, v0, v2}, Lcom/google/android/gms/internal/ads/zzbzm;-><init>(Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/zzbzl;)V

    sput-object v1, Lcom/google/android/gms/internal/ads/zzbzn;->a:Lcom/google/android/gms/internal/ads/zzfuu;

    .line 11
    invoke-static {}, Lcom/google/android/gms/common/util/ClientLibraryUtils;->a()Z

    move-result v0

    const-string v1, "Loader"

    const/4 v3, 0x1

    if-eqz v0, :cond_51

    .line 12
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfkq;->a()Lcom/google/android/gms/internal/ads/zzfkn;

    move-result-object v0

    const/4 v4, 0x5

    new-instance v5, Lcom/google/android/gms/internal/ads/zzbzj;

    .line 13
    invoke-direct {v5, v1}, Lcom/google/android/gms/internal/ads/zzbzj;-><init>(Ljava/lang/String;)V

    .line 14
    invoke-interface {v0, v4, v5, v3}, Lcom/google/android/gms/internal/ads/zzfkn;->a(ILjava/util/concurrent/ThreadFactory;I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    goto :goto_6a

    .line 15
    :cond_51
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v5, 0x5

    const/4 v6, 0x5

    const-wide/16 v7, 0xa

    sget-object v9, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v10, Ljava/util/concurrent/LinkedBlockingQueue;

    .line 16
    invoke-direct {v10}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    new-instance v11, Lcom/google/android/gms/internal/ads/zzbzj;

    .line 17
    invoke-direct {v11, v1}, Lcom/google/android/gms/internal/ads/zzbzj;-><init>(Ljava/lang/String;)V

    move-object v4, v0

    .line 18
    invoke-direct/range {v4 .. v11}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    .line 19
    invoke-virtual {v0, v3}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    .line 20
    :goto_6a
    new-instance v1, Lcom/google/android/gms/internal/ads/zzbzm;

    .line 21
    invoke-direct {v1, v0, v2}, Lcom/google/android/gms/internal/ads/zzbzm;-><init>(Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/zzbzl;)V

    sput-object v1, Lcom/google/android/gms/internal/ads/zzbzn;->b:Lcom/google/android/gms/internal/ads/zzfuu;

    .line 22
    invoke-static {}, Lcom/google/android/gms/common/util/ClientLibraryUtils;->a()Z

    move-result v0

    const-string v1, "Activeview"

    if-eqz v0, :cond_87

    .line 23
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfkq;->a()Lcom/google/android/gms/internal/ads/zzfkn;

    move-result-object v0

    new-instance v4, Lcom/google/android/gms/internal/ads/zzbzj;

    .line 24
    invoke-direct {v4, v1}, Lcom/google/android/gms/internal/ads/zzbzj;-><init>(Ljava/lang/String;)V

    .line 25
    invoke-interface {v0, v4, v3}, Lcom/google/android/gms/internal/ads/zzfkn;->b(Ljava/util/concurrent/ThreadFactory;I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    goto :goto_a0

    .line 26
    :cond_87
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v5, 0x1

    const/4 v6, 0x1

    const-wide/16 v7, 0xa

    sget-object v9, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v10, Ljava/util/concurrent/LinkedBlockingQueue;

    .line 27
    invoke-direct {v10}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    new-instance v11, Lcom/google/android/gms/internal/ads/zzbzj;

    .line 28
    invoke-direct {v11, v1}, Lcom/google/android/gms/internal/ads/zzbzj;-><init>(Ljava/lang/String;)V

    move-object v4, v0

    .line 29
    invoke-direct/range {v4 .. v11}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    .line 30
    invoke-virtual {v0, v3}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    .line 31
    :goto_a0
    new-instance v1, Lcom/google/android/gms/internal/ads/zzbzm;

    .line 32
    invoke-direct {v1, v0, v2}, Lcom/google/android/gms/internal/ads/zzbzm;-><init>(Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/zzbzl;)V

    sput-object v1, Lcom/google/android/gms/internal/ads/zzbzn;->c:Lcom/google/android/gms/internal/ads/zzfuu;

    .line 33
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbzi;

    const/4 v1, 0x3

    new-instance v3, Lcom/google/android/gms/internal/ads/zzbzj;

    const-string v4, "Schedule"

    .line 34
    invoke-direct {v3, v4}, Lcom/google/android/gms/internal/ads/zzbzj;-><init>(Ljava/lang/String;)V

    .line 35
    invoke-direct {v0, v1, v3}, Lcom/google/android/gms/internal/ads/zzbzi;-><init>(ILjava/util/concurrent/ThreadFactory;)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzbzn;->d:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzbzk;

    .line 36
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzbzk;-><init>()V

    new-instance v1, Lcom/google/android/gms/internal/ads/zzbzm;

    .line 37
    invoke-direct {v1, v0, v2}, Lcom/google/android/gms/internal/ads/zzbzm;-><init>(Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/zzbzl;)V

    sput-object v1, Lcom/google/android/gms/internal/ads/zzbzn;->e:Lcom/google/android/gms/internal/ads/zzfuu;

    .line 38
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfva;->b()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzbzm;

    .line 39
    invoke-direct {v1, v0, v2}, Lcom/google/android/gms/internal/ads/zzbzm;-><init>(Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/zzbzl;)V

    sput-object v1, Lcom/google/android/gms/internal/ads/zzbzn;->f:Lcom/google/android/gms/internal/ads/zzfuu;

    return-void
.end method
