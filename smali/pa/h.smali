###### Class pa.h (pa.h)
.class final Lpa/h;
.super Ljava/lang/Object;
.source "Http2Reader.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lpa/h$b;,
        Lpa/h$a;
    }
.end annotation


# static fields
.field static final s:Ljava/util/logging/Logger;


# instance fields
.field private final o:Lokio/e;

.field private final p:Lpa/h$a;

.field private final q:Z

.field final r:Lpa/d$a;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    const-class v0, Lpa/e;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lpa/h;->s:Ljava/util/logging/Logger;

    return-void
.end method

.method constructor <init>(Lokio/e;Z)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lpa/h;->o:Lokio/e;

    .line 3
    iput-boolean p2, p0, Lpa/h;->q:Z

    .line 4
    new-instance p2, Lpa/h$a;

    invoke-direct {p2, p1}, Lpa/h$a;-><init>(Lokio/e;)V

    iput-object p2, p0, Lpa/h;->p:Lpa/h$a;

    .line 5
    new-instance p1, Lpa/d$a;

    const/16 v0, 0x1000

    invoke-direct {p1, v0, p2}, Lpa/d$a;-><init>(ILokio/u;)V

    iput-object p1, p0, Lpa/h;->r:Lpa/d$a;

    return-void
.end method

