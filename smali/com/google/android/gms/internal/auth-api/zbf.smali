###### Class com.google.android.gms.internal.p000authapi.zbf (com.google.android.gms.internal.auth-api.zbf)
.class final Lcom/google/android/gms/internal/auth-api/zbf;
.super Lcom/google/android/gms/internal/auth-api/zbd;
.source "com.google.android.gms:play-services-auth@@20.2.0"


# instance fields
.field final synthetic o:Lcom/google/android/gms/internal/auth-api/zbg;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/auth-api/zbg;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/auth-api/zbf;->o:Lcom/google/android/gms/internal/auth-api/zbg;

    invoke-direct {p0}, Lcom/google/android/gms/internal/auth-api/zbd;-><init>()V

    return-void
.end method


# virtual methods
.method public final a1(Lcom/google/android/gms/common/api/Status;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/auth-api/zbf;->o:Lcom/google/android/gms/internal/auth-api/zbg;

    new-instance v1, Lcom/google/android/gms/internal/auth-api/zbe;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lcom/google/android/gms/internal/auth-api/zbe;-><init>(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/auth/api/credentials/Credential;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->k(Lcom/google/android/gms/common/api/Result;)V

    return-void
.end method

.method public final g9(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/auth/api/credentials/Credential;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/auth-api/zbf;->o:Lcom/google/android/gms/internal/auth-api/zbg;

    new-instance v1, Lcom/google/android/gms/internal/auth-api/zbe;

    invoke-direct {v1, p1, p2}, Lcom/google/android/gms/internal/auth-api/zbe;-><init>(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/auth/api/credentials/Credential;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->k(Lcom/google/android/gms/common/api/Result;)V

    return-void
.end method
