###### Class com.google.android.gms.internal.ads.zzako (com.google.android.gms.internal.ads.zzako)
.class public abstract Lcom/google/android/gms/internal/ads/zzako;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field private final o:Lcom/google/android/gms/internal/ads/zzakz;

.field private final p:I

.field private final q:Ljava/lang/String;

.field private final r:I

.field private final s:Ljava/lang/Object;

.field private final t:Lcom/google/android/gms/internal/ads/zzaks;

.field private u:Ljava/lang/Integer;

.field private v:Lcom/google/android/gms/internal/ads/zzakr;

.field private w:Z

.field private x:Lcom/google/android/gms/internal/ads/zzajx;

.field private y:Lcom/google/android/gms/internal/ads/zzakn;

.field private final z:Lcom/google/android/gms/internal/ads/zzakc;


# direct methods
.method public constructor <init>(ILjava/lang/String;Lcom/google/android/gms/internal/ads/zzaks;)V
    .registers 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-boolean v0, Lcom/google/android/gms/internal/ads/zzakz;->c:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_e

    new-instance v0, Lcom/google/android/gms/internal/ads/zzakz;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzakz;-><init>()V

    goto :goto_f

    :cond_e
    move-object v0, v1

    :goto_f
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzako;->o:Lcom/google/android/gms/internal/ads/zzakz;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzako;->s:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzako;->w:Z

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzako;->x:Lcom/google/android/gms/internal/ads/zzajx;

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzako;->p:I

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzako;->q:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzako;->t:Lcom/google/android/gms/internal/ads/zzaks;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzakc;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzakc;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzako;->z:Lcom/google/android/gms/internal/ads/zzakc;

    .line 2
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_40

    .line 3
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_40

    .line 4
    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_40

    .line 5
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    :cond_40
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzako;->r:I

    return-void
.end method

.method static bridge synthetic l(Lcom/google/android/gms/internal/ads/zzako;)Lcom/google/android/gms/internal/ads/zzakz;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzako;->o:Lcom/google/android/gms/internal/ads/zzakz;

    return-object p0
.end method


# virtual methods
.method final I()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzako;->s:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzako;->y:Lcom/google/android/gms/internal/ads/zzakn;

    monitor-exit v0
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_c

    if-eqz v1, :cond_b

    .line 2
    invoke-interface {v1, p0}, Lcom/google/android/gms/internal/ads/zzakn;->a(Lcom/google/android/gms/internal/ads/zzako;)V

    :cond_b
    return-void

    :catchall_c
    move-exception v1

    .line 3
    :try_start_d
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_d .. :try_end_e} :catchall_c

    throw v1
.end method

.method final J(Lcom/google/android/gms/internal/ads/zzaku;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzako;->s:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzako;->y:Lcom/google/android/gms/internal/ads/zzakn;

    monitor-exit v0
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_c

    if-eqz v1, :cond_b

    .line 2
    invoke-interface {v1, p0, p1}, Lcom/google/android/gms/internal/ads/zzakn;->b(Lcom/google/android/gms/internal/ads/zzako;Lcom/google/android/gms/internal/ads/zzaku;)V

    :cond_b
    return-void

    :catchall_c
    move-exception p1

    .line 3
    :try_start_d
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_d .. :try_end_e} :catchall_c

    throw p1
.end method

