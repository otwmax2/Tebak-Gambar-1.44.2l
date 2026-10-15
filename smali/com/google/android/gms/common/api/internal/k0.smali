###### Class com.google.android.gms.common.api.internal.k0 (com.google.android.gms.common.api.internal.k0)
.class final Lcom/google/android/gms/common/api/internal/k0;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-base@@18.0.1"

# interfaces
.implements Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;


# instance fields
.field public final o:I

.field public final p:Lcom/google/android/gms/common/api/GoogleApiClient;

.field public final q:Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;

.field final synthetic r:Lcom/google/android/gms/common/api/internal/zak;


# virtual methods
.method public final X0(Lcom/google/android/gms/common/ConnectionResult;)V
    .registers 4

    .line 1
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "beginFailureResolution for "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "AutoManageHelper"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/k0;->r:Lcom/google/android/gms/common/api/internal/zak;

    iget v1, p0, Lcom/google/android/gms/common/api/internal/k0;->o:I

    .line 2
    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/common/api/internal/zap;->s(Lcom/google/android/gms/common/ConnectionResult;I)V

    return-void
.end method
