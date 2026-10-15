###### Class okio.c (okio.c)
.class public final Lokio/c;
.super Ljava/lang/Object;
.source "Buffer.java"

# interfaces
.implements Lokio/e;
.implements Lokio/d;
.implements Ljava/lang/Cloneable;
.implements Ljava/nio/channels/ByteChannel;


# static fields
.field private static final q:[B


# instance fields
.field o:Lokio/q;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field p:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x10

    new-array v0, v0, [B

    .line 1
    fill-array-data v0, :array_a

    sput-object v0, Lokio/c;->q:[B

    return-void

    :array_a
    .array-data 1
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public A(J)Lokio/c;
    .registers 14

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_d

    const/16 p1, 0x30

    .line 1
    invoke-virtual {p0, p1}, Lokio/c;->z(I)Lokio/c;

    move-result-object p1

    return-object p1

    :cond_d
    const/4 v2, 0x0

    const/4 v3, 0x1

    cmp-long v4, p1, v0

    if-gez v4, :cond_20

    neg-long p1, p1

    cmp-long v2, p1, v0

    if-gez v2, :cond_1f

    const-string p1, "-9223372036854775808"

    .line 2
    invoke-virtual {p0, p1}, Lokio/c;->J(Ljava/lang/String;)Lokio/c;

    move-result-object p1

    return-object p1

    :cond_1f
    const/4 v2, 0x1

    :cond_20
    const-wide/32 v4, 0x5f5e100

    const-wide/16 v6, 0xa

    cmp-long v8, p1, v4

    if-gez v8, :cond_6c

    const-wide/16 v4, 0x2710

    cmp-long v8, p1, v4

    if-gez v8, :cond_4a

    const-wide/16 v4, 0x64

    cmp-long v8, p1, v4

    if-gez v8, :cond_3e

    cmp-long v4, p1, v6

    if-gez v4, :cond_3b

    goto/16 :goto_e4

    :cond_3b
    const/4 v3, 0x2

    goto/16 :goto_e4

    :cond_3e
    const-wide/16 v3, 0x3e8

    cmp-long v5, p1, v3

    if-gez v5, :cond_47

    const/4 v3, 0x3

    goto/16 :goto_e4

    :cond_47
    const/4 v3, 0x4

    goto/16 :goto_e4

    :cond_4a
    const-wide/32 v3, 0xf4240

    cmp-long v5, p1, v3

    if-gez v5, :cond_5e

    const-wide/32 v3, 0x186a0

    cmp-long v5, p1, v3

    if-gez v5, :cond_5b

    const/4 v3, 0x5

    goto/16 :goto_e4

    :cond_5b
    const/4 v3, 0x6

    goto/16 :goto_e4

    :cond_5e
    const-wide/32 v3, 0x989680

    cmp-long v5, p1, v3

    if-gez v5, :cond_68

    const/4 v3, 0x7

    goto/16 :goto_e4

    :cond_68
    const/16 v3, 0x8

    goto/16 :goto_e4

    :cond_6c
    const-wide v3, 0xe8d4a51000L

    cmp-long v5, p1, v3

    if-gez v5, :cond_9a

    const-wide v3, 0x2540be400L

    cmp-long v5, p1, v3

    if-gez v5, :cond_8b

    const-wide/32 v3, 0x3b9aca00

    cmp-long v5, p1, v3

    if-gez v5, :cond_88

    const/16 v3, 0x9

    goto :goto_e4

    :cond_88
    const/16 v3, 0xa

    goto :goto_e4

    :cond_8b
    const-wide v3, 0x174876e800L

    cmp-long v5, p1, v3

    if-gez v5, :cond_97

    const/16 v3, 0xb

    goto :goto_e4

    :cond_97
    const/16 v3, 0xc

    goto :goto_e4

    :cond_9a
    const-wide v3, 0x38d7ea4c68000L

    cmp-long v5, p1, v3

    if-gez v5, :cond_be

    const-wide v3, 0x9184e72a000L

    cmp-long v5, p1, v3

    if-gez v5, :cond_af

    const/16 v3, 0xd

    goto :goto_e4

    :cond_af
    const-wide v3, 0x5af3107a4000L

    cmp-long v5, p1, v3

    if-gez v5, :cond_bb

    const/16 v3, 0xe

    goto :goto_e4

    :cond_bb
    const/16 v3, 0xf

    goto :goto_e4

    :cond_be
    const-wide v3, 0x16345785d8a0000L

    cmp-long v5, p1, v3

    if-gez v5, :cond_d6

    const-wide v3, 0x2386f26fc10000L

    cmp-long v5, p1, v3

    if-gez v5, :cond_d3

    const/16 v3, 0x10

    goto :goto_e4

    :cond_d3
    const/16 v3, 0x11

    goto :goto_e4

    :cond_d6
    const-wide v3, 0xde0b6b3a7640000L

    cmp-long v5, p1, v3

    if-gez v5, :cond_e2

    const/16 v3, 0x12

    goto :goto_e4

    :cond_e2
    const/16 v3, 0x13

    :goto_e4
    if-eqz v2, :cond_e8

    add-int/lit8 v3, v3, 0x1

    .line 3
    :cond_e8
    invoke-virtual {p0, v3}, Lokio/c;->v(I)Lokio/q;

    move-result-object v4

    .line 4
    iget-object v5, v4, Lokio/q;->a:[B

    .line 5
    iget v8, v4, Lokio/q;->c:I

    add-int/2addr v8, v3

    :goto_f1
    cmp-long v9, p1, v0

    if-eqz v9, :cond_102

    .line 6
    rem-long v9, p1, v6

    long-to-int v10, v9

    add-int/lit8 v8, v8, -0x1

    .line 7
    sget-object v9, Lokio/c;->q:[B

    aget-byte v9, v9, v10

    aput-byte v9, v5, v8

    .line 8
    div-long/2addr p1, v6

    goto :goto_f1

    :cond_102
    if-eqz v2, :cond_10a

    add-int/lit8 v8, v8, -0x1

    const/16 p1, 0x2d

    .line 9
    aput-byte p1, v5, v8

    .line 10
    :cond_10a
    iget p1, v4, Lokio/q;->c:I

    add-int/2addr p1, v3

    iput p1, v4, Lokio/q;->c:I

    .line 11
    iget-wide p1, p0, Lokio/c;->p:J

    int-to-long v0, v3

    add-long/2addr p1, v0

    iput-wide p1, p0, Lokio/c;->p:J

    return-object p0
.end method

.method public B()Lokio/c;
    .registers 1

    return-object p0
.end method

.method public C(J)Lokio/c;
    .registers 12

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_d

    const/16 p1, 0x30

    .line 1
    invoke-virtual {p0, p1}, Lokio/c;->z(I)Lokio/c;

    move-result-object p1

    return-object p1

    .line 2
    :cond_d
    invoke-static {p1, p2}, Ljava/lang/Long;->highestOneBit(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result v0

    const/4 v1, 0x4

    div-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    .line 3
    invoke-virtual {p0, v0}, Lokio/c;->v(I)Lokio/q;

    move-result-object v2

    .line 4
    iget-object v3, v2, Lokio/q;->a:[B

    .line 5
    iget v4, v2, Lokio/q;->c:I

    add-int v5, v4, v0

    add-int/lit8 v5, v5, -0x1

    :goto_25
    if-lt v5, v4, :cond_35

    .line 6
    sget-object v6, Lokio/c;->q:[B

    const-wide/16 v7, 0xf

    and-long/2addr v7, p1

    long-to-int v8, v7

    aget-byte v6, v6, v8

    aput-byte v6, v3, v5

    ushr-long/2addr p1, v1

    add-int/lit8 v5, v5, -0x1

    goto :goto_25

    .line 7
    :cond_35
    iget p1, v2, Lokio/q;->c:I

    add-int/2addr p1, v0

    iput p1, v2, Lokio/q;->c:I

    .line 8
    iget-wide p1, p0, Lokio/c;->p:J

    int-to-long v0, v0

    add-long/2addr p1, v0

    iput-wide p1, p0, Lokio/c;->p:J

    return-object p0
.end method

.method public D2()Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    const-wide v0, 0x7fffffffffffffffL

    .line 1
    invoke-virtual {p0, v0, v1}, Lokio/c;->p1(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic D3(J)Lokio/d;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lokio/c;->A(J)Lokio/c;

    move-result-object p1

    return-object p1
.end method

.method public E(I)Lokio/c;
    .registers 7

    const/4 v0, 0x4

    .line 1
    invoke-virtual {p0, v0}, Lokio/c;->v(I)Lokio/q;

    move-result-object v0

    .line 2
    iget-object v1, v0, Lokio/q;->a:[B

    .line 3
    iget v2, v0, Lokio/q;->c:I

    add-int/lit8 v3, v2, 0x1

    ushr-int/lit8 v4, p1, 0x18

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    .line 4
    aput-byte v4, v1, v2

    add-int/lit8 v2, v3, 0x1

    ushr-int/lit8 v4, p1, 0x10

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    .line 5
    aput-byte v4, v1, v3

    add-int/lit8 v3, v2, 0x1

    ushr-int/lit8 v4, p1, 0x8

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    .line 6
    aput-byte v4, v1, v2

    add-int/lit8 v2, v3, 0x1

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    .line 7
    aput-byte p1, v1, v3

    .line 8
    iput v2, v0, Lokio/q;->c:I

    .line 9
    iget-wide v0, p0, Lokio/c;->p:J

    const-wide/16 v2, 0x4

    add-long/2addr v0, v2

    iput-wide v0, p0, Lokio/c;->p:J

    return-object p0
.end method

.method public F(I)Lokio/c;
    .registers 2

    .line 1
    invoke-static {p1}, Lokio/w;->c(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lokio/c;->E(I)Lokio/c;

    move-result-object p1

    return-object p1
.end method

.method public G(I)Lokio/c;
    .registers 7

    const/4 v0, 0x2

    .line 1
    invoke-virtual {p0, v0}, Lokio/c;->v(I)Lokio/q;

    move-result-object v0

    .line 2
    iget-object v1, v0, Lokio/q;->a:[B

    .line 3
    iget v2, v0, Lokio/q;->c:I

    add-int/lit8 v3, v2, 0x1

    ushr-int/lit8 v4, p1, 0x8

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    .line 4
    aput-byte v4, v1, v2

    add-int/lit8 v2, v3, 0x1

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    .line 5
    aput-byte p1, v1, v3

    .line 6
    iput v2, v0, Lokio/q;->c:I

    .line 7
    iget-wide v0, p0, Lokio/c;->p:J

    const-wide/16 v2, 0x2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lokio/c;->p:J

    return-object p0
.end method

.method public H(Ljava/lang/String;IILjava/nio/charset/Charset;)Lokio/c;
    .registers 6

    if-eqz p1, :cond_8b

    if-ltz p2, :cond_74

    if-lt p3, p2, :cond_55

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-gt p3, v0, :cond_32

    if-eqz p4, :cond_2a

    .line 2
    sget-object v0, Lokio/w;->a:Ljava/nio/charset/Charset;

    invoke-virtual {p4, v0}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-virtual {p0, p1, p2, p3}, Lokio/c;->K(Ljava/lang/String;II)Lokio/c;

    move-result-object p1

    return-object p1

    .line 3
    :cond_1b
    invoke-virtual {p1, p2, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    const/4 p2, 0x0

    .line 4
    array-length p3, p1

    invoke-virtual {p0, p1, p2, p3}, Lokio/c;->y([BII)Lokio/c;

    move-result-object p1

    return-object p1

    .line 5
    :cond_2a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "charset == null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 6
    :cond_32
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "endIndex > string.length: "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " > "

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 8
    :cond_55
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "endIndex < beginIndex: "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " < "

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 9
    :cond_74
    new-instance p1, Ljava/lang/IllegalAccessError;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "beginIndex < 0: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw p1

    .line 10
    :cond_8b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "string == null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic H1(Ljava/lang/String;)Lokio/d;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lokio/c;->J(Ljava/lang/String;)Lokio/c;

    move-result-object p1

    return-object p1
.end method

.method public I(Ljava/lang/String;Ljava/nio/charset/Charset;)Lokio/c;
    .registers 5

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0, p2}, Lokio/c;->H(Ljava/lang/String;IILjava/nio/charset/Charset;)Lokio/c;

    move-result-object p1

    return-object p1
.end method

.method public I2()I
    .registers 2

    .line 1
    invoke-virtual {p0}, Lokio/c;->readInt()I

    move-result v0

    invoke-static {v0}, Lokio/w;->c(I)I

    move-result v0

    return v0
.end method

.method public J(Ljava/lang/String;)Lokio/c;
    .registers 4

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lokio/c;->K(Ljava/lang/String;II)Lokio/c;

    move-result-object p1

    return-object p1
.end method

.method public K(Ljava/lang/String;II)Lokio/c;
    .registers 11

    if-eqz p1, :cond_125

    if-ltz p2, :cond_10e

    if-lt p3, p2, :cond_ef

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-gt p3, v0, :cond_cc

    :goto_c
    if-ge p2, p3, :cond_cb

    .line 2
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x80

    if-ge v0, v1, :cond_4c

    const/4 v2, 0x1

    .line 3
    invoke-virtual {p0, v2}, Lokio/c;->v(I)Lokio/q;

    move-result-object v2

    .line 4
    iget-object v3, v2, Lokio/q;->a:[B

    .line 5
    iget v4, v2, Lokio/q;->c:I

    sub-int/2addr v4, p2

    rsub-int v5, v4, 0x2000

    .line 6
    invoke-static {p3, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    add-int/lit8 v6, p2, 0x1

    add-int/2addr p2, v4

    int-to-byte v0, v0

    .line 7
    aput-byte v0, v3, p2

    :goto_2c
    if-ge v6, v5, :cond_3d

    .line 8
    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result p2

    if-lt p2, v1, :cond_35

    goto :goto_3d

    :cond_35
    add-int/lit8 v0, v6, 0x1

    add-int/2addr v6, v4

    int-to-byte p2, p2

    .line 9
    aput-byte p2, v3, v6

    move v6, v0

    goto :goto_2c

    :cond_3d
    :goto_3d
    add-int/2addr v4, v6

    .line 10
    iget p2, v2, Lokio/q;->c:I

    sub-int/2addr v4, p2

    add-int/2addr p2, v4

    .line 11
    iput p2, v2, Lokio/q;->c:I

    .line 12
    iget-wide v0, p0, Lokio/c;->p:J

    int-to-long v2, v4

    add-long/2addr v0, v2

    iput-wide v0, p0, Lokio/c;->p:J

    move p2, v6

    goto :goto_c

    :cond_4c
    const/16 v2, 0x800

    if-ge v0, v2, :cond_60

    shr-int/lit8 v2, v0, 0x6

    or-int/lit16 v2, v2, 0xc0

    .line 13
    invoke-virtual {p0, v2}, Lokio/c;->z(I)Lokio/c;

    and-int/lit8 v0, v0, 0x3f

    or-int/2addr v0, v1

    .line 14
    invoke-virtual {p0, v0}, Lokio/c;->z(I)Lokio/c;

    :goto_5d
    add-int/lit8 p2, p2, 0x1

    goto :goto_c

    :cond_60
    const v2, 0xd800

    const/16 v3, 0x3f

    if-lt v0, v2, :cond_b6

    const v2, 0xdfff

    if-le v0, v2, :cond_6d

    goto :goto_b6

    :cond_6d
    add-int/lit8 v4, p2, 0x1

    if-ge v4, p3, :cond_76

    .line 15
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    goto :goto_77

    :cond_76
    const/4 v5, 0x0

    :goto_77
    const v6, 0xdbff

    if-gt v0, v6, :cond_b0

    const v6, 0xdc00

    if-lt v5, v6, :cond_b0

    if-le v5, v2, :cond_84

    goto :goto_b0

    :cond_84
    const/high16 v2, 0x10000

    const v4, -0xd801

    and-int/2addr v0, v4

    shl-int/lit8 v0, v0, 0xa

    const v4, -0xdc01

    and-int/2addr v4, v5

    or-int/2addr v0, v4

    add-int/2addr v0, v2

    shr-int/lit8 v2, v0, 0x12

    or-int/lit16 v2, v2, 0xf0

    .line 16
    invoke-virtual {p0, v2}, Lokio/c;->z(I)Lokio/c;

    shr-int/lit8 v2, v0, 0xc

    and-int/2addr v2, v3

    or-int/2addr v2, v1

    .line 17
    invoke-virtual {p0, v2}, Lokio/c;->z(I)Lokio/c;

    shr-int/lit8 v2, v0, 0x6

    and-int/2addr v2, v3

    or-int/2addr v2, v1

    .line 18
    invoke-virtual {p0, v2}, Lokio/c;->z(I)Lokio/c;

    and-int/2addr v0, v3

    or-int/2addr v0, v1

    .line 19
    invoke-virtual {p0, v0}, Lokio/c;->z(I)Lokio/c;

    add-int/lit8 p2, p2, 0x2

    goto/16 :goto_c

    .line 20
    :cond_b0
    :goto_b0
    invoke-virtual {p0, v3}, Lokio/c;->z(I)Lokio/c;

    move p2, v4

    goto/16 :goto_c

    :cond_b6
    :goto_b6
    shr-int/lit8 v2, v0, 0xc

    or-int/lit16 v2, v2, 0xe0

    .line 21
    invoke-virtual {p0, v2}, Lokio/c;->z(I)Lokio/c;

    shr-int/lit8 v2, v0, 0x6

    and-int/2addr v2, v3

    or-int/2addr v2, v1

    .line 22
    invoke-virtual {p0, v2}, Lokio/c;->z(I)Lokio/c;

    and-int/lit8 v0, v0, 0x3f

    or-int/2addr v0, v1

    .line 23
    invoke-virtual {p0, v0}, Lokio/c;->z(I)Lokio/c;

    goto :goto_5d

    :cond_cb
    return-object p0

    .line 24
    :cond_cc
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "endIndex > string.length: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " > "

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 26
    :cond_ef
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "endIndex < beginIndex: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " < "

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 27
    :cond_10e
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "beginIndex < 0: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 28
    :cond_125
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "string == null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_12e

    :goto_12d
    throw p1

    :goto_12e
    goto :goto_12d
.end method

.method public K3(B)J
    .registers 8

    const-wide/16 v2, 0x0

    const-wide v4, 0x7fffffffffffffffL

    move-object v0, p0

    move v1, p1

    .line 1
    invoke-virtual/range {v0 .. v5}, Lokio/c;->j(BJJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public M(I)Lokio/c;
    .registers 5

    const/16 v0, 0x80

    if-ge p1, v0, :cond_8

    .line 1
    invoke-virtual {p0, p1}, Lokio/c;->z(I)Lokio/c;

    goto :goto_60

    :cond_8
    const/16 v1, 0x800

    const/16 v2, 0x3f

    if-ge p1, v1, :cond_1b

    shr-int/lit8 v1, p1, 0x6

    or-int/lit16 v1, v1, 0xc0

    .line 2
    invoke-virtual {p0, v1}, Lokio/c;->z(I)Lokio/c;

    and-int/2addr p1, v2

    or-int/2addr p1, v0

    .line 3
    invoke-virtual {p0, p1}, Lokio/c;->z(I)Lokio/c;

    goto :goto_60

    :cond_1b
    const/high16 v1, 0x10000

    if-ge p1, v1, :cond_41

    const v1, 0xd800

    if-lt p1, v1, :cond_2d

    const v1, 0xdfff

    if-gt p1, v1, :cond_2d

    .line 4
    invoke-virtual {p0, v2}, Lokio/c;->z(I)Lokio/c;

    goto :goto_60

    :cond_2d
    shr-int/lit8 v1, p1, 0xc

    or-int/lit16 v1, v1, 0xe0

    .line 5
    invoke-virtual {p0, v1}, Lokio/c;->z(I)Lokio/c;

    shr-int/lit8 v1, p1, 0x6

    and-int/2addr v1, v2

    or-int/2addr v1, v0

    .line 6
    invoke-virtual {p0, v1}, Lokio/c;->z(I)Lokio/c;

    and-int/2addr p1, v2

    or-int/2addr p1, v0

    .line 7
    invoke-virtual {p0, p1}, Lokio/c;->z(I)Lokio/c;

    goto :goto_60

    :cond_41
    const v1, 0x10ffff

    if-gt p1, v1, :cond_61

    shr-int/lit8 v1, p1, 0x12

    or-int/lit16 v1, v1, 0xf0

    .line 8
    invoke-virtual {p0, v1}, Lokio/c;->z(I)Lokio/c;

    shr-int/lit8 v1, p1, 0xc

    and-int/2addr v1, v2

    or-int/2addr v1, v0

    .line 9
    invoke-virtual {p0, v1}, Lokio/c;->z(I)Lokio/c;

    shr-int/lit8 v1, p1, 0x6

    and-int/2addr v1, v2

    or-int/2addr v1, v0

    .line 10
    invoke-virtual {p0, v1}, Lokio/c;->z(I)Lokio/c;

    and-int/2addr p1, v2

    or-int/2addr p1, v0

    .line 11
    invoke-virtual {p0, p1}, Lokio/c;->z(I)Lokio/c;

    :goto_60
    return-object p0

    .line 12
    :cond_61
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected code point: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public M0()[B
    .registers 3

    .line 1
    :try_start_0
    iget-wide v0, p0, Lokio/c;->p:J

    invoke-virtual {p0, v0, v1}, Lokio/c;->N2(J)[B

    move-result-object v0
    :try_end_6
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    :catch_7
    move-exception v0

    .line 2
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public N2(J)[B
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .line 1
    iget-wide v0, p0, Lokio/c;->p:J

    const-wide/16 v2, 0x0

    move-wide v4, p1

    invoke-static/range {v0 .. v5}, Lokio/w;->b(JJJ)V

    const-wide/32 v0, 0x7fffffff

    cmp-long v2, p1, v0

    if-gtz v2, :cond_16

    long-to-int p2, p1

    .line 2
    new-array p1, p2, [B

    .line 3
    invoke-virtual {p0, p1}, Lokio/c;->readFully([B)V

    return-object p1

    .line 4
    :cond_16
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "byteCount > Integer.MAX_VALUE: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public P3()J
    .registers 16

    .line 1
    iget-wide v0, p0, Lokio/c;->p:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_ac

    const/4 v0, 0x0

    move-wide v4, v2

    const/4 v1, 0x0

    .line 2
    :cond_b
    iget-object v6, p0, Lokio/c;->o:Lokio/q;

    .line 3
    iget-object v7, v6, Lokio/q;->a:[B

    .line 4
    iget v8, v6, Lokio/q;->b:I

    .line 5
    iget v9, v6, Lokio/q;->c:I

    :goto_13
    if-ge v8, v9, :cond_91

    .line 6
    aget-byte v10, v7, v8

    const/16 v11, 0x30

    if-lt v10, v11, :cond_22

    const/16 v11, 0x39

    if-gt v10, v11, :cond_22

    add-int/lit8 v11, v10, -0x30

    goto :goto_3a

    :cond_22
    const/16 v11, 0x61

    if-lt v10, v11, :cond_2f

    const/16 v11, 0x66

    if-gt v10, v11, :cond_2f

    add-int/lit8 v11, v10, -0x61

    :goto_2c
    add-int/lit8 v11, v11, 0xa

    goto :goto_3a

    :cond_2f
    const/16 v11, 0x41

    if-lt v10, v11, :cond_72

    const/16 v11, 0x46

    if-gt v10, v11, :cond_72

    add-int/lit8 v11, v10, -0x41

    goto :goto_2c

    :goto_3a
    const-wide/high16 v12, -0x1000000000000000L    # -3.105036184601418E231

    and-long/2addr v12, v4

    cmp-long v14, v12, v2

    if-nez v14, :cond_4a

    const/4 v10, 0x4

    shl-long/2addr v4, v10

    int-to-long v10, v11

    or-long/2addr v4, v10

    add-int/lit8 v8, v8, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    .line 7
    :cond_4a
    new-instance v0, Lokio/c;

    invoke-direct {v0}, Lokio/c;-><init>()V

    invoke-virtual {v0, v4, v5}, Lokio/c;->C(J)Lokio/c;

    move-result-object v0

    invoke-virtual {v0, v10}, Lokio/c;->z(I)Lokio/c;

    move-result-object v0

    .line 8
    new-instance v1, Ljava/lang/NumberFormatException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Number too large: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lokio/c;->o()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_72
    if-eqz v0, :cond_76

    const/4 v1, 0x1

    goto :goto_91

    .line 9
    :cond_76
    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected leading [0-9a-fA-F] character but was 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    invoke-static {v10}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_91
    :goto_91
    if-ne v8, v9, :cond_9d

    .line 11
    invoke-virtual {v6}, Lokio/q;->b()Lokio/q;

    move-result-object v7

    iput-object v7, p0, Lokio/c;->o:Lokio/q;

    .line 12
    invoke-static {v6}, Lokio/r;->a(Lokio/q;)V

    goto :goto_9f

    .line 13
    :cond_9d
    iput v8, v6, Lokio/q;->b:I

    :goto_9f
    if-nez v1, :cond_a5

    .line 14
    iget-object v6, p0, Lokio/c;->o:Lokio/q;

    if-nez v6, :cond_b

    .line 15
    :cond_a5
    iget-wide v1, p0, Lokio/c;->p:J

    int-to-long v6, v0

    sub-long/2addr v1, v6

    iput-wide v1, p0, Lokio/c;->p:J

    return-wide v4

    .line 16
    :cond_ac
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "size == 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_b5

    :goto_b4
    throw v0

    :goto_b5
    goto :goto_b4
.end method

.method public Q1(JLokio/f;)Z
    .registers 10

    .line 1
    invoke-virtual {p3}, Lokio/f;->J()I

    move-result v5

    const/4 v4, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lokio/c;->l(JLokio/f;II)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic R0(I)Lokio/d;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lokio/c;->F(I)Lokio/c;

    move-result-object p1

    return-object p1
.end method

.method public S0()Z
    .registers 6

    .line 1
    iget-wide v0, p0, Lokio/c;->p:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public S3()Ljava/io/InputStream;
    .registers 2

    .line 1
    new-instance v0, Lokio/c$b;

    invoke-direct {v0, p0}, Lokio/c$b;-><init>(Lokio/c;)V

    return-object v0
.end method

.method public bridge synthetic T0(I)Lokio/d;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lokio/c;->z(I)Lokio/c;

    move-result-object p1

    return-object p1
.end method

.method public T1(Ljava/nio/charset/Charset;)Ljava/lang/String;
    .registers 4

    .line 1
    :try_start_0
    iget-wide v0, p0, Lokio/c;->p:J

    invoke-virtual {p0, v0, v1, p1}, Lokio/c;->n(JLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p1
    :try_end_6
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_6} :catch_7

    return-object p1

    :catch_7
    move-exception p1

    .line 2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public bridge synthetic W1([BII)Lokio/d;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lokio/c;->y([BII)Lokio/c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic Y2([B)Lokio/d;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lokio/c;->x([B)Lokio/c;

    move-result-object p1

    return-object p1
.end method

.method public a2(Lokio/c;J)V
    .registers 11

    if-eqz p1, :cond_8d

    if-eq p1, p0, :cond_85

    .line 1
    iget-wide v0, p1, Lokio/c;->p:J

    const-wide/16 v2, 0x0

    move-wide v4, p2

    invoke-static/range {v0 .. v5}, Lokio/w;->b(JJJ)V

    :goto_c
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-lez v2, :cond_84

    .line 2
    iget-object v0, p1, Lokio/c;->o:Lokio/q;

    iget v1, v0, Lokio/q;->c:I

    iget v2, v0, Lokio/q;->b:I

    sub-int/2addr v1, v2

    int-to-long v1, v1

    cmp-long v3, p2, v1

    if-gez v3, :cond_56

    .line 3
    iget-object v1, p0, Lokio/c;->o:Lokio/q;

    if-eqz v1, :cond_25

    iget-object v1, v1, Lokio/q;->g:Lokio/q;

    goto :goto_26

    :cond_25
    const/4 v1, 0x0

    :goto_26
    if-eqz v1, :cond_4f

    .line 4
    iget-boolean v2, v1, Lokio/q;->e:Z

    if-eqz v2, :cond_4f

    iget v2, v1, Lokio/q;->c:I

    int-to-long v2, v2

    add-long/2addr v2, p2

    iget-boolean v4, v1, Lokio/q;->d:Z

    if-eqz v4, :cond_36

    const/4 v4, 0x0

    goto :goto_38

    .line 5
    :cond_36
    iget v4, v1, Lokio/q;->b:I

    :goto_38
    int-to-long v4, v4

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x2000

    cmp-long v6, v2, v4

    if-gtz v6, :cond_4f

    long-to-int v2, p2

    .line 6
    invoke-virtual {v0, v1, v2}, Lokio/q;->f(Lokio/q;I)V

    .line 7
    iget-wide v0, p1, Lokio/c;->p:J

    sub-long/2addr v0, p2

    iput-wide v0, p1, Lokio/c;->p:J

    .line 8
    iget-wide v0, p0, Lokio/c;->p:J

    add-long/2addr v0, p2

    iput-wide v0, p0, Lokio/c;->p:J

    return-void

    :cond_4f
    long-to-int v1, p2

    .line 9
    invoke-virtual {v0, v1}, Lokio/q;->e(I)Lokio/q;

    move-result-object v0

    iput-object v0, p1, Lokio/c;->o:Lokio/q;

    .line 10
    :cond_56
    iget-object v0, p1, Lokio/c;->o:Lokio/q;

    .line 11
    iget v1, v0, Lokio/q;->c:I

    iget v2, v0, Lokio/q;->b:I

    sub-int/2addr v1, v2

    int-to-long v1, v1

    .line 12
    invoke-virtual {v0}, Lokio/q;->b()Lokio/q;

    move-result-object v3

    iput-object v3, p1, Lokio/c;->o:Lokio/q;

    .line 13
    iget-object v3, p0, Lokio/c;->o:Lokio/q;

    if-nez v3, :cond_6f

    .line 14
    iput-object v0, p0, Lokio/c;->o:Lokio/q;

    .line 15
    iput-object v0, v0, Lokio/q;->g:Lokio/q;

    iput-object v0, v0, Lokio/q;->f:Lokio/q;

    goto :goto_78

    .line 16
    :cond_6f
    iget-object v3, v3, Lokio/q;->g:Lokio/q;

    .line 17
    invoke-virtual {v3, v0}, Lokio/q;->c(Lokio/q;)Lokio/q;

    move-result-object v0

    .line 18
    invoke-virtual {v0}, Lokio/q;->a()V

    .line 19
    :goto_78
    iget-wide v3, p1, Lokio/c;->p:J

    sub-long/2addr v3, v1

    iput-wide v3, p1, Lokio/c;->p:J

    .line 20
    iget-wide v3, p0, Lokio/c;->p:J

    add-long/2addr v3, v1

    iput-wide v3, p0, Lokio/c;->p:J

    sub-long/2addr p2, v1

    goto :goto_c

    :cond_84
    return-void

    .line 21
    :cond_85
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "source == this"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 22
    :cond_8d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "source == null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_96

    :goto_95
    throw p1

    :goto_96
    goto :goto_95
.end method

.method public final b()V
    .registers 3

    .line 1
    :try_start_0
    iget-wide v0, p0, Lokio/c;->p:J

    invoke-virtual {p0, v0, v1}, Lokio/c;->skip(J)V
    :try_end_5
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception v0

    .line 2
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public bridge synthetic c3(Lokio/f;)Lokio/d;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lokio/c;->w(Lokio/f;)Lokio/c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lokio/c;->d()Lokio/c;

    move-result-object v0

    return-object v0
.end method

.method public close()V
    .registers 1

    return-void
.end method

.method public d()Lokio/c;
    .registers 7

    .line 1
    new-instance v0, Lokio/c;

    invoke-direct {v0}, Lokio/c;-><init>()V

    .line 2
    iget-wide v1, p0, Lokio/c;->p:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_e

    return-object v0

    .line 3
    :cond_e
    iget-object v1, p0, Lokio/c;->o:Lokio/q;

    invoke-virtual {v1}, Lokio/q;->d()Lokio/q;

    move-result-object v1

    iput-object v1, v0, Lokio/c;->o:Lokio/q;

    .line 4
    iput-object v1, v1, Lokio/q;->g:Lokio/q;

    iput-object v1, v1, Lokio/q;->f:Lokio/q;

    .line 5
    iget-object v1, p0, Lokio/c;->o:Lokio/q;

    :goto_1c
    iget-object v1, v1, Lokio/q;->f:Lokio/q;

    iget-object v2, p0, Lokio/c;->o:Lokio/q;

    if-eq v1, v2, :cond_2e

    .line 6
    iget-object v2, v0, Lokio/c;->o:Lokio/q;

    iget-object v2, v2, Lokio/q;->g:Lokio/q;

    invoke-virtual {v1}, Lokio/q;->d()Lokio/q;

    move-result-object v3

    invoke-virtual {v2, v3}, Lokio/q;->c(Lokio/q;)Lokio/q;

    goto :goto_1c

    .line 7
    :cond_2e
    iget-wide v1, p0, Lokio/c;->p:J

    iput-wide v1, v0, Lokio/c;->p:J

    return-object v0
.end method

.method public e3()S
    .registers 2

    .line 1
    invoke-virtual {p0}, Lokio/c;->readShort()S

    move-result v0

    invoke-static {v0}, Lokio/w;->d(S)S

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 15

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 1
    :cond_4
    instance-of v1, p1, Lokio/c;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 2
    :cond_a
    check-cast p1, Lokio/c;

    .line 3
    iget-wide v3, p0, Lokio/c;->p:J

    iget-wide v5, p1, Lokio/c;->p:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_15

    return v2

    :cond_15
    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-nez v1, :cond_1c

    return v0

    .line 4
    :cond_1c
    iget-object v1, p0, Lokio/c;->o:Lokio/q;

    .line 5
    iget-object p1, p1, Lokio/c;->o:Lokio/q;

    .line 6
    iget v3, v1, Lokio/q;->b:I

    .line 7
    iget v4, p1, Lokio/q;->b:I

    .line 8
    :goto_24
    iget-wide v7, p0, Lokio/c;->p:J

    cmp-long v9, v5, v7

    if-gez v9, :cond_61

    .line 9
    iget v7, v1, Lokio/q;->c:I

    sub-int/2addr v7, v3

    iget v8, p1, Lokio/q;->c:I

    sub-int/2addr v8, v4

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    int-to-long v7, v7

    const/4 v9, 0x0

    :goto_36
    int-to-long v10, v9

    cmp-long v12, v10, v7

    if-gez v12, :cond_4f

    .line 10
    iget-object v10, v1, Lokio/q;->a:[B

    add-int/lit8 v11, v3, 0x1

    aget-byte v3, v10, v3

    iget-object v10, p1, Lokio/q;->a:[B

    add-int/lit8 v12, v4, 0x1

    aget-byte v4, v10, v4

    if-eq v3, v4, :cond_4a

    return v2

    :cond_4a
    add-int/lit8 v9, v9, 0x1

    move v3, v11

    move v4, v12

    goto :goto_36

    .line 11
    :cond_4f
    iget v9, v1, Lokio/q;->c:I

    if-ne v3, v9, :cond_57

    .line 12
    iget-object v1, v1, Lokio/q;->f:Lokio/q;

    .line 13
    iget v3, v1, Lokio/q;->b:I

    .line 14
    :cond_57
    iget v9, p1, Lokio/q;->c:I

    if-ne v4, v9, :cond_5f

    .line 15
    iget-object p1, p1, Lokio/q;->f:Lokio/q;

    .line 16
    iget v4, p1, Lokio/q;->b:I

    :cond_5f
    add-long/2addr v5, v7

    goto :goto_24

    :cond_61
    return v0
.end method

.method public final f()J
    .registers 6

    .line 1
    iget-wide v0, p0, Lokio/c;->p:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_9

    return-wide v2

    .line 2
    :cond_9
    iget-object v2, p0, Lokio/c;->o:Lokio/q;

    iget-object v2, v2, Lokio/q;->g:Lokio/q;

    .line 3
    iget v3, v2, Lokio/q;->c:I

    const/16 v4, 0x2000

    if-ge v3, v4, :cond_1c

    iget-boolean v4, v2, Lokio/q;->e:Z

    if-eqz v4, :cond_1c

    .line 4
    iget v2, v2, Lokio/q;->b:I

    sub-int/2addr v3, v2

    int-to-long v2, v3

    sub-long/2addr v0, v2

    :cond_1c
    return-wide v0
.end method

.method public flush()V
    .registers 1

    return-void
.end method

.method public final g(Lokio/c;JJ)Lokio/c;
    .registers 14

    if-eqz p1, :cond_5d

    .line 1
    iget-wide v0, p0, Lokio/c;->p:J

    move-wide v2, p2

    move-wide v4, p4

    invoke-static/range {v0 .. v5}, Lokio/w;->b(JJJ)V

    const-wide/16 v0, 0x0

    cmp-long v2, p4, v0

    if-nez v2, :cond_10

    return-object p0

    .line 2
    :cond_10
    iget-wide v2, p1, Lokio/c;->p:J

    add-long/2addr v2, p4

    iput-wide v2, p1, Lokio/c;->p:J

    .line 3
    iget-object v2, p0, Lokio/c;->o:Lokio/q;

    .line 4
    :goto_17
    iget v3, v2, Lokio/q;->c:I

    iget v4, v2, Lokio/q;->b:I

    sub-int v5, v3, v4

    int-to-long v5, v5

    cmp-long v7, p2, v5

    if-ltz v7, :cond_28

    sub-int/2addr v3, v4

    int-to-long v3, v3

    sub-long/2addr p2, v3

    iget-object v2, v2, Lokio/q;->f:Lokio/q;

    goto :goto_17

    :cond_28
    :goto_28
    cmp-long v3, p4, v0

    if-lez v3, :cond_5c

    .line 5
    invoke-virtual {v2}, Lokio/q;->d()Lokio/q;

    move-result-object v3

    .line 6
    iget v4, v3, Lokio/q;->b:I

    int-to-long v4, v4

    add-long/2addr v4, p2

    long-to-int p2, v4

    iput p2, v3, Lokio/q;->b:I

    long-to-int p3, p4

    add-int/2addr p2, p3

    .line 7
    iget p3, v3, Lokio/q;->c:I

    invoke-static {p2, p3}, Ljava/lang/Math;->min(II)I

    move-result p2

    iput p2, v3, Lokio/q;->c:I

    .line 8
    iget-object p2, p1, Lokio/c;->o:Lokio/q;

    if-nez p2, :cond_4c

    .line 9
    iput-object v3, v3, Lokio/q;->g:Lokio/q;

    iput-object v3, v3, Lokio/q;->f:Lokio/q;

    iput-object v3, p1, Lokio/c;->o:Lokio/q;

    goto :goto_51

    .line 10
    :cond_4c
    iget-object p2, p2, Lokio/q;->g:Lokio/q;

    invoke-virtual {p2, v3}, Lokio/q;->c(Lokio/q;)Lokio/q;

    .line 11
    :goto_51
    iget p2, v3, Lokio/q;->c:I

    iget p3, v3, Lokio/q;->b:I

    sub-int/2addr p2, p3

    int-to-long p2, p2

    sub-long/2addr p4, p2

    .line 12
    iget-object v2, v2, Lokio/q;->f:Lokio/q;

    move-wide p2, v0

    goto :goto_28

    :cond_5c
    return-object p0

    .line 13
    :cond_5d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "out == null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_66

    :goto_65
    throw p1

    :goto_66
    goto :goto_65
.end method

.method public h()Lokio/c;
    .registers 1

    return-object p0
.end method

.method public h0(J)Lokio/f;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .line 1
    new-instance v0, Lokio/f;

    invoke-virtual {p0, p1, p2}, Lokio/c;->N2(J)[B

    move-result-object p1

    invoke-direct {v0, p1}, Lokio/f;-><init>([B)V

    return-object v0
.end method

.method public bridge synthetic h1()Lokio/d;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lokio/c;->h()Lokio/c;

    move-result-object v0

    return-object v0
.end method

.method public h2(Lokio/u;)J
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_13

    const-wide/16 v0, 0x0

    :goto_4
    const-wide/16 v2, 0x2000

    .line 1
    invoke-interface {p1, p0, v2, v3}, Lokio/u;->read(Lokio/c;J)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v6, v2, v4

    if-eqz v6, :cond_12

    add-long/2addr v0, v2

    goto :goto_4

    :cond_12
    return-wide v0

    .line 2
    :cond_13
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "source == null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_1c

    :goto_1b
    throw p1

    :goto_1c
    goto :goto_1b
.end method

.method public hashCode()I
    .registers 6

    .line 1
    iget-object v0, p0, Lokio/c;->o:Lokio/q;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return v0

    :cond_6
    const/4 v1, 0x1

    .line 2
    :cond_7
    iget v2, v0, Lokio/q;->b:I

    iget v3, v0, Lokio/q;->c:I

    :goto_b
    if-ge v2, v3, :cond_17

    mul-int/lit8 v1, v1, 0x1f

    .line 3
    iget-object v4, v0, Lokio/q;->a:[B

    aget-byte v4, v4, v2

    add-int/2addr v1, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 4
    :cond_17
    iget-object v0, v0, Lokio/q;->f:Lokio/q;

    .line 5
    iget-object v2, p0, Lokio/c;->o:Lokio/q;

    if-ne v0, v2, :cond_7

    return v1
.end method

.method public final i(J)B
    .registers 9

    .line 1
    iget-wide v0, p0, Lokio/c;->p:J

    const-wide/16 v4, 0x1

    move-wide v2, p1

    invoke-static/range {v0 .. v5}, Lokio/w;->b(JJJ)V

    .line 2
    iget-wide v0, p0, Lokio/c;->p:J

    sub-long v2, v0, p1

    cmp-long v4, v2, p1

    if-lez v4, :cond_27

    .line 3
    iget-object v0, p0, Lokio/c;->o:Lokio/q;

    .line 4
    :goto_12
    iget v1, v0, Lokio/q;->c:I

    iget v2, v0, Lokio/q;->b:I

    sub-int/2addr v1, v2

    int-to-long v3, v1

    cmp-long v1, p1, v3

    if-gez v1, :cond_23

    .line 5
    iget-object v0, v0, Lokio/q;->a:[B

    long-to-int p2, p1

    add-int/2addr v2, p2

    aget-byte p1, v0, v2

    return p1

    :cond_23
    sub-long/2addr p1, v3

    .line 6
    iget-object v0, v0, Lokio/q;->f:Lokio/q;

    goto :goto_12

    :cond_27
    sub-long/2addr p1, v0

    .line 7
    iget-object v0, p0, Lokio/c;->o:Lokio/q;

    :cond_2a
    iget-object v0, v0, Lokio/q;->g:Lokio/q;

    .line 8
    iget v1, v0, Lokio/q;->c:I

    iget v2, v0, Lokio/q;->b:I

    sub-int/2addr v1, v2

    int-to-long v3, v1

    add-long/2addr p1, v3

    const-wide/16 v3, 0x0

    cmp-long v1, p1, v3

    if-ltz v1, :cond_2a

    .line 9
    iget-object v0, v0, Lokio/q;->a:[B

    long-to-int p2, p1

    add-int/2addr v2, p2

    aget-byte p1, v0, v2

    return p1
.end method

.method public bridge synthetic i2(J)Lokio/d;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lokio/c;->C(J)Lokio/c;

    move-result-object p1

    return-object p1
.end method

.method public isOpen()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public j(BJJ)J
    .registers 21

    move-object v0, p0

    const-wide/16 v1, 0x0

    cmp-long v3, p2, v1

    if-ltz v3, :cond_7f

    cmp-long v3, p4, p2

    if-ltz v3, :cond_7f

    .line 1
    iget-wide v3, v0, Lokio/c;->p:J

    cmp-long v5, p4, v3

    if-lez v5, :cond_13

    move-wide v5, v3

    goto :goto_15

    :cond_13
    move-wide/from16 v5, p4

    :goto_15
    const-wide/16 v7, -0x1

    cmp-long v9, p2, v5

    if-nez v9, :cond_1c

    return-wide v7

    .line 2
    :cond_1c
    iget-object v9, v0, Lokio/c;->o:Lokio/q;

    if-nez v9, :cond_21

    return-wide v7

    :cond_21
    sub-long v10, v3, p2

    cmp-long v12, v10, p2

    if-gez v12, :cond_35

    :goto_27
    cmp-long v1, v3, p2

    if-lez v1, :cond_45

    .line 3
    iget-object v9, v9, Lokio/q;->g:Lokio/q;

    .line 4
    iget v1, v9, Lokio/q;->c:I

    iget v2, v9, Lokio/q;->b:I

    sub-int/2addr v1, v2

    int-to-long v1, v1

    sub-long/2addr v3, v1

    goto :goto_27

    .line 5
    :cond_35
    :goto_35
    iget v3, v9, Lokio/q;->c:I

    iget v4, v9, Lokio/q;->b:I

    sub-int/2addr v3, v4

    int-to-long v3, v3

    add-long/2addr v3, v1

    cmp-long v10, v3, p2

    if-gez v10, :cond_44

    .line 6
    iget-object v9, v9, Lokio/q;->f:Lokio/q;

    move-wide v1, v3

    goto :goto_35

    :cond_44
    move-wide v3, v1

    :cond_45
    move-wide/from16 v1, p2

    :goto_47
    cmp-long v10, v3, v5

    if-gez v10, :cond_7e

    .line 7
    iget-object v10, v9, Lokio/q;->a:[B

    .line 8
    iget v11, v9, Lokio/q;->c:I

    int-to-long v11, v11

    iget v13, v9, Lokio/q;->b:I

    int-to-long v13, v13

    add-long/2addr v13, v5

    sub-long/2addr v13, v3

    invoke-static {v11, v12, v13, v14}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v11

    long-to-int v12, v11

    .line 9
    iget v11, v9, Lokio/q;->b:I

    int-to-long v13, v11

    add-long/2addr v13, v1

    sub-long/2addr v13, v3

    long-to-int v1, v13

    :goto_60
    if-ge v1, v12, :cond_71

    .line 10
    aget-byte v2, v10, v1

    move/from16 v11, p1

    if-ne v2, v11, :cond_6e

    .line 11
    iget v2, v9, Lokio/q;->b:I

    sub-int/2addr v1, v2

    int-to-long v1, v1

    add-long/2addr v1, v3

    return-wide v1

    :cond_6e
    add-int/lit8 v1, v1, 0x1

    goto :goto_60

    :cond_71
    move/from16 v11, p1

    .line 12
    iget v1, v9, Lokio/q;->c:I

    iget v2, v9, Lokio/q;->b:I

    sub-int/2addr v1, v2

    int-to-long v1, v1

    add-long/2addr v3, v1

    .line 13
    iget-object v9, v9, Lokio/q;->f:Lokio/q;

    move-wide v1, v3

    goto :goto_47

    :cond_7e
    return-wide v7

    .line 14
    :cond_7f
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-wide v4, v0, Lokio/c;->p:J

    .line 15
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    const/4 v3, 0x2

    invoke-static/range {p4 .. p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const-string v3, "size=%s fromIndex=%s toIndex=%s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_a6

    :goto_a5
    throw v1

    :goto_a6
    goto :goto_a5
.end method

.method public k()Ljava/io/OutputStream;
    .registers 2

    .line 1
    new-instance v0, Lokio/c$a;

    invoke-direct {v0, p0}, Lokio/c$a;-><init>(Lokio/c;)V

    return-object v0
.end method

.method public l(JLokio/f;II)Z
    .registers 12

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    cmp-long v3, p1, v1

    if-ltz v3, :cond_32

    if-ltz p4, :cond_32

    if-ltz p5, :cond_32

    .line 1
    iget-wide v1, p0, Lokio/c;->p:J

    sub-long/2addr v1, p1

    int-to-long v3, p5

    cmp-long v5, v1, v3

    if-ltz v5, :cond_32

    .line 2
    invoke-virtual {p3}, Lokio/f;->J()I

    move-result v1

    sub-int/2addr v1, p4

    if-ge v1, p5, :cond_1b

    goto :goto_32

    :cond_1b
    const/4 v1, 0x0

    :goto_1c
    if-ge v1, p5, :cond_30

    int-to-long v2, v1

    add-long/2addr v2, p1

    .line 3
    invoke-virtual {p0, v2, v3}, Lokio/c;->i(J)B

    move-result v2

    add-int v3, p4, v1

    invoke-virtual {p3, v3}, Lokio/f;->m(I)B

    move-result v3

    if-eq v2, v3, :cond_2d

    return v0

    :cond_2d
    add-int/lit8 v1, v1, 0x1

    goto :goto_1c

    :cond_30
    const/4 p1, 0x1

    return p1

    :cond_32
    :goto_32
    return v0
.end method

.method public l3(Lokio/t;)J
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-wide v0, p0, Lokio/c;->p:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_b

    .line 2
    invoke-interface {p1, p0, v0, v1}, Lokio/t;->a2(Lokio/c;J)V

    :cond_b
    return-wide v0
.end method

.method public m()Lokio/f;
    .registers 3

    .line 1
    new-instance v0, Lokio/f;

    invoke-virtual {p0}, Lokio/c;->M0()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lokio/f;-><init>([B)V

    return-object v0
.end method

.method public n(JLjava/nio/charset/Charset;)Ljava/lang/String;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .line 1
    iget-wide v0, p0, Lokio/c;->p:J

    const-wide/16 v2, 0x0

    move-wide v4, p1

    invoke-static/range {v0 .. v5}, Lokio/w;->b(JJJ)V

    if-eqz p3, :cond_6a

    const-wide/32 v0, 0x7fffffff

    cmp-long v2, p1, v0

    if-gtz v2, :cond_53

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_1a

    const-string p1, ""

    return-object p1

    .line 2
    :cond_1a
    iget-object v0, p0, Lokio/c;->o:Lokio/q;

    .line 3
    iget v1, v0, Lokio/q;->b:I

    int-to-long v2, v1

    add-long/2addr v2, p1

    iget v4, v0, Lokio/q;->c:I

    int-to-long v4, v4

    cmp-long v6, v2, v4

    if-lez v6, :cond_31

    .line 4
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lokio/c;->N2(J)[B

    move-result-object p1

    invoke-direct {v0, p1, p3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0

    .line 5
    :cond_31
    new-instance v2, Ljava/lang/String;

    iget-object v3, v0, Lokio/q;->a:[B

    long-to-int v4, p1

    invoke-direct {v2, v3, v1, v4, p3}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 6
    iget p3, v0, Lokio/q;->b:I

    int-to-long v3, p3

    add-long/2addr v3, p1

    long-to-int p3, v3

    iput p3, v0, Lokio/q;->b:I

    .line 7
    iget-wide v3, p0, Lokio/c;->p:J

    sub-long/2addr v3, p1

    iput-wide v3, p0, Lokio/c;->p:J

    .line 8
    iget p1, v0, Lokio/q;->c:I

    if-ne p3, p1, :cond_52

    .line 9
    invoke-virtual {v0}, Lokio/q;->b()Lokio/q;

    move-result-object p1

    iput-object p1, p0, Lokio/c;->o:Lokio/q;

    .line 10
    invoke-static {v0}, Lokio/r;->a(Lokio/q;)V

    :cond_52
    return-object v2

    .line 11
    :cond_53
    new-instance p3, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "byteCount > Integer.MAX_VALUE: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p3

    .line 12
    :cond_6a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "charset == null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public o()Ljava/lang/String;
    .registers 4

    .line 1
    :try_start_0
    iget-wide v0, p0, Lokio/c;->p:J

    sget-object v2, Lokio/w;->a:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0, v1, v2}, Lokio/c;->n(JLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0
    :try_end_8
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_8} :catch_9

    return-object v0

    :catch_9
    move-exception v0

    .line 2
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public p(J)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .line 1
    sget-object v0, Lokio/w;->a:Ljava/nio/charset/Charset;

    invoke-virtual {p0, p1, p2, v0}, Lokio/c;->n(JLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public p1(J)Ljava/lang/String;
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_92

    const-wide/16 v0, 0x1

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v4, p1, v2

    if-nez v4, :cond_12

    goto :goto_14

    :cond_12
    add-long v2, p1, v0

    :goto_14
    const/16 v5, 0xa

    const-wide/16 v6, 0x0

    move-object v4, p0

    move-wide v8, v2

    .line 1
    invoke-virtual/range {v4 .. v9}, Lokio/c;->j(BJJ)J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v8, v4, v6

    if-eqz v8, :cond_29

    .line 2
    invoke-virtual {p0, v4, v5}, Lokio/c;->r(J)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 3
    :cond_29
    invoke-virtual {p0}, Lokio/c;->s()J

    move-result-wide v4

    cmp-long v6, v2, v4

    if-gez v6, :cond_48

    sub-long v0, v2, v0

    .line 4
    invoke-virtual {p0, v0, v1}, Lokio/c;->i(J)B

    move-result v0

    const/16 v1, 0xd

    if-ne v0, v1, :cond_48

    invoke-virtual {p0, v2, v3}, Lokio/c;->i(J)B

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_48

    .line 5
    invoke-virtual {p0, v2, v3}, Lokio/c;->r(J)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 6
    :cond_48
    new-instance v6, Lokio/c;

    invoke-direct {v6}, Lokio/c;-><init>()V

    const-wide/16 v2, 0x0

    const-wide/16 v0, 0x20

    .line 7
    invoke-virtual {p0}, Lokio/c;->s()J

    move-result-wide v4

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    move-object v0, p0

    move-object v1, v6

    invoke-virtual/range {v0 .. v5}, Lokio/c;->g(Lokio/c;JJ)Lokio/c;

    .line 8
    new-instance v0, Ljava/io/EOFException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\\n not found: limit="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lokio/c;->s()J

    move-result-wide v2

    invoke-static {v2, v3, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " content="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    invoke-virtual {v6}, Lokio/c;->m()Lokio/f;

    move-result-object p1

    invoke-virtual {p1}, Lokio/f;->n()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x2026

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 10
    :cond_92
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "limit < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public q()I
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .line 1
    iget-wide v0, p0, Lokio/c;->p:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_ad

    .line 2
    invoke-virtual {p0, v2, v3}, Lokio/c;->i(J)B

    move-result v0

    and-int/lit16 v1, v0, 0x80

    const/4 v2, 0x1

    const/16 v3, 0x80

    const v4, 0xfffd

    if-nez v1, :cond_1c

    and-int/lit8 v1, v0, 0x7f

    const/4 v5, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    goto :goto_3f

    :cond_1c
    and-int/lit16 v1, v0, 0xe0

    const/16 v5, 0xc0

    if-ne v1, v5, :cond_28

    and-int/lit8 v1, v0, 0x1f

    const/4 v5, 0x2

    const/16 v6, 0x80

    goto :goto_3f

    :cond_28
    and-int/lit16 v1, v0, 0xf0

    const/16 v5, 0xe0

    if-ne v1, v5, :cond_34

    and-int/lit8 v1, v0, 0xf

    const/4 v5, 0x3

    const/16 v6, 0x800

    goto :goto_3f

    :cond_34
    and-int/lit16 v1, v0, 0xf8

    const/16 v5, 0xf0

    if-ne v1, v5, :cond_a7

    and-int/lit8 v1, v0, 0x7

    const/4 v5, 0x4

    const/high16 v6, 0x10000

    .line 3
    :goto_3f
    iget-wide v7, p0, Lokio/c;->p:J

    int-to-long v9, v5

    cmp-long v11, v7, v9

    if-ltz v11, :cond_75

    :goto_46
    if-ge v2, v5, :cond_5d

    int-to-long v7, v2

    .line 4
    invoke-virtual {p0, v7, v8}, Lokio/c;->i(J)B

    move-result v0

    and-int/lit16 v11, v0, 0xc0

    if-ne v11, v3, :cond_59

    shl-int/lit8 v1, v1, 0x6

    and-int/lit8 v0, v0, 0x3f

    or-int/2addr v1, v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_46

    .line 5
    :cond_59
    invoke-virtual {p0, v7, v8}, Lokio/c;->skip(J)V

    return v4

    .line 6
    :cond_5d
    invoke-virtual {p0, v9, v10}, Lokio/c;->skip(J)V

    const v0, 0x10ffff

    if-le v1, v0, :cond_66

    return v4

    :cond_66
    const v0, 0xd800

    if-lt v1, v0, :cond_71

    const v0, 0xdfff

    if-gt v1, v0, :cond_71

    return v4

    :cond_71
    if-ge v1, v6, :cond_74

    return v4

    :cond_74
    return v1

    .line 7
    :cond_75
    new-instance v1, Ljava/io/EOFException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "size < "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lokio/c;->p:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " (to read code point prefixed 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_a7
    const-wide/16 v0, 0x1

    .line 9
    invoke-virtual {p0, v0, v1}, Lokio/c;->skip(J)V

    return v4

    .line 10
    :cond_ad
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    goto :goto_b4

    :goto_b3
    throw v0

    :goto_b4
    goto :goto_b3
.end method

.method public q0()Lokio/d;
    .registers 1

    return-object p0
.end method

.method r(J)Ljava/lang/String;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    const-wide/16 v0, 0x1

    const-wide/16 v2, 0x0

    cmp-long v4, p1, v2

    if-lez v4, :cond_1c

    sub-long v2, p1, v0

    .line 1
    invoke-virtual {p0, v2, v3}, Lokio/c;->i(J)B

    move-result v4

    const/16 v5, 0xd

    if-ne v4, v5, :cond_1c

    .line 2
    invoke-virtual {p0, v2, v3}, Lokio/c;->p(J)Ljava/lang/String;

    move-result-object p1

    const-wide/16 v0, 0x2

    .line 3
    invoke-virtual {p0, v0, v1}, Lokio/c;->skip(J)V

    return-object p1

    .line 4
    :cond_1c
    invoke-virtual {p0, p1, p2}, Lokio/c;->p(J)Ljava/lang/String;

    move-result-object p1

    .line 5
    invoke-virtual {p0, v0, v1}, Lokio/c;->skip(J)V

    return-object p1
.end method

.method public bridge synthetic r0(I)Lokio/d;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lokio/c;->G(I)Lokio/c;

    move-result-object p1

    return-object p1
.end method

.method public read(Ljava/nio/ByteBuffer;)I
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 10
    iget-object v0, p0, Lokio/c;->o:Lokio/q;

    if-nez v0, :cond_6

    const/4 p1, -0x1

    return p1

    .line 11
    :cond_6
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    iget v2, v0, Lokio/q;->c:I

    iget v3, v0, Lokio/q;->b:I

    sub-int/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 12
    iget-object v2, v0, Lokio/q;->a:[B

    iget v3, v0, Lokio/q;->b:I

    invoke-virtual {p1, v2, v3, v1}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 13
    iget p1, v0, Lokio/q;->b:I

    add-int/2addr p1, v1

    iput p1, v0, Lokio/q;->b:I

    .line 14
    iget-wide v2, p0, Lokio/c;->p:J

    int-to-long v4, v1

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lokio/c;->p:J

    .line 15
    iget v2, v0, Lokio/q;->c:I

    if-ne p1, v2, :cond_32

    .line 16
    invoke-virtual {v0}, Lokio/q;->b()Lokio/q;

    move-result-object p1

    iput-object p1, p0, Lokio/c;->o:Lokio/q;

    .line 17
    invoke-static {v0}, Lokio/r;->a(Lokio/q;)V

    :cond_32
    return v1
.end method

.method public read([BII)I
    .registers 11

    .line 1
    array-length v0, p1

    int-to-long v1, v0

    int-to-long v3, p2

    int-to-long v5, p3

    invoke-static/range {v1 .. v6}, Lokio/w;->b(JJJ)V

    .line 2
    iget-object v0, p0, Lokio/c;->o:Lokio/q;

    if-nez v0, :cond_d

    const/4 p1, -0x1

    return p1

    .line 3
    :cond_d
    iget v1, v0, Lokio/q;->c:I

    iget v2, v0, Lokio/q;->b:I

    sub-int/2addr v1, v2

    invoke-static {p3, v1}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 4
    iget-object v1, v0, Lokio/q;->a:[B

    iget v2, v0, Lokio/q;->b:I

    invoke-static {v1, v2, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5
    iget p1, v0, Lokio/q;->b:I

    add-int/2addr p1, p3

    iput p1, v0, Lokio/q;->b:I

    .line 6
    iget-wide v1, p0, Lokio/c;->p:J

    int-to-long v3, p3

    sub-long/2addr v1, v3

    iput-wide v1, p0, Lokio/c;->p:J

    .line 7
    iget p2, v0, Lokio/q;->c:I

    if-ne p1, p2, :cond_35

    .line 8
    invoke-virtual {v0}, Lokio/q;->b()Lokio/q;

    move-result-object p1

    iput-object p1, p0, Lokio/c;->o:Lokio/q;

    .line 9
    invoke-static {v0}, Lokio/r;->a(Lokio/q;)V

    :cond_35
    return p3
.end method

.method public read(Lokio/c;J)J
    .registers 9

    if-eqz p1, :cond_31

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_1a

    .line 18
    iget-wide v2, p0, Lokio/c;->p:J

    cmp-long v4, v2, v0

    if-nez v4, :cond_11

    const-wide/16 p1, -0x1

    return-wide p1

    :cond_11
    cmp-long v0, p2, v2

    if-lez v0, :cond_16

    move-wide p2, v2

    .line 19
    :cond_16
    invoke-virtual {p1, p0, p2, p3}, Lokio/c;->a2(Lokio/c;J)V

    return-wide p2

    .line 20
    :cond_1a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "byteCount < 0: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 21
    :cond_31
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "sink == null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public readByte()B
    .registers 10

    .line 1
    iget-wide v0, p0, Lokio/c;->p:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_28

    .line 2
    iget-object v2, p0, Lokio/c;->o:Lokio/q;

    .line 3
    iget v3, v2, Lokio/q;->b:I

    .line 4
    iget v4, v2, Lokio/q;->c:I

    .line 5
    iget-object v5, v2, Lokio/q;->a:[B

    add-int/lit8 v6, v3, 0x1

    .line 6
    aget-byte v3, v5, v3

    const-wide/16 v7, 0x1

    sub-long/2addr v0, v7

    .line 7
    iput-wide v0, p0, Lokio/c;->p:J

    if-ne v6, v4, :cond_25

    .line 8
    invoke-virtual {v2}, Lokio/q;->b()Lokio/q;

    move-result-object v0

    iput-object v0, p0, Lokio/c;->o:Lokio/q;

    .line 9
    invoke-static {v2}, Lokio/r;->a(Lokio/q;)V

    goto :goto_27

    .line 10
    :cond_25
    iput v6, v2, Lokio/q;->b:I

    :goto_27
    return v3

    .line 11
    :cond_28
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "size == 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public readFully([B)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_15

    .line 2
    array-length v1, p1

    sub-int/2addr v1, v0

    invoke-virtual {p0, p1, v0, v1}, Lokio/c;->read([BII)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_f

    add-int/2addr v0, v1

    goto :goto_1

    .line 3
    :cond_f
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    :cond_15
    return-void
.end method

.method public readInt()I
    .registers 11

    .line 1
    iget-wide v0, p0, Lokio/c;->p:J

    const-wide/16 v2, 0x4

    cmp-long v4, v0, v2

    if-ltz v4, :cond_6a

    .line 2
    iget-object v4, p0, Lokio/c;->o:Lokio/q;

    .line 3
    iget v5, v4, Lokio/q;->b:I

    .line 4
    iget v6, v4, Lokio/q;->c:I

    sub-int v7, v6, v5

    const/4 v8, 0x4

    if-ge v7, v8, :cond_35

    .line 5
    invoke-virtual {p0}, Lokio/c;->readByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    .line 6
    invoke-virtual {p0}, Lokio/c;->readByte()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    .line 7
    invoke-virtual {p0}, Lokio/c;->readByte()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    .line 8
    invoke-virtual {p0}, Lokio/c;->readByte()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    return v0

    .line 9
    :cond_35
    iget-object v7, v4, Lokio/q;->a:[B

    add-int/lit8 v8, v5, 0x1

    .line 10
    aget-byte v5, v7, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x18

    add-int/lit8 v9, v8, 0x1

    aget-byte v8, v7, v8

    and-int/lit16 v8, v8, 0xff

    shl-int/lit8 v8, v8, 0x10

    or-int/2addr v5, v8

    add-int/lit8 v8, v9, 0x1

    aget-byte v9, v7, v9

    and-int/lit16 v9, v9, 0xff

    shl-int/lit8 v9, v9, 0x8

    or-int/2addr v5, v9

    add-int/lit8 v9, v8, 0x1

    aget-byte v7, v7, v8

    and-int/lit16 v7, v7, 0xff

    or-int/2addr v5, v7

    sub-long/2addr v0, v2

    .line 11
    iput-wide v0, p0, Lokio/c;->p:J

    if-ne v9, v6, :cond_67

    .line 12
    invoke-virtual {v4}, Lokio/q;->b()Lokio/q;

    move-result-object v0

    iput-object v0, p0, Lokio/c;->o:Lokio/q;

    .line 13
    invoke-static {v4}, Lokio/r;->a(Lokio/q;)V

    goto :goto_69

    .line 14
    :cond_67
    iput v9, v4, Lokio/q;->b:I

    :goto_69
    return v5

    .line 15
    :cond_6a
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "size < 4: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lokio/c;->p:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public readShort()S
    .registers 11

    .line 1
    iget-wide v0, p0, Lokio/c;->p:J

    const-wide/16 v2, 0x2

    cmp-long v4, v0, v2

    if-ltz v4, :cond_48

    .line 2
    iget-object v4, p0, Lokio/c;->o:Lokio/q;

    .line 3
    iget v5, v4, Lokio/q;->b:I

    .line 4
    iget v6, v4, Lokio/q;->c:I

    sub-int v7, v6, v5

    const/4 v8, 0x2

    if-ge v7, v8, :cond_24

    .line 5
    invoke-virtual {p0}, Lokio/c;->readByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    .line 6
    invoke-virtual {p0}, Lokio/c;->readByte()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    int-to-short v0, v0

    return v0

    .line 7
    :cond_24
    iget-object v7, v4, Lokio/q;->a:[B

    add-int/lit8 v8, v5, 0x1

    .line 8
    aget-byte v5, v7, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    add-int/lit8 v9, v8, 0x1

    aget-byte v7, v7, v8

    and-int/lit16 v7, v7, 0xff

    or-int/2addr v5, v7

    sub-long/2addr v0, v2

    .line 9
    iput-wide v0, p0, Lokio/c;->p:J

    if-ne v9, v6, :cond_44

    .line 10
    invoke-virtual {v4}, Lokio/q;->b()Lokio/q;

    move-result-object v0

    iput-object v0, p0, Lokio/c;->o:Lokio/q;

    .line 11
    invoke-static {v4}, Lokio/r;->a(Lokio/q;)V

    goto :goto_46

    .line 12
    :cond_44
    iput v9, v4, Lokio/q;->b:I

    :goto_46
    int-to-short v0, v5

    return v0

    .line 13
    :cond_48
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "size < 2: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lokio/c;->p:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final s()J
    .registers 3

    .line 1
    iget-wide v0, p0, Lokio/c;->p:J

    return-wide v0
.end method

.method public skip(J)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    :cond_0
    :goto_0
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_37

    .line 1
    iget-object v0, p0, Lokio/c;->o:Lokio/q;

    if-eqz v0, :cond_31

    .line 2
    iget v1, v0, Lokio/q;->c:I

    iget v0, v0, Lokio/q;->b:I

    sub-int/2addr v1, v0

    int-to-long v0, v1

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v1, v0

    .line 3
    iget-wide v2, p0, Lokio/c;->p:J

    int-to-long v4, v1

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lokio/c;->p:J

    sub-long/2addr p1, v4

    .line 4
    iget-object v0, p0, Lokio/c;->o:Lokio/q;

    iget v2, v0, Lokio/q;->b:I

    add-int/2addr v2, v1

    iput v2, v0, Lokio/q;->b:I

    .line 5
    iget v1, v0, Lokio/q;->c:I

    if-ne v2, v1, :cond_0

    .line 6
    invoke-virtual {v0}, Lokio/q;->b()Lokio/q;

    move-result-object v1

    iput-object v1, p0, Lokio/c;->o:Lokio/q;

    .line 7
    invoke-static {v0}, Lokio/r;->a(Lokio/q;)V

    goto :goto_0

    .line 8
    :cond_31
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    :cond_37
    return-void
.end method

.method public final t()Lokio/f;
    .registers 6

    .line 1
    iget-wide v0, p0, Lokio/c;->p:J

    const-wide/32 v2, 0x7fffffff

    cmp-long v4, v0, v2

    if-gtz v4, :cond_f

    long-to-int v1, v0

    .line 2
    invoke-virtual {p0, v1}, Lokio/c;->u(I)Lokio/f;

    move-result-object v0

    return-object v0

    .line 3
    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "size > Integer.MAX_VALUE: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lokio/c;->p:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public t2(J)Z
    .registers 6

    .line 1
    iget-wide v0, p0, Lokio/c;->p:J

    cmp-long v2, v0, p1

    if-ltz v2, :cond_8

    const/4 p1, 0x1

    goto :goto_9

    :cond_8
    const/4 p1, 0x0

    :goto_9
    return p1
.end method

.method public timeout()Lokio/v;
    .registers 2

    .line 1
    sget-object v0, Lokio/v;->d:Lokio/v;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lokio/c;->t()Lokio/f;

    move-result-object v0

    invoke-virtual {v0}, Lokio/f;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final u(I)Lokio/f;
    .registers 3

    if-nez p1, :cond_5

    .line 1
    sget-object p1, Lokio/f;->s:Lokio/f;

    return-object p1

    .line 2
    :cond_5
    new-instance v0, Lokio/s;

    invoke-direct {v0, p0, p1}, Lokio/s;-><init>(Lokio/c;I)V

    return-object v0
.end method

.method v(I)Lokio/q;
    .registers 5

    const/4 v0, 0x1

    if-lt p1, v0, :cond_2a

    const/16 v0, 0x2000

    if-gt p1, v0, :cond_2a

    .line 1
    iget-object v1, p0, Lokio/c;->o:Lokio/q;

    if-nez v1, :cond_16

    .line 2
    invoke-static {}, Lokio/r;->b()Lokio/q;

    move-result-object p1

    iput-object p1, p0, Lokio/c;->o:Lokio/q;

    .line 3
    iput-object p1, p1, Lokio/q;->g:Lokio/q;

    iput-object p1, p1, Lokio/q;->f:Lokio/q;

    return-object p1

    .line 4
    :cond_16
    iget-object v1, v1, Lokio/q;->g:Lokio/q;

    .line 5
    iget v2, v1, Lokio/q;->c:I

    add-int/2addr v2, p1

    if-gt v2, v0, :cond_21

    iget-boolean p1, v1, Lokio/q;->e:Z

    if-nez p1, :cond_29

    .line 6
    :cond_21
    invoke-static {}, Lokio/r;->b()Lokio/q;

    move-result-object p1

    invoke-virtual {v1, p1}, Lokio/q;->c(Lokio/q;)Lokio/q;

    move-result-object v1

    :cond_29
    return-object v1

    .line 7
    :cond_2a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public w(Lokio/f;)Lokio/c;
    .registers 3

    if-eqz p1, :cond_6

    .line 1
    invoke-virtual {p1, p0}, Lokio/f;->P(Lokio/c;)V

    return-object p0

    .line 2
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "byteString == null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public write(Ljava/nio/ByteBuffer;)I
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_2b

    .line 1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    move v1, v0

    :goto_7
    if-lez v1, :cond_24

    const/4 v2, 0x1

    .line 2
    invoke-virtual {p0, v2}, Lokio/c;->v(I)Lokio/q;

    move-result-object v2

    .line 3
    iget v3, v2, Lokio/q;->c:I

    rsub-int v3, v3, 0x2000

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 4
    iget-object v4, v2, Lokio/q;->a:[B

    iget v5, v2, Lokio/q;->c:I

    invoke-virtual {p1, v4, v5, v3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    sub-int/2addr v1, v3

    .line 5
    iget v4, v2, Lokio/q;->c:I

    add-int/2addr v4, v3

    iput v4, v2, Lokio/q;->c:I

    goto :goto_7

    .line 6
    :cond_24
    iget-wide v1, p0, Lokio/c;->p:J

    int-to-long v3, v0

    add-long/2addr v1, v3

    iput-wide v1, p0, Lokio/c;->p:J

    return v0

    .line 7
    :cond_2b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "source == null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_34

    :goto_33
    throw p1

    :goto_34
    goto :goto_33
.end method

.method public x([B)Lokio/c;
    .registers 4

    if-eqz p1, :cond_9

    const/4 v0, 0x0

    .line 1
    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lokio/c;->y([BII)Lokio/c;

    move-result-object p1

    return-object p1

    .line 2
    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "source == null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic x0(I)Lokio/d;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lokio/c;->E(I)Lokio/c;

    move-result-object p1

    return-object p1
.end method

.method public y([BII)Lokio/c;
    .registers 13

    if-eqz p1, :cond_30

    .line 1
    array-length v0, p1

    int-to-long v1, v0

    int-to-long v3, p2

    int-to-long v7, p3

    move-wide v5, v7

    invoke-static/range {v1 .. v6}, Lokio/w;->b(JJJ)V

    add-int/2addr p3, p2

    :goto_b
    if-ge p2, p3, :cond_2a

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Lokio/c;->v(I)Lokio/q;

    move-result-object v0

    sub-int v1, p3, p2

    .line 3
    iget v2, v0, Lokio/q;->c:I

    rsub-int v2, v2, 0x2000

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 4
    iget-object v2, v0, Lokio/q;->a:[B

    iget v3, v0, Lokio/q;->c:I

    invoke-static {p1, p2, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr p2, v1

    .line 5
    iget v2, v0, Lokio/q;->c:I

    add-int/2addr v2, v1

    iput v2, v0, Lokio/q;->c:I

    goto :goto_b

    .line 6
    :cond_2a
    iget-wide p1, p0, Lokio/c;->p:J

    add-long/2addr p1, v7

    iput-wide p1, p0, Lokio/c;->p:J

    return-object p0

    .line 7
    :cond_30
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "source == null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_39

    :goto_38
    throw p1

    :goto_39
    goto :goto_38
.end method

.method public y3(J)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .line 1
    iget-wide v0, p0, Lokio/c;->p:J

    cmp-long v2, v0, p1

    if-ltz v2, :cond_7

    return-void

    :cond_7
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1
.end method

.method public z(I)Lokio/c;
    .registers 6

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Lokio/c;->v(I)Lokio/q;

    move-result-object v0

    .line 2
    iget-object v1, v0, Lokio/q;->a:[B

    iget v2, v0, Lokio/q;->c:I

    add-int/lit8 v3, v2, 0x1

    iput v3, v0, Lokio/q;->c:I

    int-to-byte p1, p1

    aput-byte p1, v1, v2

    .line 3
    iget-wide v0, p0, Lokio/c;->p:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lokio/c;->p:J

    return-object p0
.end method

###### Class okio.c.a (okio.c$a)
.class Lokio/c$a;
.super Ljava/io/OutputStream;
.source "Buffer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lokio/c;->k()Ljava/io/OutputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic o:Lokio/c;


# direct methods
.method constructor <init>(Lokio/c;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lokio/c$a;->o:Lokio/c;

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .registers 1

    return-void
.end method

.method public flush()V
    .registers 1

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lokio/c$a;->o:Lokio/c;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ".outputStream()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public write(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Lokio/c$a;->o:Lokio/c;

    int-to-byte p1, p1

    invoke-virtual {v0, p1}, Lokio/c;->z(I)Lokio/c;

    return-void
.end method

.method public write([BII)V
    .registers 5

    .line 2
    iget-object v0, p0, Lokio/c$a;->o:Lokio/c;

    invoke-virtual {v0, p1, p2, p3}, Lokio/c;->y([BII)Lokio/c;

    return-void
.end method

###### Class okio.c.b (okio.c$b)
.class Lokio/c$b;
.super Ljava/io/InputStream;
.source "Buffer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lokio/c;->S3()Ljava/io/InputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic o:Lokio/c;


# direct methods
.method constructor <init>(Lokio/c;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lokio/c$b;->o:Lokio/c;

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    return-void
.end method


# virtual methods
.method public available()I
    .registers 5

    .line 1
    iget-object v0, p0, Lokio/c$b;->o:Lokio/c;

    iget-wide v0, v0, Lokio/c;->p:J

    const-wide/32 v2, 0x7fffffff

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v1, v0

    return v1
.end method

.method public close()V
    .registers 1

    return-void
.end method

.method public read()I
    .registers 7

    .line 1
    iget-object v0, p0, Lokio/c$b;->o:Lokio/c;

    iget-wide v1, v0, Lokio/c;->p:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_11

    invoke-virtual {v0}, Lokio/c;->readByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    return v0

    :cond_11
    const/4 v0, -0x1

    return v0
.end method

.method public read([BII)I
    .registers 5

    .line 2
    iget-object v0, p0, Lokio/c$b;->o:Lokio/c;

    invoke-virtual {v0, p1, p2, p3}, Lokio/c;->read([BII)I

    move-result p1

    return p1
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lokio/c$b;->o:Lokio/c;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ".inputStream()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
