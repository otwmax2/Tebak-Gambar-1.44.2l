###### Class com.google.android.gms.internal.p000authapi.zbap (com.google.android.gms.internal.auth-api.zbap)
.class public final synthetic Lcom/google/android/gms/internal/auth-api/zbap;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-auth@@20.2.0"

# interfaces
.implements Lcom/google/android/gms/common/api/internal/RemoteCall;


# instance fields
.field public final synthetic a:Lcom/google/android/gms/internal/auth-api/zbay;

.field public final synthetic b:Lcom/google/android/gms/auth/api/identity/BeginSignInRequest;


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 6

    iget-object v0, p0, Lcom/google/android/gms/internal/auth-api/zbap;->a:Lcom/google/android/gms/internal/auth-api/zbay;

    iget-object v1, p0, Lcom/google/android/gms/internal/auth-api/zbap;->b:Lcom/google/android/gms/auth/api/identity/BeginSignInRequest;

    check-cast p1, Lcom/google/android/gms/internal/auth-api/zbaz;

    check-cast p2, Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 1
    new-instance v2, Lcom/google/android/gms/internal/auth-api/zbau;

    invoke-direct {v2, v0, p2}, Lcom/google/android/gms/internal/auth-api/zbau;-><init>(Lcom/google/android/gms/internal/auth-api/zbay;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->I()Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/auth-api/zbai;

    .line 3
    invoke-static {v1}, Lcom/google/android/gms/common/internal/Preconditions;->k(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/auth/api/identity/BeginSignInRequest;

    .line 4
    invoke-virtual {p1, v2, p2}, Lcom/google/android/gms/internal/auth-api/zbai;->t1(Lcom/google/android/gms/internal/auth-api/zby;Lcom/google/android/gms/auth/api/identity/BeginSignInRequest;)V

    return-void
.end method