.method final K(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzako;->v:Lcom/google/android/gms/internal/ads/zzakr;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzakr;->c(Lcom/google/android/gms/internal/ads/zzako;I)V

    :cond_7
    return-void
.end method

.method final L(Lcom/google/android/gms/internal/ads/zzakn;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzako;->s:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzako;->y:Lcom/google/android/gms/internal/ads/zzakn;

    monitor-exit v0

    return-void

    :catchall_7
    move-exception p1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p1
.end method

.method public final M()Z
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzako;->s:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzako;->w:Z

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

.method public final N()Z
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzako;->s:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    monitor-exit v0

    const/4 v0, 0x0

    return v0

    :catchall_6
    move-exception v1

    .line 2
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_6

    throw v1
.end method

.method public O()[B
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzajw;
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public final P()Lcom/google/android/gms/internal/ads/zzakc;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzako;->z:Lcom/google/android/gms/internal/ads/zzakc;

    return-object v0
.end method

.method public final c()I
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzako;->z:Lcom/google/android/gms/internal/ads/zzakc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzakc;->b()I

    move-result v0

    return v0
.end method

.method public final bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 3

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzako;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzako;->u:Ljava/lang/Integer;

    .line 2
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzako;->u:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    sub-int/2addr v0, p1

    return v0
.end method

.method public final e()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzako;->r:I

    return v0
.end method

.method public final f()Lcom/google/android/gms/internal/ads/zzajx;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzako;->x:Lcom/google/android/gms/internal/ads/zzajx;

    return-object v0
.end method

.method public final g(Lcom/google/android/gms/internal/ads/zzajx;)Lcom/google/android/gms/internal/ads/zzako;
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzako;->x:Lcom/google/android/gms/internal/ads/zzajx;

    return-object p0
.end method

.method public final i(Lcom/google/android/gms/internal/ads/zzakr;)Lcom/google/android/gms/internal/ads/zzako;
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzako;->v:Lcom/google/android/gms/internal/ads/zzakr;

    return-object p0
.end method

.method public final j(I)Lcom/google/android/gms/internal/ads/zzako;
    .registers 2

    .line 1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzako;->u:Ljava/lang/Integer;

    return-object p0
.end method

.method protected abstract k(Lcom/google/android/gms/internal/ads/zzakk;)Lcom/google/android/gms/internal/ads/zzaku;
.end method

.method public final m()Ljava/lang/String;
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzako;->q:Ljava/lang/String;

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzako;->p:I

    if-eqz v1, :cond_1f

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1f
    return-object v0
.end method

.method public final n()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzako;->q:Ljava/lang/String;

    return-object v0
.end method

.method public o()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzajw;
        }
    .end annotation

    .line 1
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final p(Ljava/lang/String;)V
    .registers 5

    .line 1
    sget-boolean v0, Lcom/google/android/gms/internal/ads/zzakz;->c:Z

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzako;->o:Lcom/google/android/gms/internal/ads/zzakz;

    .line 2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    invoke-virtual {v0, p1, v1, v2}, Lcom/google/android/gms/internal/ads/zzakz;->a(Ljava/lang/String;J)V

    :cond_11
    return-void
.end method

.method public final q(Lcom/google/android/gms/internal/ads/zzakx;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzako;->s:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzako;->t:Lcom/google/android/gms/internal/ads/zzaks;

    monitor-exit v0
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_c

    if-eqz v1, :cond_b

    .line 2
    invoke-interface {v1, p1}, Lcom/google/android/gms/internal/ads/zzaks;->a(Lcom/google/android/gms/internal/ads/zzakx;)V

    :cond_b
    return-void

    :catchall_c
    move-exception p1

    .line 3
    :try_start_d
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_d .. :try_end_e} :catchall_c

    throw p1
.end method

.method protected abstract r(Ljava/lang/Object;)V
.end method

.method final s(Ljava/lang/String;)V
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzako;->v:Lcom/google/android/gms/internal/ads/zzakr;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/zzakr;->b(Lcom/google/android/gms/internal/ads/zzako;)V

    .line 2
    :cond_7
    sget-boolean v0, Lcom/google/android/gms/internal/ads/zzakz;->c:Z

    if-eqz v0, :cond_3d

    .line 3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    .line 4
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    if-eq v2, v3, :cond_2f

    new-instance v2, Landroid/os/Handler;

    .line 5
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v3, Lcom/google/android/gms/internal/ads/zzakm;

    invoke-direct {v3, p0, p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzakm;-><init>(Lcom/google/android/gms/internal/ads/zzako;Ljava/lang/String;J)V

    .line 6
    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_2f
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzako;->o:Lcom/google/android/gms/internal/ads/zzakz;

    .line 7
    invoke-virtual {v2, p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzakz;->a(Ljava/lang/String;J)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzako;->o:Lcom/google/android/gms/internal/ads/zzakz;

    .line 8
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzako;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzakz;->b(Ljava/lang/String;)V

    :cond_3d
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .registers 6

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzako;->r:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzako;->N()Z

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzako;->q:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzako;->u:Ljava/lang/Integer;

    new-instance v3, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[ ] "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "0x"

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " NORMAL "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final u()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzako;->s:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_4
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzako;->w:Z

    monitor-exit v0

    return-void

    :catchall_8
    move-exception v1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_8

    throw v1
.end method

.method public final zza()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzako;->p:I

    return v0
.end method
