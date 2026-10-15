###### Class com.google.android.gms.common.api.internal.zat (com.google.android.gms.common.api.internal.zat)
.class public final Lcom/google/android/gms/common/api/internal/zat;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-base@@18.0.1"

# interfaces
.implements Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;
.implements Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;


# instance fields
.field public final o:Lcom/google/android/gms/common/api/Api;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api<",
            "*>;"
        }
    .end annotation
.end field

.field private final p:Z

.field private q:Lcom/google/android/gms/common/api/internal/zau;


# direct methods
.method private final b()Lcom/google/android/gms/common/api/internal/zau;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zat;->q:Lcom/google/android/gms/common/api/internal/zau;

    const-string v1, "Callbacks must be attached to a ClientConnectionHelper instance before connecting the client."

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->l(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zat;->q:Lcom/google/android/gms/common/api/internal/zau;

    return-object v0
.end method


# virtual methods
.method public final P0(I)V
    .registers 3

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/zat;->b()Lcom/google/android/gms/common/api/internal/zau;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/android/gms/common/api/internal/ConnectionCallbacks;->P0(I)V

    return-void
.end method

.method public final X0(Lcom/google/android/gms/common/ConnectionResult;)V
    .registers 5

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/zat;->b()Lcom/google/android/gms/common/api/internal/zau;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zat;->o:Lcom/google/android/gms/common/api/Api;

    iget-boolean v2, p0, Lcom/google/android/gms/common/api/internal/zat;->p:Z

    invoke-interface {v0, p1, v1, v2}, Lcom/google/android/gms/common/api/internal/zau;->Q4(Lcom/google/android/gms/common/ConnectionResult;Lcom/google/android/gms/common/api/Api;Z)V

    return-void
.end method

.method public final a(Lcom/google/android/gms/common/api/internal/zau;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zat;->q:Lcom/google/android/gms/common/api/internal/zau;

    return-void
.end method

.method public final t1(Landroid/os/Bundle;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/zat;->b()Lcom/google/android/gms/common/api/internal/zau;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/android/gms/common/api/internal/ConnectionCallbacks;->t1(Landroid/os/Bundle;)V

    return-void
.end method
