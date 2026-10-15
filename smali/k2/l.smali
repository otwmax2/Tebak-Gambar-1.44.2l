###### Class k2.l (k2.l)
.class public Lk2/l;
.super Ljava/lang/Object;
.source "ImageHeaderParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lk2/l$c;,
        Lk2/l$b;,
        Lk2/l$a;
    }
.end annotation


# static fields
.field private static final b:[B

.field private static final c:[I


# instance fields
.field private final a:Lk2/l$c;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/16 v0, 0xd

    new-array v0, v0, [I

    .line 1
    fill-array-data v0, :array_18

    sput-object v0, Lk2/l;->c:[I

    const/4 v0, 0x0

    new-array v0, v0, [B

    :try_start_c
    const-string v1, "Exif\u0000\u0000"

    const-string v2, "UTF-8"

    .line 2
    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0
    :try_end_14
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_c .. :try_end_14} :catch_14

    .line 3
    :catch_14
    sput-object v0, Lk2/l;->b:[B

    return-void

    nop

    :array_18
    .array-data 4
        0x0
        0x1
        0x1
        0x2
        0x4
        0x8
        0x1
        0x1
        0x2
        0x4
        0x8
        0x4
        0x8
    .end array-data
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lk2/l$c;

    invoke-direct {v0, p1}, Lk2/l$c;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lk2/l;->a:Lk2/l$c;

    return-void
.end method

.method private static a(II)I
    .registers 2

    add-int/lit8 p0, p0, 0x2

    mul-int/lit8 p1, p1, 0xc

    add-int/2addr p0, p1

    return p0
.end method

.method private b()[B
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    :cond_0
    iget-object v0, p0, Lk2/l;->a:Lk2/l$c;

    invoke-virtual {v0}, Lk2/l$c;->c()S

    move-result v0

    const/16 v1, 0xff

    const/4 v2, 0x3

    const/4 v3, 0x0

    const-string v4, "ImageHeaderParser"

    if-eq v0, v1, :cond_29

    .line 2
    invoke-static {v4, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_28

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown segmentId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_28
    return-object v3

    .line 4
    :cond_29
    iget-object v0, p0, Lk2/l;->a:Lk2/l$c;

    invoke-virtual {v0}, Lk2/l$c;->c()S

    move-result v0

    const/16 v1, 0xda

    if-ne v0, v1, :cond_34

    return-object v3

    :cond_34
    const/16 v1, 0xd9

    if-ne v0, v1, :cond_44

    .line 5
    invoke-static {v4, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_43

    const-string v0, "Found MARKER_EOI in exif segment"

    .line 6
    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_43
    return-object v3

    .line 7
    :cond_44
    iget-object v1, p0, Lk2/l;->a:Lk2/l$c;

    invoke-virtual {v1}, Lk2/l$c;->b()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    const/16 v5, 0xe1

    if-eq v0, v5, :cond_86

    .line 8
    iget-object v5, p0, Lk2/l;->a:Lk2/l$c;

    int-to-long v6, v1

    invoke-virtual {v5, v6, v7}, Lk2/l$c;->e(J)J

    move-result-wide v8

    cmp-long v5, v8, v6

    if-eqz v5, :cond_0

    .line 9
    invoke-static {v4, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_85

    .line 10
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to skip enough data, type: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", wanted to skip: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", but actually skipped: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_85
    return-object v3

    .line 11
    :cond_86
    new-array v5, v1, [B

    .line 12
    iget-object v6, p0, Lk2/l;->a:Lk2/l$c;

    invoke-virtual {v6, v5}, Lk2/l$c;->d([B)I

    move-result v6

    if-eq v6, v1, :cond_bb

    .line 13
    invoke-static {v4, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_ba

    .line 14
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to read segment data, type: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", length: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", actually read: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_ba
    return-object v3

    :cond_bb
    return-object v5
.end method

.method private static e(I)Z
    .registers 3

    const v0, 0xffd8

    and-int v1, p0, v0

    if-eq v1, v0, :cond_12

    const/16 v0, 0x4d4d

    if-eq p0, v0, :cond_12

    const/16 v0, 0x4949

    if-ne p0, v0, :cond_10

    goto :goto_12

    :cond_10
    const/4 p0, 0x0

    goto :goto_13

    :cond_12
    :goto_12
    const/4 p0, 0x1

    :goto_13
    return p0
.end method

.method private static g(Lk2/l$b;)I
    .registers 13

    const/4 v0, 0x6

    .line 1
    invoke-virtual {p0, v0}, Lk2/l$b;->a(I)S

    move-result v1

    const/4 v2, 0x3

    const-string v3, "ImageHeaderParser"

    const/16 v4, 0x4d4d

    if-ne v1, v4, :cond_f

    .line 2
    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    goto :goto_32

    :cond_f
    const/16 v4, 0x4949

    if-ne v1, v4, :cond_16

    .line 3
    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    goto :goto_32

    .line 4
    :cond_16
    invoke-static {v3, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_30

    .line 5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown endianness = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    :cond_30
    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    .line 7
    :goto_32
    invoke-virtual {p0, v1}, Lk2/l$b;->d(Ljava/nio/ByteOrder;)V

    const/16 v1, 0xa

    .line 8
    invoke-virtual {p0, v1}, Lk2/l$b;->b(I)I

    move-result v1

    add-int/2addr v1, v0

    .line 9
    invoke-virtual {p0, v1}, Lk2/l$b;->a(I)S

    move-result v0

    const/4 v4, 0x0

    :goto_41
    if-ge v4, v0, :cond_13f

    .line 10
    invoke-static {v1, v4}, Lk2/l;->a(II)I

    move-result v5

    .line 11
    invoke-virtual {p0, v5}, Lk2/l$b;->a(I)S

    move-result v6

    const/16 v7, 0x112

    if-eq v6, v7, :cond_51

    goto/16 :goto_13b

    :cond_51
    add-int/lit8 v7, v5, 0x2

    .line 12
    invoke-virtual {p0, v7}, Lk2/l$b;->a(I)S

    move-result v7

    const/4 v8, 0x1

    if-lt v7, v8, :cond_121

    const/16 v8, 0xc

    if-le v7, v8, :cond_60

    goto/16 :goto_121

    :cond_60
    add-int/lit8 v8, v5, 0x4

    .line 13
    invoke-virtual {p0, v8}, Lk2/l$b;->b(I)I

    move-result v8

    if-gez v8, :cond_75

    .line 14
    invoke-static {v3, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_13b

    const-string v5, "Negative tiff component count"

    .line 15
    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_13b

    .line 16
    :cond_75
    invoke-static {v3, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v9

    const-string v10, " tagType="

    if-eqz v9, :cond_a7

    .line 17
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Got tagIndex="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " formatCode="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " componentCount="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    :cond_a7
    sget-object v9, Lk2/l;->c:[I

    aget v9, v9, v7

    add-int/2addr v8, v9

    const/4 v9, 0x4

    if-le v8, v9, :cond_cb

    .line 19
    invoke-static {v3, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_13b

    .line 20
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Got byte count > 4, not orientation, continuing, formatCode="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_13b

    :cond_cb
    add-int/lit8 v5, v5, 0x8

    if-ltz v5, :cond_100

    .line 21
    invoke-virtual {p0}, Lk2/l$b;->c()I

    move-result v7

    if-le v5, v7, :cond_d6

    goto :goto_100

    :cond_d6
    if-ltz v8, :cond_e5

    add-int/2addr v8, v5

    .line 22
    invoke-virtual {p0}, Lk2/l$b;->c()I

    move-result v7

    if-le v8, v7, :cond_e0

    goto :goto_e5

    .line 23
    :cond_e0
    invoke-virtual {p0, v5}, Lk2/l$b;->a(I)S

    move-result p0

    return p0

    .line 24
    :cond_e5
    :goto_e5
    invoke-static {v3, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_13b

    .line 25
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Illegal number of bytes for TI tag data tagType="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_13b

    .line 26
    :cond_100
    :goto_100
    invoke-static {v3, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_13b

    .line 27
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Illegal tagValueOffset="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_13b

    .line 28
    :cond_121
    :goto_121
    invoke-static {v3, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_13b

    .line 29
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Got invalid format code="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_13b
    :goto_13b
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_41

    :cond_13f
    const/4 p0, -0x1

    return p0
.end method


# virtual methods
.method public c()I
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lk2/l;->a:Lk2/l$c;

    invoke-virtual {v0}, Lk2/l$c;->b()I

    move-result v0

    .line 2
    invoke-static {v0}, Lk2/l;->e(I)Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_e

    return v1

    .line 3
    :cond_e
    invoke-direct {p0}, Lk2/l;->b()[B

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1d

    .line 4
    array-length v3, v0

    sget-object v4, Lk2/l;->b:[B

    array-length v4, v4

    if-le v3, v4, :cond_1d

    const/4 v3, 0x1

    goto :goto_1e

    :cond_1d
    const/4 v3, 0x0

    :goto_1e
    if-eqz v3, :cond_30

    const/4 v4, 0x0

    .line 5
    :goto_21
    sget-object v5, Lk2/l;->b:[B

    array-length v6, v5

    if-ge v4, v6, :cond_30

    .line 6
    aget-byte v6, v0, v4

    aget-byte v5, v5, v4

    if-eq v6, v5, :cond_2d

    goto :goto_31

    :cond_2d
    add-int/lit8 v4, v4, 0x1

    goto :goto_21

    :cond_30
    move v2, v3

    :goto_31
    if-eqz v2, :cond_3d

    .line 7
    new-instance v1, Lk2/l$b;

    invoke-direct {v1, v0}, Lk2/l$b;-><init>([B)V

    invoke-static {v1}, Lk2/l;->g(Lk2/l$b;)I

    move-result v0

    return v0

    :cond_3d
    return v1
.end method

.method public d()Lk2/l$a;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lk2/l;->a:Lk2/l$c;

    invoke-virtual {v0}, Lk2/l$c;->b()I

    move-result v0

    const v1, 0xffd8

    if-ne v0, v1, :cond_e

    .line 2
    sget-object v0, Lk2/l$a;->q:Lk2/l$a;

    return-object v0

    :cond_e
    shl-int/lit8 v0, v0, 0x10

    const/high16 v1, -0x10000

    and-int/2addr v0, v1

    .line 3
    iget-object v1, p0, Lk2/l;->a:Lk2/l$c;

    invoke-virtual {v1}, Lk2/l$c;->b()I

    move-result v1

    const v2, 0xffff

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    const v1, -0x76afb1b9

    if-ne v0, v1, :cond_39

    .line 4
    iget-object v0, p0, Lk2/l;->a:Lk2/l$c;

    const-wide/16 v1, 0x15

    invoke-virtual {v0, v1, v2}, Lk2/l$c;->e(J)J

    .line 5
    iget-object v0, p0, Lk2/l;->a:Lk2/l$c;

    invoke-virtual {v0}, Lk2/l$c;->a()I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_36

    .line 6
    sget-object v0, Lk2/l$a;->r:Lk2/l$a;

    goto :goto_38

    :cond_36
    sget-object v0, Lk2/l$a;->s:Lk2/l$a;

    :goto_38
    return-object v0

    :cond_39
    shr-int/lit8 v0, v0, 0x8

    const v1, 0x474946

    if-ne v0, v1, :cond_43

    .line 7
    sget-object v0, Lk2/l$a;->p:Lk2/l$a;

    return-object v0

    .line 8
    :cond_43
    sget-object v0, Lk2/l$a;->t:Lk2/l$a;

    return-object v0
.end method

.method public f()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lk2/l;->d()Lk2/l$a;

    move-result-object v0

    invoke-virtual {v0}, Lk2/l$a;->c()Z

    move-result v0

    return v0
.end method

###### Class k2.l.a (k2.l$a)
.class public final enum Lk2/l$a;
.super Ljava/lang/Enum;
.source "ImageHeaderParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk2/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lk2/l$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum p:Lk2/l$a;

.field public static final enum q:Lk2/l$a;

.field public static final enum r:Lk2/l$a;

.field public static final enum s:Lk2/l$a;

.field public static final enum t:Lk2/l$a;

.field private static final synthetic u:[Lk2/l$a;


# instance fields
.field private final o:Z


# direct methods
.method static constructor <clinit>()V
    .registers 11

    .line 1
    new-instance v0, Lk2/l$a;

    const-string v1, "GIF"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lk2/l$a;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lk2/l$a;->p:Lk2/l$a;

    .line 2
    new-instance v1, Lk2/l$a;

    const-string v4, "JPEG"

    invoke-direct {v1, v4, v3, v2}, Lk2/l$a;-><init>(Ljava/lang/String;IZ)V

    sput-object v1, Lk2/l$a;->q:Lk2/l$a;

    .line 3
    new-instance v4, Lk2/l$a;

    const-string v5, "PNG_A"

    const/4 v6, 0x2

    invoke-direct {v4, v5, v6, v3}, Lk2/l$a;-><init>(Ljava/lang/String;IZ)V

    sput-object v4, Lk2/l$a;->r:Lk2/l$a;

    .line 4
    new-instance v5, Lk2/l$a;

    const-string v7, "PNG"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v2}, Lk2/l$a;-><init>(Ljava/lang/String;IZ)V

    sput-object v5, Lk2/l$a;->s:Lk2/l$a;

    .line 5
    new-instance v7, Lk2/l$a;

    const-string v9, "UNKNOWN"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v2}, Lk2/l$a;-><init>(Ljava/lang/String;IZ)V

    sput-object v7, Lk2/l$a;->t:Lk2/l$a;

    const/4 v9, 0x5

    new-array v9, v9, [Lk2/l$a;

    aput-object v0, v9, v2

    aput-object v1, v9, v3

    aput-object v4, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    .line 6
    sput-object v9, Lk2/l$a;->u:[Lk2/l$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZ)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput-boolean p3, p0, Lk2/l$a;->o:Z

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lk2/l$a;
    .registers 2

    .line 1
    const-class v0, Lk2/l$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lk2/l$a;

    return-object p0
.end method

.method public static values()[Lk2/l$a;
    .registers 1

    .line 1
    sget-object v0, Lk2/l$a;->u:[Lk2/l$a;

    invoke-virtual {v0}, [Lk2/l$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lk2/l$a;

    return-object v0
.end method


# virtual methods
.method public c()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lk2/l$a;->o:Z

    return v0
.end method

###### Class k2.l.b (k2.l$b)
.class Lk2/l$b;
.super Ljava/lang/Object;
.source "ImageHeaderParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk2/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field private final a:Ljava/nio/ByteBuffer;


# direct methods
.method public constructor <init>([B)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lk2/l$b;->a:Ljava/nio/ByteBuffer;

    .line 3
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    return-void
.end method


# virtual methods
.method public a(I)S
    .registers 3

    .line 1
    iget-object v0, p0, Lk2/l$b;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result p1

    return p1
.end method

.method public b(I)I
    .registers 3

    .line 1
    iget-object v0, p0, Lk2/l$b;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result p1

    return p1
.end method

.method public c()I
    .registers 2

    .line 1
    iget-object v0, p0, Lk2/l$b;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public d(Ljava/nio/ByteOrder;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lk2/l$b;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    return-void
.end method

###### Class k2.l.c (k2.l$c)
.class Lk2/l$c;
.super Ljava/lang/Object;
.source "ImageHeaderParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk2/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation


# instance fields
.field private final a:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lk2/l$c;->a:Ljava/io/InputStream;

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lk2/l$c;->a:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    return v0
.end method

.method public b()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lk2/l$c;->a:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    shl-int/lit8 v0, v0, 0x8

    const v1, 0xff00

    and-int/2addr v0, v1

    iget-object v1, p0, Lk2/l$c;->a:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    return v0
.end method

.method public c()S
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lk2/l$c;->a:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    int-to-short v0, v0

    return v0
.end method

.method public d([B)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    array-length v0, p1

    :goto_1
    if-lez v0, :cond_10

    .line 2
    iget-object v1, p0, Lk2/l$c;->a:Ljava/io/InputStream;

    array-length v2, p1

    sub-int/2addr v2, v0

    invoke-virtual {v1, p1, v2, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_10

    sub-int/2addr v0, v1

    goto :goto_1

    .line 3
    :cond_10
    array-length p1, p1

    sub-int/2addr p1, v0

    return p1
.end method

.method public e(J)J
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gez v2, :cond_7

    return-wide v0

    :cond_7
    move-wide v2, p1

    :goto_8
    cmp-long v4, v2, v0

    if-lez v4, :cond_25

    .line 1
    iget-object v4, p0, Lk2/l$c;->a:Ljava/io/InputStream;

    invoke-virtual {v4, v2, v3}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v4

    cmp-long v6, v4, v0

    if-lez v6, :cond_18

    :goto_16
    sub-long/2addr v2, v4

    goto :goto_8

    .line 2
    :cond_18
    iget-object v4, p0, Lk2/l$c;->a:Ljava/io/InputStream;

    invoke-virtual {v4}, Ljava/io/InputStream;->read()I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_22

    goto :goto_25

    :cond_22
    const-wide/16 v4, 0x1

    goto :goto_16

    :cond_25
    :goto_25
    sub-long/2addr p1, v2

    return-wide p1
.end method
