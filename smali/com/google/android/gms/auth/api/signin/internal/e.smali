###### Class com.google.android.gms.auth.api.signin.internal.e (com.google.android.gms.auth.api.signin.internal.e)
.class final Lcom/google/android/gms/auth/api/signin/internal/e;
.super Lcom/google/android/gms/auth/api/signin/internal/zba;
.source "com.google.android.gms:play-services-auth@@20.2.0"


# instance fields
.field final synthetic o:Lcom/google/android/gms/auth/api/signin/internal/f;


# direct methods
.method constructor <init>(Lcom/google/android/gms/auth/api/signin/internal/f;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/auth/api/signin/internal/e;->o:Lcom/google/android/gms/auth/api/signin/internal/f;

    invoke-direct {p0}, Lcom/google/android/gms/auth/api/signin/internal/zba;-><init>()V

    return-void
.end method


# virtual methods
.method public final U5(Lcom/google/android/gms/common/api/Status;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/auth/api/signin/internal/e;->o:Lcom/google/android/gms/auth/api/signin/internal/f;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->k(Lcom/google/android/gms/common/api/Result;)V

    return-void
.end method
