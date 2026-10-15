###### Class com.google.android.gms.internal.auth.zzad (com.google.android.gms.internal.auth.zzad)
.class final Lcom/google/android/gms/internal/auth/zzad;
.super Lcom/google/android/gms/internal/auth/zzah;
.source "com.google.android.gms:play-services-auth-base@@17.1.4"


# instance fields
.field final synthetic o:Lcom/google/android/gms/internal/auth/zzae;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/auth/zzae;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/auth/zzad;->o:Lcom/google/android/gms/internal/auth/zzae;

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/auth/zzah;-><init>()V

    return-void
.end method


# virtual methods
.method public final j9(Landroid/accounts/Account;)V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/auth/zzad;->o:Lcom/google/android/gms/internal/auth/zzae;

    .line 1
    new-instance v1, Lcom/google/android/gms/internal/auth/zzai;

    if-eqz p1, :cond_9

    .line 2
    sget-object v2, Lcom/google/android/gms/common/api/Status;->u:Lcom/google/android/gms/common/api/Status;

    goto :goto_d

    :cond_9
    invoke-static {}, Lcom/google/android/gms/internal/auth/zzal;->a()Lcom/google/android/gms/common/api/Status;

    move-result-object v2

    :goto_d
    invoke-direct {v1, v2, p1}, Lcom/google/android/gms/internal/auth/zzai;-><init>(Lcom/google/android/gms/common/api/Status;Landroid/accounts/Account;)V

    .line 3
    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->k(Lcom/google/android/gms/common/api/Result;)V

    return-void
.end method
