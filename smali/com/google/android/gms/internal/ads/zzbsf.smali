###### Class com.google.android.gms.internal.ads.zzbsf (com.google.android.gms.internal.ads.zzbsf)
.class public final Lcom/google/android/gms/internal/ads/zzbsf;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbsh;


# annotations
.annotation runtime Ljavax/annotation/ParametersAreNonnullByDefault;
.end annotation


# static fields
.field private static final f:Ljava/lang/Object;

.field static g:Lcom/google/android/gms/internal/ads/zzbsh;
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation
.end field

.field static h:Lcom/google/android/gms/internal/ads/zzbsh;
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field private final a:Ljava/lang/Object;

.field private final b:Landroid/content/Context;

.field private final c:Ljava/util/WeakHashMap;

.field private final d:Ljava/util/concurrent/ExecutorService;

.field private final e:Lcom/google/android/gms/internal/ads/zzbzg;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzbsf;->f:Ljava/lang/Object;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbzg;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbsf;->a:Ljava/lang/Object;

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbsf;->c:Ljava/util/WeakHashMap;

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfkq;->a()Lcom/google/android/gms/internal/ads/zzfkn;

    .line 3
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-static {v0}, Ljava/util/concurrent/Executors;->unconfigurableExecutorService(Ljava/util/concurrent/ExecutorService;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbsf;->d:Ljava/util/concurrent/ExecutorService;

    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_28

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    :cond_28
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbsf;->b:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbsf;->e:Lcom/google/android/gms/internal/ads/zzbzg;

    return-void
.end method

.method public static c(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzbsh;
    .registers 4

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbsf;->f:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbsf;->g:Lcom/google/android/gms/internal/ads/zzbsh;

    if-nez v1, :cond_3a

    sget-object v1, Lcom/google/android/gms/internal/ads/zzbct;->e:Lcom/google/android/gms/internal/ads/zzbbw;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbbw;->e()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_33

    sget-object v1, Lcom/google/android/gms/internal/ads/zzbar;->f7:Lcom/google/android/gms/internal/ads/zzbaj;

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->c()Lcom/google/android/gms/internal/ads/zzbap;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzbap;->b(Lcom/google/android/gms/internal/ads/zzbaj;)Ljava/lang/Object;

    move-result-object v1

    .line 3
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_33

    new-instance v1, Lcom/google/android/gms/internal/ads/zzbsf;

    .line 4
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbzg;->V3()Lcom/google/android/gms/internal/ads/zzbzg;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/google/android/gms/internal/ads/zzbsf;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbzg;)V

    sput-object v1, Lcom/google/android/gms/internal/ads/zzbsf;->g:Lcom/google/android/gms/internal/ads/zzbsh;

    goto :goto_3a

    .line 5
    :cond_33
    new-instance p0, Lcom/google/android/gms/internal/ads/zzbsg;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbsg;-><init>()V

    sput-object p0, Lcom/google/android/gms/internal/ads/zzbsf;->g:Lcom/google/android/gms/internal/ads/zzbsh;

    :cond_3a
    :goto_3a
    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_3 .. :try_end_3b} :catchall_3e

    sget-object p0, Lcom/google/android/gms/internal/ads/zzbsf;->g:Lcom/google/android/gms/internal/ads/zzbsh;

    return-object p0

    :catchall_3e
    move-exception p0

    :try_start_3f
    monitor-exit v0
    :try_end_40
    .catchall {:try_start_3f .. :try_end_40} :catchall_3e

    throw p0
.end method

