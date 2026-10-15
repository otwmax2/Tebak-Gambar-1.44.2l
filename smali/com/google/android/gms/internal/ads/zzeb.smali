###### Class com.google.android.gms.internal.ads.zzeb (com.google.android.gms.internal.ads.zzeb)
.class public final Lcom/google/android/gms/internal/ads/zzeb;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/zzdm;

.field private final b:Lcom/google/android/gms/internal/ads/zzdv;

.field private final c:Lcom/google/android/gms/internal/ads/zzdz;

.field private final d:Ljava/util/concurrent/CopyOnWriteArraySet;

.field private final e:Ljava/util/ArrayDeque;

.field private final f:Ljava/util/ArrayDeque;

.field private final g:Ljava/lang/Object;

.field private h:Z

.field private i:Z


# direct methods
.method public constructor <init>(Landroid/os/Looper;Lcom/google/android/gms/internal/ads/zzdm;Lcom/google/android/gms/internal/ads/zzdz;)V
    .registers 5

    .line 1
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzeb;-><init>(Ljava/util/concurrent/CopyOnWriteArraySet;Landroid/os/Looper;Lcom/google/android/gms/internal/ads/zzdm;Lcom/google/android/gms/internal/ads/zzdz;)V

    return-void
.end method

.method private constructor <init>(Ljava/util/concurrent/CopyOnWriteArraySet;Landroid/os/Looper;Lcom/google/android/gms/internal/ads/zzdm;Lcom/google/android/gms/internal/ads/zzdz;)V
    .registers 5

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzeb;->a:Lcom/google/android/gms/internal/ads/zzdm;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzeb;->d:Ljava/util/concurrent/CopyOnWriteArraySet;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzeb;->c:Lcom/google/android/gms/internal/ads/zzdz;

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzeb;->g:Ljava/lang/Object;

    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzeb;->e:Ljava/util/ArrayDeque;

    new-instance p1, Ljava/util/ArrayDeque;

    .line 3
    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzeb;->f:Ljava/util/ArrayDeque;

    .line 4
    new-instance p1, Lcom/google/android/gms/internal/ads/zzdw;

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/ads/zzdw;-><init>(Lcom/google/android/gms/internal/ads/zzeb;)V

    invoke-interface {p3, p2, p1}, Lcom/google/android/gms/internal/ads/zzdm;->a(Landroid/os/Looper;Landroid/os/Handler$Callback;)Lcom/google/android/gms/internal/ads/zzdv;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzeb;->b:Lcom/google/android/gms/internal/ads/zzdv;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzeb;->i:Z

    return-void
.end method

.method public static synthetic g(Lcom/google/android/gms/internal/ads/zzeb;Landroid/os/Message;)Z
    .registers 4

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzeb;->d:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzea;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzeb;->c:Lcom/google/android/gms/internal/ads/zzdz;

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzea;->b(Lcom/google/android/gms/internal/ads/zzdz;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeb;->b:Lcom/google/android/gms/internal/ads/zzdv;

    const/4 v1, 0x0

    .line 3
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzdv;->w(I)Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_20
    const/4 p0, 0x1

    return p0
.end method

.method private final h()V
    .registers 3

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzeb;->i:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzeb;->b:Lcom/google/android/gms/internal/ads/zzdv;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzdv;->zza()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_17

    const/4 v0, 0x1

    goto :goto_18

    :cond_17
    const/4 v0, 0x0

    :goto_18
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdl;->f(Z)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/os/Looper;Lcom/google/android/gms/internal/ads/zzdz;)Lcom/google/android/gms/internal/ads/zzeb;
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeb;->a:Lcom/google/android/gms/internal/ads/zzdm;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzeb;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzeb;->d:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v1, v2, p1, v0, p2}, Lcom/google/android/gms/internal/ads/zzeb;-><init>(Ljava/util/concurrent/CopyOnWriteArraySet;Landroid/os/Looper;Lcom/google/android/gms/internal/ads/zzdm;Lcom/google/android/gms/internal/ads/zzdz;)V

    return-object v1
.end method

