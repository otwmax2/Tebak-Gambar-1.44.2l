###### Class net.lingala.zip4j.io.CipherOutputStream (net.lingala.zip4j.io.CipherOutputStream)
.class public Lnet/lingala/zip4j/io/CipherOutputStream;
.super Lnet/lingala/zip4j/io/BaseOutputStream;
.source "CipherOutputStream.java"


# instance fields
.field private A:J

.field protected o:Ljava/io/OutputStream;

.field private p:Ljava/io/File;

.field protected q:Lnet/lingala/zip4j/model/FileHeader;

.field protected r:Lnet/lingala/zip4j/model/LocalFileHeader;

.field private s:Lnet/lingala/zip4j/crypto/IEncrypter;

.field protected t:Lnet/lingala/zip4j/model/ZipParameters;

.field protected u:Lnet/lingala/zip4j/model/ZipModel;

.field private v:J

.field protected w:Ljava/util/zip/CRC32;

.field private x:J

.field private y:[B

.field private z:I


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;Lnet/lingala/zip4j/model/ZipModel;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Lnet/lingala/zip4j/io/BaseOutputStream;-><init>()V

    .line 2
    iput-object p1, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->o:Ljava/io/OutputStream;

    .line 3
    invoke-direct {p0, p2}, Lnet/lingala/zip4j/io/CipherOutputStream;->l(Lnet/lingala/zip4j/model/ZipModel;)V

    .line 4
    new-instance p1, Ljava/util/zip/CRC32;

    invoke-direct {p1}, Ljava/util/zip/CRC32;-><init>()V

    iput-object p1, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->w:Ljava/util/zip/CRC32;

    const-wide/16 p1, 0x0

    .line 5
    iput-wide p1, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->v:J

    .line 6
    iput-wide p1, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->x:J

    const/16 v0, 0x10

    new-array v0, v0, [B

    .line 7
    iput-object v0, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->y:[B

    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->z:I

    .line 9
    iput-wide p1, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->A:J

    return-void
.end method

.method private c()V
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 1
    new-instance v0, Lnet/lingala/zip4j/model/FileHeader;

    invoke-direct {v0}, Lnet/lingala/zip4j/model/FileHeader;-><init>()V

    iput-object v0, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->q:Lnet/lingala/zip4j/model/FileHeader;

    const v1, 0x2014b50

    .line 2
    invoke-virtual {v0, v1}, Lnet/lingala/zip4j/model/FileHeader;->U(I)V

    .line 3
    iget-object v0, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->q:Lnet/lingala/zip4j/model/FileHeader;

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Lnet/lingala/zip4j/model/FileHeader;->W(I)V

    .line 4
    iget-object v0, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->q:Lnet/lingala/zip4j/model/FileHeader;

    invoke-virtual {v0, v1}, Lnet/lingala/zip4j/model/FileHeader;->X(I)V

    .line 5
    iget-object v0, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->t:Lnet/lingala/zip4j/model/ZipParameters;

    invoke-virtual {v0}, Lnet/lingala/zip4j/model/ZipParameters;->m()Z

    move-result v0

    const/16 v1, 0x63

    if-eqz v0, :cond_3c

    iget-object v0, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->t:Lnet/lingala/zip4j/model/ZipParameters;

    invoke-virtual {v0}, Lnet/lingala/zip4j/model/ZipParameters;->g()I

    move-result v0

    if-ne v0, v1, :cond_3c

    .line 6
    iget-object v0, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->q:Lnet/lingala/zip4j/model/FileHeader;

    invoke-virtual {v0, v1}, Lnet/lingala/zip4j/model/FileHeader;->A(I)V

    .line 7
    iget-object v0, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->q:Lnet/lingala/zip4j/model/FileHeader;

    iget-object v2, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->t:Lnet/lingala/zip4j/model/ZipParameters;

    invoke-direct {p0, v2}, Lnet/lingala/zip4j/io/CipherOutputStream;->h(Lnet/lingala/zip4j/model/ZipParameters;)Lnet/lingala/zip4j/model/AESExtraDataRecord;

    move-result-object v2

    invoke-virtual {v0, v2}, Lnet/lingala/zip4j/model/FileHeader;->y(Lnet/lingala/zip4j/model/AESExtraDataRecord;)V

    goto :goto_47

    .line 8
    :cond_3c
    iget-object v0, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->q:Lnet/lingala/zip4j/model/FileHeader;

    iget-object v2, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->t:Lnet/lingala/zip4j/model/ZipParameters;

    invoke-virtual {v2}, Lnet/lingala/zip4j/model/ZipParameters;->d()I

    move-result v2

    invoke-virtual {v0, v2}, Lnet/lingala/zip4j/model/FileHeader;->A(I)V

    .line 9
    :goto_47
    iget-object v0, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->t:Lnet/lingala/zip4j/model/ZipParameters;

    invoke-virtual {v0}, Lnet/lingala/zip4j/model/ZipParameters;->m()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_60

    .line 10
    iget-object v0, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->q:Lnet/lingala/zip4j/model/FileHeader;

    invoke-virtual {v0, v2}, Lnet/lingala/zip4j/model/FileHeader;->G(Z)V

    .line 11
    iget-object v0, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->q:Lnet/lingala/zip4j/model/FileHeader;

    iget-object v3, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->t:Lnet/lingala/zip4j/model/ZipParameters;

    invoke-virtual {v3}, Lnet/lingala/zip4j/model/ZipParameters;->g()I

    move-result v3

    invoke-virtual {v0, v3}, Lnet/lingala/zip4j/model/FileHeader;->H(I)V

    .line 12
    :cond_60
    iget-object v0, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->t:Lnet/lingala/zip4j/model/ZipParameters;

    invoke-virtual {v0}, Lnet/lingala/zip4j/model/ZipParameters;->n()Z

    move-result v0

    if-eqz v0, :cond_91

    .line 13
    iget-object v0, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->q:Lnet/lingala/zip4j/model/FileHeader;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Lnet/lingala/zip4j/util/Zip4jUtil;->v(J)J

    move-result-wide v3

    long-to-int v4, v3

    invoke-virtual {v0, v4}, Lnet/lingala/zip4j/model/FileHeader;->R(I)V

    .line 14
    iget-object v0, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->t:Lnet/lingala/zip4j/model/ZipParameters;

    invoke-virtual {v0}, Lnet/lingala/zip4j/model/ZipParameters;->h()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnet/lingala/zip4j/util/Zip4jUtil;->u(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_89

    .line 15
    iget-object v0, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->t:Lnet/lingala/zip4j/model/ZipParameters;

    invoke-virtual {v0}, Lnet/lingala/zip4j/model/ZipParameters;->h()Ljava/lang/String;

    move-result-object v0

    goto :goto_c8

    .line 16
    :cond_89
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    const-string v1, "fileNameInZip is null or empty"

    invoke-direct {v0, v1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 17
    :cond_91
    iget-object v0, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->q:Lnet/lingala/zip4j/model/FileHeader;

    iget-object v3, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->p:Ljava/io/File;

    iget-object v4, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->t:Lnet/lingala/zip4j/model/ZipParameters;

    invoke-virtual {v4}, Lnet/lingala/zip4j/model/ZipParameters;->l()Ljava/util/TimeZone;

    move-result-object v4

    invoke-static {v3, v4}, Lnet/lingala/zip4j/util/Zip4jUtil;->r(Ljava/io/File;Ljava/util/TimeZone;)J

    move-result-wide v3

    invoke-static {v3, v4}, Lnet/lingala/zip4j/util/Zip4jUtil;->v(J)J

    move-result-wide v3

    long-to-int v4, v3

    invoke-virtual {v0, v4}, Lnet/lingala/zip4j/model/FileHeader;->R(I)V

    .line 18
    iget-object v0, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->q:Lnet/lingala/zip4j/model/FileHeader;

    iget-object v3, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->p:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lnet/lingala/zip4j/model/FileHeader;->V(J)V

    .line 19
    iget-object v0, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->p:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->t:Lnet/lingala/zip4j/model/ZipParameters;

    invoke-virtual {v3}, Lnet/lingala/zip4j/model/ZipParameters;->j()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->t:Lnet/lingala/zip4j/model/ZipParameters;

    invoke-virtual {v4}, Lnet/lingala/zip4j/model/ZipParameters;->f()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v3, v4}, Lnet/lingala/zip4j/util/Zip4jUtil;->s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 20
    :goto_c8
    invoke-static {v0}, Lnet/lingala/zip4j/util/Zip4jUtil;->u(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_246

    .line 21
    iget-object v3, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->q:Lnet/lingala/zip4j/model/FileHeader;

    invoke-virtual {v3, v0}, Lnet/lingala/zip4j/model/FileHeader;->M(Ljava/lang/String;)V

    .line 22
    iget-object v3, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->u:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {v3}, Lnet/lingala/zip4j/model/ZipModel;->d()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lnet/lingala/zip4j/util/Zip4jUtil;->u(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_ef

    .line 23
    iget-object v3, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->q:Lnet/lingala/zip4j/model/FileHeader;

    iget-object v4, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->u:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {v4}, Lnet/lingala/zip4j/model/ZipModel;->d()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lnet/lingala/zip4j/util/Zip4jUtil;->l(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Lnet/lingala/zip4j/model/FileHeader;->N(I)V

    goto :goto_f8

    .line 24
    :cond_ef
    iget-object v3, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->q:Lnet/lingala/zip4j/model/FileHeader;

    invoke-static {v0}, Lnet/lingala/zip4j/util/Zip4jUtil;->k(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Lnet/lingala/zip4j/model/FileHeader;->N(I)V

    .line 25
    :goto_f8
    iget-object v3, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->o:Ljava/io/OutputStream;

    instance-of v4, v3, Lnet/lingala/zip4j/io/SplitOutputStream;

    const/4 v5, 0x0

    if-eqz v4, :cond_10b

    .line 26
    iget-object v4, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->q:Lnet/lingala/zip4j/model/FileHeader;

    check-cast v3, Lnet/lingala/zip4j/io/SplitOutputStream;

    invoke-virtual {v3}, Lnet/lingala/zip4j/io/SplitOutputStream;->c()I

    move-result v3

    invoke-virtual {v4, v3}, Lnet/lingala/zip4j/model/FileHeader;->F(I)V

    goto :goto_110

    .line 27
    :cond_10b
    iget-object v3, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->q:Lnet/lingala/zip4j/model/FileHeader;

    invoke-virtual {v3, v5}, Lnet/lingala/zip4j/model/FileHeader;->F(I)V

    .line 28
    :goto_110
    iget-object v3, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->t:Lnet/lingala/zip4j/model/ZipParameters;

    invoke-virtual {v3}, Lnet/lingala/zip4j/model/ZipParameters;->n()Z

    move-result v3

    if-nez v3, :cond_11f

    .line 29
    iget-object v3, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->p:Ljava/io/File;

    invoke-direct {p0, v3}, Lnet/lingala/zip4j/io/CipherOutputStream;->j(Ljava/io/File;)I

    move-result v3

    goto :goto_120

    :cond_11f
    const/4 v3, 0x0

    :goto_120
    const/4 v4, 0x4

    new-array v4, v4, [B

    int-to-byte v3, v3

    aput-byte v3, v4, v5

    aput-byte v5, v4, v2

    const/4 v3, 0x2

    aput-byte v5, v4, v3

    const/4 v6, 0x3

    aput-byte v5, v4, v6

    .line 30
    iget-object v7, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->q:Lnet/lingala/zip4j/model/FileHeader;

    invoke-virtual {v7, v4}, Lnet/lingala/zip4j/model/FileHeader;->I([B)V

    .line 31
    iget-object v4, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->t:Lnet/lingala/zip4j/model/ZipParameters;

    invoke-virtual {v4}, Lnet/lingala/zip4j/model/ZipParameters;->n()Z

    move-result v4

    if-eqz v4, :cond_155

    .line 32
    iget-object v4, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->q:Lnet/lingala/zip4j/model/FileHeader;

    const-string v7, "/"

    invoke-virtual {v0, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_150

    const-string v7, "\\"

    invoke-virtual {v0, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14e

    goto :goto_150

    :cond_14e
    const/4 v0, 0x0

    goto :goto_151

    :cond_150
    :goto_150
    const/4 v0, 0x1

    :goto_151
    invoke-virtual {v4, v0}, Lnet/lingala/zip4j/model/FileHeader;->E(Z)V

    goto :goto_160

    .line 33
    :cond_155
    iget-object v0, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->q:Lnet/lingala/zip4j/model/FileHeader;

    iget-object v4, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->p:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v4

    invoke-virtual {v0, v4}, Lnet/lingala/zip4j/model/FileHeader;->E(Z)V

    .line 34
    :goto_160
    iget-object v0, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->q:Lnet/lingala/zip4j/model/FileHeader;

    invoke-virtual {v0}, Lnet/lingala/zip4j/model/FileHeader;->v()Z

    move-result v0

    const/16 v4, 0x8

    const-wide/16 v7, 0x0

    if-eqz v0, :cond_177

    .line 35
    iget-object v0, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->q:Lnet/lingala/zip4j/model/FileHeader;

    invoke-virtual {v0, v7, v8}, Lnet/lingala/zip4j/model/FileHeader;->z(J)V

    .line 36
    iget-object v0, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->q:Lnet/lingala/zip4j/model/FileHeader;

    invoke-virtual {v0, v7, v8}, Lnet/lingala/zip4j/model/FileHeader;->V(J)V

    goto :goto_1db

    .line 37
    :cond_177
    iget-object v0, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->t:Lnet/lingala/zip4j/model/ZipParameters;

    invoke-virtual {v0}, Lnet/lingala/zip4j/model/ZipParameters;->n()Z

    move-result v0

    if-nez v0, :cond_1db

    .line 38
    iget-object v0, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->p:Ljava/io/File;

    invoke-static {v0}, Lnet/lingala/zip4j/util/Zip4jUtil;->o(Ljava/io/File;)J

    move-result-wide v9

    .line 39
    iget-object v0, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->t:Lnet/lingala/zip4j/model/ZipParameters;

    invoke-virtual {v0}, Lnet/lingala/zip4j/model/ZipParameters;->d()I

    move-result v0

    if-nez v0, :cond_1d1

    .line 40
    iget-object v0, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->t:Lnet/lingala/zip4j/model/ZipParameters;

    invoke-virtual {v0}, Lnet/lingala/zip4j/model/ZipParameters;->g()I

    move-result v0

    if-nez v0, :cond_19e

    .line 41
    iget-object v0, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->q:Lnet/lingala/zip4j/model/FileHeader;

    const-wide/16 v6, 0xc

    add-long/2addr v6, v9

    invoke-virtual {v0, v6, v7}, Lnet/lingala/zip4j/model/FileHeader;->z(J)V

    goto :goto_1d6

    .line 42
    :cond_19e
    iget-object v0, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->t:Lnet/lingala/zip4j/model/ZipParameters;

    invoke-virtual {v0}, Lnet/lingala/zip4j/model/ZipParameters;->g()I

    move-result v0

    if-ne v0, v1, :cond_1cb

    .line 43
    iget-object v0, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->t:Lnet/lingala/zip4j/model/ZipParameters;

    invoke-virtual {v0}, Lnet/lingala/zip4j/model/ZipParameters;->a()I

    move-result v0

    if-eq v0, v2, :cond_1bb

    if-ne v0, v6, :cond_1b3

    const/16 v0, 0x10

    goto :goto_1bd

    .line 44
    :cond_1b3
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    const-string v1, "invalid aes key strength, cannot determine key sizes"

    invoke-direct {v0, v1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1bb
    const/16 v0, 0x8

    .line 45
    :goto_1bd
    iget-object v1, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->q:Lnet/lingala/zip4j/model/FileHeader;

    int-to-long v6, v0

    add-long/2addr v6, v9

    const-wide/16 v11, 0xa

    add-long/2addr v6, v11

    const-wide/16 v11, 0x2

    add-long/2addr v6, v11

    invoke-virtual {v1, v6, v7}, Lnet/lingala/zip4j/model/FileHeader;->z(J)V

    goto :goto_1d6

    .line 46
    :cond_1cb
    iget-object v0, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->q:Lnet/lingala/zip4j/model/FileHeader;

    invoke-virtual {v0, v7, v8}, Lnet/lingala/zip4j/model/FileHeader;->z(J)V

    goto :goto_1d6

    .line 47
    :cond_1d1
    iget-object v0, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->q:Lnet/lingala/zip4j/model/FileHeader;

    invoke-virtual {v0, v7, v8}, Lnet/lingala/zip4j/model/FileHeader;->z(J)V

    .line 48
    :goto_1d6
    iget-object v0, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->q:Lnet/lingala/zip4j/model/FileHeader;

    invoke-virtual {v0, v9, v10}, Lnet/lingala/zip4j/model/FileHeader;->V(J)V

    .line 49
    :cond_1db
    :goto_1db
    iget-object v0, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->t:Lnet/lingala/zip4j/model/ZipParameters;

    invoke-virtual {v0}, Lnet/lingala/zip4j/model/ZipParameters;->m()Z

    move-result v0

    if-eqz v0, :cond_1f7

    iget-object v0, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->t:Lnet/lingala/zip4j/model/ZipParameters;

    invoke-virtual {v0}, Lnet/lingala/zip4j/model/ZipParameters;->g()I

    move-result v0

    if-nez v0, :cond_1f7

    .line 50
    iget-object v0, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->q:Lnet/lingala/zip4j/model/FileHeader;

    iget-object v1, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->t:Lnet/lingala/zip4j/model/ZipParameters;

    invoke-virtual {v1}, Lnet/lingala/zip4j/model/ZipParameters;->k()I

    move-result v1

    int-to-long v6, v1

    invoke-virtual {v0, v6, v7}, Lnet/lingala/zip4j/model/FileHeader;->B(J)V

    :cond_1f7
    new-array v0, v3, [B

    .line 51
    iget-object v1, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->q:Lnet/lingala/zip4j/model/FileHeader;

    invoke-virtual {v1}, Lnet/lingala/zip4j/model/FileHeader;->w()Z

    move-result v1

    iget-object v3, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->t:Lnet/lingala/zip4j/model/ZipParameters;

    invoke-virtual {v3}, Lnet/lingala/zip4j/model/ZipParameters;->d()I

    move-result v3

    invoke-direct {p0, v1, v3}, Lnet/lingala/zip4j/io/CipherOutputStream;->i(ZI)[I

    move-result-object v1

    invoke-static {v1}, Lnet/lingala/zip4j/util/Raw;->a([I)B

    move-result v1

    aput-byte v1, v0, v5

    .line 52
    iget-object v1, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->u:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {v1}, Lnet/lingala/zip4j/model/ZipModel;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnet/lingala/zip4j/util/Zip4jUtil;->u(Ljava/lang/String;)Z

    move-result v1

    const-string v3, "UTF8"

    if-eqz v1, :cond_229

    .line 53
    iget-object v6, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->u:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {v6}, Lnet/lingala/zip4j/model/ZipModel;->d()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_23b

    :cond_229
    if-nez v1, :cond_23e

    iget-object v1, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->q:Lnet/lingala/zip4j/model/FileHeader;

    invoke-virtual {v1}, Lnet/lingala/zip4j/model/FileHeader;->k()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnet/lingala/zip4j/util/Zip4jUtil;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_23e

    :cond_23b
    aput-byte v4, v0, v2

    goto :goto_240

    :cond_23e
    aput-byte v5, v0, v2

    .line 54
    :goto_240
    iget-object v1, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->q:Lnet/lingala/zip4j/model/FileHeader;

    invoke-virtual {v1, v0}, Lnet/lingala/zip4j/model/FileHeader;->P([B)V

    return-void

    .line 55
    :cond_246
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    const-string v1, "fileName is null or empty. unable to create file header"

    invoke-direct {v0, v1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private d()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->q:Lnet/lingala/zip4j/model/FileHeader;

    if-eqz v0, :cond_9c

    .line 2
    new-instance v0, Lnet/lingala/zip4j/model/LocalFileHeader;

    invoke-direct {v0}, Lnet/lingala/zip4j/model/LocalFileHeader;-><init>()V

    iput-object v0, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->r:Lnet/lingala/zip4j/model/LocalFileHeader;

    const v1, 0x4034b50

    .line 3
    invoke-virtual {v0, v1}, Lnet/lingala/zip4j/model/LocalFileHeader;->J(I)V

    .line 4
    iget-object v0, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->r:Lnet/lingala/zip4j/model/LocalFileHeader;

    iget-object v1, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->q:Lnet/lingala/zip4j/model/FileHeader;

    invoke-virtual {v1}, Lnet/lingala/zip4j/model/FileHeader;->t()I

    move-result v1

    invoke-virtual {v0, v1}, Lnet/lingala/zip4j/model/LocalFileHeader;->L(I)V

    .line 5
    iget-object v0, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->r:Lnet/lingala/zip4j/model/LocalFileHeader;

    iget-object v1, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->q:Lnet/lingala/zip4j/model/FileHeader;

    invoke-virtual {v1}, Lnet/lingala/zip4j/model/FileHeader;->c()I

    move-result v1

    invoke-virtual {v0, v1}, Lnet/lingala/zip4j/model/LocalFileHeader;->u(I)V

    .line 6
    iget-object v0, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->r:Lnet/lingala/zip4j/model/LocalFileHeader;

    iget-object v1, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->q:Lnet/lingala/zip4j/model/FileHeader;

    invoke-virtual {v1}, Lnet/lingala/zip4j/model/FileHeader;->n()I

    move-result v1

    invoke-virtual {v0, v1}, Lnet/lingala/zip4j/model/LocalFileHeader;->G(I)V

    .line 7
    iget-object v0, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->r:Lnet/lingala/zip4j/model/LocalFileHeader;

    iget-object v1, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->q:Lnet/lingala/zip4j/model/FileHeader;

    invoke-virtual {v1}, Lnet/lingala/zip4j/model/FileHeader;->r()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lnet/lingala/zip4j/model/LocalFileHeader;->K(J)V

    .line 8
    iget-object v0, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->r:Lnet/lingala/zip4j/model/LocalFileHeader;

    iget-object v1, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->q:Lnet/lingala/zip4j/model/FileHeader;

    invoke-virtual {v1}, Lnet/lingala/zip4j/model/FileHeader;->l()I

    move-result v1

    invoke-virtual {v0, v1}, Lnet/lingala/zip4j/model/LocalFileHeader;->D(I)V

    .line 9
    iget-object v0, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->r:Lnet/lingala/zip4j/model/LocalFileHeader;

    iget-object v1, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->q:Lnet/lingala/zip4j/model/FileHeader;

    invoke-virtual {v1}, Lnet/lingala/zip4j/model/FileHeader;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/lingala/zip4j/model/LocalFileHeader;->C(Ljava/lang/String;)V

    .line 10
    iget-object v0, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->r:Lnet/lingala/zip4j/model/LocalFileHeader;

    iget-object v1, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->q:Lnet/lingala/zip4j/model/FileHeader;

    invoke-virtual {v1}, Lnet/lingala/zip4j/model/FileHeader;->w()Z

    move-result v1

    invoke-virtual {v0, v1}, Lnet/lingala/zip4j/model/LocalFileHeader;->y(Z)V

    .line 11
    iget-object v0, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->r:Lnet/lingala/zip4j/model/LocalFileHeader;

    iget-object v1, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->q:Lnet/lingala/zip4j/model/FileHeader;

    invoke-virtual {v1}, Lnet/lingala/zip4j/model/FileHeader;->g()I

    move-result v1

    invoke-virtual {v0, v1}, Lnet/lingala/zip4j/model/LocalFileHeader;->z(I)V

    .line 12
    iget-object v0, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->r:Lnet/lingala/zip4j/model/LocalFileHeader;

    iget-object v1, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->q:Lnet/lingala/zip4j/model/FileHeader;

    invoke-virtual {v1}, Lnet/lingala/zip4j/model/FileHeader;->a()Lnet/lingala/zip4j/model/AESExtraDataRecord;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/lingala/zip4j/model/LocalFileHeader;->s(Lnet/lingala/zip4j/model/AESExtraDataRecord;)V

    .line 13
    iget-object v0, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->r:Lnet/lingala/zip4j/model/LocalFileHeader;

    iget-object v1, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->q:Lnet/lingala/zip4j/model/FileHeader;

    invoke-virtual {v1}, Lnet/lingala/zip4j/model/FileHeader;->d()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lnet/lingala/zip4j/model/LocalFileHeader;->v(J)V

    .line 14
    iget-object v0, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->r:Lnet/lingala/zip4j/model/LocalFileHeader;

    iget-object v1, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->q:Lnet/lingala/zip4j/model/FileHeader;

    invoke-virtual {v1}, Lnet/lingala/zip4j/model/FileHeader;->b()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lnet/lingala/zip4j/model/LocalFileHeader;->t(J)V

    .line 15
    iget-object v0, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->r:Lnet/lingala/zip4j/model/LocalFileHeader;

    iget-object v1, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->q:Lnet/lingala/zip4j/model/FileHeader;

    invoke-virtual {v1}, Lnet/lingala/zip4j/model/FileHeader;->m()[B

    move-result-object v1

    invoke-virtual {v1}, [B->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    invoke-virtual {v0, v1}, Lnet/lingala/zip4j/model/LocalFileHeader;->F([B)V

    return-void

    .line 16
    :cond_9c
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    const-string v1, "file header is null, cannot create local file header"

    invoke-direct {v0, v1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private f([BII)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->s:Lnet/lingala/zip4j/crypto/IEncrypter;

    if-eqz v0, :cond_13

    .line 2
    :try_start_4
    invoke-interface {v0, p1, p2, p3}, Lnet/lingala/zip4j/crypto/IEncrypter;->a([BII)I
    :try_end_7
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_4 .. :try_end_7} :catch_8

    goto :goto_13

    :catch_8
    move-exception p1

    .line 3
    new-instance p2, Ljava/io/IOException;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 4
    :cond_13
    :goto_13
    iget-object v0, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->o:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 5
    iget-wide p1, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->v:J

    int-to-long v0, p3

    add-long/2addr p1, v0

    iput-wide p1, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->v:J

    .line 6
    iget-wide p1, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->x:J

    add-long/2addr p1, v0

    iput-wide p1, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->x:J

    return-void
.end method

.method private h(Lnet/lingala/zip4j/model/ZipParameters;)Lnet/lingala/zip4j/model/AESExtraDataRecord;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    if-eqz p1, :cond_3f

    .line 1
    new-instance v0, Lnet/lingala/zip4j/model/AESExtraDataRecord;

    invoke-direct {v0}, Lnet/lingala/zip4j/model/AESExtraDataRecord;-><init>()V

    const-wide/32 v1, 0x9901

    .line 2
    invoke-virtual {v0, v1, v2}, Lnet/lingala/zip4j/model/AESExtraDataRecord;->j(J)V

    const/4 v1, 0x7

    .line 3
    invoke-virtual {v0, v1}, Lnet/lingala/zip4j/model/AESExtraDataRecord;->i(I)V

    const-string v1, "AE"

    .line 4
    invoke-virtual {v0, v1}, Lnet/lingala/zip4j/model/AESExtraDataRecord;->k(Ljava/lang/String;)V

    const/4 v1, 0x2

    .line 5
    invoke-virtual {v0, v1}, Lnet/lingala/zip4j/model/AESExtraDataRecord;->l(I)V

    .line 6
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipParameters;->a()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_25

    .line 7
    invoke-virtual {v0, v2}, Lnet/lingala/zip4j/model/AESExtraDataRecord;->g(I)V

    goto :goto_2f

    .line 8
    :cond_25
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipParameters;->a()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_37

    .line 9
    invoke-virtual {v0, v2}, Lnet/lingala/zip4j/model/AESExtraDataRecord;->g(I)V

    .line 10
    :goto_2f
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipParameters;->d()I

    move-result p1

    invoke-virtual {v0, p1}, Lnet/lingala/zip4j/model/AESExtraDataRecord;->h(I)V

    return-object v0

    .line 11
    :cond_37
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string v0, "invalid AES key strength, cannot generate AES Extra data record"

    invoke-direct {p1, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 12
    :cond_3f
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string v0, "zip parameters are null, cannot generate AES Extra Data record"

    invoke-direct {p1, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private i(ZI)[I
    .registers 7

    const/16 v0, 0x8

    new-array v1, v0, [I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_b

    aput v2, v1, v3

    goto :goto_d

    :cond_b
    aput v3, v1, v3

    :goto_d
    if-ne p2, v0, :cond_10

    goto :goto_15

    :cond_10
    aput v3, v1, v2

    const/4 p1, 0x2

    aput v3, v1, p1

    :goto_15
    const/4 p1, 0x3

    aput v2, v1, p1

    return-object v1
.end method

.method private j(Ljava/io/File;)I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    if-eqz p1, :cond_3b

    .line 1
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return v1

    .line 2
    :cond_a
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 3
    invoke-virtual {p1}, Ljava/io/File;->isHidden()Z

    move-result p1

    if-eqz p1, :cond_19

    const/16 p1, 0x12

    return p1

    :cond_19
    const/16 p1, 0x10

    return p1

    .line 4
    :cond_1c
    invoke-virtual {p1}, Ljava/io/File;->canWrite()Z

    move-result v0

    if-nez v0, :cond_2a

    invoke-virtual {p1}, Ljava/io/File;->isHidden()Z

    move-result v0

    if-eqz v0, :cond_2a

    const/4 p1, 0x3

    return p1

    .line 5
    :cond_2a
    invoke-virtual {p1}, Ljava/io/File;->canWrite()Z

    move-result v0

    if-nez v0, :cond_32

    const/4 p1, 0x1

    return p1

    .line 6
    :cond_32
    invoke-virtual {p1}, Ljava/io/File;->isHidden()Z

    move-result p1

    if-eqz p1, :cond_3a

    const/4 p1, 0x2

    return p1

    :cond_3a
    return v1

    .line 7
    :cond_3b
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string v0, "input file is null, cannot get file attributes"

    invoke-direct {p1, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private k()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->t:Lnet/lingala/zip4j/model/ZipParameters;

    invoke-virtual {v0}, Lnet/lingala/zip4j/model/ZipParameters;->m()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->s:Lnet/lingala/zip4j/crypto/IEncrypter;

    return-void

    .line 3
    :cond_c
    iget-object v0, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->t:Lnet/lingala/zip4j/model/ZipParameters;

    invoke-virtual {v0}, Lnet/lingala/zip4j/model/ZipParameters;->g()I

    move-result v0

    if-eqz v0, :cond_34

    const/16 v1, 0x63

    if-ne v0, v1, :cond_2c

    .line 4
    new-instance v0, Lnet/lingala/zip4j/crypto/AESEncrpyter;

    iget-object v1, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->t:Lnet/lingala/zip4j/model/ZipParameters;

    invoke-virtual {v1}, Lnet/lingala/zip4j/model/ZipParameters;->i()[C

    move-result-object v1

    iget-object v2, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->t:Lnet/lingala/zip4j/model/ZipParameters;

    invoke-virtual {v2}, Lnet/lingala/zip4j/model/ZipParameters;->a()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lnet/lingala/zip4j/crypto/AESEncrpyter;-><init>([CI)V

    iput-object v0, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->s:Lnet/lingala/zip4j/crypto/IEncrypter;

    goto :goto_4d

    .line 5
    :cond_2c
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    const-string v1, "invalid encprytion method"

    invoke-direct {v0, v1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6
    :cond_34
    new-instance v0, Lnet/lingala/zip4j/crypto/StandardEncrypter;

    iget-object v1, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->t:Lnet/lingala/zip4j/model/ZipParameters;

    invoke-virtual {v1}, Lnet/lingala/zip4j/model/ZipParameters;->i()[C

    move-result-object v1

    iget-object v2, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->r:Lnet/lingala/zip4j/model/LocalFileHeader;

    invoke-virtual {v2}, Lnet/lingala/zip4j/model/LocalFileHeader;->k()I

    move-result v2

    const v3, 0xffff

    and-int/2addr v2, v3

    shl-int/lit8 v2, v2, 0x10

    invoke-direct {v0, v1, v2}, Lnet/lingala/zip4j/crypto/StandardEncrypter;-><init>([CI)V

    iput-object v0, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->s:Lnet/lingala/zip4j/crypto/IEncrypter;

    :goto_4d
    return-void
.end method

.method private l(Lnet/lingala/zip4j/model/ZipModel;)V
    .registers 4

    if-nez p1, :cond_a

    .line 1
    new-instance p1, Lnet/lingala/zip4j/model/ZipModel;

    invoke-direct {p1}, Lnet/lingala/zip4j/model/ZipModel;-><init>()V

    iput-object p1, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->u:Lnet/lingala/zip4j/model/ZipModel;

    goto :goto_c

    .line 2
    :cond_a
    iput-object p1, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->u:Lnet/lingala/zip4j/model/ZipModel;

    .line 3
    :goto_c
    iget-object p1, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->u:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipModel;->b()Lnet/lingala/zip4j/model/EndCentralDirRecord;

    move-result-object p1

    if-nez p1, :cond_1e

    .line 4
    iget-object p1, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->u:Lnet/lingala/zip4j/model/ZipModel;

    new-instance v0, Lnet/lingala/zip4j/model/EndCentralDirRecord;

    invoke-direct {v0}, Lnet/lingala/zip4j/model/EndCentralDirRecord;-><init>()V

    invoke-virtual {p1, v0}, Lnet/lingala/zip4j/model/ZipModel;->n(Lnet/lingala/zip4j/model/EndCentralDirRecord;)V

    .line 5
    :cond_1e
    iget-object p1, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->u:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipModel;->a()Lnet/lingala/zip4j/model/CentralDirectory;

    move-result-object p1

    if-nez p1, :cond_30

    .line 6
    iget-object p1, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->u:Lnet/lingala/zip4j/model/ZipModel;

    new-instance v0, Lnet/lingala/zip4j/model/CentralDirectory;

    invoke-direct {v0}, Lnet/lingala/zip4j/model/CentralDirectory;-><init>()V

    invoke-virtual {p1, v0}, Lnet/lingala/zip4j/model/ZipModel;->m(Lnet/lingala/zip4j/model/CentralDirectory;)V

    .line 7
    :cond_30
    iget-object p1, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->u:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipModel;->a()Lnet/lingala/zip4j/model/CentralDirectory;

    move-result-object p1

    invoke-virtual {p1}, Lnet/lingala/zip4j/model/CentralDirectory;->a()Ljava/util/ArrayList;

    move-result-object p1

    if-nez p1, :cond_4a

    .line 8
    iget-object p1, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->u:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipModel;->a()Lnet/lingala/zip4j/model/CentralDirectory;

    move-result-object p1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1, v0}, Lnet/lingala/zip4j/model/CentralDirectory;->b(Ljava/util/ArrayList;)V

    .line 9
    :cond_4a
    iget-object p1, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->u:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipModel;->f()Ljava/util/List;

    move-result-object p1

    if-nez p1, :cond_5c

    .line 10
    iget-object p1, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->u:Lnet/lingala/zip4j/model/ZipModel;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1, v0}, Lnet/lingala/zip4j/model/ZipModel;->p(Ljava/util/List;)V

    .line 11
    :cond_5c
    iget-object p1, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->o:Ljava/io/OutputStream;

    instance-of v0, p1, Lnet/lingala/zip4j/io/SplitOutputStream;

    if-eqz v0, :cond_7d

    .line 12
    check-cast p1, Lnet/lingala/zip4j/io/SplitOutputStream;

    invoke-virtual {p1}, Lnet/lingala/zip4j/io/SplitOutputStream;->h()Z

    move-result p1

    if-eqz p1, :cond_7d

    .line 13
    iget-object p1, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->u:Lnet/lingala/zip4j/model/ZipModel;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lnet/lingala/zip4j/model/ZipModel;->q(Z)V

    .line 14
    iget-object p1, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->u:Lnet/lingala/zip4j/model/ZipModel;

    iget-object v0, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->o:Ljava/io/OutputStream;

    check-cast v0, Lnet/lingala/zip4j/io/SplitOutputStream;

    invoke-virtual {v0}, Lnet/lingala/zip4j/io/SplitOutputStream;->e()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lnet/lingala/zip4j/model/ZipModel;->r(J)V

    .line 15
    :cond_7d
    iget-object p1, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->u:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipModel;->b()Lnet/lingala/zip4j/model/EndCentralDirRecord;

    move-result-object p1

    const-wide/32 v0, 0x6054b50

    invoke-virtual {p1, v0, v1}, Lnet/lingala/zip4j/model/EndCentralDirRecord;->p(J)V

    return-void
.end method


# virtual methods
.method public b()V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->z:I

    if-eqz v0, :cond_c

    .line 2
    iget-object v1, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->y:[B

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2, v0}, Lnet/lingala/zip4j/io/CipherOutputStream;->f([BII)V

    .line 3
    iput v2, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->z:I

    .line 4
    :cond_c
    iget-object v0, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->t:Lnet/lingala/zip4j/model/ZipParameters;

    invoke-virtual {v0}, Lnet/lingala/zip4j/model/ZipParameters;->m()Z

    move-result v0

    const/16 v1, 0x63

    if-eqz v0, :cond_44

    iget-object v0, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->t:Lnet/lingala/zip4j/model/ZipParameters;

    invoke-virtual {v0}, Lnet/lingala/zip4j/model/ZipParameters;->g()I

    move-result v0

    if-ne v0, v1, :cond_44

    .line 5
    iget-object v0, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->s:Lnet/lingala/zip4j/crypto/IEncrypter;

    instance-of v2, v0, Lnet/lingala/zip4j/crypto/AESEncrpyter;

    if-eqz v2, :cond_3c

    .line 6
    iget-object v2, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->o:Ljava/io/OutputStream;

    check-cast v0, Lnet/lingala/zip4j/crypto/AESEncrpyter;

    invoke-virtual {v0}, Lnet/lingala/zip4j/crypto/AESEncrpyter;->e()[B

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/OutputStream;->write([B)V

    .line 7
    iget-wide v2, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->x:J

    const-wide/16 v4, 0xa

    add-long/2addr v2, v4

    iput-wide v2, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->x:J

    .line 8
    iget-wide v2, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->v:J

    add-long/2addr v2, v4

    iput-wide v2, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->v:J

    goto :goto_44

    .line 9
    :cond_3c
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    const-string v1, "invalid encrypter for AES encrypted file"

    invoke-direct {v0, v1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 10
    :cond_44
    :goto_44
    iget-object v0, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->q:Lnet/lingala/zip4j/model/FileHeader;

    iget-wide v2, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->x:J

    invoke-virtual {v0, v2, v3}, Lnet/lingala/zip4j/model/FileHeader;->z(J)V

    .line 11
    iget-object v0, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->r:Lnet/lingala/zip4j/model/LocalFileHeader;

    iget-wide v2, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->x:J

    invoke-virtual {v0, v2, v3}, Lnet/lingala/zip4j/model/LocalFileHeader;->t(J)V

    .line 12
    iget-object v0, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->t:Lnet/lingala/zip4j/model/ZipParameters;

    invoke-virtual {v0}, Lnet/lingala/zip4j/model/ZipParameters;->n()Z

    move-result v0

    if-eqz v0, :cond_72

    .line 13
    iget-object v0, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->q:Lnet/lingala/zip4j/model/FileHeader;

    iget-wide v2, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->A:J

    invoke-virtual {v0, v2, v3}, Lnet/lingala/zip4j/model/FileHeader;->V(J)V

    .line 14
    iget-object v0, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->r:Lnet/lingala/zip4j/model/LocalFileHeader;

    invoke-virtual {v0}, Lnet/lingala/zip4j/model/LocalFileHeader;->o()J

    move-result-wide v2

    iget-wide v4, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->A:J

    cmp-long v0, v2, v4

    if-eqz v0, :cond_72

    .line 15
    iget-object v0, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->r:Lnet/lingala/zip4j/model/LocalFileHeader;

    invoke-virtual {v0, v4, v5}, Lnet/lingala/zip4j/model/LocalFileHeader;->K(J)V

    .line 16
    :cond_72
    iget-object v0, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->w:Ljava/util/zip/CRC32;

    invoke-virtual {v0}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v2

    .line 17
    iget-object v0, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->q:Lnet/lingala/zip4j/model/FileHeader;

    invoke-virtual {v0}, Lnet/lingala/zip4j/model/FileHeader;->w()Z

    move-result v0

    const-wide/16 v4, 0x0

    if-eqz v0, :cond_8b

    .line 18
    iget-object v0, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->q:Lnet/lingala/zip4j/model/FileHeader;

    invoke-virtual {v0}, Lnet/lingala/zip4j/model/FileHeader;->g()I

    move-result v0

    if-ne v0, v1, :cond_8b

    move-wide v2, v4

    .line 19
    :cond_8b
    iget-object v0, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->t:Lnet/lingala/zip4j/model/ZipParameters;

    invoke-virtual {v0}, Lnet/lingala/zip4j/model/ZipParameters;->m()Z

    move-result v0

    if-eqz v0, :cond_a6

    iget-object v0, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->t:Lnet/lingala/zip4j/model/ZipParameters;

    invoke-virtual {v0}, Lnet/lingala/zip4j/model/ZipParameters;->g()I

    move-result v0

    if-ne v0, v1, :cond_a6

    .line 20
    iget-object v0, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->q:Lnet/lingala/zip4j/model/FileHeader;

    invoke-virtual {v0, v4, v5}, Lnet/lingala/zip4j/model/FileHeader;->B(J)V

    .line 21
    iget-object v0, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->r:Lnet/lingala/zip4j/model/LocalFileHeader;

    invoke-virtual {v0, v4, v5}, Lnet/lingala/zip4j/model/LocalFileHeader;->v(J)V

    goto :goto_b0

    .line 22
    :cond_a6
    iget-object v0, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->q:Lnet/lingala/zip4j/model/FileHeader;

    invoke-virtual {v0, v2, v3}, Lnet/lingala/zip4j/model/FileHeader;->B(J)V

    .line 23
    iget-object v0, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->r:Lnet/lingala/zip4j/model/LocalFileHeader;

    invoke-virtual {v0, v2, v3}, Lnet/lingala/zip4j/model/LocalFileHeader;->v(J)V

    .line 24
    :goto_b0
    iget-object v0, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->u:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {v0}, Lnet/lingala/zip4j/model/ZipModel;->f()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->r:Lnet/lingala/zip4j/model/LocalFileHeader;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 25
    iget-object v0, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->u:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {v0}, Lnet/lingala/zip4j/model/ZipModel;->a()Lnet/lingala/zip4j/model/CentralDirectory;

    move-result-object v0

    invoke-virtual {v0}, Lnet/lingala/zip4j/model/CentralDirectory;->a()Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->q:Lnet/lingala/zip4j/model/FileHeader;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 26
    new-instance v0, Lnet/lingala/zip4j/core/HeaderWriter;

    invoke-direct {v0}, Lnet/lingala/zip4j/core/HeaderWriter;-><init>()V

    .line 27
    iget-wide v1, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->v:J

    iget-object v3, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->r:Lnet/lingala/zip4j/model/LocalFileHeader;

    iget-object v6, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->o:Ljava/io/OutputStream;

    invoke-virtual {v0, v3, v6}, Lnet/lingala/zip4j/core/HeaderWriter;->i(Lnet/lingala/zip4j/model/LocalFileHeader;Ljava/io/OutputStream;)I

    move-result v0

    int-to-long v6, v0

    add-long/2addr v1, v6

    iput-wide v1, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->v:J

    .line 28
    iget-object v0, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->w:Ljava/util/zip/CRC32;

    invoke-virtual {v0}, Ljava/util/zip/CRC32;->reset()V

    .line 29
    iput-wide v4, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->x:J

    const/4 v0, 0x0

    .line 30
    iput-object v0, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->s:Lnet/lingala/zip4j/crypto/IEncrypter;

    .line 31
    iput-wide v4, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->A:J

    return-void
.end method

.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->o:Ljava/io/OutputStream;

    if-eqz v0, :cond_7

    .line 2
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    :cond_7
    return-void
.end method

.method public e(I)V
    .registers 6

    if-gtz p1, :cond_3

    return-void

    :cond_3
    int-to-long v0, p1

    .line 1
    iget-wide v2, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->x:J

    cmp-long p1, v0, v2

    if-gtz p1, :cond_d

    sub-long/2addr v2, v0

    .line 2
    iput-wide v2, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->x:J

    :cond_d
    return-void
.end method

.method public g()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->u:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {v0}, Lnet/lingala/zip4j/model/ZipModel;->b()Lnet/lingala/zip4j/model/EndCentralDirRecord;

    move-result-object v0

    iget-wide v1, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->v:J

    invoke-virtual {v0, v1, v2}, Lnet/lingala/zip4j/model/EndCentralDirRecord;->o(J)V

    .line 2
    new-instance v0, Lnet/lingala/zip4j/core/HeaderWriter;

    invoke-direct {v0}, Lnet/lingala/zip4j/core/HeaderWriter;-><init>()V

    .line 3
    iget-object v1, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->u:Lnet/lingala/zip4j/model/ZipModel;

    iget-object v2, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->o:Ljava/io/OutputStream;

    invoke-virtual {v0, v1, v2}, Lnet/lingala/zip4j/core/HeaderWriter;->d(Lnet/lingala/zip4j/model/ZipModel;Ljava/io/OutputStream;)V

    return-void
.end method

.method public m(Ljava/io/File;Lnet/lingala/zip4j/model/ZipParameters;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Lnet/lingala/zip4j/model/ZipParameters;->n()Z

    move-result v0

    if-nez v0, :cond_11

    if-eqz p1, :cond_9

    goto :goto_11

    .line 2
    :cond_9
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string p2, "input file is null"

    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_11
    :goto_11
    invoke-virtual {p2}, Lnet/lingala/zip4j/model/ZipParameters;->n()Z

    move-result v0

    if-nez v0, :cond_26

    invoke-static {p1}, Lnet/lingala/zip4j/util/Zip4jUtil;->a(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_1e

    goto :goto_26

    .line 4
    :cond_1e
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string p2, "input file does not exist"

    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 5
    :cond_26
    :goto_26
    :try_start_26
    iput-object p1, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->p:Ljava/io/File;

    .line 6
    invoke-virtual {p2}, Lnet/lingala/zip4j/model/ZipParameters;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/lingala/zip4j/model/ZipParameters;

    iput-object p1, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->t:Lnet/lingala/zip4j/model/ZipParameters;

    .line 7
    invoke-virtual {p2}, Lnet/lingala/zip4j/model/ZipParameters;->n()Z

    move-result p1

    const/4 v0, -0x1

    const/4 v1, 0x0

    if-nez p1, :cond_50

    .line 8
    iget-object p1, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->p:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result p1

    if-eqz p1, :cond_87

    .line 9
    iget-object p1, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->t:Lnet/lingala/zip4j/model/ZipParameters;

    invoke-virtual {p1, v1}, Lnet/lingala/zip4j/model/ZipParameters;->q(Z)V

    .line 10
    iget-object p1, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->t:Lnet/lingala/zip4j/model/ZipParameters;

    invoke-virtual {p1, v0}, Lnet/lingala/zip4j/model/ZipParameters;->r(I)V

    .line 11
    iget-object p1, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->t:Lnet/lingala/zip4j/model/ZipParameters;

    invoke-virtual {p1, v1}, Lnet/lingala/zip4j/model/ZipParameters;->p(I)V

    goto :goto_87

    .line 12
    :cond_50
    iget-object p1, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->t:Lnet/lingala/zip4j/model/ZipParameters;

    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipParameters;->h()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lnet/lingala/zip4j/util/Zip4jUtil;->u(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_17d

    .line 13
    iget-object p1, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->t:Lnet/lingala/zip4j/model/ZipParameters;

    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipParameters;->h()Ljava/lang/String;

    move-result-object p1

    const-string v2, "/"

    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_78

    iget-object p1, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->t:Lnet/lingala/zip4j/model/ZipParameters;

    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipParameters;->h()Ljava/lang/String;

    move-result-object p1

    const-string v2, "\\"

    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_87

    .line 14
    :cond_78
    iget-object p1, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->t:Lnet/lingala/zip4j/model/ZipParameters;

    invoke-virtual {p1, v1}, Lnet/lingala/zip4j/model/ZipParameters;->q(Z)V

    .line 15
    iget-object p1, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->t:Lnet/lingala/zip4j/model/ZipParameters;

    invoke-virtual {p1, v0}, Lnet/lingala/zip4j/model/ZipParameters;->r(I)V

    .line 16
    iget-object p1, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->t:Lnet/lingala/zip4j/model/ZipParameters;

    invoke-virtual {p1, v1}, Lnet/lingala/zip4j/model/ZipParameters;->p(I)V

    .line 17
    :cond_87
    :goto_87
    invoke-direct {p0}, Lnet/lingala/zip4j/io/CipherOutputStream;->c()V

    .line 18
    invoke-direct {p0}, Lnet/lingala/zip4j/io/CipherOutputStream;->d()V

    .line 19
    iget-object p1, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->u:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipModel;->k()Z

    move-result p1

    const-wide/16 v2, 0x4

    if-eqz p1, :cond_ce

    .line 20
    iget-object p1, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->u:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipModel;->a()Lnet/lingala/zip4j/model/CentralDirectory;

    move-result-object p1

    if-eqz p1, :cond_bb

    iget-object p1, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->u:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipModel;->a()Lnet/lingala/zip4j/model/CentralDirectory;

    move-result-object p1

    invoke-virtual {p1}, Lnet/lingala/zip4j/model/CentralDirectory;->a()Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_bb

    iget-object p1, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->u:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipModel;->a()Lnet/lingala/zip4j/model/CentralDirectory;

    move-result-object p1

    invoke-virtual {p1}, Lnet/lingala/zip4j/model/CentralDirectory;->a()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-nez p1, :cond_ce

    :cond_bb
    const/4 p1, 0x4

    new-array p1, p1, [B

    const v0, 0x8074b50

    .line 21
    invoke-static {p1, v1, v0}, Lnet/lingala/zip4j/util/Raw;->j([BII)V

    .line 22
    iget-object v0, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->o:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    .line 23
    iget-wide v0, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->v:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->v:J

    .line 24
    :cond_ce
    iget-object p1, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->o:Ljava/io/OutputStream;

    instance-of v0, p1, Lnet/lingala/zip4j/io/SplitOutputStream;

    if-eqz v0, :cond_ec

    .line 25
    iget-wide v0, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->v:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_e0

    .line 26
    iget-object p1, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->q:Lnet/lingala/zip4j/model/FileHeader;

    invoke-virtual {p1, v2, v3}, Lnet/lingala/zip4j/model/FileHeader;->S(J)V

    goto :goto_fd

    .line 27
    :cond_e0
    iget-object v0, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->q:Lnet/lingala/zip4j/model/FileHeader;

    check-cast p1, Lnet/lingala/zip4j/io/SplitOutputStream;

    invoke-virtual {p1}, Lnet/lingala/zip4j/io/SplitOutputStream;->d()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lnet/lingala/zip4j/model/FileHeader;->S(J)V

    goto :goto_fd

    .line 28
    :cond_ec
    iget-wide v0, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->v:J

    cmp-long p1, v0, v2

    if-nez p1, :cond_f8

    .line 29
    iget-object p1, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->q:Lnet/lingala/zip4j/model/FileHeader;

    invoke-virtual {p1, v2, v3}, Lnet/lingala/zip4j/model/FileHeader;->S(J)V

    goto :goto_fd

    .line 30
    :cond_f8
    iget-object p1, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->q:Lnet/lingala/zip4j/model/FileHeader;

    invoke-virtual {p1, v0, v1}, Lnet/lingala/zip4j/model/FileHeader;->S(J)V

    .line 31
    :goto_fd
    new-instance p1, Lnet/lingala/zip4j/core/HeaderWriter;

    invoke-direct {p1}, Lnet/lingala/zip4j/core/HeaderWriter;-><init>()V

    .line 32
    iget-wide v0, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->v:J

    iget-object v2, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->u:Lnet/lingala/zip4j/model/ZipModel;

    iget-object v3, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->r:Lnet/lingala/zip4j/model/LocalFileHeader;

    iget-object v4, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->o:Ljava/io/OutputStream;

    invoke-virtual {p1, v2, v3, v4}, Lnet/lingala/zip4j/core/HeaderWriter;->k(Lnet/lingala/zip4j/model/ZipModel;Lnet/lingala/zip4j/model/LocalFileHeader;Ljava/io/OutputStream;)I

    move-result p1

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->v:J

    .line 33
    iget-object p1, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->t:Lnet/lingala/zip4j/model/ZipParameters;

    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipParameters;->m()Z

    move-result p1

    if-eqz p1, :cond_177

    .line 34
    invoke-direct {p0}, Lnet/lingala/zip4j/io/CipherOutputStream;->k()V

    .line 35
    iget-object p1, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->s:Lnet/lingala/zip4j/crypto/IEncrypter;

    if-eqz p1, :cond_177

    .line 36
    invoke-virtual {p2}, Lnet/lingala/zip4j/model/ZipParameters;->g()I

    move-result p1

    if-nez p1, :cond_143

    .line 37
    iget-object p1, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->s:Lnet/lingala/zip4j/crypto/IEncrypter;

    check-cast p1, Lnet/lingala/zip4j/crypto/StandardEncrypter;

    invoke-virtual {p1}, Lnet/lingala/zip4j/crypto/StandardEncrypter;->e()[B

    move-result-object p1

    .line 38
    iget-object p2, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->o:Ljava/io/OutputStream;

    invoke-virtual {p2, p1}, Ljava/io/OutputStream;->write([B)V

    .line 39
    iget-wide v0, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->v:J

    array-length p2, p1

    int-to-long v2, p2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->v:J

    .line 40
    iget-wide v0, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->x:J

    array-length p1, p1

    int-to-long p1, p1

    add-long/2addr v0, p1

    iput-wide v0, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->x:J

    goto :goto_177

    .line 41
    :cond_143
    invoke-virtual {p2}, Lnet/lingala/zip4j/model/ZipParameters;->g()I

    move-result p1

    const/16 p2, 0x63

    if-ne p1, p2, :cond_177

    .line 42
    iget-object p1, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->s:Lnet/lingala/zip4j/crypto/IEncrypter;

    check-cast p1, Lnet/lingala/zip4j/crypto/AESEncrpyter;

    invoke-virtual {p1}, Lnet/lingala/zip4j/crypto/AESEncrpyter;->f()[B

    move-result-object p1

    .line 43
    iget-object p2, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->s:Lnet/lingala/zip4j/crypto/IEncrypter;

    check-cast p2, Lnet/lingala/zip4j/crypto/AESEncrpyter;

    invoke-virtual {p2}, Lnet/lingala/zip4j/crypto/AESEncrpyter;->d()[B

    move-result-object p2

    .line 44
    iget-object v0, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->o:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    .line 45
    iget-object v0, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->o:Ljava/io/OutputStream;

    invoke-virtual {v0, p2}, Ljava/io/OutputStream;->write([B)V

    .line 46
    iget-wide v0, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->v:J

    array-length v2, p1

    array-length v3, p2

    add-int/2addr v2, v3

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->v:J

    .line 47
    iget-wide v0, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->x:J

    array-length p1, p1

    array-length p2, p2

    add-int/2addr p1, p2

    int-to-long p1, p1

    add-long/2addr v0, p1

    iput-wide v0, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->x:J

    .line 48
    :cond_177
    :goto_177
    iget-object p1, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->w:Ljava/util/zip/CRC32;

    invoke-virtual {p1}, Ljava/util/zip/CRC32;->reset()V

    return-void

    .line 49
    :cond_17d
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string p2, "file name is empty for external stream"

    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_185
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_26 .. :try_end_185} :catch_18e
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_26 .. :try_end_185} :catch_18c
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_185} :catch_185

    :catch_185
    move-exception p1

    .line 50
    new-instance p2, Lnet/lingala/zip4j/exception/ZipException;

    invoke-direct {p2, p1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_18c
    move-exception p1

    .line 51
    throw p1

    :catch_18e
    move-exception p1

    .line 52
    new-instance p2, Lnet/lingala/zip4j/exception/ZipException;

    invoke-direct {p2, p1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method protected n(I)V
    .registers 6

    if-lez p1, :cond_8

    .line 1
    iget-wide v0, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->A:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->A:J

    :cond_8
    return-void
.end method

.method public write(I)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    new-array v1, v0, [B

    int-to-byte p1, p1

    const/4 v2, 0x0

    aput-byte p1, v1, v2

    .line 1
    invoke-virtual {p0, v1, v2, v0}, Lnet/lingala/zip4j/io/CipherOutputStream;->write([BII)V

    return-void
.end method

.method public write([B)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    array-length v0, p1

    if-nez v0, :cond_7

    return-void

    :cond_7
    const/4 v0, 0x0

    .line 4
    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lnet/lingala/zip4j/io/CipherOutputStream;->write([BII)V

    return-void
.end method

.method public write([BII)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p3, :cond_3

    return-void

    .line 5
    :cond_3
    iget-object v0, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->t:Lnet/lingala/zip4j/model/ZipParameters;

    invoke-virtual {v0}, Lnet/lingala/zip4j/model/ZipParameters;->m()Z

    move-result v0

    if-eqz v0, :cond_4f

    iget-object v0, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->t:Lnet/lingala/zip4j/model/ZipParameters;

    invoke-virtual {v0}, Lnet/lingala/zip4j/model/ZipParameters;->g()I

    move-result v0

    const/16 v1, 0x63

    if-ne v0, v1, :cond_4f

    .line 6
    iget v0, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->z:I

    const/4 v1, 0x0

    if-eqz v0, :cond_3e

    rsub-int/lit8 v2, v0, 0x10

    if-lt p3, v2, :cond_33

    .line 7
    iget-object v2, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->y:[B

    rsub-int/lit8 v3, v0, 0x10

    invoke-static {p1, p2, v2, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 8
    iget-object p2, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->y:[B

    array-length v0, p2

    invoke-direct {p0, p2, v1, v0}, Lnet/lingala/zip4j/io/CipherOutputStream;->f([BII)V

    .line 9
    iget p2, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->z:I

    rsub-int/lit8 p2, p2, 0x10

    sub-int/2addr p3, p2

    .line 10
    iput v1, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->z:I

    goto :goto_3e

    .line 11
    :cond_33
    iget-object v1, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->y:[B

    invoke-static {p1, p2, v1, v0, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 12
    iget p1, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->z:I

    add-int/2addr p1, p3

    iput p1, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->z:I

    return-void

    :cond_3e
    :goto_3e
    if-eqz p3, :cond_4f

    .line 13
    rem-int/lit8 v0, p3, 0x10

    if-eqz v0, :cond_4f

    add-int v2, p3, p2

    sub-int/2addr v2, v0

    .line 14
    iget-object v3, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->y:[B

    invoke-static {p1, v2, v3, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 15
    iput v0, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->z:I

    sub-int/2addr p3, v0

    :cond_4f
    if-eqz p3, :cond_54

    .line 16
    invoke-direct {p0, p1, p2, p3}, Lnet/lingala/zip4j/io/CipherOutputStream;->f([BII)V

    :cond_54
    return-void
.end method