.method public static d(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbzg;)Lcom/google/android/gms/internal/ads/zzbsh;
    .registers 6

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbsf;->f:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbsf;->h:Lcom/google/android/gms/internal/ads/zzbsh;

    if-nez v1, :cond_67

    sget-object v1, Lcom/google/android/gms/internal/ads/zzbct;->e:Lcom/google/android/gms/internal/ads/zzbbw;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbbw;->e()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_60

    sget-object v1, Lcom/google/android/gms/internal/ads/zzbar;->f7:Lcom/google/android/gms/internal/ads/zzbaj;

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->c()Lcom/google/android/gms/internal/ads/zzbap;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzbap;->b(Lcom/google/android/gms/internal/ads/zzbaj;)Ljava/lang/Object;

    move-result-object v1

    .line 3
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_60

    new-instance v1, Lcom/google/android/gms/internal/ads/zzbsf;

    .line 4
    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/zzbsf;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbzg;)V

    .line 5
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object p0

    if-eqz p0, :cond_51

    iget-object p1, v1, Lcom/google/android/gms/internal/ads/zzbsf;->a:Ljava/lang/Object;

    monitor-enter p1
    :try_end_39
    .catchall {:try_start_3 .. :try_end_39} :catchall_6b

    :try_start_39
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzbsf;->c:Ljava/util/WeakHashMap;

    .line 6
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v2, p0, v3}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    monitor-exit p1
    :try_end_41
    .catchall {:try_start_39 .. :try_end_41} :catchall_4e

    .line 8
    :try_start_41
    invoke-virtual {p0}, Ljava/lang/Thread;->getUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object p1

    new-instance v2, Lcom/google/android/gms/internal/ads/zzbse;

    invoke-direct {v2, v1, p1}, Lcom/google/android/gms/internal/ads/zzbse;-><init>(Lcom/google/android/gms/internal/ads/zzbsf;Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 9
    invoke-virtual {p0, v2}, Ljava/lang/Thread;->setUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V
    :try_end_4d
    .catchall {:try_start_41 .. :try_end_4d} :catchall_6b

    goto :goto_51

    :catchall_4e
    move-exception p0

    .line 10
    :try_start_4f
    monitor-exit p1
    :try_end_50
    .catchall {:try_start_4f .. :try_end_50} :catchall_4e

    :try_start_50
    throw p0

    .line 11
    :cond_51
    :goto_51
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object p0

    new-instance p1, Lcom/google/android/gms/internal/ads/zzbsd;

    invoke-direct {p1, v1, p0}, Lcom/google/android/gms/internal/ads/zzbsd;-><init>(Lcom/google/android/gms/internal/ads/zzbsf;Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 12
    invoke-static {p1}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    sput-object v1, Lcom/google/android/gms/internal/ads/zzbsf;->h:Lcom/google/android/gms/internal/ads/zzbsh;

    goto :goto_67

    .line 13
    :cond_60
    new-instance p0, Lcom/google/android/gms/internal/ads/zzbsg;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbsg;-><init>()V

    sput-object p0, Lcom/google/android/gms/internal/ads/zzbsf;->h:Lcom/google/android/gms/internal/ads/zzbsh;

    :cond_67
    :goto_67
    monitor-exit v0
    :try_end_68
    .catchall {:try_start_50 .. :try_end_68} :catchall_6b

    sget-object p0, Lcom/google/android/gms/internal/ads/zzbsf;->h:Lcom/google/android/gms/internal/ads/zzbsh;

    return-object p0

    :catchall_6b
    move-exception p0

    :try_start_6c
    monitor-exit v0
    :try_end_6d
    .catchall {:try_start_6c .. :try_end_6d} :catchall_6b

    throw p0
.end method

.method public static e(Ljava/lang/Throwable;)Ljava/lang/String;
    .registers 3

    .line 1
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    new-instance v1, Ljava/io/PrintWriter;

    .line 2
    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 3
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static f(Ljava/lang/Throwable;)Ljava/lang/String;
    .registers 1

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzbsf;->e(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzbyt;->k(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzfoj;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(Ljava/lang/Throwable;Ljava/lang/String;)V
    .registers 4

    const/high16 v0, 0x3f800000    # 1.0f

    .line 1
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/gms/internal/ads/zzbsf;->b(Ljava/lang/Throwable;Ljava/lang/String;F)V

    return-void
.end method

.method public final b(Ljava/lang/Throwable;Ljava/lang/String;F)V
    .registers 13

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbyt;->l(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    .line 2
    :cond_7
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbsf;->e(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    .line 4
    sget-object v2, Lcom/google/android/gms/internal/ads/zzbar;->b8:Lcom/google/android/gms/internal/ads/zzbaj;

    .line 5
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->c()Lcom/google/android/gms/internal/ads/zzbap;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/zzbap;->b(Lcom/google/android/gms/internal/ads/zzbaj;)Ljava/lang/Object;

    move-result-object v2

    .line 6
    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2a

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbsf;->f(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    goto :goto_2c

    :cond_2a
    const-string p1, ""

    :goto_2c
    float-to-double v2, p3

    const/4 v4, 0x0

    const/4 v5, 0x1

    cmpl-float v4, p3, v4

    .line 7
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v6

    if-lez v4, :cond_3c

    const/high16 v4, 0x3f800000    # 1.0f

    div-float/2addr v4, p3

    float-to-int p3, v4

    goto :goto_3d

    :cond_3c
    const/4 p3, 0x1

    :goto_3d
    cmpg-double v4, v6, v2

    if-gez v4, :cond_176

    new-instance v2, Ljava/util/ArrayList;

    .line 8
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    :try_start_46
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzbsf;->b:Landroid/content/Context;

    .line 9
    invoke-static {v3}, Lcom/google/android/gms/common/wrappers/Wrappers;->a(Landroid/content/Context;)Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;->g()Z

    move-result v3
    :try_end_50
    .catchall {:try_start_46 .. :try_end_50} :catchall_51

    goto :goto_58

    :catchall_51
    move-exception v3

    const-string v4, "Error fetching instant app info"

    .line 10
    invoke-static {v4, v3}, Lcom/google/android/gms/internal/ads/zzbza;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v3, 0x0

    .line 11
    :goto_58
    :try_start_58
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzbsf;->b:Landroid/content/Context;

    .line 12
    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4
    :try_end_5e
    .catchall {:try_start_58 .. :try_end_5e} :catchall_5f

    goto :goto_66

    :catchall_5f
    const-string v4, "Cannot obtain package name, proceeding."

    .line 13
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzbza;->g(Ljava/lang/String;)V

    const-string v4, "unknown"

    .line 14
    :goto_66
    new-instance v6, Landroid/net/Uri$Builder;

    .line 15
    invoke-direct {v6}, Landroid/net/Uri$Builder;-><init>()V

    const-string v7, "https"

    .line 16
    invoke-virtual {v6, v7}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v6

    const-string v7, "//pagead2.googlesyndication.com/pagead/gen_204"

    .line 17
    invoke-virtual {v6, v7}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v6

    .line 18
    invoke-static {v3}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v3

    const-string v7, "is_aia"

    invoke-virtual {v6, v7, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    const-string v6, "id"

    const-string v7, "gmob-apps-report-exception"

    .line 19
    invoke-virtual {v3, v6, v7}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    sget-object v6, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const-string v7, "os"

    .line 20
    invoke-virtual {v3, v7, v6}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 21
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "api"

    .line 22
    invoke-virtual {v3, v7, v6}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    sget-object v6, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    sget-object v7, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 23
    invoke-virtual {v7, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_a8

    goto :goto_bc

    .line 24
    :cond_a8
    new-instance v8, Ljava/lang/StringBuilder;

    .line 25
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    :goto_bc
    const-string v6, "device"

    .line 26
    invoke-virtual {v3, v6, v7}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzbsf;->e:Lcom/google/android/gms/internal/ads/zzbzg;

    iget-object v6, v6, Lcom/google/android/gms/internal/ads/zzbzg;->o:Ljava/lang/String;

    const-string v7, "js"

    .line 27
    invoke-virtual {v3, v7, v6}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    const-string v6, "appid"

    .line 28
    invoke-virtual {v3, v6, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    const-string v4, "exceptiontype"

    .line 29
    invoke-virtual {v3, v4, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v3, "stacktrace"

    .line 30
    invoke-virtual {v0, v3, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 31
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbar;->a()Ljava/util/List;

    move-result-object v1

    const-string v3, ","

    invoke-static {v3, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "eids"

    .line 32
    invoke-virtual {v0, v3, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "exceptionkey"

    .line 33
    invoke-virtual {v0, v1, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p2

    const-string v0, "cl"

    const-string v1, "513548808"

    .line 34
    invoke-virtual {p2, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p2

    const-string v0, "rc"

    const-string v1, "dev"

    .line 35
    invoke-virtual {p2, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p2

    .line 36
    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p3

    const-string v0, "sampling_rate"

    invoke-virtual {p2, v0, p3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p2

    sget-object p3, Lcom/google/android/gms/internal/ads/zzbct;->c:Lcom/google/android/gms/internal/ads/zzbbw;

    .line 37
    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/zzbbw;->e()Ljava/lang/Object;

    move-result-object p3

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    const-string v0, "pb_tm"

    .line 38
    invoke-virtual {p2, v0, p3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p2

    .line 39
    invoke-static {}, Lcom/google/android/gms/common/GoogleApiAvailabilityLight;->h()Lcom/google/android/gms/common/GoogleApiAvailabilityLight;

    move-result-object p3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbsf;->b:Landroid/content/Context;

    invoke-virtual {p3, v0}, Lcom/google/android/gms/common/GoogleApiAvailabilityLight;->b(Landroid/content/Context;)I

    move-result p3

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    const-string v0, "gmscv"

    .line 40
    invoke-virtual {p2, v0, p3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p2

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzbsf;->e:Lcom/google/android/gms/internal/ads/zzbzg;

    .line 41
    iget-boolean p3, p3, Lcom/google/android/gms/internal/ads/zzbzg;->s:Z

    if-eq v5, p3, :cond_13b

    const-string p3, "0"

    goto :goto_13d

    :cond_13b
    const-string p3, "1"

    :goto_13d
    const-string v0, "lite"

    invoke-virtual {p2, v0, p3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p2

    .line 42
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_14e

    const-string p3, "hash"

    .line 43
    invoke-virtual {p2, p3, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 44
    :cond_14e
    invoke-virtual {p2}, Landroid/net/Uri$Builder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 45
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 46
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_159
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_176

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    new-instance p3, Lcom/google/android/gms/internal/ads/zzbzf;

    const/4 v0, 0x0

    .line 47
    invoke-direct {p3, v0}, Lcom/google/android/gms/internal/ads/zzbzf;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbsf;->d:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzbsc;

    invoke-direct {v1, p3, p2}, Lcom/google/android/gms/internal/ads/zzbsc;-><init>(Lcom/google/android/gms/internal/ads/zzbzf;Ljava/lang/String;)V

    .line 48
    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_159

    :cond_176
    return-void
.end method

.method protected final g(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .registers 11

    if-eqz p2, :cond_3d

    const/4 p1, 0x0

    move-object v0, p2

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_6
    if-eqz v0, :cond_32

    .line 1
    invoke-virtual {v0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    .line 2
    array-length v4, v3

    const/4 v5, 0x0

    :goto_e
    if-ge v5, v4, :cond_2d

    aget-object v6, v3, v5

    .line 3
    invoke-virtual {v6}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/google/android/gms/internal/ads/zzbyt;->u(Ljava/lang/String;)Z

    move-result v7

    or-int/2addr v1, v7

    const-class v7, Lcom/google/android/gms/internal/ads/zzbsf;

    .line 4
    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    or-int/2addr v2, v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_e

    .line 5
    :cond_2d
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    goto :goto_6

    :cond_32
    if-eqz v1, :cond_3d

    if-nez v2, :cond_3d

    const/high16 p1, 0x3f800000    # 1.0f

    const-string v0, ""

    .line 6
    invoke-virtual {p0, p2, v0, p1}, Lcom/google/android/gms/internal/ads/zzbsf;->b(Ljava/lang/Throwable;Ljava/lang/String;F)V

    :cond_3d
    return-void
.end method

###### Class com.google.android.gms.internal.ads.zzbsc (com.google.android.gms.internal.ads.zzbsc)
.class public final synthetic Lcom/google/android/gms/internal/ads/zzbsc;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@22.0.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic o:Lcom/google/android/gms/internal/ads/zzbzf;

.field public final synthetic p:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzbzf;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbsc;->o:Lcom/google/android/gms/internal/ads/zzbzf;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbsc;->p:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbsc;->o:Lcom/google/android/gms/internal/ads/zzbzf;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbsc;->p:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzbzf;->o(Ljava/lang/String;)Z

    return-void
.end method
