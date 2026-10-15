###### Class com.google.android.gms.common.api.internal.h (com.google.android.gms.common.api.internal.h)
.class final Lcom/google/android/gms/common/api/internal/h;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-base@@18.0.1"

# interfaces
.implements Lcom/google/android/gms/common/internal/BaseGmsClient$ConnectionProgressReportCallbacks;


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/google/android/gms/common/api/internal/zaaw;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/google/android/gms/common/api/Api;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api<",
            "*>;"
        }
    .end annotation
.end field

.field private final c:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/internal/zaaw;Lcom/google/android/gms/common/api/Api;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/internal/zaaw;",
            "Lcom/google/android/gms/common/api/Api<",
            "*>;Z)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/h;->a:Ljava/lang/ref/WeakReference;

    iput-object p2, p0, Lcom/google/android/gms/common/api/internal/h;->b:Lcom/google/android/gms/common/api/Api;

    iput-boolean p3, p0, Lcom/google/android/gms/common/api/internal/h;->c:Z

    return-void
.end method

.method static bridge synthetic b(Lcom/google/android/gms/common/api/internal/h;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/google/android/gms/common/api/internal/h;->c:Z

    return p0
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/common/ConnectionResult;)V
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/h;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/internal/zaaw;

    if-nez v0, :cond_b

    return-void

    .line 2
    :cond_b
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/zaaw;->u(Lcom/google/android/gms/common/api/internal/zaaw;)Lcom/google/android/gms/common/api/internal/zabi;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/gms/common/api/internal/zabi;->B:Lcom/google/android/gms/common/api/internal/zabe;

    invoke-virtual {v2}, Lcom/google/android/gms/common/api/GoogleApiClient;->j()Landroid/os/Looper;

    move-result-object v2

    const/4 v3, 0x0

    if-ne v1, v2, :cond_1e

    const/4 v1, 0x1

    goto :goto_1f

    :cond_1e
    const/4 v1, 0x0

    :goto_1f
    const-string v2, "onReportServiceBinding must be called on the GoogleApiClient handler thread"

    .line 3
    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/Preconditions;->o(ZLjava/lang/Object;)V

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/zaaw;->z(Lcom/google/android/gms/common/api/internal/zaaw;)Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    .line 4
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 5
    :try_start_2b
    invoke-static {v0, v3}, Lcom/google/android/gms/common/api/internal/zaaw;->G(Lcom/google/android/gms/common/api/internal/zaaw;I)Z

    move-result v1
    :try_end_2f
    .catchall {:try_start_2b .. :try_end_2f} :catchall_54

    if-nez v1, :cond_39

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/zaaw;->z(Lcom/google/android/gms/common/api/internal/zaaw;)Ljava/util/concurrent/locks/Lock;

    move-result-object p1

    .line 6
    :goto_35
    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    .line 7
    :cond_39
    :try_start_39
    invoke-virtual {p1}, Lcom/google/android/gms/common/ConnectionResult;->Z3()Z

    move-result v1

    if-nez v1, :cond_46

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/h;->b:Lcom/google/android/gms/common/api/Api;

    iget-boolean v2, p0, Lcom/google/android/gms/common/api/internal/h;->c:Z

    .line 8
    invoke-static {v0, p1, v1, v2}, Lcom/google/android/gms/common/api/internal/zaaw;->D(Lcom/google/android/gms/common/api/internal/zaaw;Lcom/google/android/gms/common/ConnectionResult;Lcom/google/android/gms/common/api/Api;Z)V

    .line 9
    :cond_46
    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/zaaw;->H(Lcom/google/android/gms/common/api/internal/zaaw;)Z

    move-result p1

    if-eqz p1, :cond_4f

    .line 10
    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/zaaw;->E(Lcom/google/android/gms/common/api/internal/zaaw;)V
    :try_end_4f
    .catchall {:try_start_39 .. :try_end_4f} :catchall_54

    :cond_4f
    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/zaaw;->z(Lcom/google/android/gms/common/api/internal/zaaw;)Ljava/util/concurrent/locks/Lock;

    move-result-object p1

    goto :goto_35

    :catchall_54
    move-exception p1

    .line 11
    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/zaaw;->z(Lcom/google/android/gms/common/api/internal/zaaw;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 12
    goto :goto_5e

    :goto_5d
    throw p1

    :goto_5e
    goto :goto_5d
.end method
