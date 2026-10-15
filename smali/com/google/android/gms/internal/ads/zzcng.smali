###### Class com.google.android.gms.internal.ads.zzcng (com.google.android.gms.internal.ads.zzcng)
.class public final Lcom/google/android/gms/internal/ads/zzcng;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzatf;
.implements Lcom/google/android/gms/internal/ads/zzcvj;
.implements Lcom/google/android/gms/ads/internal/overlay/zzo;
.implements Lcom/google/android/gms/internal/ads/zzcvi;


# instance fields
.field private final o:Lcom/google/android/gms/internal/ads/zzcnb;

.field private final p:Lcom/google/android/gms/internal/ads/zzcnc;

.field private final q:Ljava/util/Set;

.field private final r:Lcom/google/android/gms/internal/ads/zzbmr;

.field private final s:Ljava/util/concurrent/Executor;

.field private final t:Lcom/google/android/gms/common/util/Clock;

.field private final u:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final v:Lcom/google/android/gms/internal/ads/zzcnf;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private w:Z

.field private x:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzbmo;Lcom/google/android/gms/internal/ads/zzcnc;Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/zzcnb;Lcom/google/android/gms/common/util/Clock;)V
    .registers 8

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcng;->q:Ljava/util/Set;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    .line 2
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcng;->u:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzcnf;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzcnf;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcng;->v:Lcom/google/android/gms/internal/ads/zzcnf;

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzcng;->w:Z

    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 3
    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcng;->x:Ljava/lang/ref/WeakReference;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzcng;->o:Lcom/google/android/gms/internal/ads/zzcnb;

    .line 4
    sget-object p4, Lcom/google/android/gms/internal/ads/zzbmc;->b:Lcom/google/android/gms/internal/ads/zzblz;

    const-string v0, "google.afma.activeView.handleUpdate"

    .line 5
    invoke-virtual {p1, v0, p4, p4}, Lcom/google/android/gms/internal/ads/zzbmo;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbly;Lcom/google/android/gms/internal/ads/zzblx;)Lcom/google/android/gms/internal/ads/zzbmr;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcng;->r:Lcom/google/android/gms/internal/ads/zzbmr;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcng;->p:Lcom/google/android/gms/internal/ads/zzcnc;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcng;->s:Ljava/util/concurrent/Executor;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzcng;->t:Lcom/google/android/gms/common/util/Clock;

    return-void
.end method

.method private final i()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcng;->q:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzcei;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcng;->o:Lcom/google/android/gms/internal/ads/zzcnb;

    .line 2
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzcnb;->f(Lcom/google/android/gms/internal/ads/zzcei;)V

    goto :goto_6

    :cond_18
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcng;->o:Lcom/google/android/gms/internal/ads/zzcnb;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcnb;->e()V

    return-void
.end method


# virtual methods
.method public final G(I)V
    .registers 2

    return-void
.end method

.method public final declared-synchronized H0(Lcom/google/android/gms/internal/ads/zzate;)V
    .registers 4

    monitor-enter p0

    .line 1
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcng;->v:Lcom/google/android/gms/internal/ads/zzcnf;

    iget-boolean v1, p1, Lcom/google/android/gms/internal/ads/zzate;->j:Z

    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzcnf;->a:Z

    iput-object p1, v0, Lcom/google/android/gms/internal/ads/zzcnf;->f:Lcom/google/android/gms/internal/ads/zzate;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzcng;->a()V
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_e

    monitor-exit p0

    return-void

    :catchall_e
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final P0()V
    .registers 1

    return-void
.end method

