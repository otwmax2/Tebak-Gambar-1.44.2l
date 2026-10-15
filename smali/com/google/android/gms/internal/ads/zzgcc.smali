###### Class com.google.android.gms.internal.ads.zzgcc (com.google.android.gms.internal.ads.zzgcc)
.class public final Lcom/google/android/gms/internal/ads/zzgcc;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# static fields
.field public static final a:[B

.field public static final b:[B

.field public static final c:[B

.field public static final d:[B

.field public static final e:[B

.field public static final f:[B

.field public static final g:[B

.field public static final h:[B

.field public static final i:[B

.field public static final j:[B

.field public static final k:[B

.field public static final l:[B

.field private static final m:[B

.field private static final n:[B

.field private static final o:[B


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzgcc;->c(II)[B

    move-result-object v2

    sput-object v2, Lcom/google/android/gms/internal/ads/zzgcc;->a:[B

    const/4 v2, 0x2

    const/16 v3, 0x20

    .line 2
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/zzgcc;->c(II)[B

    move-result-object v3

    sput-object v3, Lcom/google/android/gms/internal/ads/zzgcc;->b:[B

    const/16 v3, 0x10

    .line 3
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/zzgcc;->c(II)[B

    move-result-object v3

    sput-object v3, Lcom/google/android/gms/internal/ads/zzgcc;->c:[B

    const/16 v3, 0x11

    .line 4
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/zzgcc;->c(II)[B

    move-result-object v3

    sput-object v3, Lcom/google/android/gms/internal/ads/zzgcc;->d:[B

    const/16 v3, 0x12

    .line 5
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/zzgcc;->c(II)[B

    move-result-object v3

    sput-object v3, Lcom/google/android/gms/internal/ads/zzgcc;->e:[B

    .line 6
    invoke-static {v2, v0}, Lcom/google/android/gms/internal/ads/zzgcc;->c(II)[B

    move-result-object v3

    sput-object v3, Lcom/google/android/gms/internal/ads/zzgcc;->f:[B

    .line 7
    invoke-static {v2, v2}, Lcom/google/android/gms/internal/ads/zzgcc;->c(II)[B

    move-result-object v3

    sput-object v3, Lcom/google/android/gms/internal/ads/zzgcc;->g:[B

    const/4 v3, 0x3

    .line 8
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/zzgcc;->c(II)[B

    move-result-object v4

    sput-object v4, Lcom/google/android/gms/internal/ads/zzgcc;->h:[B

    .line 9
    invoke-static {v2, v0}, Lcom/google/android/gms/internal/ads/zzgcc;->c(II)[B

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzgcc;->i:[B

    .line 10
    invoke-static {v2, v2}, Lcom/google/android/gms/internal/ads/zzgcc;->c(II)[B

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzgcc;->j:[B

    .line 11
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/zzgcc;->c(II)[B

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzgcc;->k:[B

    new-array v0, v1, [B

    sput-object v0, Lcom/google/android/gms/internal/ads/zzgcc;->l:[B

    .line 12
    sget-object v0, Lcom/google/android/gms/internal/ads/zzgek;->a:Ljava/nio/charset/Charset;

    const-string v1, "KEM"

    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/ads/zzgcc;->m:[B

    const-string v1, "HPKE"

    .line 13
    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/ads/zzgcc;->n:[B

    const-string v1, "HPKE-v1"

    .line 14
    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzgcc;->o:[B

    return-void
.end method

.method static a(Lcom/google/android/gms/internal/ads/zzgkn;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgkn;->N()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_76

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgkn;->N()I

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_76

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgkn;->M()I

    move-result v0

    const-string v3, "UNRECOGNIZED"

    const/4 v4, 0x5

    const/4 v5, 0x4

    const/4 v6, 0x3

    if-eq v0, v1, :cond_52

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgkn;->M()I

    move-result v0

    if-ne v0, v2, :cond_20

    goto :goto_52

    .line 3
    :cond_20
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgkn;->L()I

    move-result v0

    if-eq v0, v1, :cond_2e

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgkn;->L()I

    move-result v0

    if-ne v0, v2, :cond_2d

    goto :goto_2e

    :cond_2d
    return-void

    .line 5
    :cond_2e
    :goto_2e
    new-instance v0, Ljava/security/GeneralSecurityException;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgkn;->L()I

    move-result p0

    if-eq p0, v1, :cond_46

    if-eq p0, v6, :cond_43

    if-eq p0, v5, :cond_40

    if-eq p0, v4, :cond_3d

    goto :goto_48

    :cond_3d
    const-string v3, "CHACHA20_POLY1305"

    goto :goto_48

    :cond_40
    const-string v3, "AES_256_GCM"

    goto :goto_48

    :cond_43
    const-string v3, "AES_128_GCM"

    goto :goto_48

    :cond_46
    const-string v3, "AEAD_UNKNOWN"

    :goto_48
    const-string p0, "Invalid AEAD param: "

    invoke-virtual {p0, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6
    :cond_52
    :goto_52
    new-instance v0, Ljava/security/GeneralSecurityException;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgkn;->M()I

    move-result p0

    if-eq p0, v1, :cond_6a

    if-eq p0, v6, :cond_67

    if-eq p0, v5, :cond_64

    if-eq p0, v4, :cond_61

    goto :goto_6c

    :cond_61
    const-string v3, "HKDF_SHA512"

    goto :goto_6c

    :cond_64
    const-string v3, "HKDF_SHA384"

    goto :goto_6c

    :cond_67
    const-string v3, "HKDF_SHA256"

    goto :goto_6c

    :cond_6a
    const-string v3, "KDF_UNKNOWN"

    :goto_6c
    const-string p0, "Invalid KDF param: "

    invoke-virtual {p0, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 7
    :cond_76
    new-instance v0, Ljava/security/GeneralSecurityException;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgkn;->N()I

    move-result p0

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzgkh;->a(I)Ljava/lang/String;

    move-result-object p0

    const-string v1, "Invalid KEM param: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static b([B[B[B)[B
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    const/4 v0, 0x4

    new-array v0, v0, [[B

    .line 1
    sget-object v1, Lcom/google/android/gms/internal/ads/zzgcc;->n:[B

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p0, v0, v1

    const/4 p0, 0x2

    aput-object p1, v0, p0

    const/4 p0, 0x3

    aput-object p2, v0, p0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgmv;->b([[B)[B

    move-result-object p0

    return-object p0
.end method

.method public static c(II)[B
    .registers 5

    .line 1
    new-array v0, p0, [B

    const/4 v1, 0x0

    :goto_3
    if-ge v1, p0, :cond_15

    sub-int v2, p0, v1

    add-int/lit8 v2, v2, -0x1

    mul-int/lit8 v2, v2, 0x8

    shr-int v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_15
    return-object v0
.end method

.method static d([B)[B
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [[B

    .line 1
    sget-object v1, Lcom/google/android/gms/internal/ads/zzgcc;->m:[B

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p0, v0, v1

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgmv;->b([[B)[B

    move-result-object p0

    return-object p0
.end method

.method static e(Ljava/lang/String;[B[B)[B
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    const/4 v0, 0x4

    new-array v0, v0, [[B

    .line 1
    sget-object v1, Lcom/google/android/gms/internal/ads/zzgcc;->o:[B

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p2, v0, v1

    sget-object p2, Lcom/google/android/gms/internal/ads/zzgek;->a:Ljava/nio/charset/Charset;

    invoke-virtual {p0, p2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    const/4 p2, 0x2

    aput-object p0, v0, p2

    const/4 p0, 0x3

    aput-object p1, v0, p0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgmv;->b([[B)[B

    move-result-object p0

    return-object p0
.end method

.method static f(Ljava/lang/String;[B[BI)[B
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    const/4 v0, 0x5

    new-array v0, v0, [[B

    const/4 v1, 0x2

    .line 1
    invoke-static {v1, p3}, Lcom/google/android/gms/internal/ads/zzgcc;->c(II)[B

    move-result-object p3

    const/4 v2, 0x0

    aput-object p3, v0, v2

    sget-object p3, Lcom/google/android/gms/internal/ads/zzgcc;->o:[B

    const/4 v2, 0x1

    aput-object p3, v0, v2

    aput-object p2, v0, v1

    sget-object p2, Lcom/google/android/gms/internal/ads/zzgek;->a:Ljava/nio/charset/Charset;

    invoke-virtual {p0, p2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    const/4 p2, 0x3

    aput-object p0, v0, p2

    const/4 p0, 0x4

    aput-object p1, v0, p0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgmv;->b([[B)[B

    move-result-object p0

    return-object p0
.end method

.method static g(I)I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    add-int/lit8 p0, p0, -0x2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_15

    const/4 v1, 0x3

    if-eq p0, v1, :cond_14

    const/4 v0, 0x4

    if-ne p0, v0, :cond_c

    return v1

    .line 1
    :cond_c
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string v0, "Unrecognized NIST HPKE KEM identifier"

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_14
    return v0

    :cond_15
    const/4 p0, 0x1

    return p0
.end method
