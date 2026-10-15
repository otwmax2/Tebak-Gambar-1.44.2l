###### Class com.google.android.gms.internal.ads.zzgfq (com.google.android.gms.internal.ads.zzgfq)
.class public final Lcom/google/android/gms/internal/ads/zzgfq;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# instance fields
.field private a:Ljava/lang/Integer;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private b:Ljava/lang/Integer;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private c:Lcom/google/android/gms/internal/ads/zzgfr;

.field private d:Lcom/google/android/gms/internal/ads/zzgfs;


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzgfq;->a:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzgfq;->b:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzgfq;->c:Lcom/google/android/gms/internal/ads/zzgfr;

    .line 2
    throw v0
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzgfp;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgfq;->a:Ljava/lang/Integer;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgfq;->b:Ljava/lang/Integer;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgfq;->c:Lcom/google/android/gms/internal/ads/zzgfr;

    sget-object p1, Lcom/google/android/gms/internal/ads/zzgfs;->e:Lcom/google/android/gms/internal/ads/zzgfs;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgfq;->d:Lcom/google/android/gms/internal/ads/zzgfs;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/zzgfr;)Lcom/google/android/gms/internal/ads/zzgfq;
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgfq;->c:Lcom/google/android/gms/internal/ads/zzgfr;

    return-object p0
.end method

.method public final b(I)Lcom/google/android/gms/internal/ads/zzgfq;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgfq;->a:Ljava/lang/Integer;

    return-object p0
.end method

.method public final c(I)Lcom/google/android/gms/internal/ads/zzgfq;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgfq;->b:Ljava/lang/Integer;

    return-object p0
.end method

.method public final d(Lcom/google/android/gms/internal/ads/zzgfs;)Lcom/google/android/gms/internal/ads/zzgfq;
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgfq;->d:Lcom/google/android/gms/internal/ads/zzgfs;

    return-object p0
.end method

.method public final e()Lcom/google/android/gms/internal/ads/zzgfu;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgfq;->a:Ljava/lang/Integer;

    if-eqz v0, :cond_115

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgfq;->b:Ljava/lang/Integer;

    if-eqz v1, :cond_10d

    .line 2
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgfq;->c:Lcom/google/android/gms/internal/ads/zzgfr;

    if-eqz v1, :cond_105

    .line 3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgfq;->d:Lcom/google/android/gms/internal/ads/zzgfs;

    if-eqz v1, :cond_fd

    .line 4
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x10

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-lt v0, v1, :cond_eb

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgfq;->b:Ljava/lang/Integer;

    .line 6
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgfq;->c:Lcom/google/android/gms/internal/ads/zzgfr;

    const/16 v4, 0xa

    if-lt v0, v4, :cond_d7

    .line 7
    sget-object v4, Lcom/google/android/gms/internal/ads/zzgfr;->b:Lcom/google/android/gms/internal/ads/zzgfr;

    if-ne v1, v4, :cond_44

    const/16 v1, 0x14

    if-gt v0, v1, :cond_30

    goto/16 :goto_a3

    .line 8
    :cond_30
    new-instance v1, Ljava/security/GeneralSecurityException;

    new-array v3, v3, [Ljava/lang/Object;

    .line 9
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v2

    const-string v0, "Invalid tag size in bytes %d; can be at most 20 bytes for SHA1"

    .line 10
    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 11
    :cond_44
    sget-object v4, Lcom/google/android/gms/internal/ads/zzgfr;->c:Lcom/google/android/gms/internal/ads/zzgfr;

    if-ne v1, v4, :cond_61

    const/16 v1, 0x1c

    if-gt v0, v1, :cond_4d

    goto :goto_a3

    .line 12
    :cond_4d
    new-instance v1, Ljava/security/GeneralSecurityException;

    new-array v3, v3, [Ljava/lang/Object;

    .line 13
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v2

    const-string v0, "Invalid tag size in bytes %d; can be at most 28 bytes for SHA224"

    .line 14
    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_61
    sget-object v4, Lcom/google/android/gms/internal/ads/zzgfr;->d:Lcom/google/android/gms/internal/ads/zzgfr;

    if-ne v1, v4, :cond_7e

    const/16 v1, 0x20

    if-gt v0, v1, :cond_6a

    goto :goto_a3

    .line 15
    :cond_6a
    new-instance v1, Ljava/security/GeneralSecurityException;

    new-array v3, v3, [Ljava/lang/Object;

    .line 16
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v2

    const-string v0, "Invalid tag size in bytes %d; can be at most 32 bytes for SHA256"

    .line 17
    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_7e
    sget-object v4, Lcom/google/android/gms/internal/ads/zzgfr;->e:Lcom/google/android/gms/internal/ads/zzgfr;

    if-ne v1, v4, :cond_9b

    const/16 v1, 0x30

    if-gt v0, v1, :cond_87

    goto :goto_a3

    .line 18
    :cond_87
    new-instance v1, Ljava/security/GeneralSecurityException;

    new-array v3, v3, [Ljava/lang/Object;

    .line 19
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v2

    const-string v0, "Invalid tag size in bytes %d; can be at most 48 bytes for SHA384"

    .line 20
    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_9b
    sget-object v4, Lcom/google/android/gms/internal/ads/zzgfr;->f:Lcom/google/android/gms/internal/ads/zzgfr;

    if-ne v1, v4, :cond_cf

    const/16 v1, 0x40

    if-gt v0, v1, :cond_bb

    .line 21
    :goto_a3
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgfu;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgfq;->a:Ljava/lang/Integer;

    .line 22
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgfq;->b:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget-object v7, p0, Lcom/google/android/gms/internal/ads/zzgfq;->d:Lcom/google/android/gms/internal/ads/zzgfs;

    iget-object v8, p0, Lcom/google/android/gms/internal/ads/zzgfq;->c:Lcom/google/android/gms/internal/ads/zzgfr;

    const/4 v9, 0x0

    move-object v4, v0

    invoke-direct/range {v4 .. v9}, Lcom/google/android/gms/internal/ads/zzgfu;-><init>(IILcom/google/android/gms/internal/ads/zzgfs;Lcom/google/android/gms/internal/ads/zzgfr;Lcom/google/android/gms/internal/ads/zzgft;)V

    return-object v0

    .line 23
    :cond_bb
    new-instance v1, Ljava/security/GeneralSecurityException;

    new-array v3, v3, [Ljava/lang/Object;

    .line 24
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v2

    const-string v0, "Invalid tag size in bytes %d; can be at most 64 bytes for SHA512"

    .line 25
    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 26
    :cond_cf
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "unknown hash type; must be SHA256, SHA384 or SHA512"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 27
    :cond_d7
    new-instance v1, Ljava/security/GeneralSecurityException;

    new-array v3, v3, [Ljava/lang/Object;

    .line 28
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v2

    const-string v0, "Invalid tag size in bytes %d; must be at least 10 bytes"

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 29
    :cond_eb
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    new-array v1, v3, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzgfq;->a:Ljava/lang/Integer;

    aput-object v3, v1, v2

    const-string v2, "Invalid key size in bytes %d; must be at least 16 bytes"

    .line 30
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 31
    :cond_fd
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "variant is not set"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 32
    :cond_105
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "hash type is not set"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 33
    :cond_10d
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "tag size is not set"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 34
    :cond_115
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "key size is not set"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
