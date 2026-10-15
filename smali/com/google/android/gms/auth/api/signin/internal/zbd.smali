###### Class com.google.android.gms.auth.api.signin.internal.zbd (com.google.android.gms.auth.api.signin.internal.zbd)
.class public final Lcom/google/android/gms/auth/api/signin/internal/zbd;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-auth@@20.2.0"

# interfaces
.implements Lcom/google/android/gms/auth/api/signin/GoogleSignInApi;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Intent;)Lcom/google/android/gms/auth/api/signin/GoogleSignInResult;
    .registers 2

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/auth/api/signin/internal/zbm;->d(Landroid/content/Intent;)Lcom/google/android/gms/auth/api/signin/GoogleSignInResult;

    move-result-object p1

    return-object p1
.end method
