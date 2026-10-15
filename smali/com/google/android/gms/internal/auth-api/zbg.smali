###### Class com.google.android.gms.internal.p000authapi.zbg (com.google.android.gms.internal.auth-api.zbg)
.class final Lcom/google/android/gms/internal/auth-api/zbg;
.super Lcom/google/android/gms/internal/auth-api/zbm;
.source "com.google.android.gms:play-services-auth@@20.2.0"


# instance fields
.field final synthetic t:Lcom/google/android/gms/auth/api/credentials/CredentialRequest;


# virtual methods
.method protected final synthetic f(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .registers 4

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/auth-api/zbe;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/internal/auth-api/zbe;-><init>(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/auth/api/credentials/Credential;)V

    return-object v0
.end method

.method protected final y(Landroid/content/Context;Lcom/google/android/gms/internal/auth-api/zbt;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    new-instance p1, Lcom/google/android/gms/internal/auth-api/zbf;

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/auth-api/zbf;-><init>(Lcom/google/android/gms/internal/auth-api/zbg;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/auth-api/zbg;->t:Lcom/google/android/gms/auth/api/credentials/CredentialRequest;

    .line 2
    invoke-virtual {p2, p1, v0}, Lcom/google/android/gms/internal/auth-api/zbt;->Q4(Lcom/google/android/gms/internal/auth-api/zbs;Lcom/google/android/gms/auth/api/credentials/CredentialRequest;)V

    return-void
.end method
