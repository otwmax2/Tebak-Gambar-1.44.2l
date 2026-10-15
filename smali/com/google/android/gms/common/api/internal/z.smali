###### Class com.google.android.gms.common.api.internal.z (com.google.android.gms.common.api.internal.z)
.class final Lcom/google/android/gms/common/api/internal/z;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-base@@18.0.1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic o:Lcom/google/android/gms/common/ConnectionResult;

.field final synthetic p:Lcom/google/android/gms/common/api/internal/a0;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/internal/a0;Lcom/google/android/gms/common/ConnectionResult;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/z;->p:Lcom/google/android/gms/common/api/internal/a0;

    iput-object p2, p0, Lcom/google/android/gms/common/api/internal/z;->o:Lcom/google/android/gms/common/ConnectionResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/z;->p:Lcom/google/android/gms/common/api/internal/a0;

    iget-object v1, v0, Lcom/google/android/gms/common/api/internal/a0;->f:Lcom/google/android/gms/common/api/internal/GoogleApiManager;

    invoke-static {v1}, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->C(Lcom/google/android/gms/common/api/internal/GoogleApiManager;)Ljava/util/Map;

    move-result-object v1

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/a0;->e(Lcom/google/android/gms/common/api/internal/a0;)Lcom/google/android/gms/common/api/internal/ApiKey;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/internal/zabq;

    if-nez v0, :cond_15

    return-void

    :cond_15
    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/z;->o:Lcom/google/android/gms/common/ConnectionResult;

    .line 2
    invoke-virtual {v1}, Lcom/google/android/gms/common/ConnectionResult;->Z3()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_66

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/z;->p:Lcom/google/android/gms/common/api/internal/a0;

    const/4 v3, 0x1

    .line 3
    invoke-static {v1, v3}, Lcom/google/android/gms/common/api/internal/a0;->f(Lcom/google/android/gms/common/api/internal/a0;Z)V

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/z;->p:Lcom/google/android/gms/common/api/internal/a0;

    invoke-static {v1}, Lcom/google/android/gms/common/api/internal/a0;->d(Lcom/google/android/gms/common/api/internal/a0;)Lcom/google/android/gms/common/api/Api$Client;

    move-result-object v1

    .line 4
    invoke-interface {v1}, Lcom/google/android/gms/common/api/Api$Client;->t()Z

    move-result v1

    if-eqz v1, :cond_36

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/z;->p:Lcom/google/android/gms/common/api/internal/a0;

    .line 5
    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/a0;->g(Lcom/google/android/gms/common/api/internal/a0;)V

    return-void

    :cond_36
    :try_start_36
    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/z;->p:Lcom/google/android/gms/common/api/internal/a0;

    invoke-static {v1}, Lcom/google/android/gms/common/api/internal/a0;->d(Lcom/google/android/gms/common/api/internal/a0;)Lcom/google/android/gms/common/api/Api$Client;

    move-result-object v3

    invoke-static {v1}, Lcom/google/android/gms/common/api/internal/a0;->d(Lcom/google/android/gms/common/api/internal/a0;)Lcom/google/android/gms/common/api/Api$Client;

    move-result-object v1

    .line 6
    invoke-interface {v1}, Lcom/google/android/gms/common/api/Api$Client;->c()Ljava/util/Set;

    move-result-object v1

    .line 7
    invoke-interface {v3, v2, v1}, Lcom/google/android/gms/common/api/Api$Client;->d(Lcom/google/android/gms/common/internal/IAccountAccessor;Ljava/util/Set;)V
    :try_end_47
    .catch Ljava/lang/SecurityException; {:try_start_36 .. :try_end_47} :catch_48

    return-void

    :catch_48
    move-exception v1

    const-string v3, "GoogleApiManager"

    const-string v4, "Failed to get service from broker. "

    .line 8
    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/z;->p:Lcom/google/android/gms/common/api/internal/a0;

    invoke-static {v1}, Lcom/google/android/gms/common/api/internal/a0;->d(Lcom/google/android/gms/common/api/internal/a0;)Lcom/google/android/gms/common/api/Api$Client;

    move-result-object v1

    const-string v3, "Failed to get service from broker."

    .line 9
    invoke-interface {v1, v3}, Lcom/google/android/gms/common/api/Api$Client;->e(Ljava/lang/String;)V

    new-instance v1, Lcom/google/android/gms/common/ConnectionResult;

    const/16 v3, 0xa

    .line 10
    invoke-direct {v1, v3}, Lcom/google/android/gms/common/ConnectionResult;-><init>(I)V

    .line 11
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/api/internal/zabq;->E(Lcom/google/android/gms/common/ConnectionResult;Ljava/lang/Exception;)V

    return-void

    .line 12
    :cond_66
    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/z;->o:Lcom/google/android/gms/common/ConnectionResult;

    .line 13
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/api/internal/zabq;->E(Lcom/google/android/gms/common/ConnectionResult;Ljava/lang/Exception;)V

    return-void
.end method
