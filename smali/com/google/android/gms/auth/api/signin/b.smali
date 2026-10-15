###### Class com.google.android.gms.auth.api.signin.b (com.google.android.gms.auth.api.signin.b)
.class final Lcom/google/android/gms/auth/api/signin/b;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-auth@@20.2.0"

# interfaces
.implements Lcom/google/android/gms/common/internal/PendingResultUtil$ResultConverter;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/auth/api/signin/zba;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/google/android/gms/common/api/Result;)Ljava/lang/Object;
    .registers 2

    .line 1
    check-cast p1, Lcom/google/android/gms/auth/api/signin/GoogleSignInResult;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInResult;->a()Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    move-result-object p1

    return-object p1
.end method
