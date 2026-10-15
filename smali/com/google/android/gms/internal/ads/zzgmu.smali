###### Class com.google.android.gms.internal.ads.zzgmu (com.google.android.gms.internal.ads.zzgmu)
.class public final Lcom/google/android/gms/internal/ads/zzgmu;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzfvu;


# static fields
.field private static final c:Ljava/util/Collection;

.field private static final d:[B


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/zzgnz;

.field private final b:[B


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Integer;

    const/16 v1, 0x40

    .line 1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzgmu;->c:Ljava/util/Collection;

    const/16 v0, 0x10

    new-array v0, v0, [B

    sput-object v0, Lcom/google/android/gms/internal/ads/zzgmu;->d:[B

    return-void
.end method

.method public constructor <init>([B)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgas;->a(I)Z

    move-result v0

    if-eqz v0, :cond_48

    .line 2
    sget-object v0, Lcom/google/android/gms/internal/ads/zzgmu;->c:Ljava/util/Collection;

    .line 3
    array-length v1, p1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    const/4 v0, 0x0

    shr-int/lit8 v2, v1, 0x1

    .line 4
    invoke-static {p1, v0, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    .line 5
    invoke-static {p1, v2, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgmu;->b:[B

    new-instance p1, Lcom/google/android/gms/internal/ads/zzgnz;

    .line 6
    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/zzgnz;-><init>([B)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgmu;->a:Lcom/google/android/gms/internal/ads/zzgnz;

    return-void

    .line 7
    :cond_2c
    new-instance p1, Ljava/security/InvalidKeyException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid key size: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " bytes; key must have 64 bytes"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 8
    :cond_48
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string v0, "Can not use AES-SIV in FIPS-mode."

    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final a([B[B)[B
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    array-length v0, p1

    const v1, 0x7fffffef

    if-gt v0, v1, :cond_ad

    .line 2
    sget-object v0, Lcom/google/android/gms/internal/ads/zzgnn;->b:Lcom/google/android/gms/internal/ads/zzgnn;

    const-string v1, "AES/CTR/NoPadding"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzgnn;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/crypto/Cipher;

    const/4 v1, 0x2

    new-array v2, v1, [[B

    const/4 v3, 0x0

    aput-object p2, v2, v3

    const/4 p2, 0x1

    aput-object p1, v2, p2

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzgmu;->a:Lcom/google/android/gms/internal/ads/zzgnz;

    sget-object v5, Lcom/google/android/gms/internal/ads/zzgmu;->d:[B

    const/16 v6, 0x10

    .line 3
    invoke-virtual {v4, v5, v6}, Lcom/google/android/gms/internal/ads/zzgnz;->a([BI)[B

    move-result-object v4

    const/4 v5, 0x0

    :goto_24
    if-gtz v5, :cond_3d

    .line 4
    aget-object v7, v2, v5

    if-nez v7, :cond_2c

    new-array v7, v3, [B

    .line 5
    :cond_2c
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzggg;->b([B)[B

    move-result-object v4

    iget-object v8, p0, Lcom/google/android/gms/internal/ads/zzgmu;->a:Lcom/google/android/gms/internal/ads/zzgnz;

    invoke-virtual {v8, v7, v6}, Lcom/google/android/gms/internal/ads/zzgnz;->a([BI)[B

    move-result-object v7

    invoke-static {v4, v7}, Lcom/google/android/gms/internal/ads/zzgmv;->c([B[B)[B

    move-result-object v4

    add-int/lit8 v5, v5, 0x1

    goto :goto_24

    :cond_3d
    aget-object v2, v2, p2

    .line 6
    array-length v5, v2

    if-lt v5, v6, :cond_63

    .line 7
    array-length v7, v4

    if-lt v5, v7, :cond_5b

    .line 8
    invoke-static {v2, v5}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v2

    const/4 v8, 0x0

    .line 9
    :goto_4a
    array-length v9, v4

    if-ge v8, v9, :cond_6f

    sub-int v9, v5, v7

    add-int/2addr v9, v8

    .line 10
    aget-byte v10, v2, v9

    aget-byte v11, v4, v8

    xor-int/2addr v10, v11

    int-to-byte v10, v10

    aput-byte v10, v2, v9

    add-int/lit8 v8, v8, 0x1

    goto :goto_4a

    .line 11
    :cond_5b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "xorEnd requires a.length >= b.length"

    .line 12
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 13
    :cond_63
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzggg;->a([B)[B

    move-result-object v2

    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzggg;->b([B)[B

    move-result-object v4

    invoke-static {v2, v4}, Lcom/google/android/gms/internal/ads/zzgmv;->c([B[B)[B

    move-result-object v2

    .line 14
    :cond_6f
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzgmu;->a:Lcom/google/android/gms/internal/ads/zzgnz;

    .line 15
    invoke-virtual {v4, v2, v6}, Lcom/google/android/gms/internal/ads/zzgnz;->a([BI)[B

    move-result-object v2

    .line 16
    invoke-virtual {v2}, [B->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    const/16 v5, 0x8

    .line 17
    aget-byte v6, v4, v5

    and-int/lit8 v6, v6, 0x7f

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    const/16 v5, 0xc

    .line 18
    aget-byte v6, v4, v5

    and-int/lit8 v6, v6, 0x7f

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    .line 19
    new-instance v5, Ljavax/crypto/spec/SecretKeySpec;

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzgmu;->b:[B

    const-string v7, "AES"

    invoke-direct {v5, v6, v7}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    new-instance v6, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v6, v4}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    invoke-virtual {v0, p2, v5, v6}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 20
    invoke-virtual {v0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p1

    new-array v0, v1, [[B

    aput-object v2, v0, v3

    aput-object p1, v0, p2

    .line 21
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgmv;->b([[B)[B

    move-result-object p1

    return-object p1

    .line 22
    :cond_ad
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string p2, "plaintext too long"

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    goto :goto_b6

    :goto_b5
    throw p1

    :goto_b6
    goto :goto_b5
.end method
