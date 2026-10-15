###### Class com.google.android.gms.common.api.internal.o (com.google.android.gms.common.api.internal.o)
.class final Lcom/google/android/gms/common/api/internal/o;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-base@@18.0.1"

# interfaces
.implements Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;
.implements Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;


# instance fields
.field final synthetic o:Lcom/google/android/gms/common/api/internal/zaaw;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/common/api/internal/zaaw;Lcom/google/android/gms/common/api/internal/zaas;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/o;->o:Lcom/google/android/gms/common/api/internal/zaaw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final P0(I)V
    .registers 2

    return-void
.end method

.method public final X0(Lcom/google/android/gms/common/ConnectionResult;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/o;->o:Lcom/google/android/gms/common/api/internal/zaaw;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/zaaw;->z(Lcom/google/android/gms/common/api/internal/zaaw;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_9
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/o;->o:Lcom/google/android/gms/common/api/internal/zaaw;

    .line 2
    invoke-static {v0, p1}, Lcom/google/android/gms/common/api/internal/zaaw;->I(Lcom/google/android/gms/common/api/internal/zaaw;Lcom/google/android/gms/common/ConnectionResult;)Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/o;->o:Lcom/google/android/gms/common/api/internal/zaaw;

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/common/api/internal/zaaw;->A(Lcom/google/android/gms/common/api/internal/zaaw;)V

    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/o;->o:Lcom/google/android/gms/common/api/internal/zaaw;

    .line 4
    invoke-static {p1}, Lcom/google/android/gms/common/api/internal/zaaw;->E(Lcom/google/android/gms/common/api/internal/zaaw;)V

    goto :goto_21

    .line 5
    :cond_1c
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/o;->o:Lcom/google/android/gms/common/api/internal/zaaw;

    .line 6
    invoke-static {v0, p1}, Lcom/google/android/gms/common/api/internal/zaaw;->C(Lcom/google/android/gms/common/api/internal/zaaw;Lcom/google/android/gms/common/ConnectionResult;)V
    :try_end_21
    .catchall {:try_start_9 .. :try_end_21} :catchall_2b

    .line 7
    :goto_21
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/o;->o:Lcom/google/android/gms/common/api/internal/zaaw;

    invoke-static {p1}, Lcom/google/android/gms/common/api/internal/zaaw;->z(Lcom/google/android/gms/common/api/internal/zaaw;)Ljava/util/concurrent/locks/Lock;

    move-result-object p1

    .line 8
    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_2b
    move-exception p1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/o;->o:Lcom/google/android/gms/common/api/internal/zaaw;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/zaaw;->z(Lcom/google/android/gms/common/api/internal/zaaw;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 9
    throw p1
.end method

.method public final t1(Landroid/os/Bundle;)V
    .registers 4

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/o;->o:Lcom/google/android/gms/common/api/internal/zaaw;

    invoke-static {p1}, Lcom/google/android/gms/common/api/internal/zaaw;->v(Lcom/google/android/gms/common/api/internal/zaaw;)Lcom/google/android/gms/common/internal/ClientSettings;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->k(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/internal/ClientSettings;

    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/o;->o:Lcom/google/android/gms/common/api/internal/zaaw;

    invoke-static {p1}, Lcom/google/android/gms/common/api/internal/zaaw;->x(Lcom/google/android/gms/common/api/internal/zaaw;)Lcom/google/android/gms/signin/zae;

    move-result-object p1

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->k(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/signin/zae;

    new-instance v0, Lcom/google/android/gms/common/api/internal/n;

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/o;->o:Lcom/google/android/gms/common/api/internal/zaaw;

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/internal/n;-><init>(Lcom/google/android/gms/common/api/internal/zaaw;)V

    .line 3
    invoke-interface {p1, v0}, Lcom/google/android/gms/signin/zae;->m(Lcom/google/android/gms/signin/internal/zae;)V

    return-void
.end method
