###### Class com.google.android.gms.internal.ads.zzasl (com.google.android.gms.internal.ads.zzasl)
.class public final Lcom/google/android/gms/internal/ads/zzasl;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/zzaqx;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private volatile d:Ljava/lang/reflect/Method;

.field private final e:[Ljava/lang/Class;

.field private final f:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public varargs constructor <init>(Lcom/google/android/gms/internal/ads/zzaqx;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)V
    .registers 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzasl;->d:Ljava/lang/reflect/Method;

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzasl;->f:Ljava/util/concurrent/CountDownLatch;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzasl;->a:Lcom/google/android/gms/internal/ads/zzaqx;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzasl;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzasl;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzasl;->e:[Ljava/lang/Class;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzaqx;->k()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    new-instance p2, Lcom/google/android/gms/internal/ads/zzask;

    invoke-direct {p2, p0}, Lcom/google/android/gms/internal/ads/zzask;-><init>(Lcom/google/android/gms/internal/ads/zzasl;)V

    .line 2
    invoke-interface {p1, p2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method static bridge synthetic b(Lcom/google/android/gms/internal/ads/zzasl;)V
    .registers 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzasl;->a:Lcom/google/android/gms/internal/ads/zzaqx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzaqx;->i()Ldalvik/system/DexClassLoader;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzaqx;->u()[B

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzasl;->b:Ljava/lang/String;

    invoke-direct {p0, v0, v2}, Lcom/google/android/gms/internal/ads/zzasl;->c([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ldalvik/system/DexClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_14
    .catch Lcom/google/android/gms/internal/ads/zzaqb; {:try_start_0 .. :try_end_14} :catch_37
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_14} :catch_37
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_14} :catch_37
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_14} :catch_37
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_14} :catch_41
    .catchall {:try_start_0 .. :try_end_14} :catchall_3a

    if-nez v0, :cond_1c

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzasl;->f:Ljava/util/concurrent/CountDownLatch;

    .line 2
    :goto_18
    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void

    :cond_1c
    :try_start_1c
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzasl;->a:Lcom/google/android/gms/internal/ads/zzaqx;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzaqx;->u()[B

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzasl;->c:Ljava/lang/String;

    .line 3
    invoke-direct {p0, v1, v2}, Lcom/google/android/gms/internal/ads/zzasl;->c([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzasl;->e:[Ljava/lang/Class;

    .line 4
    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzasl;->d:Ljava/lang/reflect/Method;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzasl;->d:Ljava/lang/reflect/Method;
    :try_end_32
    .catch Lcom/google/android/gms/internal/ads/zzaqb; {:try_start_1c .. :try_end_32} :catch_37
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1c .. :try_end_32} :catch_37
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1c .. :try_end_32} :catch_37
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1c .. :try_end_32} :catch_37
    .catch Ljava/lang/NullPointerException; {:try_start_1c .. :try_end_32} :catch_41
    .catchall {:try_start_1c .. :try_end_32} :catchall_3a

    if-nez v0, :cond_37

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzasl;->f:Ljava/util/concurrent/CountDownLatch;

    goto :goto_18

    .line 5
    :catch_37
    :cond_37
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzasl;->f:Ljava/util/concurrent/CountDownLatch;

    goto :goto_18

    :catchall_3a
    move-exception v0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzasl;->f:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 6
    throw v0

    :catch_41
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzasl;->f:Ljava/util/concurrent/CountDownLatch;

    goto :goto_18
.end method

.method private final c([BLjava/lang/String;)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzaqb;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzasl;->a:Lcom/google/android/gms/internal/ads/zzaqx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzaqx;->e()Lcom/google/android/gms/internal/ads/zzaqc;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzaqc;->b([BLjava/lang/String;)[B

    move-result-object p1

    new-instance p2, Ljava/lang/String;

    const-string v0, "UTF-8"

    invoke-direct {p2, p1, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object p2
.end method


# virtual methods
.method public final a()Ljava/lang/reflect/Method;
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzasl;->d:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzasl;->d:Ljava/lang/reflect/Method;

    return-object v0

    :cond_7
    const/4 v0, 0x0

    :try_start_8
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzasl;->f:Ljava/util/concurrent/CountDownLatch;

    const-wide/16 v2, 0x2

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v1

    if-nez v1, :cond_15

    return-object v0

    :cond_15
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzasl;->d:Ljava/lang/reflect/Method;
    :try_end_17
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_17} :catch_17

    :catch_17
    return-object v0
.end method
