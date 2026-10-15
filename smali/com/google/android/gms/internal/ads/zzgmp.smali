###### Class com.google.android.gms.internal.ads.zzgmp (com.google.android.gms.internal.ads.zzgmp)
.class public final Lcom/google/android/gms/internal/ads/zzgmp;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgny;


# static fields
.field private static final d:Ljava/lang/ThreadLocal;


# instance fields
.field private final a:Ljavax/crypto/spec/SecretKeySpec;

.field private final b:I

.field private final c:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgmo;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzgmo;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzgmp;->d:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>([BI)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgas;->a(I)Z

    move-result v0

    if-eqz v0, :cond_36

    .line 2
    array-length v0, p1

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgog;->a(I)V

    .line 3
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    const-string v1, "AES"

    invoke-direct {v0, p1, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzgmp;->a:Ljavax/crypto/spec/SecretKeySpec;

    sget-object p1, Lcom/google/android/gms/internal/ads/zzgmp;->d:Ljava/lang/ThreadLocal;

    .line 4
    invoke-virtual {p1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljavax/crypto/Cipher;

    invoke-virtual {p1}, Ljavax/crypto/Cipher;->getBlockSize()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzgmp;->c:I

    const/16 v0, 0xc

    if-lt p2, v0, :cond_2e

    if-gt p2, p1, :cond_2e

    .line 5
    iput p2, p0, Lcom/google/android/gms/internal/ads/zzgmp;->b:I

    return-void

    :cond_2e
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string p2, "invalid IV size"

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 6
    :cond_36
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string p2, "Can not use AES-CTR in FIPS-mode, as BoringCrypto module is not available."

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final b([BII[BI[BZ)V
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzgmp;->d:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljavax/crypto/Cipher;

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzgmp;->c:I

    .line 2
    new-array v0, v0, [B

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzgmp;->b:I

    const/4 v3, 0x0

    .line 3
    invoke-static {p6, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4
    new-instance p6, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {p6, v0}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    if-eqz p7, :cond_21

    const/4 p7, 0x1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgmp;->a:Ljavax/crypto/spec/SecretKeySpec;

    .line 5
    invoke-virtual {v1, p7, v0, p6}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    goto :goto_27

    :cond_21
    const/4 p7, 0x2

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgmp;->a:Ljavax/crypto/spec/SecretKeySpec;

    .line 7
    invoke-virtual {v1, p7, v0, p6}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    :goto_27
    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move v6, p5

    .line 8
    invoke-virtual/range {v1 .. v6}, Ljavax/crypto/Cipher;->doFinal([BII[BI)I

    move-result p1

    if-ne p1, p3, :cond_33

    return-void

    .line 9
    :cond_33
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string p2, "stored output\'s length does not match input\'s length"

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final a([B)[B
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    array-length v0, p1

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzgmp;->b:I

    if-lt v0, v1, :cond_1a

    .line 2
    new-array v8, v1, [B

    const/4 v2, 0x0

    .line 3
    invoke-static {p1, v2, v8, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v4, p0, Lcom/google/android/gms/internal/ads/zzgmp;->b:I

    sub-int v5, v0, v4

    .line 4
    new-array v0, v5, [B

    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v6, v0

    .line 5
    invoke-direct/range {v2 .. v9}, Lcom/google/android/gms/internal/ads/zzgmp;->b([BII[BI[BZ)V

    return-object v0

    .line 6
    :cond_1a
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string v0, "ciphertext too short"

    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final a0([B)[B
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    array-length v3, p1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzgmp;->b:I

    const v1, 0x7fffffff

    sub-int v2, v1, v0

    if-gt v3, v2, :cond_23

    add-int v1, v0, v3

    .line 2
    new-array v8, v1, [B

    .line 3
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgoe;->a(I)[B

    move-result-object v6

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzgmp;->b:I

    const/4 v1, 0x0

    .line 4
    invoke-static {v6, v1, v8, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v2, 0x0

    iget v5, p0, Lcom/google/android/gms/internal/ads/zzgmp;->b:I

    const/4 v7, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v4, v8

    .line 5
    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/ads/zzgmp;->b([BII[BI[BZ)V

    return-object v8

    .line 6
    :cond_23
    new-instance p1, Ljava/security/GeneralSecurityException;

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzgmp;->b:I

    sub-int/2addr v1, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "plaintext length can not exceed "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
