###### Class com.google.android.gms.internal.ads.zzezq (com.google.android.gms.internal.ads.zzezq)
.class public final Lcom/google/android/gms/internal/ads/zzezq;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# static fields
.field private static d:Lcom/google/android/gms/internal/ads/zzezq;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/google/android/gms/ads/internal/client/zzcl;

.field private final c:Ljava/util/concurrent/atomic/AtomicReference;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/zzcl;)V
    .registers 4
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzezq;->c:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzezq;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzezq;->b:Lcom/google/android/gms/ads/internal/client/zzcl;

    return-void
.end method

.method static a(Landroid/content/Context;)Lcom/google/android/gms/ads/internal/client/zzcl;
    .registers 6
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string v1, "com.google.android.gms.ads.internal.client.LiteSdkInfo"

    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Landroid/content/Context;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 2
    invoke-virtual {v0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/IBinder;

    .line 3
    invoke-static {p0}, Lcom/google/android/gms/ads/internal/client/zzck;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/ads/internal/client/zzcl;

    move-result-object p0
    :try_end_24
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_24} :catch_2f
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_24} :catch_2d
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_24} :catch_2b
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_24} :catch_29
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_24} :catch_27
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_24} :catch_25

    return-object p0

    :catch_25
    move-exception p0

    goto :goto_30

    :catch_27
    move-exception p0

    goto :goto_30

    :catch_29
    move-exception p0

    goto :goto_30

    :catch_2b
    move-exception p0

    goto :goto_30

    :catch_2d
    move-exception p0

    goto :goto_30

    :catch_2f
    move-exception p0

    :goto_30
    const-string v0, "Failed to retrieve lite SDK info."

    .line 4
    invoke-static {v0, p0}, Lcom/google/android/gms/internal/ads/zzbza;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static d(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzezq;
    .registers 8

    .line 1
    const-class v0, Lcom/google/android/gms/internal/ads/zzezq;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/google/android/gms/internal/ads/zzezq;->d:Lcom/google/android/gms/internal/ads/zzezq;

    if-eqz v1, :cond_9

    monitor-exit v0

    return-object v1

    .line 2
    :cond_9
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 3
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbcn;->b:Lcom/google/android/gms/internal/ads/zzbbw;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbbw;->e()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    cmp-long v6, v1, v3

    if-lez v6, :cond_2b

    const-wide/32 v3, 0xdbd26a0

    cmp-long v6, v1, v3

    if-gtz v6, :cond_2b

    .line 4
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzezq;->a(Landroid/content/Context;)Lcom/google/android/gms/ads/internal/client/zzcl;

    move-result-object v5

    :cond_2b
    new-instance v1, Lcom/google/android/gms/internal/ads/zzezq;

    .line 5
    invoke-direct {v1, p0, v5}, Lcom/google/android/gms/internal/ads/zzezq;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/zzcl;)V

    sput-object v1, Lcom/google/android/gms/internal/ads/zzezq;->d:Lcom/google/android/gms/internal/ads/zzezq;

    .line 6
    monitor-exit v0

    return-object v1

    :catchall_34
    move-exception p0

    .line 7
    monitor-exit v0
    :try_end_36
    .catchall {:try_start_3 .. :try_end_36} :catchall_34

    throw p0
.end method


# virtual methods
.method public final b()Lcom/google/android/gms/internal/ads/zzbnf;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzezq;->c:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzbnf;

    return-object v0
.end method

.method public final c(IZI)Lcom/google/android/gms/internal/ads/zzbzg;
    .registers 7

    .line 1
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->r()Lcom/google/android/gms/ads/internal/util/zzs;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzezq;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zzs;->a(Landroid/content/Context;)Z

    move-result p1

    .line 2
    new-instance p2, Lcom/google/android/gms/internal/ads/zzbzg;

    const v0, 0xdbd26a0

    const/4 v1, 0x1

    invoke-direct {p2, v0, p3, v1, p1}, Lcom/google/android/gms/internal/ads/zzbzg;-><init>(IIZZ)V

    .line 3
    sget-object p3, Lcom/google/android/gms/internal/ads/zzbcn;->c:Lcom/google/android/gms/internal/ads/zzbbw;

    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/zzbbw;->e()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-eqz p3, :cond_38

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzezq;->b:Lcom/google/android/gms/ads/internal/client/zzcl;

    const/4 v2, 0x0

    if-nez p3, :cond_26

    goto :goto_2c

    .line 4
    :cond_26
    :try_start_26
    invoke-interface {p3}, Lcom/google/android/gms/ads/internal/client/zzcl;->getLiteSdkVersion()Lcom/google/android/gms/ads/internal/client/zzen;

    move-result-object v2
    :try_end_2a
    .catch Landroid/os/RemoteException; {:try_start_26 .. :try_end_2a} :catch_2b

    goto :goto_2c

    :catch_2b
    nop

    :goto_2c
    if-nez v2, :cond_2f

    return-object p2

    .line 5
    :cond_2f
    new-instance p2, Lcom/google/android/gms/internal/ads/zzbzg;

    invoke-virtual {v2}, Lcom/google/android/gms/ads/internal/client/zzen;->V3()I

    move-result p3

    .line 6
    invoke-direct {p2, v0, p3, v1, p1}, Lcom/google/android/gms/internal/ads/zzbzg;-><init>(IIZZ)V

    :cond_38
    return-object p2
.end method

.method public final e(Lcom/google/android/gms/internal/ads/zzbnf;)V
    .registers 5

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbcn;->a:Lcom/google/android/gms/internal/ads/zzbbw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbbw;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzezq;->b:Lcom/google/android/gms/ads/internal/client/zzcl;

    if-nez v0, :cond_15

    :catch_13
    move-object v0, v1

    goto :goto_19

    .line 2
    :cond_15
    :try_start_15
    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/client/zzcl;->getAdapterCreator()Lcom/google/android/gms/internal/ads/zzbnf;

    move-result-object v0
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_19} :catch_13

    .line 3
    :goto_19
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzezq;->c:Ljava/util/concurrent/atomic/AtomicReference;

    if-eqz v0, :cond_1e

    move-object p1, v0

    .line 4
    :cond_1e
    invoke-static {v2, v1, p1}, Lcom/google/android/gms/internal/ads/zzezp;->a(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    return-void

    .line 5
    :cond_22
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzezq;->c:Ljava/util/concurrent/atomic/AtomicReference;

    .line 6
    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzezp;->a(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    return-void
.end method
