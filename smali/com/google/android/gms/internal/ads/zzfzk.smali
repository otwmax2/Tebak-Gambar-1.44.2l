###### Class com.google.android.gms.internal.ads.zzfzk (com.google.android.gms.internal.ads.zzfzk)
.class public final Lcom/google/android/gms/internal/ads/zzfzk;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# instance fields
.field private a:Ljava/lang/Integer;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private b:Lcom/google/android/gms/internal/ads/zzfzl;


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfzk;->a:Ljava/lang/Integer;

    .line 2
    throw v0
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzfzj;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfzk;->a:Ljava/lang/Integer;

    sget-object p1, Lcom/google/android/gms/internal/ads/zzfzl;->d:Lcom/google/android/gms/internal/ads/zzfzl;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfzk;->b:Lcom/google/android/gms/internal/ads/zzfzl;

    return-void
.end method


# virtual methods
.method public final a(I)Lcom/google/android/gms/internal/ads/zzfzk;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    const/16 v0, 0x10

    if-eq p1, v0, :cond_1f

    const/16 v0, 0x20

    if-ne p1, v0, :cond_9

    goto :goto_1f

    .line 1
    :cond_9
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v2

    const-string p1, "Invalid key size %d; only 16-byte and 32-byte AES keys are supported"

    .line 3
    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4
    :cond_1f
    :goto_1f
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfzk;->a:Ljava/lang/Integer;

    return-object p0
.end method

.method public final b(Lcom/google/android/gms/internal/ads/zzfzl;)Lcom/google/android/gms/internal/ads/zzfzk;
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfzk;->b:Lcom/google/android/gms/internal/ads/zzfzl;

    return-object p0
.end method

.method public final c()Lcom/google/android/gms/internal/ads/zzfzn;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfzk;->a:Ljava/lang/Integer;

    if-eqz v0, :cond_1d

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfzk;->b:Lcom/google/android/gms/internal/ads/zzfzl;

    if-eqz v1, :cond_15

    .line 2
    new-instance v1, Lcom/google/android/gms/internal/ads/zzfzn;

    .line 3
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzfzk;->b:Lcom/google/android/gms/internal/ads/zzfzl;

    const/4 v3, 0x0

    invoke-direct {v1, v0, v2, v3}, Lcom/google/android/gms/internal/ads/zzfzn;-><init>(ILcom/google/android/gms/internal/ads/zzfzl;Lcom/google/android/gms/internal/ads/zzfzm;)V

    return-object v1

    .line 4
    :cond_15
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "Variant is not set"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5
    :cond_1d
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "Key size is not set"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
