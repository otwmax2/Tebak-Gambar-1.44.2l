###### Class com.google.android.gms.auth.api.signin.internal.h (com.google.android.gms.auth.api.signin.internal.h)
.class final Lcom/google/android/gms/auth/api/signin/internal/h;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-auth@@20.2.0"

# interfaces
.implements Landroidx/loader/app/a$a;


# instance fields
.field final synthetic a:Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity;Lcom/google/android/gms/auth/api/signin/internal/zbv;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/auth/api/signin/internal/h;->a:Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lt0/b;)V
    .registers 2

    return-void
.end method

.method public final b(ILandroid/os/Bundle;)Lt0/b;
    .registers 4

    .line 1
    new-instance p1, Lcom/google/android/gms/auth/api/signin/internal/zbc;

    iget-object p2, p0, Lcom/google/android/gms/auth/api/signin/internal/h;->a:Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity;

    .line 2
    invoke-static {}, Lcom/google/android/gms/common/api/GoogleApiClient;->i()Ljava/util/Set;

    move-result-object v0

    invoke-direct {p1, p2, v0}, Lcom/google/android/gms/auth/api/signin/internal/zbc;-><init>(Landroid/content/Context;Ljava/util/Set;)V

    return-object p1
.end method

.method public final bridge synthetic c(Lt0/b;Ljava/lang/Object;)V
    .registers 4

    .line 1
    check-cast p2, Ljava/lang/Void;

    iget-object p1, p0, Lcom/google/android/gms/auth/api/signin/internal/h;->a:Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity;

    invoke-static {p1}, Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity;->C(Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity;)I

    move-result p2

    invoke-static {p1}, Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity;->D(Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity;)Landroid/content/Intent;

    move-result-object v0

    .line 2
    invoke-virtual {p1, p2, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    iget-object p1, p0, Lcom/google/android/gms/auth/api/signin/internal/h;->a:Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity;

    .line 3
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method
