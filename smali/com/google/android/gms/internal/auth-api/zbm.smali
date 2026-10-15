###### Class com.google.android.gms.internal.p000authapi.zbm (com.google.android.gms.internal.auth-api.zbm)
.class abstract Lcom/google/android/gms/internal/auth-api/zbm;
.super Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;
.source "com.google.android.gms:play-services-auth@@20.2.0"


# virtual methods
.method public final bridge synthetic b(Ljava/lang/Object;)V
    .registers 2
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .line 1
    check-cast p1, Lcom/google/android/gms/common/api/Result;

    invoke-super {p0, p1}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->k(Lcom/google/android/gms/common/api/Result;)V

    return-void
.end method

.method protected final bridge synthetic s(Lcom/google/android/gms/common/api/Api$AnyClient;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/auth-api/zbo;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->D()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->I()Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/auth-api/zbt;

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/auth-api/zbm;->y(Landroid/content/Context;Lcom/google/android/gms/internal/auth-api/zbt;)V

    return-void
.end method

.method protected abstract y(Landroid/content/Context;Lcom/google/android/gms/internal/auth-api/zbt;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/DeadObjectException;,
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
