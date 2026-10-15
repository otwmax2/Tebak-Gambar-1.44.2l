###### Class net.lingala.zip4j.crypto.AESDecrypter (net.lingala.zip4j.crypto.AESDecrypter)
.class public Lnet/lingala/zip4j/crypto/AESDecrypter;
.super Ljava/lang/Object;
.source "AESDecrypter.java"

# interfaces
.implements Lnet/lingala/zip4j/crypto/IDecrypter;


# instance fields
.field private a:Lnet/lingala/zip4j/model/LocalFileHeader;

.field private b:Lnet/lingala/zip4j/crypto/engine/AESEngine;

.field private c:Lnet/lingala/zip4j/crypto/PBKDF2/MacBasedPRF;

.field private final d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:[B

.field private i:[B

.field private j:[B

.field private k:[B

.field private l:I

.field private m:[B

.field private n:[B

.field private o:I


# direct methods
.method public constructor <init>(Lnet/lingala/zip4j/model/LocalFileHeader;[B[B)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    .line 2
    iput v0, p0, Lnet/lingala/zip4j/crypto/AESDecrypter;->d:I

    const/4 v0, 0x1

    .line 3
    iput v0, p0, Lnet/lingala/zip4j/crypto/AESDecrypter;->l:I

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lnet/lingala/zip4j/crypto/AESDecrypter;->o:I

    if-eqz p1, :cond_21

    .line 5
    iput-object p1, p0, Lnet/lingala/zip4j/crypto/AESDecrypter;->a:Lnet/lingala/zip4j/model/LocalFileHeader;

    const/4 p1, 0x0

    .line 6
    iput-object p1, p0, Lnet/lingala/zip4j/crypto/AESDecrypter;->k:[B

    const/16 p1, 0x10

    new-array v0, p1, [B

    .line 7
    iput-object v0, p0, Lnet/lingala/zip4j/crypto/AESDecrypter;->m:[B

    new-array p1, p1, [B

    .line 8
    iput-object p1, p0, Lnet/lingala/zip4j/crypto/AESDecrypter;->n:[B

    .line 9
    invoke-direct {p0, p2, p3}, Lnet/lingala/zip4j/crypto/AESDecrypter;->g([B[B)V

    return-void

    .line 10
    :cond_21
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string p2, "one of the input parameters is null in AESDecryptor Constructor"

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
    iget v0, p0, Lnet/lingala/zip4j/crypto/AESDecrypter;->e:I

    iget v1, p0, Lnet/lingala/zip4j/crypto/AESDecrypter;->f:I

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

.method private g([B[B)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lnet/lingala/zip4j/crypto/AESDecrypter;->a:Lnet/lingala/zip4j/model/LocalFileHeader;

    if-eqz v0, :cond_fc

    .line 2
    invoke-virtual {v0}, Lnet/lingala/zip4j/model/LocalFileHeader;->a()Lnet/lingala/zip4j/model/AESExtraDataRecord;

    move-result-object v0

    if-eqz v0, :cond_f4

    .line 3
    invoke-virtual {v0}, Lnet/lingala/zip4j/model/AESExtraDataRecord;->a()I

    move-result v0

    const/4 v1, 0x1

    const/16 v2, 0x10

    const/4 v3, 0x2

    if-eq v0, v1, :cond_4a

    if-eq v0, v3, :cond_3f

    const/4 v1, 0x3

    if-ne v0, v1, :cond_22

    const/16 v0, 0x20

    .line 4
    iput v0, p0, Lnet/lingala/zip4j/crypto/AESDecrypter;->e:I

    .line 5
    iput v0, p0, Lnet/lingala/zip4j/crypto/AESDecrypter;->f:I

    .line 6
    iput v2, p0, Lnet/lingala/zip4j/crypto/AESDecrypter;->g:I

    goto :goto_52

    .line 7
    :cond_22
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "invalid aes key strength for file: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lnet/lingala/zip4j/crypto/AESDecrypter;->a:Lnet/lingala/zip4j/model/LocalFileHeader;

    invoke-virtual {v0}, Lnet/lingala/zip4j/model/LocalFileHeader;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3f
    const/16 v0, 0x18

    .line 8
    iput v0, p0, Lnet/lingala/zip4j/crypto/AESDecrypter;->e:I

    .line 9
    iput v0, p0, Lnet/lingala/zip4j/crypto/AESDecrypter;->f:I

    const/16 v0, 0xc

    .line 10
    iput v0, p0, Lnet/lingala/zip4j/crypto/AESDecrypter;->g:I

    goto :goto_52

    .line 11
    :cond_4a
    iput v2, p0, Lnet/lingala/zip4j/crypto/AESDecrypter;->e:I

    .line 12
    iput v2, p0, Lnet/lingala/zip4j/crypto/AESDecrypter;->f:I

    const/16 v0, 0x8

    .line 13
    iput v0, p0, Lnet/lingala/zip4j/crypto/AESDecrypter;->g:I

    .line 14
    :goto_52
    iget-object v0, p0, Lnet/lingala/zip4j/crypto/AESDecrypter;->a:Lnet/lingala/zip4j/model/LocalFileHeader;

    invoke-virtual {v0}, Lnet/lingala/zip4j/model/LocalFileHeader;->m()[C

    move-result-object v0

    if-eqz v0, :cond_ec

    iget-object v0, p0, Lnet/lingala/zip4j/crypto/AESDecrypter;->a:Lnet/lingala/zip4j/model/LocalFileHeader;

    invoke-virtual {v0}, Lnet/lingala/zip4j/model/LocalFileHeader;->m()[C

    move-result-object v0

    array-length v0, v0

    if-lez v0, :cond_ec

    .line 15
    iget-object v0, p0, Lnet/lingala/zip4j/crypto/AESDecrypter;->a:Lnet/lingala/zip4j/model/LocalFileHeader;

    invoke-virtual {v0}, Lnet/lingala/zip4j/model/LocalFileHeader;->m()[C

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lnet/lingala/zip4j/crypto/AESDecrypter;->b([B[C)[B

    move-result-object p1

    if-eqz p1, :cond_e4

    .line 16
    array-length v0, p1

    iget v1, p0, Lnet/lingala/zip4j/crypto/AESDecrypter;->e:I

    iget v2, p0, Lnet/lingala/zip4j/crypto/AESDecrypter;->f:I

    add-int v4, v1, v2

    add-int/2addr v4, v3

    if-ne v0, v4, :cond_e4

    .line 17
    new-array v0, v1, [B

    iput-object v0, p0, Lnet/lingala/zip4j/crypto/AESDecrypter;->h:[B

    .line 18
    new-array v2, v2, [B

    iput-object v2, p0, Lnet/lingala/zip4j/crypto/AESDecrypter;->i:[B

    new-array v2, v3, [B

    .line 19
    iput-object v2, p0, Lnet/lingala/zip4j/crypto/AESDecrypter;->j:[B

    const/4 v2, 0x0

    .line 20
    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 21
    iget v0, p0, Lnet/lingala/zip4j/crypto/AESDecrypter;->e:I

    iget-object v1, p0, Lnet/lingala/zip4j/crypto/AESDecrypter;->i:[B

    iget v4, p0, Lnet/lingala/zip4j/crypto/AESDecrypter;->f:I

    invoke-static {p1, v0, v1, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 22
    iget v0, p0, Lnet/lingala/zip4j/crypto/AESDecrypter;->e:I

    iget v1, p0, Lnet/lingala/zip4j/crypto/AESDecrypter;->f:I

    add-int/2addr v0, v1

    iget-object v1, p0, Lnet/lingala/zip4j/crypto/AESDecrypter;->j:[B

    invoke-static {p1, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 23
    iget-object p1, p0, Lnet/lingala/zip4j/crypto/AESDecrypter;->j:[B

    if-eqz p1, :cond_dc

    .line 24
    invoke-static {p2, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    if-eqz p1, :cond_be

    .line 25
    new-instance p1, Lnet/lingala/zip4j/crypto/engine/AESEngine;

    iget-object p2, p0, Lnet/lingala/zip4j/crypto/AESDecrypter;->h:[B

    invoke-direct {p1, p2}, Lnet/lingala/zip4j/crypto/engine/AESEngine;-><init>([B)V

    iput-object p1, p0, Lnet/lingala/zip4j/crypto/AESDecrypter;->b:Lnet/lingala/zip4j/crypto/engine/AESEngine;

    .line 26
    new-instance p1, Lnet/lingala/zip4j/crypto/PBKDF2/MacBasedPRF;

    const-string p2, "HmacSHA1"

    invoke-direct {p1, p2}, Lnet/lingala/zip4j/crypto/PBKDF2/MacBasedPRF;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lnet/lingala/zip4j/crypto/AESDecrypter;->c:Lnet/lingala/zip4j/crypto/PBKDF2/MacBasedPRF;

    .line 27
    iget-object p2, p0, Lnet/lingala/zip4j/crypto/AESDecrypter;->i:[B

    invoke-virtual {p1, p2}, Lnet/lingala/zip4j/crypto/PBKDF2/MacBasedPRF;->c([B)V

    return-void

    .line 28
    :cond_be
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Wrong Password for file: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lnet/lingala/zip4j/crypto/AESDecrypter;->a:Lnet/lingala/zip4j/model/LocalFileHeader;

    invoke-virtual {v0}, Lnet/lingala/zip4j/model/LocalFileHeader;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x5

    invoke-direct {p1, p2, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;I)V

    throw p1

    .line 29
    :cond_dc
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string p2, "invalid derived password verifier for AES"

    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 30
    :cond_e4
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string p2, "invalid derived key"

    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 31
    :cond_ec
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string p2, "empty or null password provided for AES Decryptor"

    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 32
    :cond_f4
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string p2, "invalid aes extra data record - in init method of AESDecryptor"

    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 33
    :cond_fc
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string p2, "invalid file header in init method of AESDecryptor"

    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public a([BII)I
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lnet/lingala/zip4j/crypto/AESDecrypter;->b:Lnet/lingala/zip4j/crypto/engine/AESEngine;

    if-eqz v0, :cond_50

    move v0, p2

    :goto_5
    add-int v1, p2, p3

    if-ge v0, v1, :cond_4f

    add-int/lit8 v2, v0, 0x10

    const/16 v3, 0x10

    if-gt v2, v1, :cond_12

    const/16 v1, 0x10

    goto :goto_13

    :cond_12
    sub-int/2addr v1, v0

    .line 2
    :goto_13
    :try_start_13
    iput v1, p0, Lnet/lingala/zip4j/crypto/AESDecrypter;->o:I

    .line 3
    iget-object v4, p0, Lnet/lingala/zip4j/crypto/AESDecrypter;->c:Lnet/lingala/zip4j/crypto/PBKDF2/MacBasedPRF;

    invoke-virtual {v4, p1, v0, v1}, Lnet/lingala/zip4j/crypto/PBKDF2/MacBasedPRF;->e([BII)V

    .line 4
    iget-object v1, p0, Lnet/lingala/zip4j/crypto/AESDecrypter;->m:[B

    iget v4, p0, Lnet/lingala/zip4j/crypto/AESDecrypter;->l:I

    invoke-static {v1, v4, v3}, Lnet/lingala/zip4j/util/Raw;->d([BII)V

    .line 5
    iget-object v1, p0, Lnet/lingala/zip4j/crypto/AESDecrypter;->b:Lnet/lingala/zip4j/crypto/engine/AESEngine;

    iget-object v3, p0, Lnet/lingala/zip4j/crypto/AESDecrypter;->m:[B

    iget-object v4, p0, Lnet/lingala/zip4j/crypto/AESDecrypter;->n:[B

    invoke-virtual {v1, v3, v4}, Lnet/lingala/zip4j/crypto/engine/AESEngine;->e([B[B)I

    const/4 v1, 0x0

    .line 6
    :goto_2b
    iget v3, p0, Lnet/lingala/zip4j/crypto/AESDecrypter;->o:I

    if-ge v1, v3, :cond_3e

    add-int v3, v0, v1

    .line 7
    aget-byte v4, p1, v3

    iget-object v5, p0, Lnet/lingala/zip4j/crypto/AESDecrypter;->n:[B

    aget-byte v5, v5, v1

    xor-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, p1, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_2b

    .line 8
    :cond_3e
    iget v0, p0, Lnet/lingala/zip4j/crypto/AESDecrypter;->l:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lnet/lingala/zip4j/crypto/AESDecrypter;->l:I
    :try_end_44
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_13 .. :try_end_44} :catch_4d
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_44} :catch_46

    move v0, v2

    goto :goto_5

    :catch_46
    move-exception p1

    .line 9
    new-instance p2, Lnet/lingala/zip4j/exception/ZipException;

    invoke-direct {p2, p1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_4d
    move-exception p1

    .line 10
    throw p1

    :cond_4f
    return p3

    .line 11
    :cond_50
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string p2, "AES not initialized properly"

    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    goto :goto_59

    :goto_58
    throw p1

    :goto_59
    goto :goto_58
.end method

.method public c()[B
    .registers 2

    .line 1
    iget-object v0, p0, Lnet/lingala/zip4j/crypto/AESDecrypter;->c:Lnet/lingala/zip4j/crypto/PBKDF2/MacBasedPRF;

    invoke-virtual {v0}, Lnet/lingala/zip4j/crypto/PBKDF2/MacBasedPRF;->d()[B

    move-result-object v0

    return-object v0
.end method

.method public d()I
    .registers 2

    const/4 v0, 0x2

    return v0
.end method

.method public e()I
    .registers 2

    .line 1
    iget v0, p0, Lnet/lingala/zip4j/crypto/AESDecrypter;->g:I

    return v0
.end method

.method public f()[B
    .registers 2

    .line 1
    iget-object v0, p0, Lnet/lingala/zip4j/crypto/AESDecrypter;->k:[B

    return-object v0
.end method

.method public h([B)V
    .registers 2

    .line 1
    iput-object p1, p0, Lnet/lingala/zip4j/crypto/AESDecrypter;->k:[B

    return-void
.end method
