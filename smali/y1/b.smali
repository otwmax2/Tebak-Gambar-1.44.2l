###### Class y1.b (y1.b)
.class Ly1/b;
.super Ljava/lang/Object;
.source "LZWEncoder.java"


# instance fields
.field private a:I

.field private b:I

.field private c:[B

.field private d:I

.field private e:I

.field private f:I

.field g:I

.field h:I

.field i:I

.field j:I

.field k:[I

.field l:[I

.field m:I

.field n:I

.field o:Z

.field p:I

.field q:I

.field r:I

.field s:I

.field t:I

.field u:[I

.field v:I

.field w:[B


# direct methods
.method constructor <init>(II[BI)V
    .registers 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xc

    .line 2
    iput v0, p0, Ly1/b;->h:I

    const/16 v0, 0x1000

    .line 3
    iput v0, p0, Ly1/b;->j:I

    const/16 v0, 0x138b

    new-array v1, v0, [I

    .line 4
    iput-object v1, p0, Ly1/b;->k:[I

    new-array v1, v0, [I

    .line 5
    iput-object v1, p0, Ly1/b;->l:[I

    .line 6
    iput v0, p0, Ly1/b;->m:I

    const/4 v0, 0x0

    .line 7
    iput v0, p0, Ly1/b;->n:I

    .line 8
    iput-boolean v0, p0, Ly1/b;->o:Z

    .line 9
    iput v0, p0, Ly1/b;->s:I

    .line 10
    iput v0, p0, Ly1/b;->t:I

    const/16 v0, 0x11

    new-array v0, v0, [I

    .line 11
    fill-array-data v0, :array_3e

    iput-object v0, p0, Ly1/b;->u:[I

    const/16 v0, 0x100

    new-array v0, v0, [B

    .line 12
    iput-object v0, p0, Ly1/b;->w:[B

    .line 13
    iput p1, p0, Ly1/b;->a:I

    .line 14
    iput p2, p0, Ly1/b;->b:I

    .line 15
    iput-object p3, p0, Ly1/b;->c:[B

    const/4 p1, 0x2

    .line 16
    invoke-static {p1, p4}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Ly1/b;->d:I

    return-void

    nop

    :array_3e
    .array-data 4
        0x0
        0x1
        0x3
        0x7
        0xf
        0x1f
        0x3f
        0x7f
        0xff
        0x1ff
        0x3ff
        0x7ff
        0xfff
        0x1fff
        0x3fff
        0x7fff
        0xffff
    .end array-data
.end method

.method private h()I
    .registers 4

    .line 1
    iget v0, p0, Ly1/b;->e:I

    if-nez v0, :cond_6

    const/4 v0, -0x1

    return v0

    :cond_6
    add-int/lit8 v0, v0, -0x1

    .line 2
    iput v0, p0, Ly1/b;->e:I

    .line 3
    iget-object v0, p0, Ly1/b;->c:[B

    iget v1, p0, Ly1/b;->f:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ly1/b;->f:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method


# virtual methods
.method final a(I)I
    .registers 3

    const/4 v0, 0x1

    shl-int p1, v0, p1

    sub-int/2addr p1, v0

    return p1
.end method

.method b(BLjava/io/OutputStream;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ly1/b;->w:[B

    iget v1, p0, Ly1/b;->v:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ly1/b;->v:I

    aput-byte p1, v0, v1

    const/16 p1, 0xfe

    if-lt v2, p1, :cond_11

    .line 2
    invoke-virtual {p0, p2}, Ly1/b;->g(Ljava/io/OutputStream;)V

    :cond_11
    return-void
.end method

.method c(Ljava/io/OutputStream;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Ly1/b;->m:I

    invoke-virtual {p0, v0}, Ly1/b;->d(I)V

    .line 2
    iget v0, p0, Ly1/b;->q:I

    add-int/lit8 v1, v0, 0x2

    iput v1, p0, Ly1/b;->n:I

    const/4 v1, 0x1

    .line 3
    iput-boolean v1, p0, Ly1/b;->o:Z

    .line 4
    invoke-virtual {p0, v0, p1}, Ly1/b;->i(ILjava/io/OutputStream;)V

    return-void
.end method

.method d(I)V
    .registers 5

    const/4 v0, 0x0

    :goto_1
    if-ge v0, p1, :cond_b

    .line 1
    iget-object v1, p0, Ly1/b;->k:[I

    const/4 v2, -0x1

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_b
    return-void
.end method

.method e(ILjava/io/OutputStream;)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iput p1, p0, Ly1/b;->p:I

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Ly1/b;->o:Z

    .line 3
    iput p1, p0, Ly1/b;->g:I

    .line 4
    invoke-virtual {p0, p1}, Ly1/b;->a(I)I

    move-result v1

    iput v1, p0, Ly1/b;->i:I

    const/4 v1, 0x1

    sub-int/2addr p1, v1

    shl-int p1, v1, p1

    .line 5
    iput p1, p0, Ly1/b;->q:I

    add-int/lit8 v2, p1, 0x1

    .line 6
    iput v2, p0, Ly1/b;->r:I

    add-int/lit8 p1, p1, 0x2

    .line 7
    iput p1, p0, Ly1/b;->n:I

    .line 8
    iput v0, p0, Ly1/b;->v:I

    .line 9
    invoke-direct {p0}, Ly1/b;->h()I

    move-result p1

    .line 10
    iget v2, p0, Ly1/b;->m:I

    :goto_23
    const/high16 v3, 0x10000

    if-ge v2, v3, :cond_2c

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v2, v2, 0x2

    goto :goto_23

    :cond_2c
    rsub-int/lit8 v0, v0, 0x8

    .line 11
    iget v2, p0, Ly1/b;->m:I

    .line 12
    invoke-virtual {p0, v2}, Ly1/b;->d(I)V

    .line 13
    iget v3, p0, Ly1/b;->q:I

    invoke-virtual {p0, v3, p2}, Ly1/b;->i(ILjava/io/OutputStream;)V

    .line 14
    :goto_38
    invoke-direct {p0}, Ly1/b;->h()I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_89

    .line 15
    iget v4, p0, Ly1/b;->h:I

    shl-int v4, v3, v4

    add-int/2addr v4, p1

    shl-int v5, v3, v0

    xor-int/2addr v5, p1

    .line 16
    iget-object v6, p0, Ly1/b;->k:[I

    aget v7, v6, v5

    if-ne v7, v4, :cond_52

    .line 17
    iget-object p1, p0, Ly1/b;->l:[I

    aget p1, p1, v5

    goto :goto_38

    .line 18
    :cond_52
    aget v6, v6, v5

    if-ltz v6, :cond_6e

    sub-int v6, v2, v5

    if-nez v5, :cond_5b

    const/4 v6, 0x1

    :cond_5b
    sub-int/2addr v5, v6

    if-gez v5, :cond_5f

    add-int/2addr v5, v2

    .line 19
    :cond_5f
    iget-object v7, p0, Ly1/b;->k:[I

    aget v8, v7, v5

    if-ne v8, v4, :cond_6a

    .line 20
    iget-object p1, p0, Ly1/b;->l:[I

    aget p1, p1, v5

    goto :goto_38

    .line 21
    :cond_6a
    aget v7, v7, v5

    if-gez v7, :cond_5b

    .line 22
    :cond_6e
    invoke-virtual {p0, p1, p2}, Ly1/b;->i(ILjava/io/OutputStream;)V

    .line 23
    iget p1, p0, Ly1/b;->n:I

    iget v6, p0, Ly1/b;->j:I

    if-ge p1, v6, :cond_84

    .line 24
    iget-object v6, p0, Ly1/b;->l:[I

    add-int/lit8 v7, p1, 0x1

    iput v7, p0, Ly1/b;->n:I

    aput p1, v6, v5

    .line 25
    iget-object p1, p0, Ly1/b;->k:[I

    aput v4, p1, v5

    goto :goto_87

    .line 26
    :cond_84
    invoke-virtual {p0, p2}, Ly1/b;->c(Ljava/io/OutputStream;)V

    :goto_87
    move p1, v3

    goto :goto_38

    .line 27
    :cond_89
    invoke-virtual {p0, p1, p2}, Ly1/b;->i(ILjava/io/OutputStream;)V

    .line 28
    iget p1, p0, Ly1/b;->r:I

    invoke-virtual {p0, p1, p2}, Ly1/b;->i(ILjava/io/OutputStream;)V

    return-void
.end method

.method f(Ljava/io/OutputStream;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Ly1/b;->d:I

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 2
    iget v0, p0, Ly1/b;->a:I

    iget v1, p0, Ly1/b;->b:I

    mul-int v0, v0, v1

    iput v0, p0, Ly1/b;->e:I

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Ly1/b;->f:I

    .line 4
    iget v1, p0, Ly1/b;->d:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1, p1}, Ly1/b;->e(ILjava/io/OutputStream;)V

    .line 5
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    return-void
.end method

.method g(Ljava/io/OutputStream;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Ly1/b;->v:I

    if-lez v0, :cond_11

    .line 2
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 3
    iget-object v0, p0, Ly1/b;->w:[B

    iget v1, p0, Ly1/b;->v:I

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    .line 4
    iput v2, p0, Ly1/b;->v:I

    :cond_11
    return-void
.end method

.method i(ILjava/io/OutputStream;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Ly1/b;->s:I

    iget-object v1, p0, Ly1/b;->u:[I

    iget v2, p0, Ly1/b;->t:I

    aget v1, v1, v2

    and-int/2addr v0, v1

    iput v0, p0, Ly1/b;->s:I

    if-lez v2, :cond_13

    shl-int v1, p1, v2

    or-int/2addr v0, v1

    .line 2
    iput v0, p0, Ly1/b;->s:I

    goto :goto_15

    .line 3
    :cond_13
    iput p1, p0, Ly1/b;->s:I

    .line 4
    :goto_15
    iget v0, p0, Ly1/b;->g:I

    add-int/2addr v2, v0

    iput v2, p0, Ly1/b;->t:I

    .line 5
    :goto_1a
    iget v0, p0, Ly1/b;->t:I

    const/16 v1, 0x8

    if-lt v0, v1, :cond_33

    .line 6
    iget v0, p0, Ly1/b;->s:I

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    invoke-virtual {p0, v0, p2}, Ly1/b;->b(BLjava/io/OutputStream;)V

    .line 7
    iget v0, p0, Ly1/b;->s:I

    shr-int/2addr v0, v1

    iput v0, p0, Ly1/b;->s:I

    .line 8
    iget v0, p0, Ly1/b;->t:I

    sub-int/2addr v0, v1

    iput v0, p0, Ly1/b;->t:I

    goto :goto_1a

    .line 9
    :cond_33
    iget v0, p0, Ly1/b;->n:I

    iget v2, p0, Ly1/b;->i:I

    if-gt v0, v2, :cond_3d

    iget-boolean v0, p0, Ly1/b;->o:Z

    if-eqz v0, :cond_64

    .line 10
    :cond_3d
    iget-boolean v0, p0, Ly1/b;->o:Z

    if-eqz v0, :cond_4f

    .line 11
    iget v0, p0, Ly1/b;->p:I

    iput v0, p0, Ly1/b;->g:I

    invoke-virtual {p0, v0}, Ly1/b;->a(I)I

    move-result v0

    iput v0, p0, Ly1/b;->i:I

    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Ly1/b;->o:Z

    goto :goto_64

    .line 13
    :cond_4f
    iget v0, p0, Ly1/b;->g:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ly1/b;->g:I

    .line 14
    iget v2, p0, Ly1/b;->h:I

    if-ne v0, v2, :cond_5e

    .line 15
    iget v0, p0, Ly1/b;->j:I

    iput v0, p0, Ly1/b;->i:I

    goto :goto_64

    .line 16
    :cond_5e
    invoke-virtual {p0, v0}, Ly1/b;->a(I)I

    move-result v0

    iput v0, p0, Ly1/b;->i:I

    .line 17
    :cond_64
    :goto_64
    iget v0, p0, Ly1/b;->r:I

    if-ne p1, v0, :cond_82

    .line 18
    :goto_68
    iget p1, p0, Ly1/b;->t:I

    if-lez p1, :cond_7f

    .line 19
    iget p1, p0, Ly1/b;->s:I

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    invoke-virtual {p0, p1, p2}, Ly1/b;->b(BLjava/io/OutputStream;)V

    .line 20
    iget p1, p0, Ly1/b;->s:I

    shr-int/2addr p1, v1

    iput p1, p0, Ly1/b;->s:I

    .line 21
    iget p1, p0, Ly1/b;->t:I

    sub-int/2addr p1, v1

    iput p1, p0, Ly1/b;->t:I

    goto :goto_68

    .line 22
    :cond_7f
    invoke-virtual {p0, p2}, Ly1/b;->g(Ljava/io/OutputStream;)V

    :cond_82
    return-void
.end method
