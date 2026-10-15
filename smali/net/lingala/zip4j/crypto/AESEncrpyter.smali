###### Class net.lingala.zip4j.crypto.AESEncrpyter (net.lingala.zip4j.crypto.AESEncrpyter)
.class public Lnet/lingala/zip4j/crypto/AESEncrpyter;
.super Ljava/lang/Object;
.source "AESEncrpyter.java"

# interfaces
.implements Lnet/lingala/zip4j/crypto/IEncrypter;


# instance fields
.field private a:[C

.field private b:I

.field private c:Lnet/lingala/zip4j/crypto/engine/AESEngine;

.field private d:Lnet/lingala/zip4j/crypto/PBKDF2/MacBasedPRF;

.field private e:I

.field private f:I

.field private g:I

.field private final h:I

.field private i:[B

.field private j:[B

.field private k:[B

.field private l:[B

.field private m:Z

.field private n:I

.field private o:I

.field private p:[B

.field private q:[B


# direct methods
.method public constructor <init>([CI)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    .line 2
    iput v0, p0, Lnet/lingala/zip4j/crypto/AESEncrpyter;->h:I

    const/4 v0, 0x1

    .line 3
    iput v0, p0, Lnet/lingala/zip4j/crypto/AESEncrpyter;->n:I

    const/4 v1, 0x0

    .line 4
    iput v1, p0, Lnet/lingala/zip4j/crypto/AESEncrpyter;->o:I

    if-eqz p1, :cond_33

    .line 5
    array-length v2, p1

    if-eqz v2, :cond_33

    if-eq p2, v0, :cond_1f

    const/4 v0, 0x3

    if-ne p2, v0, :cond_17

    goto :goto_1f

    .line 6
    :cond_17
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string p2, "Invalid key strength in AES encrypter constructor"

    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 7
    :cond_1f
    :goto_1f
    iput-object p1, p0, Lnet/lingala/zip4j/crypto/AESEncrpyter;->a:[C

    .line 8
    iput p2, p0, Lnet/lingala/zip4j/crypto/AESEncrpyter;->b:I

    .line 9
    iput-boolean v1, p0, Lnet/lingala/zip4j/crypto/AESEncrpyter;->m:Z

    const/16 p1, 0x10

    new-array p2, p1, [B

    .line 10
    iput-object p2, p0, Lnet/lingala/zip4j/crypto/AESEncrpyter;->q:[B

    new-array p1, p1, [B

    .line 11
    iput-object p1, p0, Lnet/lingala/zip4j/crypto/AESEncrpyter;->p:[B

    .line 12
    invoke-direct {p0}, Lnet/lingala/zip4j/crypto/AESEncrpyter;->g()V

    return-void

    .line 13
    :cond_33
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string p2, "input password is empty or null in AES encrypter constructor"

    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private b([B[C)[B
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 1
    :try_start_0
    new-instance v0, Lnet/lingala/zip4j/crypto/PBKDF2/PBKDF2Parameters;

    const-string v1, "HmacSHA1"

    const-string v2, "ISO-8859-1"

    const/16 v3, 0x3e8

    invoke-direct {v0, v1, v2, p1, v3}, Lnet/lingala/zip4j/crypto/PBKDF2/PBKDF2Parameters;-><init>(Ljava/lang/String;Ljava/lang/String;[BI)V

    .line 2
    new-instance p1, Lnet/lingala/zip4j/crypto/PBKDF2/PBKDF2Engine;

    invoke-direct {p1, v0}, Lnet/lingala/zip4j/crypto/PBKDF2/PBKDF2Engine;-><init>(Lnet/lingala/zip4j/crypto/PBKDF2/PBKDF2Parameters;)V

    .line 3
    iget v0, p0, Lnet/lingala/zip4j/crypto/AESEncrpyter;->e:I

    iget v1, p0, Lnet/lingala/zip4j/crypto/AESEncrpyter;->f:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x2

    invoke-virtual {p1, p2, v0}, Lnet/lingala/zip4j/crypto/PBKDF2/PBKDF2Engine;->f([CI)[B

    move-result-object p1
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1b} :catch_1c

    return-object p1

    :catch_1c
    move-exception p1

    .line 4
    new-instance p2, Lnet/lingala/zip4j/exception/ZipException;

    invoke-direct {p2, p1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method private static c(I)[B
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    const/16 v0, 0x10

    const/16 v1, 0x8

    if-eq p0, v1, :cond_11

    if-ne p0, v0, :cond_9

    goto :goto_11

    .line 1
    :cond_9
    new-instance p0, Lnet/lingala/zip4j/exception/ZipException;

    const-string v0, "invalid salt size, cannot generate salt"

    invoke-direct {p0, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_11
    :goto_11
    const/4 v2, 0x0

    if-ne p0, v1, :cond_16

    const/4 v1, 0x2

    goto :goto_17

    :cond_16
    const/4 v1, 0x0

    :goto_17
    if-ne p0, v0, :cond_1a

    const/4 v1, 0x4

    .line 2
    :cond_1a
    new-array p0, p0, [B

    :goto_1c
    if-ge v2, v1, :cond_46

    .line 3
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 4
    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v0

    mul-int/lit8 v3, v2, 0x4

    add-int/lit8 v4, v3, 0x0

    shr-int/lit8 v5, v0, 0x18

    int-to-byte v5, v5

    .line 5
    aput-byte v5, p0, v4

    add-int/lit8 v4, v3, 0x1

    shr-int/lit8 v5, v0, 0x10

    int-to-byte v5, v5

    .line 6
    aput-byte v5, p0, v4

    add-int/lit8 v4, v3, 0x2

    shr-int/lit8 v5, v0, 0x8

    int-to-byte v5, v5

    .line 7
    aput-byte v5, p0, v4

    add-int/lit8 v3, v3, 0x3

    int-to-byte v0, v0

    .line 8
    aput-byte v0, p0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_1c

    :cond_46
    return-object p0
.end method

.method private g()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lnet/lingala/zip4j/crypto/AESEncrpyter;->b:I

    const/4 v1, 0x1

    const/16 v2, 0x10

    if-eq v0, v1, :cond_1b

    const/4 v1, 0x3

    if-ne v0, v1, :cond_13

    const/16 v0, 0x20

    .line 2
    iput v0, p0, Lnet/lingala/zip4j/crypto/AESEncrpyter;->e:I

    .line 3
    iput v0, p0, Lnet/lingala/zip4j/crypto/AESEncrpyter;->f:I

    .line 4
    iput v2, p0, Lnet/lingala/zip4j/crypto/AESEncrpyter;->g:I

    goto :goto_23

    .line 5
    :cond_13
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    const-string v1, "invalid aes key strength, cannot determine key sizes"

    invoke-direct {v0, v1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6
    :cond_1b
    iput v2, p0, Lnet/lingala/zip4j/crypto/AESEncrpyter;->e:I

    .line 7
    iput v2, p0, Lnet/lingala/zip4j/crypto/AESEncrpyter;->f:I

    const/16 v0, 0x8

    .line 8
    iput v0, p0, Lnet/lingala/zip4j/crypto/AESEncrpyter;->g:I

    .line 9
    :goto_23
    iget v0, p0, Lnet/lingala/zip4j/crypto/AESEncrpyter;->g:I

    invoke-static {v0}, Lnet/lingala/zip4j/crypto/AESEncrpyter;->c(I)[B

    move-result-object v0

    iput-object v0, p0, Lnet/lingala/zip4j/crypto/AESEncrpyter;->l:[B

    .line 10
    iget-object v1, p0, Lnet/lingala/zip4j/crypto/AESEncrpyter;->a:[C

    invoke-direct {p0, v0, v1}, Lnet/lingala/zip4j/crypto/AESEncrpyter;->b([B[C)[B

    move-result-object v0

    if-eqz v0, :cond_79

    .line 11
    array-length v1, v0

    iget v2, p0, Lnet/lingala/zip4j/crypto/AESEncrpyter;->e:I

    iget v3, p0, Lnet/lingala/zip4j/crypto/AESEncrpyter;->f:I

    add-int v4, v2, v3

    const/4 v5, 0x2

    add-int/2addr v4, v5

    if-ne v1, v4, :cond_79

    .line 12
    new-array v1, v2, [B

    iput-object v1, p0, Lnet/lingala/zip4j/crypto/AESEncrpyter;->i:[B

    .line 13
    new-array v3, v3, [B

    iput-object v3, p0, Lnet/lingala/zip4j/crypto/AESEncrpyter;->j:[B

    new-array v3, v5, [B

    .line 14
    iput-object v3, p0, Lnet/lingala/zip4j/crypto/AESEncrpyter;->k:[B

    const/4 v3, 0x0

    .line 15
    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 16
    iget v1, p0, Lnet/lingala/zip4j/crypto/AESEncrpyter;->e:I

    iget-object v2, p0, Lnet/lingala/zip4j/crypto/AESEncrpyter;->j:[B

    iget v4, p0, Lnet/lingala/zip4j/crypto/AESEncrpyter;->f:I

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 17
    iget v1, p0, Lnet/lingala/zip4j/crypto/AESEncrpyter;->e:I

    iget v2, p0, Lnet/lingala/zip4j/crypto/AESEncrpyter;->f:I

    add-int/2addr v1, v2

    iget-object v2, p0, Lnet/lingala/zip4j/crypto/AESEncrpyter;->k:[B

    invoke-static {v0, v1, v2, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 18
    new-instance v0, Lnet/lingala/zip4j/crypto/engine/AESEngine;

    iget-object v1, p0, Lnet/lingala/zip4j/crypto/AESEncrpyter;->i:[B

    invoke-direct {v0, v1}, Lnet/lingala/zip4j/crypto/engine/AESEngine;-><init>([B)V

    iput-object v0, p0, Lnet/lingala/zip4j/crypto/AESEncrpyter;->c:Lnet/lingala/zip4j/crypto/engine/AESEngine;

    .line 19
    new-instance v0, Lnet/lingala/zip4j/crypto/PBKDF2/MacBasedPRF;

    const-string v1, "HmacSHA1"

    invoke-direct {v0, v1}, Lnet/lingala/zip4j/crypto/PBKDF2/MacBasedPRF;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lnet/lingala/zip4j/crypto/AESEncrpyter;->d:Lnet/lingala/zip4j/crypto/PBKDF2/MacBasedPRF;

    .line 20
    iget-object v1, p0, Lnet/lingala/zip4j/crypto/AESEncrpyter;->j:[B

    invoke-virtual {v0, v1}, Lnet/lingala/zip4j/crypto/PBKDF2/MacBasedPRF;->c([B)V

    return-void

    .line 21
    :cond_79
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    const-string v1, "invalid key generated, cannot decrypt file"

    invoke-direct {v0, v1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public a([BII)I
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lnet/lingala/zip4j/crypto/AESEncrpyter;->m:Z

    if-nez v0, :cond_4d

    .line 2
    rem-int/lit8 v0, p3, 0x10

    const/4 v1, 0x1

    if-eqz v0, :cond_b

    .line 3
    iput-boolean v1, p0, Lnet/lingala/zip4j/crypto/AESEncrpyter;->m:Z

    :cond_b
    move v0, p2

    :goto_c
    add-int v2, p2, p3

    if-ge v0, v2, :cond_4c

    add-int/lit8 v3, v0, 0x10

    const/16 v4, 0x10

    if-gt v3, v2, :cond_19

    const/16 v2, 0x10

    goto :goto_1a

    :cond_19
    sub-int/2addr v2, v0

    .line 4
    :goto_1a
    iput v2, p0, Lnet/lingala/zip4j/crypto/AESEncrpyter;->o:I

    .line 5
    iget-object v2, p0, Lnet/lingala/zip4j/crypto/AESEncrpyter;->p:[B

    iget v5, p0, Lnet/lingala/zip4j/crypto/AESEncrpyter;->n:I

    invoke-static {v2, v5, v4}, Lnet/lingala/zip4j/util/Raw;->d([BII)V

    .line 6
    iget-object v2, p0, Lnet/lingala/zip4j/crypto/AESEncrpyter;->c:Lnet/lingala/zip4j/crypto/engine/AESEngine;

    iget-object v4, p0, Lnet/lingala/zip4j/crypto/AESEncrpyter;->p:[B

    iget-object v5, p0, Lnet/lingala/zip4j/crypto/AESEncrpyter;->q:[B

    invoke-virtual {v2, v4, v5}, Lnet/lingala/zip4j/crypto/engine/AESEngine;->e([B[B)I

    const/4 v2, 0x0

    .line 7
    :goto_2d
    iget v4, p0, Lnet/lingala/zip4j/crypto/AESEncrpyter;->o:I

    if-ge v2, v4, :cond_40

    add-int v4, v0, v2

    .line 8
    aget-byte v5, p1, v4

    iget-object v6, p0, Lnet/lingala/zip4j/crypto/AESEncrpyter;->q:[B

    aget-byte v6, v6, v2

    xor-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, p1, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_2d

    .line 9
    :cond_40
    iget-object v2, p0, Lnet/lingala/zip4j/crypto/AESEncrpyter;->d:Lnet/lingala/zip4j/crypto/PBKDF2/MacBasedPRF;

    invoke-virtual {v2, p1, v0, v4}, Lnet/lingala/zip4j/crypto/PBKDF2/MacBasedPRF;->e([BII)V

    .line 10
    iget v0, p0, Lnet/lingala/zip4j/crypto/AESEncrpyter;->n:I

    add-int/2addr v0, v1

    iput v0, p0, Lnet/lingala/zip4j/crypto/AESEncrpyter;->n:I

    move v0, v3

    goto :goto_c

    :cond_4c
    return p3

    .line 11
    :cond_4d
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string p2, "AES Encrypter is in finished state (A non 16 byte block has already been passed to encrypter)"

    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    goto :goto_56

    :goto_55
    throw p1

    :goto_56
    goto :goto_55
.end method

.method public d()[B
    .registers 2

    .line 1
    iget-object v0, p0, Lnet/lingala/zip4j/crypto/AESEncrpyter;->k:[B

    return-object v0
.end method

.method public e()[B
    .registers 5

    .line 1
    iget-object v0, p0, Lnet/lingala/zip4j/crypto/AESEncrpyter;->d:Lnet/lingala/zip4j/crypto/PBKDF2/MacBasedPRF;

    invoke-virtual {v0}, Lnet/lingala/zip4j/crypto/PBKDF2/MacBasedPRF;->d()[B

    move-result-object v0

    const/16 v1, 0xa

    new-array v2, v1, [B

    const/4 v3, 0x0

    .line 2
    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method

.method public f()[B
    .registers 2

    .line 1
    iget-object v0, p0, Lnet/lingala/zip4j/crypto/AESEncrpyter;->l:[B

    return-object v0
.end method