.method public final declared-synchronized Q4()V
    .registers 3

    monitor-enter p0

    .line 1
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcng;->v:Lcom/google/android/gms/internal/ads/zzcnf;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzcnf;->b:Z

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzcng;->a()V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    monitor-exit p0

    return-void

    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized X0()V
    .registers 3

    monitor-enter p0

    .line 1
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcng;->v:Lcom/google/android/gms/internal/ads/zzcnf;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzcnf;->b:Z

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzcng;->a()V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    monitor-exit p0

    return-void

    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a()V
    .registers 6

    monitor-enter p0

    .line 1
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcng;->x:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_5b

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcng;->w:Z

    if-nez v0, :cond_59

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcng;->u:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_60

    if-eqz v0, :cond_59

    :try_start_15
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcng;->v:Lcom/google/android/gms/internal/ads/zzcnf;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcng;->t:Lcom/google/android/gms/common/util/Clock;

    .line 3
    invoke-interface {v1}, Lcom/google/android/gms/common/util/Clock;->b()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/google/android/gms/internal/ads/zzcnf;->d:J

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcng;->p:Lcom/google/android/gms/internal/ads/zzcnc;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcng;->v:Lcom/google/android/gms/internal/ads/zzcnf;

    .line 4
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzcnc;->a(Lcom/google/android/gms/internal/ads/zzcnf;)Lorg/json/JSONObject;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcng;->q:Ljava/util/Set;

    .line 5
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_44

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzcei;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzcng;->s:Ljava/util/concurrent/Executor;

    new-instance v4, Lcom/google/android/gms/internal/ads/zzcne;

    invoke-direct {v4, v2, v0}, Lcom/google/android/gms/internal/ads/zzcne;-><init>(Lcom/google/android/gms/internal/ads/zzcei;Lorg/json/JSONObject;)V

    .line 6
    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_2d

    :cond_44
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcng;->r:Lcom/google/android/gms/internal/ads/zzbmr;

    .line 7
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbmr;->c(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfut;

    move-result-object v0

    const-string v1, "ActiveViewListener.callActiveViewJs"

    .line 8
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzbzq;->b(Lcom/google/android/gms/internal/ads/zzfut;Ljava/lang/String;)V
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_4f} :catch_51
    .catchall {:try_start_15 .. :try_end_4f} :catchall_60

    monitor-exit p0

    return-void

    :catch_51
    move-exception v0

    :try_start_52
    const-string v1, "Failed to call ActiveViewJS"

    .line 9
    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/zze;->l(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_57
    .catchall {:try_start_52 .. :try_end_57} :catchall_60

    monitor-exit p0

    return-void

    .line 10
    :cond_59
    monitor-exit p0

    return-void

    .line 11
    :cond_5b
    :try_start_5b
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzcng;->f()V
    :try_end_5e
    .catchall {:try_start_5b .. :try_end_5e} :catchall_60

    monitor-exit p0

    return-void

    :catchall_60
    move-exception v0

    monitor-exit p0

    goto :goto_64

    :goto_63
    throw v0

    :goto_64
    goto :goto_63
.end method

.method public final b()V
    .registers 1

    return-void
.end method

.method public final declared-synchronized c(Landroid/content/Context;)V
    .registers 3

    monitor-enter p0

    .line 1
    :try_start_1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcng;->v:Lcom/google/android/gms/internal/ads/zzcnf;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/google/android/gms/internal/ads/zzcnf;->b:Z

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzcng;->a()V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    monitor-exit p0

    return-void

    :catchall_b
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized d(Lcom/google/android/gms/internal/ads/zzcei;)V
    .registers 3

    monitor-enter p0

    .line 1
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcng;->q:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcng;->o:Lcom/google/android/gms/internal/ads/zzcnb;

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzcnb;->d(Lcom/google/android/gms/internal/ads/zzcei;)V
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    monitor-exit p0

    return-void

    :catchall_d
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final e(Ljava/lang/Object;)V
    .registers 3

    .line 1
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcng;->x:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public final declared-synchronized f()V
    .registers 2

    monitor-enter p0

    .line 1
    :try_start_1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzcng;->i()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcng;->w:Z
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return-void

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized j()V
    .registers 4

    monitor-enter p0

    .line 1
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcng;->u:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcng;->o:Lcom/google/android/gms/internal/ads/zzcnb;

    .line 2
    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/zzcnb;->c(Lcom/google/android/gms/internal/ads/zzcng;)V

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzcng;->a()V
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_17

    monitor-exit p0

    return-void

    :cond_15
    monitor-exit p0

    return-void

    :catchall_17
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized o(Landroid/content/Context;)V
    .registers 3

    monitor-enter p0

    .line 1
    :try_start_1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcng;->v:Lcom/google/android/gms/internal/ads/zzcnf;

    const-string v0, "u"

    iput-object v0, p1, Lcom/google/android/gms/internal/ads/zzcnf;->e:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzcng;->a()V

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzcng;->i()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzcng;->w:Z
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_12

    monitor-exit p0

    return-void

    :catchall_12
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized p(Landroid/content/Context;)V
    .registers 3

    monitor-enter p0

    .line 1
    :try_start_1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcng;->v:Lcom/google/android/gms/internal/ads/zzcnf;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/google/android/gms/internal/ads/zzcnf;->b:Z

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzcng;->a()V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    monitor-exit p0

    return-void

    :catchall_b
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final zzb()V
    .registers 1

    return-void
.end method

###### Class com.google.android.gms.internal.ads.zzcne (com.google.android.gms.internal.ads.zzcne)
.class public final synthetic Lcom/google/android/gms/internal/ads/zzcne;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic o:Lcom/google/android/gms/internal/ads/zzcei;

.field public final synthetic p:Lorg/json/JSONObject;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzcei;Lorg/json/JSONObject;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcne;->o:Lcom/google/android/gms/internal/ads/zzcei;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcne;->p:Lorg/json/JSONObject;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcne;->o:Lcom/google/android/gms/internal/ads/zzcei;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcne;->p:Lorg/json/JSONObject;

    const-string v2, "AFMA_updateActiveView"

    invoke-interface {v0, v2, v1}, Lcom/google/android/gms/internal/ads/zzbkv;->Z0(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method
