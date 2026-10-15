###### Class com.google.android.gms.common.api.internal.g0 (com.google.android.gms.common.api.internal.g0)
.class final Lcom/google/android/gms/common/api/internal/g0;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-base@@18.0.1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic o:Lcom/google/android/gms/common/api/Result;

.field final synthetic p:Lcom/google/android/gms/common/api/internal/zada;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/internal/zada;Lcom/google/android/gms/common/api/Result;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/g0;->p:Lcom/google/android/gms/common/api/internal/zada;

    iput-object p2, p0, Lcom/google/android/gms/common/api/internal/g0;->o:Lcom/google/android/gms/common/api/Result;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    const/4 v0, 0x0

    .line 1
    :try_start_1
    sget-object v1, Lcom/google/android/gms/common/api/internal/BasePendingResult;->p:Ljava/lang/ThreadLocal;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/g0;->p:Lcom/google/android/gms/common/api/internal/zada;

    invoke-static {v1}, Lcom/google/android/gms/common/api/internal/zada;->b(Lcom/google/android/gms/common/api/internal/zada;)Lcom/google/android/gms/common/api/ResultTransform;

    move-result-object v1

    .line 2
    invoke-static {v1}, Lcom/google/android/gms/common/internal/Preconditions;->k(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/common/api/ResultTransform;

    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/g0;->o:Lcom/google/android/gms/common/api/Result;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/common/api/ResultTransform;->b(Lcom/google/android/gms/common/api/Result;)Lcom/google/android/gms/common/api/PendingResult;

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/g0;->p:Lcom/google/android/gms/common/api/internal/zada;

    invoke-static {v1}, Lcom/google/android/gms/common/api/internal/zada;->c(Lcom/google/android/gms/common/api/internal/zada;)Lcom/google/android/gms/common/api/internal/h0;

    invoke-static {v1}, Lcom/google/android/gms/common/api/internal/zada;->c(Lcom/google/android/gms/common/api/internal/zada;)Lcom/google/android/gms/common/api/internal/h0;

    .line 3
    throw v0
    :try_end_22
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_22} :catch_24
    .catchall {:try_start_1 .. :try_end_22} :catchall_22

    :catchall_22
    move-exception v0

    goto :goto_2d

    .line 4
    :catch_24
    :try_start_24
    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/g0;->p:Lcom/google/android/gms/common/api/internal/zada;

    invoke-static {v1}, Lcom/google/android/gms/common/api/internal/zada;->c(Lcom/google/android/gms/common/api/internal/zada;)Lcom/google/android/gms/common/api/internal/h0;

    invoke-static {v1}, Lcom/google/android/gms/common/api/internal/zada;->c(Lcom/google/android/gms/common/api/internal/zada;)Lcom/google/android/gms/common/api/internal/h0;

    .line 5
    throw v0
    :try_end_2d
    .catchall {:try_start_24 .. :try_end_2d} :catchall_22

    .line 6
    :goto_2d
    sget-object v1, Lcom/google/android/gms/common/api/internal/BasePendingResult;->p:Ljava/lang/ThreadLocal;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/g0;->p:Lcom/google/android/gms/common/api/internal/zada;

    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/g0;->o:Lcom/google/android/gms/common/api/Result;

    .line 7
    invoke-static {v1, v2}, Lcom/google/android/gms/common/api/internal/zada;->e(Lcom/google/android/gms/common/api/internal/zada;Lcom/google/android/gms/common/api/Result;)V

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/g0;->p:Lcom/google/android/gms/common/api/internal/zada;

    invoke-static {v1}, Lcom/google/android/gms/common/api/internal/zada;->d(Lcom/google/android/gms/common/api/internal/zada;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    .line 8
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/common/api/GoogleApiClient;

    if-nez v1, :cond_4a

    goto :goto_4f

    .line 9
    :cond_4a
    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/g0;->p:Lcom/google/android/gms/common/api/internal/zada;

    .line 10
    invoke-virtual {v1, v2}, Lcom/google/android/gms/common/api/GoogleApiClient;->n(Lcom/google/android/gms/common/api/internal/zada;)V

    .line 11
    :goto_4f
    throw v0
.end method
