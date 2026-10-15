###### Class x1.d (x1.d)
.class public Lx1/d;
.super Ljava/lang/Object;
.source "GifHeaderParser.java"


# instance fields
.field private final a:[B

.field private b:Ljava/nio/ByteBuffer;

.field private c:Lx1/c;

.field private d:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x100

    new-array v0, v0, [B

    .line 2
    iput-object v0, p0, Lx1/d;->a:[B

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lx1/d;->d:I

    return-void
.end method

.method private b()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lx1/d;->c:Lx1/c;

    iget v0, v0, Lx1/c;->b:I

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method private d()I
    .registers 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lx1/d;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_6} :catch_9

    and-int/lit16 v0, v0, 0xff

    goto :goto_f

    .line 2
    :catch_9
    iget-object v0, p0, Lx1/d;->c:Lx1/c;

    const/4 v1, 0x1

    iput v1, v0, Lx1/c;->b:I

    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method private e()V
    .registers 9

    .line 1
    iget-object v0, p0, Lx1/d;->c:Lx1/c;

    iget-object v0, v0, Lx1/c;->d:Lx1/b;

    invoke-direct {p0}, Lx1/d;->m()I

    move-result v1

    iput v1, v0, Lx1/b;->a:I

    .line 2
    iget-object v0, p0, Lx1/d;->c:Lx1/c;

    iget-object v0, v0, Lx1/c;->d:Lx1/b;

    invoke-direct {p0}, Lx1/d;->m()I

    move-result v1

    iput v1, v0, Lx1/b;->b:I

    .line 3
    iget-object v0, p0, Lx1/d;->c:Lx1/c;

    iget-object v0, v0, Lx1/c;->d:Lx1/b;

    invoke-direct {p0}, Lx1/d;->m()I

    move-result v1

    iput v1, v0, Lx1/b;->c:I

    .line 4
    iget-object v0, p0, Lx1/d;->c:Lx1/c;

    iget-object v0, v0, Lx1/c;->d:Lx1/b;

    invoke-direct {p0}, Lx1/d;->m()I

    move-result v1

    iput v1, v0, Lx1/b;->d:I

    .line 5
    invoke-direct {p0}, Lx1/d;->d()I

    move-result v0

    and-int/lit16 v1, v0, 0x80

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_34

    const/4 v1, 0x1

    goto :goto_35

    :cond_34
    const/4 v1, 0x0

    :goto_35
    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    and-int/lit8 v6, v0, 0x7

    add-int/2addr v6, v3

    int-to-double v6, v6

    .line 6
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    double-to-int v4, v4

    .line 7
    iget-object v5, p0, Lx1/d;->c:Lx1/c;

    iget-object v5, v5, Lx1/c;->d:Lx1/b;

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_49

    const/4 v2, 0x1

    :cond_49
    iput-boolean v2, v5, Lx1/b;->e:Z

    if-eqz v1, :cond_54

    .line 8
    invoke-direct {p0, v4}, Lx1/d;->g(I)[I

    move-result-object v0

    iput-object v0, v5, Lx1/b;->k:[I

    goto :goto_57

    :cond_54
    const/4 v0, 0x0

    .line 9
    iput-object v0, v5, Lx1/b;->k:[I

    .line 10
    :goto_57
    iget-object v0, p0, Lx1/d;->c:Lx1/c;

    iget-object v0, v0, Lx1/c;->d:Lx1/b;

    iget-object v1, p0, Lx1/d;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    iput v1, v0, Lx1/b;->j:I

    .line 11
    invoke-direct {p0}, Lx1/d;->q()V

    .line 12
    invoke-direct {p0}, Lx1/d;->b()Z

    move-result v0

    if-eqz v0, :cond_6d

    return-void

    .line 13
    :cond_6d
    iget-object v0, p0, Lx1/d;->c:Lx1/c;

    iget v1, v0, Lx1/c;->c:I

    add-int/2addr v1, v3

    iput v1, v0, Lx1/c;->c:I

    .line 14
    iget-object v1, v0, Lx1/c;->e:Ljava/util/List;

    iget-object v0, v0, Lx1/c;->d:Lx1/b;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private f()I
    .registers 7

    .line 1
    invoke-direct {p0}, Lx1/d;->d()I

    move-result v0

    iput v0, p0, Lx1/d;->d:I

    const/4 v1, 0x0

    if-lez v0, :cond_4d

    const/4 v0, 0x0

    .line 2
    :goto_a
    :try_start_a
    iget v0, p0, Lx1/d;->d:I

    if-ge v1, v0, :cond_4d

    sub-int/2addr v0, v1

    .line 3
    iget-object v2, p0, Lx1/d;->b:Ljava/nio/ByteBuffer;

    iget-object v3, p0, Lx1/d;->a:[B

    invoke-virtual {v2, v3, v1, v0}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_16} :catch_18

    add-int/2addr v1, v0

    goto :goto_a

    :catch_18
    move-exception v2

    const/4 v3, 0x3

    const-string v4, "GifHeaderParser"

    .line 4
    invoke-static {v4, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_48

    .line 5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error Reading Block n: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " count: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " blockSize: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lx1/d;->d:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 6
    :cond_48
    iget-object v0, p0, Lx1/d;->c:Lx1/c;

    const/4 v2, 0x1

    iput v2, v0, Lx1/c;->b:I

    :cond_4d
    return v1
.end method

.method private g(I)[I
    .registers 11

    mul-int/lit8 v0, p1, 0x3

    .line 1
    new-array v0, v0, [B

    const/4 v1, 0x0

    .line 2
    :try_start_5
    iget-object v2, p0, Lx1/d;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    const/16 v2, 0x100

    new-array v1, v2, [I

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_10
    if-ge v2, p1, :cond_48

    add-int/lit8 v4, v3, 0x1

    .line 3
    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    add-int/lit8 v5, v4, 0x1

    .line 4
    aget-byte v4, v0, v4

    and-int/lit16 v4, v4, 0xff

    add-int/lit8 v6, v5, 0x1

    .line 5
    aget-byte v5, v0, v5

    and-int/lit16 v5, v5, 0xff

    add-int/lit8 v7, v2, 0x1

    const/high16 v8, -0x1000000

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v3, v8

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v3, v4

    or-int/2addr v3, v5

    .line 6
    aput v3, v1, v2
    :try_end_31
    .catch Ljava/nio/BufferUnderflowException; {:try_start_5 .. :try_end_31} :catch_34

    move v3, v6

    move v2, v7

    goto :goto_10

    :catch_34
    move-exception p1

    const-string v0, "GifHeaderParser"

    const/4 v2, 0x3

    .line 7
    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_43

    const-string v2, "Format Error Reading Color Table"

    .line 8
    invoke-static {v0, v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 9
    :cond_43
    iget-object p1, p0, Lx1/d;->c:Lx1/c;

    const/4 v0, 0x1

    iput v0, p1, Lx1/c;->b:I

    :cond_48
    return-object v1
.end method

.method private h()V
    .registers 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_2
    if-nez v1, :cond_91

    .line 1
    invoke-direct {p0}, Lx1/d;->b()Z

    move-result v2

    if-nez v2, :cond_91

    .line 2
    invoke-direct {p0}, Lx1/d;->d()I

    move-result v2

    const/16 v3, 0x21

    const/4 v4, 0x1

    if-eq v2, v3, :cond_33

    const/16 v3, 0x2c

    if-eq v2, v3, :cond_22

    const/16 v3, 0x3b

    if-eq v2, v3, :cond_20

    .line 3
    iget-object v2, p0, Lx1/d;->c:Lx1/c;

    iput v4, v2, Lx1/c;->b:I

    goto :goto_2

    :cond_20
    const/4 v1, 0x1

    goto :goto_2

    .line 4
    :cond_22
    iget-object v2, p0, Lx1/d;->c:Lx1/c;

    iget-object v3, v2, Lx1/c;->d:Lx1/b;

    if-nez v3, :cond_2f

    .line 5
    new-instance v3, Lx1/b;

    invoke-direct {v3}, Lx1/b;-><init>()V

    iput-object v3, v2, Lx1/c;->d:Lx1/b;

    .line 6
    :cond_2f
    invoke-direct {p0}, Lx1/d;->e()V

    goto :goto_2

    .line 7
    :cond_33
    invoke-direct {p0}, Lx1/d;->d()I

    move-result v2

    if-eq v2, v4, :cond_8c

    const/16 v3, 0xf9

    if-eq v2, v3, :cond_7e

    const/16 v3, 0xfe

    if-eq v2, v3, :cond_7a

    const/16 v3, 0xff

    if-eq v2, v3, :cond_49

    .line 8
    invoke-direct {p0}, Lx1/d;->p()V

    goto :goto_2

    .line 9
    :cond_49
    invoke-direct {p0}, Lx1/d;->f()I

    const-string v2, ""

    const/4 v3, 0x0

    :goto_4f
    const/16 v4, 0xb

    if-ge v3, v4, :cond_6a

    .line 10
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lx1/d;->a:[B

    aget-byte v2, v2, v3

    int-to-char v2, v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v3, v3, 0x1

    goto :goto_4f

    :cond_6a
    const-string v3, "NETSCAPE2.0"

    .line 11
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_76

    .line 12
    invoke-direct {p0}, Lx1/d;->l()V

    goto :goto_2

    .line 13
    :cond_76
    invoke-direct {p0}, Lx1/d;->p()V

    goto :goto_2

    .line 14
    :cond_7a
    invoke-direct {p0}, Lx1/d;->p()V

    goto :goto_2

    .line 15
    :cond_7e
    iget-object v2, p0, Lx1/d;->c:Lx1/c;

    new-instance v3, Lx1/b;

    invoke-direct {v3}, Lx1/b;-><init>()V

    iput-object v3, v2, Lx1/c;->d:Lx1/b;

    .line 16
    invoke-direct {p0}, Lx1/d;->i()V

    goto/16 :goto_2

    .line 17
    :cond_8c
    invoke-direct {p0}, Lx1/d;->p()V

    goto/16 :goto_2

    :cond_91
    return-void
.end method

.method private i()V
    .registers 5

    .line 1
    invoke-direct {p0}, Lx1/d;->d()I

    .line 2
    invoke-direct {p0}, Lx1/d;->d()I

    move-result v0

    .line 3
    iget-object v1, p0, Lx1/d;->c:Lx1/c;

    iget-object v1, v1, Lx1/c;->d:Lx1/b;

    and-int/lit8 v2, v0, 0x1c

    shr-int/lit8 v2, v2, 0x2

    iput v2, v1, Lx1/b;->g:I

    const/4 v3, 0x1

    if-nez v2, :cond_16

    .line 4
    iput v3, v1, Lx1/b;->g:I

    :cond_16
    and-int/2addr v0, v3

    if-eqz v0, :cond_1a

    goto :goto_1b

    :cond_1a
    const/4 v3, 0x0

    .line 5
    :goto_1b
    iput-boolean v3, v1, Lx1/b;->f:Z

    .line 6
    invoke-direct {p0}, Lx1/d;->m()I

    move-result v0

    const/4 v1, 0x3

    const/16 v2, 0xa

    if-ge v0, v1, :cond_28

    const/16 v0, 0xa

    .line 7
    :cond_28
    iget-object v1, p0, Lx1/d;->c:Lx1/c;

    iget-object v1, v1, Lx1/c;->d:Lx1/b;

    mul-int/lit8 v0, v0, 0xa

    iput v0, v1, Lx1/b;->i:I

    .line 8
    invoke-direct {p0}, Lx1/d;->d()I

    move-result v0

    iput v0, v1, Lx1/b;->h:I

    .line 9
    invoke-direct {p0}, Lx1/d;->d()I

    return-void
.end method

.method private j()V
    .registers 4

    const-string v0, ""

    const/4 v1, 0x0

    :goto_3
    const/4 v2, 0x6

    if-ge v1, v2, :cond_1d

    .line 1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lx1/d;->d()I

    move-result v0

    int-to-char v0, v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_1d
    const-string v1, "GIF"

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2b

    .line 3
    iget-object v0, p0, Lx1/d;->c:Lx1/c;

    const/4 v1, 0x1

    iput v1, v0, Lx1/c;->b:I

    return-void

    .line 4
    :cond_2b
    invoke-direct {p0}, Lx1/d;->k()V

    .line 5
    iget-object v0, p0, Lx1/d;->c:Lx1/c;

    iget-boolean v0, v0, Lx1/c;->h:Z

    if-eqz v0, :cond_4e

    invoke-direct {p0}, Lx1/d;->b()Z

    move-result v0

    if-nez v0, :cond_4e

    .line 6
    iget-object v0, p0, Lx1/d;->c:Lx1/c;

    iget v1, v0, Lx1/c;->i:I

    invoke-direct {p0, v1}, Lx1/d;->g(I)[I

    move-result-object v1

    iput-object v1, v0, Lx1/c;->a:[I

    .line 7
    iget-object v0, p0, Lx1/d;->c:Lx1/c;

    iget-object v1, v0, Lx1/c;->a:[I

    iget v2, v0, Lx1/c;->j:I

    aget v1, v1, v2

    iput v1, v0, Lx1/c;->l:I

    :cond_4e
    return-void
.end method

.method private k()V
    .registers 4

    .line 1
    iget-object v0, p0, Lx1/d;->c:Lx1/c;

    invoke-direct {p0}, Lx1/d;->m()I

    move-result v1

    iput v1, v0, Lx1/c;->f:I

    .line 2
    iget-object v0, p0, Lx1/d;->c:Lx1/c;

    invoke-direct {p0}, Lx1/d;->m()I

    move-result v1

    iput v1, v0, Lx1/c;->g:I

    .line 3
    invoke-direct {p0}, Lx1/d;->d()I

    move-result v0

    .line 4
    iget-object v1, p0, Lx1/d;->c:Lx1/c;

    and-int/lit16 v2, v0, 0x80

    if-eqz v2, :cond_1c

    const/4 v2, 0x1

    goto :goto_1d

    :cond_1c
    const/4 v2, 0x0

    :goto_1d
    iput-boolean v2, v1, Lx1/c;->h:Z

    const/4 v2, 0x2

    and-int/lit8 v0, v0, 0x7

    shl-int v0, v2, v0

    .line 5
    iput v0, v1, Lx1/c;->i:I

    .line 6
    invoke-direct {p0}, Lx1/d;->d()I

    move-result v0

    iput v0, v1, Lx1/c;->j:I

    .line 7
    iget-object v0, p0, Lx1/d;->c:Lx1/c;

    invoke-direct {p0}, Lx1/d;->d()I

    move-result v1

    iput v1, v0, Lx1/c;->k:I

    return-void
.end method

.method private l()V
    .registers 4

    .line 1
    :cond_0
    invoke-direct {p0}, Lx1/d;->f()I

    .line 2
    iget-object v0, p0, Lx1/d;->a:[B

    const/4 v1, 0x0

    aget-byte v1, v0, v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1b

    .line 3
    aget-byte v1, v0, v2

    and-int/lit16 v1, v1, 0xff

    const/4 v2, 0x2

    .line 4
    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    .line 5
    iget-object v2, p0, Lx1/d;->c:Lx1/c;

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr v0, v1

    iput v0, v2, Lx1/c;->m:I

    .line 6
    :cond_1b
    iget v0, p0, Lx1/d;->d:I

    if-lez v0, :cond_25

    invoke-direct {p0}, Lx1/d;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_25
    return-void
.end method

.method private m()I
    .registers 2

    .line 1
    iget-object v0, p0, Lx1/d;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    return v0
.end method

.method private n()V
    .registers 3

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lx1/d;->b:Ljava/nio/ByteBuffer;

    .line 2
    iget-object v0, p0, Lx1/d;->a:[B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([BB)V

    .line 3
    new-instance v0, Lx1/c;

    invoke-direct {v0}, Lx1/c;-><init>()V

    iput-object v0, p0, Lx1/d;->c:Lx1/c;

    .line 4
    iput v1, p0, Lx1/d;->d:I

    return-void
.end method

.method private p()V
    .registers 4

    .line 1
    :cond_0
    invoke-direct {p0}, Lx1/d;->d()I

    move-result v0

    .line 2
    iget-object v1, p0, Lx1/d;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    add-int/2addr v2, v0

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    if-gtz v0, :cond_0

    return-void
.end method

.method private q()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lx1/d;->d()I

    .line 2
    invoke-direct {p0}, Lx1/d;->p()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lx1/d;->b:Ljava/nio/ByteBuffer;

    .line 2
    iput-object v0, p0, Lx1/d;->c:Lx1/c;

    return-void
.end method

.method public c()Lx1/c;
    .registers 3

    .line 1
    iget-object v0, p0, Lx1/d;->b:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_25

    .line 2
    invoke-direct {p0}, Lx1/d;->b()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 3
    iget-object v0, p0, Lx1/d;->c:Lx1/c;

    return-object v0

    .line 4
    :cond_d
    invoke-direct {p0}, Lx1/d;->j()V

    .line 5
    invoke-direct {p0}, Lx1/d;->b()Z

    move-result v0

    if-nez v0, :cond_22

    .line 6
    invoke-direct {p0}, Lx1/d;->h()V

    .line 7
    iget-object v0, p0, Lx1/d;->c:Lx1/c;

    iget v1, v0, Lx1/c;->c:I

    if-gez v1, :cond_22

    const/4 v1, 0x1

    .line 8
    iput v1, v0, Lx1/c;->b:I

    .line 9
    :cond_22
    iget-object v0, p0, Lx1/d;->c:Lx1/c;

    return-object v0

    .line 10
    :cond_25
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You must call setData() before parseHeader()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public o([B)Lx1/d;
    .registers 3

    .line 1
    invoke-direct {p0}, Lx1/d;->n()V

    if-eqz p1, :cond_16

    .line 2
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lx1/d;->b:Ljava/nio/ByteBuffer;

    .line 3
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 4
    iget-object p1, p0, Lx1/d;->b:Ljava/nio/ByteBuffer;

    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    goto :goto_1e

    :cond_16
    const/4 p1, 0x0

    .line 5
    iput-object p1, p0, Lx1/d;->b:Ljava/nio/ByteBuffer;

    .line 6
    iget-object p1, p0, Lx1/d;->c:Lx1/c;

    const/4 v0, 0x2

    iput v0, p1, Lx1/c;->b:I

    :goto_1e
    return-object p0
.end method
