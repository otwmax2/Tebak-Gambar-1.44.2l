###### Class com.google.android.gms.internal.p000authapi.zbao (com.google.android.gms.internal.auth-api.zbao)
.class public final Lcom/google/android/gms/internal/auth-api/zbao;
.super Lcom/google/android/gms/common/api/GoogleApi;
.source "com.google.android.gms:play-services-auth@@20.2.0"

# interfaces
.implements Lcom/google/android/gms/auth/api/identity/CredentialSavingClient;


# static fields
.field private static final k:Lcom/google/android/gms/common/api/Api$ClientKey;

.field private static final l:Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;

.field private static final m:Lcom/google/android/gms/common/api/Api;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 1
    new-instance v0, Lcom/google/android/gms/common/api/Api$ClientKey;

    invoke-direct {v0}, Lcom/google/android/gms/common/api/Api$ClientKey;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/auth-api/zbao;->k:Lcom/google/android/gms/common/api/Api$ClientKey;

    .line 2
    new-instance v1, Lcom/google/android/gms/internal/auth-api/zbal;

    invoke-direct {v1}, Lcom/google/android/gms/internal/auth-api/zbal;-><init>()V

    sput-object v1, Lcom/google/android/gms/internal/auth-api/zbao;->l:Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;

    .line 3
    new-instance v2, Lcom/google/android/gms/common/api/Api;

    const-string v3, "Auth.Api.Identity.CredentialSaving.API"

    invoke-direct {v2, v3, v1, v0}, Lcom/google/android/gms/common/api/Api;-><init>(Ljava/lang/String;Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;Lcom/google/android/gms/common/api/Api$ClientKey;)V

    sput-object v2, Lcom/google/android/gms/internal/auth-api/zbao;->m:Lcom/google/android/gms/common/api/Api;

    return-void
.end method
