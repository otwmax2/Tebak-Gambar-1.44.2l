###### Class com.google.android.gms.internal.ads.zzgbw (com.google.android.gms.internal.ads.zzgbw)
.class final Lcom/google/android/gms/internal/ads/zzgbw;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# direct methods
.method static a(Lcom/google/android/gms/internal/ads/zzgkn;)Lcom/google/android/gms/internal/ads/zzgbp;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgkn;->L()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_f

    new-instance p0, Lcom/google/android/gms/internal/ads/zzgbm;

    const/16 v0, 0x10

    .line 2
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzgbm;-><init>(I)V

    return-object p0

    .line 3
    :cond_f
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgkn;->L()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1e

    new-instance p0, Lcom/google/android/gms/internal/ads/zzgbm;

    const/16 v0, 0x20

    .line 4
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzgbm;-><init>(I)V

    return-object p0

    .line 5
    :cond_1e
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgkn;->L()I

    move-result p0

    const/4 v0, 0x5

    if-ne p0, v0, :cond_2b

    .line 6
    new-instance p0, Lcom/google/android/gms/internal/ads/zzgbn;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzgbn;-><init>()V

    return-object p0

    .line 7
    :cond_2b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Unrecognized HPKE AEAD identifier"

    .line 8
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static b(Lcom/google/android/gms/internal/ads/zzgkn;)Lcom/google/android/gms/internal/ads/zzgbt;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgkn;->N()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_14

    new-instance p0, Lcom/google/android/gms/internal/ads/zzgcf;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzgbo;

    const-string v1, "HmacSha256"

    .line 2
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzgbo;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzgcf;-><init>(Lcom/google/android/gms/internal/ads/zzgbo;)V

    return-object p0

    .line 3
    :cond_14
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgkn;->N()I

    move-result v0

    const/4 v2, 0x4

    if-ne v0, v2, :cond_21

    const/4 p0, 0x1

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzgcd;->b(I)Lcom/google/android/gms/internal/ads/zzgcd;

    move-result-object p0

    return-object p0

    .line 4
    :cond_21
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgkn;->N()I

    move-result v0

    const/4 v2, 0x5

    if-ne v0, v2, :cond_2e

    const/4 p0, 0x2

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzgcd;->b(I)Lcom/google/android/gms/internal/ads/zzgcd;

    move-result-object p0

    return-object p0

    .line 5
    :cond_2e
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgkn;->N()I

    move-result p0

    const/4 v0, 0x6

    if-ne p0, v0, :cond_3a

    .line 6
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzgcd;->b(I)Lcom/google/android/gms/internal/ads/zzgcd;

    move-result-object p0

    return-object p0

    .line 7
    :cond_3a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Unrecognized HPKE KEM identifier"

    .line 8
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static c(Lcom/google/android/gms/internal/ads/zzgkn;)Lcom/google/android/gms/internal/ads/zzgbo;
    .registers 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgkn;->M()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_f

    new-instance p0, Lcom/google/android/gms/internal/ads/zzgbo;

    const-string v0, "HmacSha256"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzgbo;-><init>(Ljava/lang/String;)V

    return-object p0

    .line 2
    :cond_f
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgkn;->M()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1e

    new-instance p0, Lcom/google/android/gms/internal/ads/zzgbo;

    const-string v0, "HmacSha384"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzgbo;-><init>(Ljava/lang/String;)V

    return-object p0

    .line 3
    :cond_1e
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgkn;->M()I

    move-result p0

    const/4 v0, 0x5

    if-ne p0, v0, :cond_2d

    .line 4
    new-instance p0, Lcom/google/android/gms/internal/ads/zzgbo;

    const-string v0, "HmacSha512"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzgbo;-><init>(Ljava/lang/String;)V

    return-object p0

    .line 5
    :cond_2d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Unrecognized HPKE KDF identifier"

    .line 6
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
