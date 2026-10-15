###### Class net.lingala.zip4j.crypto.StandardDecrypter (net.lingala.zip4j.crypto.StandardDecrypter)
.class public Lnet/lingala/zip4j/crypto/StandardDecrypter;
.super Ljava/lang/Object;
.source "StandardDecrypter.java"

# interfaces
.implements Lnet/lingala/zip4j/crypto/IDecrypter;


# instance fields
.field private a:Lnet/lingala/zip4j/model/FileHeader;

.field private b:[B

.field private c:Lnet/lingala/zip4j/crypto/engine/ZipCryptoEngine;


# direct methods
.method public constructor <init>(Lnet/lingala/zip4j/model/FileHeader;[B)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    new-array v0, v0, [B

    .line 2
    iput-object v0, p0, Lnet/lingala/zip4j/crypto/StandardDecrypter;->b:[B

    if-eqz p1, :cond_17

    .line 3
    iput-object p1, p0, Lnet/lingala/zip4j/crypto/StandardDecrypter;->a:Lnet/lingala/zip4j/model/FileHeader;

    .line 4
    new-instance p1, Lnet/lingala/zip4j/crypto/engine/ZipCryptoEngine;

    invoke-direct {p1}, Lnet/lingala/zip4j/crypto/engine/ZipCryptoEngine;-><init>()V

    iput-object p1, p0, Lnet/lingala/zip4j/crypto/StandardDecrypter;->c:Lnet/lingala/zip4j/crypto/engine/ZipCryptoEngine;

    .line 5
    invoke-virtual {p0, p2}, Lnet/lingala/zip4j/crypto/StandardDecrypter;->b([B)V

    return-void

    .line 6
    :cond_17
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string p2, "one of more of the input parameters were null in StandardDecryptor"

    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public a([BII)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    if-ltz p2, :cond_29

    if-ltz p3, :cond_29

    move v0, p2

    :goto_5
    add-int v1, p2, p3

    if-ge v0, v1, :cond_28

    .line 1
    :try_start_9
    aget-byte v1, p1, v0

    and-int/lit16 v1, v1, 0xff

    .line 2
    iget-object v2, p0, Lnet/lingala/zip4j/crypto/StandardDecrypter;->c:Lnet/lingala/zip4j/crypto/engine/ZipCryptoEngine;

    invoke-virtual {v2}, Lnet/lingala/zip4j/crypto/engine/ZipCryptoEngine;->b()B

    move-result v2

    xor-int/2addr v1, v2

    and-int/lit16 v1, v1, 0xff

    .line 3
    iget-object v2, p0, Lnet/lingala/zip4j/crypto/StandardDecrypter;->c:Lnet/lingala/zip4j/crypto/engine/ZipCryptoEngine;

    int-to-byte v1, v1

    invoke-virtual {v2, v1}, Lnet/lingala/zip4j/crypto/engine/ZipCryptoEngine;->d(B)V

    .line 4
    aput-byte v1, p1, v0
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_1e} :catch_21

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :catch_21
    move-exception p1

    .line 5
    new-instance p2, Lnet/lingala/zip4j/exception/ZipException;

    invoke-direct {p2, p1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :cond_28
    return p3

    .line 6
    :cond_29
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string p2, "one of the input parameters were null in standard decrpyt data"

    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    goto :goto_32

    :goto_31
    throw p1

    :goto_32
    goto :goto_31
.end method

.method public b([B)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lnet/lingala/zip4j/crypto/StandardDecrypter;->a:Lnet/lingala/zip4j/model/FileHeader;

    invoke-virtual {v0}, Lnet/lingala/zip4j/model/FileHeader;->e()[B

    move-result-object v0

    .line 2
    iget-object v1, p0, Lnet/lingala/zip4j/crypto/StandardDecrypter;->b:[B

    const/4 v2, 0x3

    aget-byte v3, v0, v2

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 3
    aget-byte v3, v0, v2

    shr-int/lit8 v3, v3, 0x8

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    const/4 v4, 0x2

    aput-byte v3, v1, v4

    .line 4
    aget-byte v3, v0, v2

    shr-int/lit8 v3, v3, 0x10

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    const/4 v5, 0x1

    aput-byte v3, v1, v5

    .line 5
    aget-byte v0, v0, v2

    shr-int/lit8 v0, v0, 0x18

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    const/4 v2, 0x0

    aput-byte v0, v1, v2

    .line 6
    aget-byte v0, v1, v4

    if-gtz v0, :cond_7f

    aget-byte v0, v1, v5

    if-gtz v0, :cond_7f

    aget-byte v0, v1, v2

    if-gtz v0, :cond_7f

    .line 7
    iget-object v0, p0, Lnet/lingala/zip4j/crypto/StandardDecrypter;->a:Lnet/lingala/zip4j/model/FileHeader;

    invoke-virtual {v0}, Lnet/lingala/zip4j/model/FileHeader;->p()[C

    move-result-object v0

    if-eqz v0, :cond_76

    iget-object v0, p0, Lnet/lingala/zip4j/crypto/StandardDecrypter;->a:Lnet/lingala/zip4j/model/FileHeader;

    invoke-virtual {v0}, Lnet/lingala/zip4j/model/FileHeader;->p()[C

    move-result-object v0

    array-length v0, v0

    if-lez v0, :cond_76

    .line 8
    iget-object v0, p0, Lnet/lingala/zip4j/crypto/StandardDecrypter;->c:Lnet/lingala/zip4j/crypto/engine/ZipCryptoEngine;

    iget-object v1, p0, Lnet/lingala/zip4j/crypto/StandardDecrypter;->a:Lnet/lingala/zip4j/model/FileHeader;

    invoke-virtual {v1}, Lnet/lingala/zip4j/model/FileHeader;->p()[C

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/lingala/zip4j/crypto/engine/ZipCryptoEngine;->c([C)V

    .line 9
    :try_start_56
    aget-byte v0, p1, v2

    :cond_58
    :goto_58
    const/16 v1, 0xc

    if-ge v2, v1, :cond_6e

    .line 10
    iget-object v3, p0, Lnet/lingala/zip4j/crypto/StandardDecrypter;->c:Lnet/lingala/zip4j/crypto/engine/ZipCryptoEngine;

    invoke-virtual {v3}, Lnet/lingala/zip4j/crypto/engine/ZipCryptoEngine;->b()B

    move-result v4

    xor-int/2addr v4, v0

    int-to-byte v4, v4

    invoke-virtual {v3, v4}, Lnet/lingala/zip4j/crypto/engine/ZipCryptoEngine;->d(B)V

    add-int/lit8 v2, v2, 0x1

    if-eq v2, v1, :cond_58

    .line 11
    aget-byte v0, p1, v2
    :try_end_6d
    .catch Ljava/lang/Exception; {:try_start_56 .. :try_end_6d} :catch_6f

    goto :goto_58

    :cond_6e
    return-void

    :catch_6f
    move-exception p1

    .line 12
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    invoke-direct {v0, p1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 13
    :cond_76
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const/4 v0, 0x5

    const-string v1, "Wrong password!"

    invoke-direct {p1, v1, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;I)V

    throw p1

    .line 14
    :cond_7f
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Invalid CRC in File Header"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_88

    :goto_87
    throw p1

    :goto_88
    goto :goto_87
.end method