.method static b(IBS)I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    and-int/lit8 p1, p1, 0x8

    if-eqz p1, :cond_6

    add-int/lit8 p0, p0, -0x1

    :cond_6
    if-gt p2, p0, :cond_b

    sub-int/2addr p0, p2

    int-to-short p0, p0

    return p0

    :cond_b
    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v0, 0x0

    .line 1
    invoke-static {p2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p2

    aput-object p2, p1, v0

    const/4 p2, 0x1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, p1, p2

    const-string p0, "PROTOCOL_ERROR padding %s > remaining length %s"

    invoke-static {p0, p1}, Lpa/e;->d(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p0

    throw p0
.end method

.method private e(Lpa/h$b;IBI)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p4, :cond_39

    and-int/lit8 v1, p3, 0x1

    const/4 v2, 0x1

    if-eqz v1, :cond_a

    const/4 v1, 0x1

    goto :goto_b

    :cond_a
    const/4 v1, 0x0

    :goto_b
    and-int/lit8 v3, p3, 0x20

    if-eqz v3, :cond_10

    goto :goto_11

    :cond_10
    const/4 v2, 0x0

    :goto_11
    if-nez v2, :cond_30

    and-int/lit8 v2, p3, 0x8

    if-eqz v2, :cond_20

    .line 1
    iget-object v0, p0, Lpa/h;->o:Lokio/e;

    invoke-interface {v0}, Lokio/e;->readByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    int-to-short v0, v0

    .line 2
    :cond_20
    invoke-static {p2, p3, v0}, Lpa/h;->b(IBS)I

    move-result p2

    .line 3
    iget-object p3, p0, Lpa/h;->o:Lokio/e;

    invoke-interface {p1, v1, p4, p3, p2}, Lpa/h$b;->f(ZILokio/e;I)V

    .line 4
    iget-object p1, p0, Lpa/h;->o:Lokio/e;

    int-to-long p2, v0

    invoke-interface {p1, p2, p3}, Lokio/e;->skip(J)V

    return-void

    :cond_30
    new-array p1, v0, [Ljava/lang/Object;

    const-string p2, "PROTOCOL_ERROR: FLAG_COMPRESSED without SETTINGS_COMPRESS_DATA"

    .line 5
    invoke-static {p2, p1}, Lpa/e;->d(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :cond_39
    new-array p1, v0, [Ljava/lang/Object;

    const-string p2, "PROTOCOL_ERROR: TYPE_DATA streamId == 0"

    .line 6
    invoke-static {p2, p1}, Lpa/e;->d(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1
.end method

.method private f(Lpa/h$b;IBI)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 p3, 0x1

    const/16 v0, 0x8

    const/4 v1, 0x0

    if-lt p2, v0, :cond_42

    if-nez p4, :cond_39

    .line 1
    iget-object p4, p0, Lpa/h;->o:Lokio/e;

    invoke-interface {p4}, Lokio/e;->readInt()I

    move-result p4

    .line 2
    iget-object v2, p0, Lpa/h;->o:Lokio/e;

    invoke-interface {v2}, Lokio/e;->readInt()I

    move-result v2

    sub-int/2addr p2, v0

    .line 3
    invoke-static {v2}, Lpa/b;->c(I)Lpa/b;

    move-result-object v0

    if-eqz v0, :cond_2a

    .line 4
    sget-object p3, Lokio/f;->s:Lokio/f;

    if-lez p2, :cond_26

    .line 5
    iget-object p3, p0, Lpa/h;->o:Lokio/e;

    int-to-long v1, p2

    invoke-interface {p3, v1, v2}, Lokio/e;->h0(J)Lokio/f;

    move-result-object p3

    .line 6
    :cond_26
    invoke-interface {p1, p4, v0, p3}, Lpa/h$b;->d(ILpa/b;Lokio/f;)V

    return-void

    :cond_2a
    new-array p1, p3, [Ljava/lang/Object;

    .line 7
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, v1

    const-string p2, "TYPE_GOAWAY unexpected error code: %d"

    invoke-static {p2, p1}, Lpa/e;->d(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :cond_39
    new-array p1, v1, [Ljava/lang/Object;

    const-string p2, "TYPE_GOAWAY streamId != 0"

    .line 8
    invoke-static {p2, p1}, Lpa/e;->d(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :cond_42
    new-array p1, p3, [Ljava/lang/Object;

    .line 9
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, v1

    const-string p2, "TYPE_GOAWAY length < 8: %s"

    invoke-static {p2, p1}, Lpa/e;->d(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1
.end method

.method private g(ISBI)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ISBI)",
            "Ljava/util/List<",
            "Lpa/c;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lpa/h;->p:Lpa/h$a;

    iput p1, v0, Lpa/h$a;->s:I

    iput p1, v0, Lpa/h$a;->p:I

    .line 2
    iput-short p2, v0, Lpa/h$a;->t:S

    .line 3
    iput-byte p3, v0, Lpa/h$a;->q:B

    .line 4
    iput p4, v0, Lpa/h$a;->r:I

    .line 5
    iget-object p1, p0, Lpa/h;->r:Lpa/d$a;

    invoke-virtual {p1}, Lpa/d$a;->k()V

    .line 6
    iget-object p1, p0, Lpa/h;->r:Lpa/d$a;

    invoke-virtual {p1}, Lpa/d$a;->e()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method private h(Lpa/h$b;IBI)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p4, :cond_2d

    and-int/lit8 v1, p3, 0x1

    if-eqz v1, :cond_9

    const/4 v1, 0x1

    goto :goto_a

    :cond_9
    const/4 v1, 0x0

    :goto_a
    and-int/lit8 v2, p3, 0x8

    if-eqz v2, :cond_17

    .line 1
    iget-object v0, p0, Lpa/h;->o:Lokio/e;

    invoke-interface {v0}, Lokio/e;->readByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    int-to-short v0, v0

    :cond_17
    and-int/lit8 v2, p3, 0x20

    if-eqz v2, :cond_20

    .line 2
    invoke-direct {p0, p1, p4}, Lpa/h;->k(Lpa/h$b;I)V

    add-int/lit8 p2, p2, -0x5

    .line 3
    :cond_20
    invoke-static {p2, p3, v0}, Lpa/h;->b(IBS)I

    move-result p2

    .line 4
    invoke-direct {p0, p2, v0, p3, p4}, Lpa/h;->g(ISBI)Ljava/util/List;

    move-result-object p2

    const/4 p3, -0x1

    .line 5
    invoke-interface {p1, v1, p4, p3, p2}, Lpa/h$b;->b(ZIILjava/util/List;)V

    return-void

    :cond_2d
    new-array p1, v0, [Ljava/lang/Object;

    const-string p2, "PROTOCOL_ERROR: TYPE_HEADERS streamId == 0"

    .line 6
    invoke-static {p2, p1}, Lpa/e;->d(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1
.end method

.method static i(Lokio/e;)I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Lokio/e;->readByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x10

    .line 2
    invoke-interface {p0}, Lokio/e;->readByte()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    .line 3
    invoke-interface {p0}, Lokio/e;->readByte()B

    move-result p0

    and-int/lit16 p0, p0, 0xff

    or-int/2addr p0, v0

    return p0
.end method

.method private j(Lpa/h$b;IBI)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/16 v2, 0x8

    if-ne p2, v2, :cond_25

    if-nez p4, :cond_1c

    .line 1
    iget-object p2, p0, Lpa/h;->o:Lokio/e;

    invoke-interface {p2}, Lokio/e;->readInt()I

    move-result p2

    .line 2
    iget-object p4, p0, Lpa/h;->o:Lokio/e;

    invoke-interface {p4}, Lokio/e;->readInt()I

    move-result p4

    and-int/2addr p3, v1

    if-eqz p3, :cond_18

    const/4 v0, 0x1

    .line 3
    :cond_18
    invoke-interface {p1, v0, p2, p4}, Lpa/h$b;->g(ZII)V

    return-void

    :cond_1c
    new-array p1, v0, [Ljava/lang/Object;

    const-string p2, "TYPE_PING streamId != 0"

    .line 4
    invoke-static {p2, p1}, Lpa/e;->d(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :cond_25
    new-array p1, v1, [Ljava/lang/Object;

    .line 5
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, v0

    const-string p2, "TYPE_PING length != 8: %s"

    invoke-static {p2, p1}, Lpa/e;->d(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1
.end method

.method private k(Lpa/h$b;I)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lpa/h;->o:Lokio/e;

    invoke-interface {v0}, Lokio/e;->readInt()I

    move-result v0

    const/high16 v1, -0x80000000

    and-int/2addr v1, v0

    const/4 v2, 0x1

    if-eqz v1, :cond_e

    const/4 v1, 0x1

    goto :goto_f

    :cond_e
    const/4 v1, 0x0

    :goto_f
    const v3, 0x7fffffff

    and-int/2addr v0, v3

    .line 2
    iget-object v3, p0, Lpa/h;->o:Lokio/e;

    invoke-interface {v3}, Lokio/e;->readByte()B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    add-int/2addr v3, v2

    .line 3
    invoke-interface {p1, p2, v0, v3, v1}, Lpa/h$b;->h(IIIZ)V

    return-void
.end method

.method private l(Lpa/h$b;IBI)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 p3, 0x0

    const/4 v0, 0x5

    if-ne p2, v0, :cond_13

    if-eqz p4, :cond_a

    .line 1
    invoke-direct {p0, p1, p4}, Lpa/h;->k(Lpa/h$b;I)V

    return-void

    :cond_a
    new-array p1, p3, [Ljava/lang/Object;

    const-string p2, "TYPE_PRIORITY streamId == 0"

    .line 2
    invoke-static {p2, p1}, Lpa/e;->d(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :cond_13
    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    .line 3
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, p3

    const-string p2, "TYPE_PRIORITY length: %d != 5"

    invoke-static {p2, p1}, Lpa/e;->d(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1
.end method

.method private m(Lpa/h$b;IBI)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p4, :cond_28

    and-int/lit8 v1, p3, 0x8

    if-eqz v1, :cond_10

    .line 1
    iget-object v0, p0, Lpa/h;->o:Lokio/e;

    invoke-interface {v0}, Lokio/e;->readByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    int-to-short v0, v0

    .line 2
    :cond_10
    iget-object v1, p0, Lpa/h;->o:Lokio/e;

    invoke-interface {v1}, Lokio/e;->readInt()I

    move-result v1

    const v2, 0x7fffffff

    and-int/2addr v1, v2

    add-int/lit8 p2, p2, -0x4

    .line 3
    invoke-static {p2, p3, v0}, Lpa/h;->b(IBS)I

    move-result p2

    .line 4
    invoke-direct {p0, p2, v0, p3, p4}, Lpa/h;->g(ISBI)Ljava/util/List;

    move-result-object p2

    .line 5
    invoke-interface {p1, p4, v1, p2}, Lpa/h$b;->j(IILjava/util/List;)V

    return-void

    :cond_28
    new-array p1, v0, [Ljava/lang/Object;

    const-string p2, "PROTOCOL_ERROR: TYPE_PUSH_PROMISE streamId == 0"

    .line 6
    invoke-static {p2, p1}, Lpa/e;->d(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1
.end method

.method private n(Lpa/h$b;IBI)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 p3, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x4

    if-ne p2, v1, :cond_2f

    if-eqz p4, :cond_26

    .line 1
    iget-object p2, p0, Lpa/h;->o:Lokio/e;

    invoke-interface {p2}, Lokio/e;->readInt()I

    move-result p2

    .line 2
    invoke-static {p2}, Lpa/b;->c(I)Lpa/b;

    move-result-object v1

    if-eqz v1, :cond_17

    .line 3
    invoke-interface {p1, p4, v1}, Lpa/h$b;->i(ILpa/b;)V

    return-void

    :cond_17
    new-array p1, p3, [Ljava/lang/Object;

    .line 4
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, v0

    const-string p2, "TYPE_RST_STREAM unexpected error code: %d"

    invoke-static {p2, p1}, Lpa/e;->d(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :cond_26
    new-array p1, v0, [Ljava/lang/Object;

    const-string p2, "TYPE_RST_STREAM streamId == 0"

    .line 5
    invoke-static {p2, p1}, Lpa/e;->d(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :cond_2f
    new-array p1, p3, [Ljava/lang/Object;

    .line 6
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, v0

    const-string p2, "TYPE_RST_STREAM length: %d != 4"

    invoke-static {p2, p1}, Lpa/e;->d(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1
.end method

.method private o(Lpa/h$b;IBI)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p4, :cond_8e

    const/4 p4, 0x1

    and-int/2addr p3, p4

    if-eqz p3, :cond_16

    if-nez p2, :cond_d

    .line 1
    invoke-interface {p1}, Lpa/h$b;->a()V

    return-void

    :cond_d
    new-array p1, v0, [Ljava/lang/Object;

    const-string p2, "FRAME_SIZE_ERROR ack frame should be empty!"

    .line 2
    invoke-static {p2, p1}, Lpa/e;->d(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    .line 3
    :cond_16
    rem-int/lit8 p3, p2, 0x6

    if-nez p3, :cond_7f

    .line 4
    new-instance p3, Lpa/m;

    invoke-direct {p3}, Lpa/m;-><init>()V

    const/4 v1, 0x0

    :goto_20
    if-ge v1, p2, :cond_7b

    .line 5
    iget-object v2, p0, Lpa/h;->o:Lokio/e;

    invoke-interface {v2}, Lokio/e;->readShort()S

    move-result v2

    const v3, 0xffff

    and-int/2addr v2, v3

    .line 6
    iget-object v3, p0, Lpa/h;->o:Lokio/e;

    invoke-interface {v3}, Lokio/e;->readInt()I

    move-result v3

    const/4 v4, 0x2

    const/4 v5, 0x4

    if-eq v2, v4, :cond_67

    const/4 v4, 0x3

    if-eq v2, v4, :cond_65

    if-eq v2, v5, :cond_58

    const/4 v4, 0x5

    if-eq v2, v4, :cond_3f

    goto :goto_75

    :cond_3f
    const/16 v4, 0x4000

    if-lt v3, v4, :cond_49

    const v4, 0xffffff

    if-gt v3, v4, :cond_49

    goto :goto_75

    :cond_49
    new-array p1, p4, [Ljava/lang/Object;

    .line 7
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, v0

    const-string p2, "PROTOCOL_ERROR SETTINGS_MAX_FRAME_SIZE: %s"

    invoke-static {p2, p1}, Lpa/e;->d(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :cond_58
    const/4 v2, 0x7

    if-ltz v3, :cond_5c

    goto :goto_75

    :cond_5c
    new-array p1, v0, [Ljava/lang/Object;

    const-string p2, "PROTOCOL_ERROR SETTINGS_INITIAL_WINDOW_SIZE > 2^31 - 1"

    .line 8
    invoke-static {p2, p1}, Lpa/e;->d(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :cond_65
    const/4 v2, 0x4

    goto :goto_75

    :cond_67
    if-eqz v3, :cond_75

    if-ne v3, p4, :cond_6c

    goto :goto_75

    :cond_6c
    new-array p1, v0, [Ljava/lang/Object;

    const-string p2, "PROTOCOL_ERROR SETTINGS_ENABLE_PUSH != 0 or 1"

    .line 9
    invoke-static {p2, p1}, Lpa/e;->d(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    .line 10
    :cond_75
    :goto_75
    invoke-virtual {p3, v2, v3}, Lpa/m;->i(II)Lpa/m;

    add-int/lit8 v1, v1, 0x6

    goto :goto_20

    .line 11
    :cond_7b
    invoke-interface {p1, v0, p3}, Lpa/h$b;->e(ZLpa/m;)V

    return-void

    :cond_7f
    new-array p1, p4, [Ljava/lang/Object;

    .line 12
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, v0

    const-string p2, "TYPE_SETTINGS length %% 6 != 0: %s"

    invoke-static {p2, p1}, Lpa/e;->d(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :cond_8e
    new-array p1, v0, [Ljava/lang/Object;

    const-string p2, "TYPE_SETTINGS streamId != 0"

    .line 13
    invoke-static {p2, p1}, Lpa/e;->d(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    goto :goto_98

    :goto_97
    throw p1

    :goto_98
    goto :goto_97
.end method

.method private p(Lpa/h$b;IBI)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 p3, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x4

    if-ne p2, v1, :cond_29

    .line 1
    iget-object p2, p0, Lpa/h;->o:Lokio/e;

    invoke-interface {p2}, Lokio/e;->readInt()I

    move-result p2

    int-to-long v1, p2

    const-wide/32 v3, 0x7fffffff

    and-long/2addr v1, v3

    const-wide/16 v3, 0x0

    cmp-long p2, v1, v3

    if-eqz p2, :cond_1a

    .line 2
    invoke-interface {p1, p4, v1, v2}, Lpa/h$b;->c(IJ)V

    return-void

    :cond_1a
    new-array p1, v0, [Ljava/lang/Object;

    .line 3
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    aput-object p2, p1, p3

    const-string p2, "windowSizeIncrement was 0"

    invoke-static {p2, p1}, Lpa/e;->d(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :cond_29
    new-array p1, v0, [Ljava/lang/Object;

    .line 4
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, p3

    const-string p2, "TYPE_WINDOW_UPDATE length !=4: %s"

    invoke-static {p2, p1}, Lpa/e;->d(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1
.end method


# virtual methods
.method public c(ZLpa/h$b;)Z
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :try_start_1
    iget-object v1, p0, Lpa/h;->o:Lokio/e;

    const-wide/16 v2, 0x9

    invoke-interface {v1, v2, v3}, Lokio/e;->y3(J)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_8} :catch_94

    .line 2
    iget-object v1, p0, Lpa/h;->o:Lokio/e;

    invoke-static {v1}, Lpa/h;->i(Lokio/e;)I

    move-result v1

    const/4 v2, 0x1

    if-ltz v1, :cond_85

    const/16 v3, 0x4000

    if-gt v1, v3, :cond_85

    .line 3
    iget-object v3, p0, Lpa/h;->o:Lokio/e;

    invoke-interface {v3}, Lokio/e;->readByte()B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    if-eqz p1, :cond_33

    const/4 p1, 0x4

    if-ne v3, p1, :cond_24

    goto :goto_33

    :cond_24
    new-array p1, v2, [Ljava/lang/Object;

    .line 4
    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p2

    aput-object p2, p1, v0

    const-string p2, "Expected a SETTINGS frame but was %s"

    invoke-static {p2, p1}, Lpa/e;->d(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    .line 5
    :cond_33
    :goto_33
    iget-object p1, p0, Lpa/h;->o:Lokio/e;

    invoke-interface {p1}, Lokio/e;->readByte()B

    move-result p1

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    .line 6
    iget-object v0, p0, Lpa/h;->o:Lokio/e;

    invoke-interface {v0}, Lokio/e;->readInt()I

    move-result v0

    const v4, 0x7fffffff

    and-int/2addr v0, v4

    .line 7
    sget-object v4, Lpa/h;->s:Ljava/util/logging/Logger;

    sget-object v5, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v5

    if-eqz v5, :cond_57

    invoke-static {v2, v0, v1, v3, p1}, Lpa/e;->b(ZIIBB)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    :cond_57
    packed-switch v3, :pswitch_data_96

    .line 8
    iget-object p1, p0, Lpa/h;->o:Lokio/e;

    int-to-long v0, v1

    invoke-interface {p1, v0, v1}, Lokio/e;->skip(J)V

    goto :goto_84

    .line 9
    :pswitch_61
    invoke-direct {p0, p2, v1, p1, v0}, Lpa/h;->p(Lpa/h$b;IBI)V

    goto :goto_84

    .line 10
    :pswitch_65
    invoke-direct {p0, p2, v1, p1, v0}, Lpa/h;->f(Lpa/h$b;IBI)V

    goto :goto_84

    .line 11
    :pswitch_69
    invoke-direct {p0, p2, v1, p1, v0}, Lpa/h;->j(Lpa/h$b;IBI)V

    goto :goto_84

    .line 12
    :pswitch_6d
    invoke-direct {p0, p2, v1, p1, v0}, Lpa/h;->m(Lpa/h$b;IBI)V

    goto :goto_84

    .line 13
    :pswitch_71
    invoke-direct {p0, p2, v1, p1, v0}, Lpa/h;->o(Lpa/h$b;IBI)V

    goto :goto_84

    .line 14
    :pswitch_75
    invoke-direct {p0, p2, v1, p1, v0}, Lpa/h;->n(Lpa/h$b;IBI)V

    goto :goto_84

    .line 15
    :pswitch_79
    invoke-direct {p0, p2, v1, p1, v0}, Lpa/h;->l(Lpa/h$b;IBI)V

    goto :goto_84

    .line 16
    :pswitch_7d
    invoke-direct {p0, p2, v1, p1, v0}, Lpa/h;->h(Lpa/h$b;IBI)V

    goto :goto_84

    .line 17
    :pswitch_81
    invoke-direct {p0, p2, v1, p1, v0}, Lpa/h;->e(Lpa/h$b;IBI)V

    :goto_84
    return v2

    :cond_85
    new-array p1, v2, [Ljava/lang/Object;

    .line 18
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, v0

    const-string p2, "FRAME_SIZE_ERROR: %s"

    invoke-static {p2, p1}, Lpa/e;->d(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :catch_94
    return v0

    nop

    :pswitch_data_96
    .packed-switch 0x0
        :pswitch_81
        :pswitch_7d
        :pswitch_79
        :pswitch_75
        :pswitch_71
        :pswitch_6d
        :pswitch_69
        :pswitch_65
        :pswitch_61
    .end packed-switch
.end method

.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lpa/h;->o:Lokio/e;

    invoke-interface {v0}, Lokio/u;->close()V

    return-void
.end method

.method public d(Lpa/h$b;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lpa/h;->q:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_16

    .line 2
    invoke-virtual {p0, v2, p1}, Lpa/h;->c(ZLpa/h$b;)Z

    move-result p1

    if-eqz p1, :cond_d

    goto :goto_44

    :cond_d
    new-array p1, v1, [Ljava/lang/Object;

    const-string v0, "Required SETTINGS preface not received"

    .line 3
    invoke-static {v0, p1}, Lpa/e;->d(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    .line 4
    :cond_16
    iget-object p1, p0, Lpa/h;->o:Lokio/e;

    sget-object v0, Lpa/e;->a:Lokio/f;

    invoke-virtual {v0}, Lokio/f;->J()I

    move-result v3

    int-to-long v3, v3

    invoke-interface {p1, v3, v4}, Lokio/e;->h0(J)Lokio/f;

    move-result-object p1

    .line 5
    sget-object v3, Lpa/h;->s:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v4

    if-eqz v4, :cond_3e

    new-array v4, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Lokio/f;->n()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    const-string v5, "<< CONNECTION %s"

    invoke-static {v5, v4}, Lka/c;->r(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 6
    :cond_3e
    invoke-virtual {v0, p1}, Lokio/f;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_45

    :goto_44
    return-void

    :cond_45
    new-array v0, v2, [Ljava/lang/Object;

    .line 7
    invoke-virtual {p1}, Lokio/f;->O()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v1

    const-string p1, "Expected a connection header but was %s"

    invoke-static {p1, v0}, Lpa/e;->d(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1
.end method

###### Class pa.h.a (pa.h$a)
.class final Lpa/h$a;
.super Ljava/lang/Object;
.source "Http2Reader.java"

# interfaces
.implements Lokio/u;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lpa/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field private final o:Lokio/e;

.field p:I

.field q:B

.field r:I

.field s:I

.field t:S


# direct methods
.method constructor <init>(Lokio/e;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lpa/h$a;->o:Lokio/e;

    return-void
.end method

.method private b()V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lpa/h$a;->r:I

    .line 2
    iget-object v1, p0, Lpa/h$a;->o:Lokio/e;

    invoke-static {v1}, Lpa/h;->i(Lokio/e;)I

    move-result v1

    iput v1, p0, Lpa/h$a;->s:I

    iput v1, p0, Lpa/h$a;->p:I

    .line 3
    iget-object v1, p0, Lpa/h$a;->o:Lokio/e;

    invoke-interface {v1}, Lokio/e;->readByte()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    .line 4
    iget-object v2, p0, Lpa/h$a;->o:Lokio/e;

    invoke-interface {v2}, Lokio/e;->readByte()B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    iput-byte v2, p0, Lpa/h$a;->q:B

    .line 5
    sget-object v2, Lpa/h;->s:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_38

    iget v3, p0, Lpa/h$a;->r:I

    iget v5, p0, Lpa/h$a;->p:I

    iget-byte v6, p0, Lpa/h$a;->q:B

    invoke-static {v4, v3, v5, v1, v6}, Lpa/e;->b(ZIIBB)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 6
    :cond_38
    iget-object v2, p0, Lpa/h$a;->o:Lokio/e;

    invoke-interface {v2}, Lokio/e;->readInt()I

    move-result v2

    const v3, 0x7fffffff

    and-int/2addr v2, v3

    iput v2, p0, Lpa/h$a;->r:I

    const/16 v3, 0x9

    const/4 v5, 0x0

    if-ne v1, v3, :cond_55

    if-ne v2, v0, :cond_4c

    return-void

    :cond_4c
    new-array v0, v5, [Ljava/lang/Object;

    const-string v1, "TYPE_CONTINUATION streamId changed"

    .line 7
    invoke-static {v1, v0}, Lpa/e;->d(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_55
    new-array v0, v4, [Ljava/lang/Object;

    .line 8
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    aput-object v1, v0, v5

    const-string v1, "%s != TYPE_CONTINUATION"

    invoke-static {v1, v0}, Lpa/e;->d(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method


# virtual methods
.method public close()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public read(Lokio/c;J)J
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    :goto_0
    iget v0, p0, Lpa/h$a;->s:I

    const-wide/16 v1, -0x1

    if-nez v0, :cond_1c

    .line 2
    iget-object v0, p0, Lpa/h$a;->o:Lokio/e;

    iget-short v3, p0, Lpa/h$a;->t:S

    int-to-long v3, v3

    invoke-interface {v0, v3, v4}, Lokio/e;->skip(J)V

    const/4 v0, 0x0

    .line 3
    iput-short v0, p0, Lpa/h$a;->t:S

    .line 4
    iget-byte v0, p0, Lpa/h$a;->q:B

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_18

    return-wide v1

    .line 5
    :cond_18
    invoke-direct {p0}, Lpa/h$a;->b()V

    goto :goto_0

    .line 6
    :cond_1c
    iget-object v3, p0, Lpa/h$a;->o:Lokio/e;

    int-to-long v4, v0

    invoke-static {p2, p3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p2

    invoke-interface {v3, p1, p2, p3}, Lokio/u;->read(Lokio/c;J)J

    move-result-wide p1

    cmp-long p3, p1, v1

    if-nez p3, :cond_2c

    return-wide v1

    .line 7
    :cond_2c
    iget p3, p0, Lpa/h$a;->s:I

    int-to-long v0, p3

    sub-long/2addr v0, p1

    long-to-int p3, v0

    iput p3, p0, Lpa/h$a;->s:I

    return-wide p1
.end method

.method public timeout()Lokio/v;
    .registers 2

    .line 1
    iget-object v0, p0, Lpa/h$a;->o:Lokio/e;

    invoke-interface {v0}, Lokio/u;->timeout()Lokio/v;

    move-result-object v0

    return-object v0
.end method

###### Class pa.h.b (pa.h$b)
.class interface abstract Lpa/h$b;
.super Ljava/lang/Object;
.source "Http2Reader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lpa/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "b"
.end annotation


# virtual methods
.method public abstract a()V
.end method

.method public abstract b(ZIILjava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZII",
            "Ljava/util/List<",
            "Lpa/c;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract c(IJ)V
.end method

.method public abstract d(ILpa/b;Lokio/f;)V
.end method

.method public abstract e(ZLpa/m;)V
.end method

.method public abstract f(ZILokio/e;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract g(ZII)V
.end method

.method public abstract h(IIIZ)V
.end method

.method public abstract i(ILpa/b;)V
.end method

.method public abstract j(IILjava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Lpa/c;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
