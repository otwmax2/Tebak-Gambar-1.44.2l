###### Class net.lingala.zip4j.crypto.StandardEncrypter (net.lingala.zip4j.crypto.StandardEncrypter)
.class public Lnet/lingala/zip4j/crypto/StandardEncrypter;
.super Ljava/lang/Object;
.source "StandardEncrypter.java"

# interfaces
.implements Lnet/lingala/zip4j/crypto/IEncrypter;


# instance fields
.field private a:Lnet/lingala/zip4j/crypto/engine/ZipCryptoEngine;

.field private b:[B


# direct methods
.method public constructor <init>([CI)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_19

    .line 2
    array-length v0, p1

    if-lez v0, :cond_19

    .line 3
    new-instance v0, Lnet/lingala/zip4j/crypto/engine/ZipCryptoEngine;

    invoke-direct {v0}, Lnet/lingala/zip4j/crypto/engine/ZipCryptoEngine;-><init>()V

    iput-object v0, p0, Lnet/lingala/zip4j/crypto/StandardEncrypter;->a:Lnet/lingala/zip4j/crypto/engine/ZipCryptoEngine;

    const/16 v0, 0xc

    new-array v0, v0, [B

    .line 4
    iput-object v0, p0, Lnet/lingala/zip4j/crypto/StandardEncrypter;->b:[B

    .line 5
    invoke-direct {p0, p1, p2}, Lnet/lingala/zip4j/crypto/StandardEncrypter;->f([CI)V

    return-void

    .line 6
    :cond_19
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string p2, "input password is null or empty in standard encrpyter constructor"

    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private f([CI)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    if-eqz p1, :cond_36

    .line 1
    array-length v0, p1

    if-lez v0, :cond_36

    .line 2
    iget-object v0, p0, Lnet/lingala/zip4j/crypto/StandardEncrypter;->a:Lnet/lingala/zip4j/crypto/engine/ZipCryptoEngine;

    invoke-virtual {v0, p1}, Lnet/lingala/zip4j/crypto/engine/ZipCryptoEngine;->c([C)V

    const/16 v0, 0xc

    .line 3
    invoke-virtual {p0, v0}, Lnet/lingala/zip4j/crypto/StandardEncrypter;->d(I)[B

    move-result-object v1

    iput-object v1, p0, Lnet/lingala/zip4j/crypto/StandardEncrypter;->b:[B

    .line 4
    iget-object v1, p0, Lnet/lingala/zip4j/crypto/StandardEncrypter;->a:Lnet/lingala/zip4j/crypto/engine/ZipCryptoEngine;

    invoke-virtual {v1, p1}, Lnet/lingala/zip4j/crypto/engine/ZipCryptoEngine;->c([C)V

    .line 5
    iget-object p1, p0, Lnet/lingala/zip4j/crypto/StandardEncrypter;->b:[B

    const/16 v1, 0xb

    ushr-int/lit8 v2, p2, 0x18

    int-to-byte v2, v2

    aput-byte v2, p1, v1

    const/16 v1, 0xa

    ushr-int/lit8 p2, p2, 0x10

    int-to-byte p2, p2

    .line 6
    aput-byte p2, p1, v1

    .line 7
    array-length p2, p1

    if-lt p2, v0, :cond_2e

    .line 8
    invoke-virtual {p0, p1}, Lnet/lingala/zip4j/crypto/StandardEncrypter;->c([B)I

    return-void

    .line 9
    :cond_2e
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string p2, "invalid header bytes generated, cannot perform standard encryption"

    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 10
    :cond_36
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string p2, "input password is null or empty, cannot initialize standard encrypter"

    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public a([BII)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    if-ltz p3, :cond_1a

    move v0, p2

    :goto_3
    add-int v1, p2, p3

    if-ge v0, v1, :cond_19

    .line 1
    :try_start_7
    aget-byte v1, p1, v0

    invoke-virtual {p0, v1}, Lnet/lingala/zip4j/crypto/StandardEncrypter;->b(B)B

    move-result v1

    aput-byte v1, p1, v0
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_f} :catch_12

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :catch_12
    move-exception p1

    .line 2
    new-instance p2, Lnet/lingala/zip4j/exception/ZipException;

    invoke-direct {p2, p1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :cond_19
    return p3

    .line 3
    :cond_1a
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string p2, "invalid length specified to decrpyt data"

    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    goto :goto_23

    :goto_22
    throw p1

    :goto_23
    goto :goto_22
.end method

.method protected b(B)B
    .registers 4

    .line 1
    iget-object v0, p0, Lnet/lingala/zip4j/crypto/StandardEncrypter;->a:Lnet/lingala/zip4j/crypto/engine/ZipCryptoEngine;

    invoke-virtual {v0}, Lnet/lingala/zip4j/crypto/engine/ZipCryptoEngine;->b()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    xor-int/2addr v0, p1

    int-to-byte v0, v0

    .line 2
    iget-object v1, p0, Lnet/lingala/zip4j/crypto/StandardEncrypter;->a:Lnet/lingala/zip4j/crypto/engine/ZipCryptoEngine;

    invoke-virtual {v1, p1}, Lnet/lingala/zip4j/crypto/engine/ZipCryptoEngine;->d(B)V

    return v0
.end method

.method public c([B)I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    .line 2
    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lnet/lingala/zip4j/crypto/StandardEncrypter;->a([BII)I

    move-result p1

    return p1
.end method

.method protected d(I)[B
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    if-lez p1, :cond_1d

    .line 1
    new-array v0, p1, [B

    .line 2
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    const/4 v2, 0x0

    :goto_a
    if-ge v2, p1, :cond_1c

    const/16 v3, 0x100

    .line 3
    invoke-virtual {v1, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    int-to-byte v3, v3

    invoke-virtual {p0, v3}, Lnet/lingala/zip4j/crypto/StandardEncrypter;->b(B)B

    move-result v3

    aput-byte v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_1c
    return-object v0

    .line 4
    :cond_1d
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string v0, "size is either 0 or less than 0, cannot generate header for standard encryptor"

    invoke-direct {p1, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    goto :goto_26

    :goto_25
    throw p1

    :goto_26
    goto :goto_25
.end method

.method public e()[B
    .registers 2

    .line 1
    iget-object v0, p0, Lnet/lingala/zip4j/crypto/StandardEncrypter;->b:[B

    return-object v0
.end method
