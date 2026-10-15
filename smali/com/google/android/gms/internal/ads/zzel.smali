###### Class com.google.android.gms.internal.ads.zzel (com.google.android.gms.internal.ads.zzel)
.class public final Lcom/google/android/gms/internal/ads/zzel;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# static fields
.field private static e:Lcom/google/android/gms/internal/ads/zzel;


# instance fields
.field private final a:Landroid/os/Handler;

.field private final b:Ljava/util/concurrent/CopyOnWriteArrayList;

.field private final c:Ljava/lang/Object;

.field private d:I


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzel;->a:Landroid/os/Handler;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 2
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzel;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzel;->c:Ljava/lang/Object;

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzel;->d:I

    new-instance v0, Landroid/content/IntentFilter;

    .line 3
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    .line 4
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v1, Lcom/google/android/gms/internal/ads/zzek;

    const/4 v2, 0x0

    .line 5
    invoke-direct {v1, p0, v2}, Lcom/google/android/gms/internal/ads/zzek;-><init>(Lcom/google/android/gms/internal/ads/zzel;Lcom/google/android/gms/internal/ads/zzej;)V

    invoke-static {p1, v1, v0}, Lcom/google/android/gms/internal/ads/zzew;->a(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public static declared-synchronized b(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzel;
    .registers 3

    const-class v0, Lcom/google/android/gms/internal/ads/zzel;

    monitor-enter v0

    .line 1
    :try_start_3
    sget-object v1, Lcom/google/android/gms/internal/ads/zzel;->e:Lcom/google/android/gms/internal/ads/zzel;

    if-nez v1, :cond_e

    new-instance v1, Lcom/google/android/gms/internal/ads/zzel;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzel;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/google/android/gms/internal/ads/zzel;->e:Lcom/google/android/gms/internal/ads/zzel;

    :cond_e
    sget-object p0, Lcom/google/android/gms/internal/ads/zzel;->e:Lcom/google/android/gms/internal/ads/zzel;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object p0

    :catchall_12
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method static synthetic c(Lcom/google/android/gms/internal/ads/zzel;I)V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzel;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzel;->d:I

    if-ne v1, p1, :cond_9

    monitor-exit v0

    return-void

    :cond_9
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzel;->d:I

    .line 2
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_33

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzel;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_32

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 4
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzwu;

    if-eqz v2, :cond_2c

    iget-object v1, v2, Lcom/google/android/gms/internal/ads/zzwu;->a:Lcom/google/android/gms/internal/ads/zzww;

    .line 5
    invoke-static {v1, p1}, Lcom/google/android/gms/internal/ads/zzww;->d(Lcom/google/android/gms/internal/ads/zzww;I)V

    goto :goto_12

    :cond_2c
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzel;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 6
    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_12

    :cond_32
    return-void

    :catchall_33
    move-exception p0

    .line 7
    :try_start_34
    monitor-exit v0
    :try_end_35
    .catchall {:try_start_34 .. :try_end_35} :catchall_33

    goto :goto_37

    :goto_36
    throw p0

    :goto_37
    goto :goto_36
.end method


# virtual methods
.method public final a()I
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzel;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzel;->d:I

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

.method public final d(Lcom/google/android/gms/internal/ads/zzwu;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzel;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 2
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_6

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzel;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 3
    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_1e
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzel;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v1, Ljava/lang/ref/WeakReference;

    .line 4
    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzel;->a:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzeh;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/google/android/gms/internal/ads/zzeh;-><init>(Lcom/google/android/gms/internal/ads/zzel;Lcom/google/android/gms/internal/ads/zzwu;[B)V

    .line 5
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

###### Class com.google.android.gms.internal.ads.zzeh (com.google.android.gms.internal.ads.zzeh)
.class public final synthetic Lcom/google/android/gms/internal/ads/zzeh;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic o:Lcom/google/android/gms/internal/ads/zzel;

.field public final synthetic p:Lcom/google/android/gms/internal/ads/zzwu;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzel;Lcom/google/android/gms/internal/ads/zzwu;[B)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzeh;->o:Lcom/google/android/gms/internal/ads/zzel;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzeh;->p:Lcom/google/android/gms/internal/ads/zzwu;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeh;->o:Lcom/google/android/gms/internal/ads/zzel;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzeh;->p:Lcom/google/android/gms/internal/ads/zzwu;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzel;->a()I

    move-result v0

    .line 1
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzwu;->a:Lcom/google/android/gms/internal/ads/zzww;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzww;->d(Lcom/google/android/gms/internal/ads/zzww;I)V

    return-void
.end method
