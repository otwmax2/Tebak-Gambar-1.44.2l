###### Class com.google.android.gms.common.api.internal.q0 (com.google.android.gms.common.api.internal.q0)
.class final Lcom/google/android/gms/common/api/internal/q0;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-base@@18.0.1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic o:Lcom/google/android/gms/common/api/internal/a;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/internal/a;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/q0;->o:Lcom/google/android/gms/common/api/internal/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/q0;->o:Lcom/google/android/gms/common/api/internal/a;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/a;->r(Lcom/google/android/gms/common/api/internal/a;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_9
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/q0;->o:Lcom/google/android/gms/common/api/internal/a;

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/a;->x(Lcom/google/android/gms/common/api/internal/a;)V
    :try_end_e
    .catchall {:try_start_9 .. :try_end_e} :catchall_18

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/q0;->o:Lcom/google/android/gms/common/api/internal/a;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/a;->r(Lcom/google/android/gms/common/api/internal/a;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    .line 4
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_18
    move-exception v0

    .line 5
    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/q0;->o:Lcom/google/android/gms/common/api/internal/a;

    invoke-static {v1}, Lcom/google/android/gms/common/api/internal/a;->r(Lcom/google/android/gms/common/api/internal/a;)Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    .line 6
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 7
    throw v0
.end method
