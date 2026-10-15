###### Class com.google.android.gms.internal.ads.zzgcf (com.google.android.gms.internal.ads.zzgcf)
.class final Lcom/google/android/gms/internal/ads/zzgcf;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgbt;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/zzgbo;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzgbo;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgcf;->a:Lcom/google/android/gms/internal/ads/zzgbo;

    return-void
.end method


# virtual methods
.method public final a([B)Lcom/google/android/gms/internal/ads/zzgbu;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgoh;->b()[B

    move-result-object v0

    .line 2
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzgoh;->a([B[B)[B

    move-result-object v3

    .line 3
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgoh;->c([B)[B

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [[B

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    .line 4
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzgmv;->b([[B)[B

    move-result-object v5

    .line 5
    sget-object p1, Lcom/google/android/gms/internal/ads/zzgcc;->b:[B

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzgcc;->d([B)[B

    move-result-object v7

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgcf;->a:Lcom/google/android/gms/internal/ads/zzgbo;

    .line 6
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzgbo;->a()I

    move-result v8

    const/4 v2, 0x0

    const-string v4, "eae_prk"

    const-string v6, "shared_secret"

    .line 7
    invoke-virtual/range {v1 .. v8}, Lcom/google/android/gms/internal/ads/zzgbo;->b([B[BLjava/lang/String;[BLjava/lang/String;[BI)[B

    move-result-object p1

    new-instance v1, Lcom/google/android/gms/internal/ads/zzgbu;

    invoke-direct {v1, p1, v0}, Lcom/google/android/gms/internal/ads/zzgbu;-><init>([B[B)V

    return-object v1
.end method

.method public final zzb()[B
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgcf;->a:Lcom/google/android/gms/internal/ads/zzgbo;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgbo;->c()[B

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzgcc;->f:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 2
    sget-object v0, Lcom/google/android/gms/internal/ads/zzgcc;->b:[B

    return-object v0

    :cond_11
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "Could not determine HPKE KEM ID"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