.method public final b(Ljava/lang/Object;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeb;->g:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzeb;->h:Z

    if-eqz v1, :cond_9

    monitor-exit v0

    return-void

    :cond_9
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzeb;->d:Ljava/util/concurrent/CopyOnWriteArraySet;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzea;

    .line 2
    invoke-direct {v2, p1}, Lcom/google/android/gms/internal/ads/zzea;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    .line 3
    monitor-exit v0

    return-void

    :catchall_15
    move-exception p1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw p1
.end method

.method public final c()V
    .registers 4

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzeb;->h()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeb;->f:Ljava/util/ArrayDeque;

    .line 2
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_c

    return-void

    :cond_c
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeb;->b:Lcom/google/android/gms/internal/ads/zzdv;

    const/4 v1, 0x0

    .line 3
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzdv;->w(I)Z

    move-result v0

    if-nez v0, :cond_1e

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeb;->b:Lcom/google/android/gms/internal/ads/zzdv;

    .line 4
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzdv;->z(I)Lcom/google/android/gms/internal/ads/zzdu;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzdv;->j(Lcom/google/android/gms/internal/ads/zzdu;)Z

    :cond_1e
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeb;->e:Ljava/util/ArrayDeque;

    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzeb;->e:Ljava/util/ArrayDeque;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzeb;->f:Ljava/util/ArrayDeque;

    .line 6
    invoke-virtual {v1, v2}, Ljava/util/ArrayDeque;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzeb;->f:Ljava/util/ArrayDeque;

    .line 7
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->clear()V

    if-nez v0, :cond_4d

    :goto_34
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeb;->e:Ljava/util/ArrayDeque;

    .line 8
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4d

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeb;->e:Ljava/util/ArrayDeque;

    .line 9
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peekFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeb;->e:Ljava/util/ArrayDeque;

    .line 10
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    goto :goto_34

    :cond_4d
    return-void
.end method

.method public final d(ILcom/google/android/gms/internal/ads/zzdy;)V
    .registers 6

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzeb;->h()V

    .line 2
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzeb;->d:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0, v1}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>(Ljava/util/Collection;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzeb;->f:Ljava/util/ArrayDeque;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzdx;

    invoke-direct {v2, v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzdx;-><init>(Ljava/util/concurrent/CopyOnWriteArraySet;ILcom/google/android/gms/internal/ads/zzdy;)V

    .line 3
    invoke-virtual {v1, v2}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final e()V
    .registers 4

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzeb;->h()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeb;->g:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_7
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzeb;->h:Z

    .line 2
    monitor-exit v0
    :try_end_a
    .catchall {:try_start_7 .. :try_end_a} :catchall_28

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeb;->d:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_22

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzea;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzeb;->c:Lcom/google/android/gms/internal/ads/zzdz;

    .line 4
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzea;->c(Lcom/google/android/gms/internal/ads/zzdz;)V

    goto :goto_10

    :cond_22
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeb;->d:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 5
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->clear()V

    return-void

    :catchall_28
    move-exception v1

    .line 6
    :try_start_29
    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_28

    goto :goto_2c

    :goto_2b
    throw v1

    :goto_2c
    goto :goto_2b
.end method

.method public final f(Ljava/lang/Object;)V
    .registers 5

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzeb;->h()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeb;->d:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 2
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_9
    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_28

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzea;

    .line 3
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzea;->a:Ljava/lang/Object;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzeb;->c:Lcom/google/android/gms/internal/ads/zzdz;

    .line 4
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzea;->c(Lcom/google/android/gms/internal/ads/zzdz;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzeb;->d:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 5
    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_28
    return-void
.end method

###### Class com.google.android.gms.internal.ads.zzdw (com.google.android.gms.internal.ads.zzdw)
.class public final synthetic Lcom/google/android/gms/internal/ads/zzdw;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field public final synthetic o:Lcom/google/android/gms/internal/ads/zzeb;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzeb;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdw;->o:Lcom/google/android/gms/internal/ads/zzeb;

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdw;->o:Lcom/google/android/gms/internal/ads/zzeb;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzeb;->g(Lcom/google/android/gms/internal/ads/zzeb;Landroid/os/Message;)Z

    const/4 p1, 0x1

    return p1
.end method

###### Class com.google.android.gms.internal.ads.zzdx (com.google.android.gms.internal.ads.zzdx)
.class public final synthetic Lcom/google/android/gms/internal/ads/zzdx;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic o:Ljava/util/concurrent/CopyOnWriteArraySet;

.field public final synthetic p:I

.field public final synthetic q:Lcom/google/android/gms/internal/ads/zzdy;


# direct methods
.method public synthetic constructor <init>(Ljava/util/concurrent/CopyOnWriteArraySet;ILcom/google/android/gms/internal/ads/zzdy;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdx;->o:Ljava/util/concurrent/CopyOnWriteArraySet;

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzdx;->p:I

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzdx;->q:Lcom/google/android/gms/internal/ads/zzdy;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdx;->o:Ljava/util/concurrent/CopyOnWriteArraySet;

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzdx;->p:I

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdx;->q:Lcom/google/android/gms/internal/ads/zzdy;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/zzea;

    .line 2
    invoke-virtual {v3, v1, v2}, Lcom/google/android/gms/internal/ads/zzea;->a(ILcom/google/android/gms/internal/ads/zzdy;)V

    goto :goto_a

    :cond_1a
    return-void
.end method
