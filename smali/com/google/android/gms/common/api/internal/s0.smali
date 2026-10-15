###### Class com.google.android.gms.common.api.internal.s0 (com.google.android.gms.common.api.internal.s0)
.class final Lcom/google/android/gms/common/api/internal/s0;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-base@@18.0.1"

# interfaces
.implements Lcom/google/android/gms/common/api/internal/zabz;


# instance fields
.field final synthetic a:Lcom/google/android/gms/common/api/internal/a;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/common/api/internal/a;Lcom/google/android/gms/common/api/internal/zay;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/s0;->a:Lcom/google/android/gms/common/api/internal/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/os/Bundle;)V
    .registers 3

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/s0;->a:Lcom/google/android/gms/common/api/internal/a;

    invoke-static {p1}, Lcom/google/android/gms/common/api/internal/a;->r(Lcom/google/android/gms/common/api/internal/a;)Ljava/util/concurrent/locks/Lock;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_9
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/s0;->a:Lcom/google/android/gms/common/api/internal/a;

    .line 2
    sget-object v0, Lcom/google/android/gms/common/ConnectionResult;->s:Lcom/google/android/gms/common/ConnectionResult;

    invoke-static {p1, v0}, Lcom/google/android/gms/common/api/internal/a;->t(Lcom/google/android/gms/common/api/internal/a;Lcom/google/android/gms/common/ConnectionResult;)V

    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/s0;->a:Lcom/google/android/gms/common/api/internal/a;

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/common/api/internal/a;->x(Lcom/google/android/gms/common/api/internal/a;)V
    :try_end_15
    .catchall {:try_start_9 .. :try_end_15} :catchall_1f

    .line 4
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/s0;->a:Lcom/google/android/gms/common/api/internal/a;

    invoke-static {p1}, Lcom/google/android/gms/common/api/internal/a;->r(Lcom/google/android/gms/common/api/internal/a;)Ljava/util/concurrent/locks/Lock;

    move-result-object p1

    .line 5
    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_1f
    move-exception p1

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/s0;->a:Lcom/google/android/gms/common/api/internal/a;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/a;->r(Lcom/google/android/gms/common/api/internal/a;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 8
    throw p1
.end method

.method public final b(IZ)V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/s0;->a:Lcom/google/android/gms/common/api/internal/a;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/a;->r(Lcom/google/android/gms/common/api/internal/a;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_9
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/s0;->a:Lcom/google/android/gms/common/api/internal/a;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/a;->y(Lcom/google/android/gms/common/api/internal/a;)Z

    move-result v1

    if-eqz v1, :cond_24

    const/4 v1, 0x0

    .line 2
    invoke-static {v0, v1}, Lcom/google/android/gms/common/api/internal/a;->u(Lcom/google/android/gms/common/api/internal/a;Z)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/s0;->a:Lcom/google/android/gms/common/api/internal/a;

    .line 3
    invoke-static {v0, p1, p2}, Lcom/google/android/gms/common/api/internal/a;->v(Lcom/google/android/gms/common/api/internal/a;IZ)V
    :try_end_1a
    .catchall {:try_start_9 .. :try_end_1a} :catchall_38

    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/s0;->a:Lcom/google/android/gms/common/api/internal/a;

    invoke-static {p1}, Lcom/google/android/gms/common/api/internal/a;->r(Lcom/google/android/gms/common/api/internal/a;)Ljava/util/concurrent/locks/Lock;

    move-result-object p1

    .line 4
    :goto_20
    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :cond_24
    const/4 p2, 0x1

    .line 5
    :try_start_25
    invoke-static {v0, p2}, Lcom/google/android/gms/common/api/internal/a;->u(Lcom/google/android/gms/common/api/internal/a;Z)V

    iget-object p2, p0, Lcom/google/android/gms/common/api/internal/s0;->a:Lcom/google/android/gms/common/api/internal/a;

    invoke-static {p2}, Lcom/google/android/gms/common/api/internal/a;->p(Lcom/google/android/gms/common/api/internal/a;)Lcom/google/android/gms/common/api/internal/zabi;

    move-result-object p2

    .line 6
    invoke-virtual {p2, p1}, Lcom/google/android/gms/common/api/internal/zabi;->P0(I)V
    :try_end_31
    .catchall {:try_start_25 .. :try_end_31} :catchall_38

    .line 7
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/s0;->a:Lcom/google/android/gms/common/api/internal/a;

    invoke-static {p1}, Lcom/google/android/gms/common/api/internal/a;->r(Lcom/google/android/gms/common/api/internal/a;)Ljava/util/concurrent/locks/Lock;

    move-result-object p1

    goto :goto_20

    :catchall_38
    move-exception p1

    .line 8
    iget-object p2, p0, Lcom/google/android/gms/common/api/internal/s0;->a:Lcom/google/android/gms/common/api/internal/a;

    invoke-static {p2}, Lcom/google/android/gms/common/api/internal/a;->r(Lcom/google/android/gms/common/api/internal/a;)Ljava/util/concurrent/locks/Lock;

    move-result-object p2

    .line 9
    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 10
    goto :goto_44

    :goto_43
    throw p1

    :goto_44
    goto :goto_43
.end method

.method public final c(Lcom/google/android/gms/common/ConnectionResult;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/s0;->a:Lcom/google/android/gms/common/api/internal/a;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/a;->r(Lcom/google/android/gms/common/api/internal/a;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_9
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/s0;->a:Lcom/google/android/gms/common/api/internal/a;

    .line 2
    invoke-static {v0, p1}, Lcom/google/android/gms/common/api/internal/a;->t(Lcom/google/android/gms/common/api/internal/a;Lcom/google/android/gms/common/ConnectionResult;)V

    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/s0;->a:Lcom/google/android/gms/common/api/internal/a;

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/common/api/internal/a;->x(Lcom/google/android/gms/common/api/internal/a;)V
    :try_end_13
    .catchall {:try_start_9 .. :try_end_13} :catchall_1d

    .line 4
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/s0;->a:Lcom/google/android/gms/common/api/internal/a;

    invoke-static {p1}, Lcom/google/android/gms/common/api/internal/a;->r(Lcom/google/android/gms/common/api/internal/a;)Ljava/util/concurrent/locks/Lock;

    move-result-object p1

    .line 5
    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_1d
    move-exception p1

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/s0;->a:Lcom/google/android/gms/common/api/internal/a;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/a;->r(Lcom/google/android/gms/common/api/internal/a;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 8
    throw p1
.end method
