###### Class com.google.android.gms.auth.api.signin.internal.a (com.google.android.gms.auth.api.signin.internal.a)
.class final Lcom/google/android/gms/auth/api/signin/internal/a;
.super Lcom/google/android/gms/auth/api/signin/internal/zba;
.source "com.google.android.gms:play-services-auth@@20.2.0"


# instance fields
.field final synthetic o:Lcom/google/android/gms/auth/api/signin/internal/b;


# direct methods
.method constructor <init>(Lcom/google/android/gms/auth/api/signin/internal/b;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/auth/api/signin/internal/a;->o:Lcom/google/android/gms/auth/api/signin/internal/b;

    invoke-direct {p0}, Lcom/google/android/gms/auth/api/signin/internal/zba;-><init>()V

    return-void
.end method


# virtual methods
.method public final i6(Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;Lcom/google/android/gms/common/api/Status;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    if-eqz p1, :cond_11

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/auth/api/signin/internal/a;->o:Lcom/google/android/gms/auth/api/signin/internal/b;

    iget-object v0, v0, Lcom/google/android/gms/auth/api/signin/internal/b;->t:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/auth/api/signin/internal/zbn;->c(Landroid/content/Context;)Lcom/google/android/gms/auth/api/signin/internal/zbn;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/auth/api/signin/internal/a;->o:Lcom/google/android/gms/auth/api/signin/internal/b;

    iget-object v1, v1, Lcom/google/android/gms/auth/api/signin/internal/b;->u:Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    .line 2
    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/auth/api/signin/internal/zbn;->e(Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)V

    :cond_11
    iget-object v0, p0, Lcom/google/android/gms/auth/api/signin/internal/a;->o:Lcom/google/android/gms/auth/api/signin/internal/b;

    .line 3
    new-instance v1, Lcom/google/android/gms/auth/api/signin/GoogleSignInResult;

    invoke-direct {v1, p1, p2}, Lcom/google/android/gms/auth/api/signin/GoogleSignInResult;-><init>(Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;Lcom/google/android/gms/common/api/Status;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->k(Lcom/google/android/gms/common/api/Result;)V

    return-void
.end method
