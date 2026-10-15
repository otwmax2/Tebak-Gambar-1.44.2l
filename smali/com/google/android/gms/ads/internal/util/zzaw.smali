###### Class com.google.android.gms.ads.internal.util.zzaw (com.google.android.gms.ads.internal.util.zzaw)
.class public final Lcom/google/android/gms/ads/internal/util/zzaw;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# instance fields
.field private final a:Ljava/lang/Object;

.field private b:Ljava/lang/String;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "lock"
    .end annotation
.end field

.field private c:Ljava/lang/String;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "lock"
    .end annotation
.end field

.field private d:Z
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "lock"
    .end annotation
.end field

.field private e:Z
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "lock"
    .end annotation
.end field

.field protected f:Ljava/lang/String;
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation
.end field

.field private g:Lcom/google/android/gms/internal/ads/zzdsf;


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/util/zzaw;->a:Ljava/lang/Object;

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/util/zzaw;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/util/zzaw;->c:Ljava/lang/String;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/gms/ads/internal/util/zzaw;->d:Z

    iput-boolean v1, p0, Lcom/google/android/gms/ads/internal/util/zzaw;->e:Z

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/util/zzaw;->f:Ljava/lang/String;

    return-void
.end method

.method protected static final o(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->r()Lcom/google/android/gms/ads/internal/util/zzs;

    move-result-object v1

    invoke-virtual {v1, p0, p2}, Lcom/google/android/gms/ads/internal/util/zzs;->B(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v1, "User-Agent"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p2, Lcom/google/android/gms/ads/internal/util/zzbo;

    .line 3
    invoke-direct {p2, p0}, Lcom/google/android/gms/ads/internal/util/zzbo;-><init>(Landroid/content/Context;)V

    const/4 p0, 0x0

    const/4 v1, 0x0

    .line 4
    invoke-virtual {p2, p0, p1, v0, v1}, Lcom/google/android/gms/ads/internal/util/zzbo;->b(ILjava/lang/String;Ljava/util/Map;[B)Lcom/google/android/gms/internal/ads/zzfut;

    move-result-object p0

    const/4 p2, 0x1

    .line 5
    :try_start_1e
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbar;->p4:Lcom/google/android/gms/internal/ads/zzbaj;

    .line 6
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->c()Lcom/google/android/gms/internal/ads/zzbap;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/zzbap;->b(Lcom/google/android/gms/internal/ads/zzbaj;)Ljava/lang/Object;

    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v2, v0

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p0, v2, v3, v0}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_37
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_1e .. :try_end_37} :catch_59
    .catch Ljava/lang/InterruptedException; {:try_start_1e .. :try_end_37} :catch_47
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_37} :catch_38

    return-object v0

    :catch_38
    move-exception p0

    .line 8
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "Error retrieving a response from: "

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 9
    invoke-static {p1, p0}, Lcom/google/android/gms/internal/ads/zzbza;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6a

    :catch_47
    move-exception v0

    .line 10
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "Interrupted while retrieving a response from: "

    invoke-virtual {v2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 11
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzbza;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 12
    invoke-interface {p0, p2}, Ljava/util/concurrent/Future;->cancel(Z)Z

    goto :goto_6a

    :catch_59
    move-exception v0

    .line 13
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "Timeout while retrieving a response from: "

    invoke-virtual {v2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 14
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzbza;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 15
    invoke-interface {p0, p2}, Ljava/util/concurrent/Future;->cancel(Z)Z

    :goto_6a
    return-object v1
.end method

.method private final p(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .registers 9

    .line 1
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/util/zzaw;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_b
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/util/zzaw;->b:Ljava/lang/String;

    .line 2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_64

    .line 3
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->r()Lcom/google/android/gms/ads/internal/util/zzs;

    const-string v1, "debug_signals_id.txt"
    :try_end_18
    .catchall {:try_start_b .. :try_end_18} :catchall_7b

    .line 4
    :try_start_18
    invoke-virtual {p1, v1}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v1

    new-instance v2, Ljava/lang/String;

    const/4 v3, 0x1

    .line 5
    invoke-static {v1, v3}, Lcom/google/android/gms/common/util/IOUtils;->e(Ljava/io/InputStream;Z)[B

    move-result-object v1

    const-string v3, "UTF-8"

    invoke-direct {v2, v1, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_28} :catch_29
    .catchall {:try_start_18 .. :try_end_28} :catchall_7b

    goto :goto_30

    :catch_29
    :try_start_29
    const-string v1, "Error reading from internal storage."

    .line 6
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzbza;->b(Ljava/lang/String;)V

    const-string v2, ""

    .line 7
    :goto_30
    iput-object v2, p0, Lcom/google/android/gms/ads/internal/util/zzaw;->b:Ljava/lang/String;

    .line 8
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_64

    .line 9
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->r()Lcom/google/android/gms/ads/internal/util/zzs;

    .line 10
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/ads/internal/util/zzaw;->b:Ljava/lang/String;

    .line 11
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->r()Lcom/google/android/gms/ads/internal/util/zzs;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/util/zzaw;->b:Ljava/lang/String;

    const-string v2, "debug_signals_id.txt"
    :try_end_4c
    .catchall {:try_start_29 .. :try_end_4c} :catchall_7b

    const/4 v3, 0x0

    .line 12
    :try_start_4d
    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object p1

    const-string v2, "UTF-8"

    .line 13
    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 14
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_5d
    .catch Ljava/lang/Exception; {:try_start_4d .. :try_end_5d} :catch_5e
    .catchall {:try_start_4d .. :try_end_5d} :catchall_7b

    goto :goto_64

    :catch_5e
    move-exception p1

    :try_start_5f
    const-string v1, "Error writing to file in internal storage."

    .line 15
    invoke-static {v1, p1}, Lcom/google/android/gms/internal/ads/zzbza;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 16
    :cond_64
    :goto_64
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/util/zzaw;->b:Ljava/lang/String;

    .line 17
    monitor-exit v0
    :try_end_67
    .catchall {:try_start_5f .. :try_end_67} :catchall_7b

    const-string v0, "linkedDeviceId"

    .line 18
    invoke-virtual {p2, v0, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    const-string p1, "adSlotPath"

    .line 19
    invoke-virtual {p2, p1, p3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    const-string p1, "afmaVersion"

    .line 20
    invoke-virtual {p2, p1, p4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 21
    invoke-virtual {p2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    return-object p1

    :catchall_7b
    move-exception p1

    .line 22
    :try_start_7c
    monitor-exit v0
    :try_end_7d
    .catchall {:try_start_7c .. :try_end_7d} :catchall_7b

    throw p1
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/internal/ads/zzdsf;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/util/zzaw;->g:Lcom/google/android/gms/internal/ads/zzdsf;

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/util/zzaw;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/util/zzaw;->c:Ljava/lang/String;

    monitor-exit v0

    return-object v1

    :catchall_7
    move-exception v1

    .line 2
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public final c(Landroid/content/Context;)V
    .registers 4

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbar;->u8:Lcom/google/android/gms/internal/ads/zzbaj;

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->c()Lcom/google/android/gms/internal/ads/zzbap;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbap;->b(Lcom/google/android/gms/internal/ads/zzbaj;)Ljava/lang/Object;

    move-result-object v0

    .line 3
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/util/zzaw;->g:Lcom/google/android/gms/internal/ads/zzdsf;

    if-nez v0, :cond_17

    goto :goto_21

    :cond_17
    new-instance v1, Lcom/google/android/gms/ads/internal/util/b;

    .line 4
    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/ads/internal/util/b;-><init>(Lcom/google/android/gms/ads/internal/util/zzaw;Landroid/content/Context;)V

    sget-object p1, Lcom/google/android/gms/internal/ads/zzdse;->r:Lcom/google/android/gms/internal/ads/zzdse;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzdsf;->h(Lcom/google/android/gms/ads/internal/client/zzda;Lcom/google/android/gms/internal/ads/zzdse;)V

    :cond_21
    :goto_21
    return-void
.end method

.method public final d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 1
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->r()Lcom/google/android/gms/ads/internal/util/zzs;

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbar;->l4:Lcom/google/android/gms/internal/ads/zzbaj;

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->c()Lcom/google/android/gms/internal/ads/zzbap;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbap;->b(Lcom/google/android/gms/internal/ads/zzbaj;)Ljava/lang/Object;

    move-result-object v0

    .line 3
    check-cast v0, Ljava/lang/String;

    .line 4
    invoke-direct {p0, p1, v0, p2, p3}, Lcom/google/android/gms/ads/internal/util/zzaw;->p(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    .line 5
    invoke-static {p1, p2}, Lcom/google/android/gms/ads/internal/util/zzs;->r(Landroid/content/Context;Landroid/net/Uri;)V

    return-void
.end method

.method public final e(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbar;->o4:Lcom/google/android/gms/internal/ads/zzbaj;

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->c()Lcom/google/android/gms/internal/ads/zzbap;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbap;->b(Lcom/google/android/gms/internal/ads/zzbaj;)Ljava/lang/Object;

    move-result-object v0

    .line 3
    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, p1, v0, p4, p2}, Lcom/google/android/gms/ads/internal/util/zzaw;->p(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p4

    .line 4
    invoke-virtual {p4}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p4

    const-string v0, "debugData"

    .line 5
    invoke-virtual {p4, v0, p3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 6
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->r()Lcom/google/android/gms/ads/internal/util/zzs;

    invoke-virtual {p4}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p3

    invoke-virtual {p3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p2, p3}, Lcom/google/android/gms/ads/internal/util/zzs;->h(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final f(Z)V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/util/zzaw;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iput-boolean p1, p0, Lcom/google/android/gms/ads/internal/util/zzaw;->e:Z

    sget-object v1, Lcom/google/android/gms/internal/ads/zzbar;->u8:Lcom/google/android/gms/internal/ads/zzbaj;

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->c()Lcom/google/android/gms/internal/ads/zzbap;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzbap;->b(Lcom/google/android/gms/internal/ads/zzbaj;)Ljava/lang/Object;

    move-result-object v1

    .line 3
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_29

    .line 4
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->q()Lcom/google/android/gms/internal/ads/zzbyj;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbyj;->h()Lcom/google/android/gms/ads/internal/util/zzg;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/google/android/gms/ads/internal/util/zzg;->y0(Z)V

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/util/zzaw;->g:Lcom/google/android/gms/internal/ads/zzdsf;

    if-eqz v1, :cond_29

    .line 5
    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzdsf;->j(Z)V

    .line 6
    :cond_29
    monitor-exit v0

    return-void

    :catchall_2b
    move-exception p1

    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_3 .. :try_end_2d} :catchall_2b

    throw p1
.end method

.method public final g(Lcom/google/android/gms/internal/ads/zzdsf;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/util/zzaw;->g:Lcom/google/android/gms/internal/ads/zzdsf;

    return-void
.end method

.method public final h(Z)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/util/zzaw;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iput-boolean p1, p0, Lcom/google/android/gms/ads/internal/util/zzaw;->d:Z

    monitor-exit v0

    return-void

    :catchall_7
    move-exception p1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p1
.end method

.method protected final i(Landroid/content/Context;Ljava/lang/String;ZZ)V
    .registers 13
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .line 1
    instance-of v0, p1, Landroid/app/Activity;

    if-nez v0, :cond_a

    const-string p1, "Can not create dialog without Activity Context"

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbza;->f(Ljava/lang/String;)V

    return-void

    .line 3
    :cond_a
    sget-object v0, Lcom/google/android/gms/ads/internal/util/zzs;->i:Lcom/google/android/gms/internal/ads/zzfkr;

    new-instance v7, Lcom/google/android/gms/ads/internal/util/d;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/ads/internal/util/d;-><init>(Lcom/google/android/gms/ads/internal/util/zzaw;Landroid/content/Context;Ljava/lang/String;ZZ)V

    invoke-virtual {v0, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final j(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbar;->n4:Lcom/google/android/gms/internal/ads/zzbaj;

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->c()Lcom/google/android/gms/internal/ads/zzbap;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbap;->b(Lcom/google/android/gms/internal/ads/zzbaj;)Ljava/lang/Object;

    move-result-object v0

    .line 3
    check-cast v0, Ljava/lang/String;

    .line 4
    invoke-direct {p0, p1, v0, p2, p3}, Lcom/google/android/gms/ads/internal/util/zzaw;->p(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 6
    invoke-static {p1, v0, p3}, Lcom/google/android/gms/ads/internal/util/zzaw;->o(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 7
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    const/4 v0, 0x0

    if-eqz p3, :cond_25

    const-string p1, "Not linked for debug signals."

    .line 8
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbza;->b(Ljava/lang/String;)V

    return v0

    .line 9
    :cond_25
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 10
    :try_start_29
    new-instance p3, Lorg/json/JSONObject;

    invoke-direct {p3, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "debug_mode"

    .line 11
    invoke-virtual {p3, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_34
    .catch Lorg/json/JSONException; {:try_start_29 .. :try_end_34} :catch_60

    const-string p3, "1"

    .line 12
    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    .line 13
    invoke-virtual {p0, p1}, Lcom/google/android/gms/ads/internal/util/zzaw;->f(Z)V

    sget-object p3, Lcom/google/android/gms/internal/ads/zzbar;->u8:Lcom/google/android/gms/internal/ads/zzbaj;

    .line 14
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->c()Lcom/google/android/gms/internal/ads/zzbap;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/google/android/gms/internal/ads/zzbap;->b(Lcom/google/android/gms/internal/ads/zzbaj;)Ljava/lang/Object;

    move-result-object p3

    .line 15
    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-eqz p3, :cond_5f

    .line 16
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->q()Lcom/google/android/gms/internal/ads/zzbyj;

    move-result-object p3

    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/zzbyj;->h()Lcom/google/android/gms/ads/internal/util/zzg;

    move-result-object p3

    const/4 v0, 0x1

    if-eq v0, p1, :cond_5c

    const-string p2, ""

    :cond_5c
    invoke-interface {p3, p2}, Lcom/google/android/gms/ads/internal/util/zzg;->t0(Ljava/lang/String;)V

    :cond_5f
    return p1

    :catch_60
    move-exception p1

    const-string p2, "Fail to get debug mode response json."

    .line 17
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzbza;->h(Ljava/lang/String;Ljava/lang/Throwable;)V

    return v0
.end method

.method final k(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 7
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbar;->m4:Lcom/google/android/gms/internal/ads/zzbaj;

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->c()Lcom/google/android/gms/internal/ads/zzbap;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbap;->b(Lcom/google/android/gms/internal/ads/zzbaj;)Ljava/lang/Object;

    move-result-object v0

    .line 3
    check-cast v0, Ljava/lang/String;

    .line 4
    invoke-direct {p0, p1, v0, p2, p3}, Lcom/google/android/gms/ads/internal/util/zzaw;->p(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 6
    invoke-static {p1, v0, p3}, Lcom/google/android/gms/ads/internal/util/zzaw;->o(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 7
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    const/4 v0, 0x0

    if-eqz p3, :cond_25

    const-string p1, "Not linked for in app preview."

    .line 8
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbza;->b(Ljava/lang/String;)V

    return v0

    .line 9
    :cond_25
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 10
    :try_start_29
    new-instance p3, Lorg/json/JSONObject;

    invoke-direct {p3, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "gct"

    .line 11
    invoke-virtual {p3, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "status"

    .line 12
    invoke-virtual {p3, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/google/android/gms/ads/internal/util/zzaw;->f:Ljava/lang/String;

    sget-object p3, Lcom/google/android/gms/internal/ads/zzbar;->u8:Lcom/google/android/gms/internal/ads/zzbaj;

    .line 13
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->c()Lcom/google/android/gms/internal/ads/zzbap;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/google/android/gms/internal/ads/zzbap;->b(Lcom/google/android/gms/internal/ads/zzbaj;)Ljava/lang/Object;

    move-result-object p3

    .line 14
    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    const/4 v1, 0x1

    if-eqz p3, :cond_79

    const-string p3, "0"

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/util/zzaw;->f:Ljava/lang/String;

    .line 15
    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_66

    const-string p3, "2"

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/util/zzaw;->f:Ljava/lang/String;

    .line 16
    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_64

    goto :goto_66

    :cond_64
    const/4 p3, 0x0

    goto :goto_67

    :cond_66
    :goto_66
    const/4 p3, 0x1

    .line 17
    :goto_67
    invoke-virtual {p0, p3}, Lcom/google/android/gms/ads/internal/util/zzaw;->f(Z)V

    .line 18
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->q()Lcom/google/android/gms/internal/ads/zzbyj;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzbyj;->h()Lcom/google/android/gms/ads/internal/util/zzg;

    move-result-object v2

    if-nez p3, :cond_76

    const-string p2, ""

    :cond_76
    invoke-interface {v2, p2}, Lcom/google/android/gms/ads/internal/util/zzg;->t0(Ljava/lang/String;)V
    :try_end_79
    .catch Lorg/json/JSONException; {:try_start_29 .. :try_end_79} :catch_83

    :cond_79
    iget-object p2, p0, Lcom/google/android/gms/ads/internal/util/zzaw;->a:Ljava/lang/Object;

    monitor-enter p2

    :try_start_7c
    iput-object p1, p0, Lcom/google/android/gms/ads/internal/util/zzaw;->c:Ljava/lang/String;

    .line 19
    monitor-exit p2

    return v1

    :catchall_80
    move-exception p1

    monitor-exit p2
    :try_end_82
    .catchall {:try_start_7c .. :try_end_82} :catchall_80

    throw p1

    :catch_83
    move-exception p1

    const-string p2, "Fail to get in app preview response json."

    .line 20
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzbza;->h(Ljava/lang/String;Ljava/lang/Throwable;)V

    return v0
.end method

.method public final l()Z
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/util/zzaw;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-boolean v1, p0, Lcom/google/android/gms/ads/internal/util/zzaw;->e:Z

    monitor-exit v0

    return v1

    :catchall_7
    move-exception v1

    .line 2
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public final m()Z
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/util/zzaw;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-boolean v1, p0, Lcom/google/android/gms/ads/internal/util/zzaw;->d:Z

    monitor-exit v0

    return v1

    :catchall_7
    move-exception v1

    .line 2
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public final n(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6

    .line 1
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_17

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/util/zzaw;->m()Z

    move-result v0

    if-nez v0, :cond_d

    goto :goto_17

    :cond_d
    const-string v0, "Sending troubleshooting signals to the server."

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbza;->b(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/android/gms/ads/internal/util/zzaw;->e(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1

    :cond_17
    :goto_17
    const/4 p1, 0x0

    return p1
.end method
