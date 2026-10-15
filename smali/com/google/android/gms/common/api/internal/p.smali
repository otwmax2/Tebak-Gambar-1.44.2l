###### Class com.google.android.gms.common.api.internal.p (com.google.android.gms.common.api.internal.p)
.class abstract Lcom/google/android/gms/common/api/internal/p;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-base@@18.0.1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic o:Lcom/google/android/gms/common/api/internal/zaaw;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/common/api/internal/zaaw;Lcom/google/android/gms/common/api/internal/zaau;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/p;->o:Lcom/google/android/gms/common/api/internal/zaaw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract a()V
.end method

.method public final run()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/p;->o:Lcom/google/android/gms/common/api/internal/zaaw;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/zaaw;->z(Lcom/google/android/gms/common/api/internal/zaaw;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 2
    :try_start_9
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0
    :try_end_d
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_d} :catch_25
    .catchall {:try_start_9 .. :try_end_d} :catchall_23

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/p;->o:Lcom/google/android/gms/common/api/internal/zaaw;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/zaaw;->z(Lcom/google/android/gms/common/api/internal/zaaw;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    .line 3
    :goto_15
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    .line 4
    :cond_19
    :try_start_19
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/p;->a()V
    :try_end_1c
    .catch Ljava/lang/RuntimeException; {:try_start_19 .. :try_end_1c} :catch_25
    .catchall {:try_start_19 .. :try_end_1c} :catchall_23

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/p;->o:Lcom/google/android/gms/common/api/internal/zaaw;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/zaaw;->z(Lcom/google/android/gms/common/api/internal/zaaw;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    goto :goto_15

    :catchall_23
    move-exception v0

    goto :goto_36

    :catch_25
    move-exception v0

    .line 5
    :try_start_26
    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/p;->o:Lcom/google/android/gms/common/api/internal/zaaw;

    invoke-static {v1}, Lcom/google/android/gms/common/api/internal/zaaw;->u(Lcom/google/android/gms/common/api/internal/zaaw;)Lcom/google/android/gms/common/api/internal/zabi;

    move-result-object v1

    .line 6
    invoke-virtual {v1, v0}, Lcom/google/android/gms/common/api/internal/zabi;->o(Ljava/lang/RuntimeException;)V
    :try_end_2f
    .catchall {:try_start_26 .. :try_end_2f} :catchall_23

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/p;->o:Lcom/google/android/gms/common/api/internal/zaaw;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/zaaw;->z(Lcom/google/android/gms/common/api/internal/zaaw;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    goto :goto_15

    .line 8
    :goto_36
    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/p;->o:Lcom/google/android/gms/common/api/internal/zaaw;

    invoke-static {v1}, Lcom/google/android/gms/common/api/internal/zaaw;->z(Lcom/google/android/gms/common/api/internal/zaaw;)Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    .line 9
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 10
    goto :goto_41

    :goto_40
    throw v0

    :goto_41
    goto :goto_40
.end method
