###### Class r5.g (r5.g)
.class Lr5/g;
.super Ljava/lang/Object;
.source "QueueFile.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lr5/g$d;,
        Lr5/g$b;,
        Lr5/g$c;
    }
.end annotation


# static fields
.field private static final u:Ljava/util/logging/Logger;


# instance fields
.field private final o:Ljava/io/RandomAccessFile;

.field p:I

.field private q:I

.field private r:Lr5/g$b;

.field private s:Lr5/g$b;

.field private final t:[B


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    const-class v0, Lr5/g;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lr5/g;->u:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    new-array v0, v0, [B

    .line 2
    iput-object v0, p0, Lr5/g;->t:[B

    .line 3
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_12

    .line 4
    invoke-static {p1}, Lr5/g;->k(Ljava/io/File;)V

    .line 5
    :cond_12
    invoke-static {p1}, Lr5/g;->n(Ljava/io/File;)Ljava/io/RandomAccessFile;

    move-result-object p1

    iput-object p1, p0, Lr5/g;->o:Ljava/io/RandomAccessFile;

    .line 6
    invoke-direct {p0}, Lr5/g;->p()V

    return-void
.end method

.method private static varargs A([B[I)V
    .registers 6

    .line 1
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_3
    if-ge v1, v0, :cond_f

    aget v3, p1, v1

    .line 2
    invoke-static {p0, v2, v3}, Lr5/g;->z([BII)V

    add-int/lit8 v2, v2, 0x4

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_f
    return-void
.end method

.method static synthetic b(Lr5/g;I)I
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lr5/g;->x(I)I

    move-result p0

    return p0
.end method

.method static synthetic c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-static {p0, p1}, Lr5/g;->m(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static synthetic d(Lr5/g;I[BII)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lr5/g;->t(I[BII)V

    return-void
.end method

.method static synthetic e(Lr5/g;)Ljava/io/RandomAccessFile;
    .registers 1

    .line 1
    iget-object p0, p0, Lr5/g;->o:Ljava/io/RandomAccessFile;

    return-object p0
.end method

.method private i(I)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    add-int/lit8 p1, p1, 0x4

    .line 1
    invoke-direct {p0}, Lr5/g;->r()I

    move-result v0

    if-lt v0, p1, :cond_9

    return-void

    .line 2
    :cond_9
    iget v1, p0, Lr5/g;->p:I

    :cond_b
    add-int/2addr v0, v1

    shl-int/lit8 v1, v1, 0x1

    if-lt v0, p1, :cond_b

    .line 3
    invoke-direct {p0, v1}, Lr5/g;->v(I)V

    .line 4
    iget-object p1, p0, Lr5/g;->s:Lr5/g$b;

    iget v0, p1, Lr5/g$b;->a:I

    add-int/lit8 v0, v0, 0x4

    iget p1, p1, Lr5/g$b;->b:I

    add-int/2addr v0, p1

    invoke-direct {p0, v0}, Lr5/g;->x(I)I

    move-result p1

    .line 5
    iget-object v0, p0, Lr5/g;->r:Lr5/g$b;

    iget v0, v0, Lr5/g$b;->a:I

    if-ge p1, v0, :cond_4a

    .line 6
    iget-object v0, p0, Lr5/g;->o:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v7

    .line 7
    iget v0, p0, Lr5/g;->p:I

    int-to-long v2, v0

    invoke-virtual {v7, v2, v3}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    add-int/lit8 p1, p1, -0x4

    const-wide/16 v3, 0x10

    int-to-long v8, p1

    move-object v2, v7

    move-wide v5, v8

    .line 8
    invoke-virtual/range {v2 .. v7}, Ljava/nio/channels/FileChannel;->transferTo(JJLjava/nio/channels/WritableByteChannel;)J

    move-result-wide v2

    cmp-long p1, v2, v8

    if-nez p1, :cond_42

    goto :goto_4a

    .line 9
    :cond_42
    new-instance p1, Ljava/lang/AssertionError;

    const-string v0, "Copied insufficient number of bytes!"

    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    .line 10
    :cond_4a
    :goto_4a
    iget-object p1, p0, Lr5/g;->s:Lr5/g$b;

    iget p1, p1, Lr5/g$b;->a:I

    iget-object v0, p0, Lr5/g;->r:Lr5/g$b;

    iget v0, v0, Lr5/g$b;->a:I

    if-ge p1, v0, :cond_6a

    .line 11
    iget v2, p0, Lr5/g;->p:I

    add-int/2addr v2, p1

    add-int/lit8 v2, v2, -0x10

    .line 12
    iget p1, p0, Lr5/g;->q:I

    invoke-direct {p0, v1, p1, v0, v2}, Lr5/g;->y(IIII)V

    .line 13
    new-instance p1, Lr5/g$b;

    iget-object v0, p0, Lr5/g;->s:Lr5/g$b;

    iget v0, v0, Lr5/g$b;->b:I

    invoke-direct {p1, v2, v0}, Lr5/g$b;-><init>(II)V

    iput-object p1, p0, Lr5/g;->s:Lr5/g$b;

    goto :goto_6f

    .line 14
    :cond_6a
    iget v2, p0, Lr5/g;->q:I

    invoke-direct {p0, v1, v2, v0, p1}, Lr5/g;->y(IIII)V

    .line 15
    :goto_6f
    iput v1, p0, Lr5/g;->p:I

    return-void
.end method

.method private static k(Ljava/io/File;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".tmp"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-static {v0}, Lr5/g;->n(Ljava/io/File;)Ljava/io/RandomAccessFile;

    move-result-object v1

    const-wide/16 v2, 0x1000

    .line 3
    :try_start_20
    invoke-virtual {v1, v2, v3}, Ljava/io/RandomAccessFile;->setLength(J)V

    const-wide/16 v2, 0x0

    .line 4
    invoke-virtual {v1, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    const/16 v2, 0x10

    new-array v2, v2, [B

    const/4 v3, 0x4

    new-array v3, v3, [I

    const/16 v4, 0x1000

    const/4 v5, 0x0

    aput v4, v3, v5

    const/4 v4, 0x1

    aput v5, v3, v4

    const/4 v4, 0x2

    aput v5, v3, v4

    const/4 v4, 0x3

    aput v5, v3, v4

    .line 5
    invoke-static {v2, v3}, Lr5/g;->A([B[I)V

    .line 6
    invoke-virtual {v1, v2}, Ljava/io/RandomAccessFile;->write([B)V
    :try_end_43
    .catchall {:try_start_20 .. :try_end_43} :catchall_55

    .line 7
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    .line 8
    invoke-virtual {v0, p0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result p0

    if-eqz p0, :cond_4d

    return-void

    .line 9
    :cond_4d
    new-instance p0, Ljava/io/IOException;

    const-string v0, "Rename failed!"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_55
    move-exception p0

    .line 10
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    .line 11
    throw p0
.end method

.method private static m(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 1
    invoke-static {p0, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-object p0
.end method

.method private static n(Ljava/io/File;)Ljava/io/RandomAccessFile;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string v1, "rwd"

    invoke-direct {v0, p0, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private o(I)Lr5/g$b;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_5

    .line 1
    sget-object p1, Lr5/g$b;->c:Lr5/g$b;

    return-object p1

    .line 2
    :cond_5
    iget-object v0, p0, Lr5/g;->o:Ljava/io/RandomAccessFile;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 3
    new-instance v0, Lr5/g$b;

    iget-object v1, p0, Lr5/g;->o:Ljava/io/RandomAccessFile;

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v1

    invoke-direct {v0, p1, v1}, Lr5/g$b;-><init>(II)V

    return-object v0
.end method

.method private p()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lr5/g;->o:Ljava/io/RandomAccessFile;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 2
    iget-object v0, p0, Lr5/g;->o:Ljava/io/RandomAccessFile;

    iget-object v1, p0, Lr5/g;->t:[B

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 3
    iget-object v0, p0, Lr5/g;->t:[B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lr5/g;->q([BI)I

    move-result v0

    iput v0, p0, Lr5/g;->p:I

    int-to-long v0, v0

    .line 4
    iget-object v2, p0, Lr5/g;->o:Ljava/io/RandomAccessFile;

    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-gtz v4, :cond_48

    .line 5
    iget-object v0, p0, Lr5/g;->t:[B

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lr5/g;->q([BI)I

    move-result v0

    iput v0, p0, Lr5/g;->q:I

    .line 6
    iget-object v0, p0, Lr5/g;->t:[B

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lr5/g;->q([BI)I

    move-result v0

    .line 7
    iget-object v1, p0, Lr5/g;->t:[B

    const/16 v2, 0xc

    invoke-static {v1, v2}, Lr5/g;->q([BI)I

    move-result v1

    .line 8
    invoke-direct {p0, v0}, Lr5/g;->o(I)Lr5/g$b;

    move-result-object v0

    iput-object v0, p0, Lr5/g;->r:Lr5/g$b;

    .line 9
    invoke-direct {p0, v1}, Lr5/g;->o(I)Lr5/g$b;

    move-result-object v0

    iput-object v0, p0, Lr5/g;->s:Lr5/g$b;

    return-void

    .line 10
    :cond_48
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "File is truncated. Expected length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lr5/g;->p:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", Actual length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lr5/g;->o:Ljava/io/RandomAccessFile;

    .line 11
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static q([BI)I
    .registers 4

    .line 1
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    add-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    add-int/lit8 p1, p1, 0x3

    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    add-int/2addr v0, p0

    return v0
.end method

.method private r()I
    .registers 3

    .line 1
    iget v0, p0, Lr5/g;->p:I

    invoke-virtual {p0}, Lr5/g;->w()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method private t(I[BII)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lr5/g;->x(I)I

    move-result p1

    add-int v0, p1, p4

    .line 2
    iget v1, p0, Lr5/g;->p:I

    if-gt v0, v1, :cond_16

    .line 3
    iget-object v0, p0, Lr5/g;->o:Ljava/io/RandomAccessFile;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 4
    iget-object p1, p0, Lr5/g;->o:Ljava/io/RandomAccessFile;

    invoke-virtual {p1, p2, p3, p4}, Ljava/io/RandomAccessFile;->readFully([BII)V

    goto :goto_30

    :cond_16
    sub-int/2addr v1, p1

    .line 5
    iget-object v0, p0, Lr5/g;->o:Ljava/io/RandomAccessFile;

    int-to-long v2, p1

    invoke-virtual {v0, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 6
    iget-object p1, p0, Lr5/g;->o:Ljava/io/RandomAccessFile;

    invoke-virtual {p1, p2, p3, v1}, Ljava/io/RandomAccessFile;->readFully([BII)V

    .line 7
    iget-object p1, p0, Lr5/g;->o:Ljava/io/RandomAccessFile;

    const-wide/16 v2, 0x10

    invoke-virtual {p1, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 8
    iget-object p1, p0, Lr5/g;->o:Ljava/io/RandomAccessFile;

    add-int/2addr p3, v1

    sub-int/2addr p4, v1

    invoke-virtual {p1, p2, p3, p4}, Ljava/io/RandomAccessFile;->readFully([BII)V

    :goto_30
    return-void
.end method

.method private u(I[BII)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lr5/g;->x(I)I

    move-result p1

    add-int v0, p1, p4

    .line 2
    iget v1, p0, Lr5/g;->p:I

    if-gt v0, v1, :cond_16

    .line 3
    iget-object v0, p0, Lr5/g;->o:Ljava/io/RandomAccessFile;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 4
    iget-object p1, p0, Lr5/g;->o:Ljava/io/RandomAccessFile;

    invoke-virtual {p1, p2, p3, p4}, Ljava/io/RandomAccessFile;->write([BII)V

    goto :goto_30

    :cond_16
    sub-int/2addr v1, p1

    .line 5
    iget-object v0, p0, Lr5/g;->o:Ljava/io/RandomAccessFile;

    int-to-long v2, p1

    invoke-virtual {v0, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 6
    iget-object p1, p0, Lr5/g;->o:Ljava/io/RandomAccessFile;

    invoke-virtual {p1, p2, p3, v1}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 7
    iget-object p1, p0, Lr5/g;->o:Ljava/io/RandomAccessFile;

    const-wide/16 v2, 0x10

    invoke-virtual {p1, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 8
    iget-object p1, p0, Lr5/g;->o:Ljava/io/RandomAccessFile;

    add-int/2addr p3, v1

    sub-int/2addr p4, v1

    invoke-virtual {p1, p2, p3, p4}, Ljava/io/RandomAccessFile;->write([BII)V

    :goto_30
    return-void
.end method

.method private v(I)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lr5/g;->o:Ljava/io/RandomAccessFile;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->setLength(J)V

    .line 2
    iget-object p1, p0, Lr5/g;->o:Ljava/io/RandomAccessFile;

    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/nio/channels/FileChannel;->force(Z)V

    return-void
.end method

.method private x(I)I
    .registers 3

    .line 1
    iget v0, p0, Lr5/g;->p:I

    if-ge p1, v0, :cond_5

    goto :goto_8

    :cond_5
    add-int/lit8 p1, p1, 0x10

    sub-int/2addr p1, v0

    :goto_8
    return p1
.end method

.method private y(IIII)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lr5/g;->t:[B

    const/4 v1, 0x4

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    const/4 p1, 0x1

    aput p2, v1, p1

    const/4 p1, 0x2

    aput p3, v1, p1

    const/4 p1, 0x3

    aput p4, v1, p1

    invoke-static {v0, v1}, Lr5/g;->A([B[I)V

    .line 2
    iget-object p1, p0, Lr5/g;->o:Ljava/io/RandomAccessFile;

    const-wide/16 p2, 0x0

    invoke-virtual {p1, p2, p3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 3
    iget-object p1, p0, Lr5/g;->o:Ljava/io/RandomAccessFile;

    iget-object p2, p0, Lr5/g;->t:[B

    invoke-virtual {p1, p2}, Ljava/io/RandomAccessFile;->write([B)V

    return-void
.end method

.method private static z([BII)V
    .registers 5

    shr-int/lit8 v0, p2, 0x18

    int-to-byte v0, v0

    .line 1
    aput-byte v0, p0, p1

    add-int/lit8 v0, p1, 0x1

    shr-int/lit8 v1, p2, 0x10

    int-to-byte v1, v1

    .line 2
    aput-byte v1, p0, v0

    add-int/lit8 v0, p1, 0x2

    shr-int/lit8 v1, p2, 0x8

    int-to-byte v1, v1

    .line 3
    aput-byte v1, p0, v0

    add-int/lit8 p1, p1, 0x3

    int-to-byte p2, p2

    .line 4
    aput-byte p2, p0, p1

    return-void
.end method


# virtual methods
.method public declared-synchronized close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_1
    iget-object v0, p0, Lr5/g;->o:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 2
    monitor-exit p0

    return-void

    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public f([B)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lr5/g;->g([BII)V

    return-void
.end method

.method public declared-synchronized g([BII)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    const-string v0, "buffer"

    .line 1
    invoke-static {p1, v0}, Lr5/g;->m(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    or-int v0, p2, p3

    if-ltz v0, :cond_61

    .line 2
    array-length v0, p1

    sub-int/2addr v0, p2

    if-gt p3, v0, :cond_61

    .line 3
    invoke-direct {p0, p3}, Lr5/g;->i(I)V

    .line 4
    invoke-virtual {p0}, Lr5/g;->l()Z

    move-result v0

    const/4 v1, 0x4

    if-eqz v0, :cond_1b

    const/16 v2, 0x10

    goto :goto_27

    .line 5
    :cond_1b
    iget-object v2, p0, Lr5/g;->s:Lr5/g$b;

    iget v3, v2, Lr5/g$b;->a:I

    add-int/2addr v3, v1

    iget v2, v2, Lr5/g$b;->b:I

    add-int/2addr v3, v2

    invoke-direct {p0, v3}, Lr5/g;->x(I)I

    move-result v2

    .line 6
    :goto_27
    new-instance v3, Lr5/g$b;

    invoke-direct {v3, v2, p3}, Lr5/g$b;-><init>(II)V

    .line 7
    iget-object v2, p0, Lr5/g;->t:[B

    const/4 v4, 0x0

    invoke-static {v2, v4, p3}, Lr5/g;->z([BII)V

    .line 8
    iget v2, v3, Lr5/g$b;->a:I

    iget-object v5, p0, Lr5/g;->t:[B

    invoke-direct {p0, v2, v5, v4, v1}, Lr5/g;->u(I[BII)V

    .line 9
    iget v2, v3, Lr5/g$b;->a:I

    add-int/2addr v2, v1

    invoke-direct {p0, v2, p1, p2, p3}, Lr5/g;->u(I[BII)V

    if-eqz v0, :cond_44

    .line 10
    iget p1, v3, Lr5/g$b;->a:I

    goto :goto_48

    :cond_44
    iget-object p1, p0, Lr5/g;->r:Lr5/g$b;

    iget p1, p1, Lr5/g$b;->a:I

    .line 11
    :goto_48
    iget p2, p0, Lr5/g;->p:I

    iget p3, p0, Lr5/g;->q:I

    add-int/lit8 p3, p3, 0x1

    iget v1, v3, Lr5/g$b;->a:I

    invoke-direct {p0, p2, p3, p1, v1}, Lr5/g;->y(IIII)V

    .line 12
    iput-object v3, p0, Lr5/g;->s:Lr5/g$b;

    .line 13
    iget p1, p0, Lr5/g;->q:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lr5/g;->q:I

    if-eqz v0, :cond_5f

    .line 14
    iput-object v3, p0, Lr5/g;->r:Lr5/g$b;
    :try_end_5f
    .catchall {:try_start_1 .. :try_end_5f} :catchall_67

    .line 15
    :cond_5f
    monitor-exit p0

    return-void

    .line 16
    :cond_61
    :try_start_61
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
    :try_end_67
    .catchall {:try_start_61 .. :try_end_67} :catchall_67

    :catchall_67
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized h()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x0

    const/16 v1, 0x1000

    .line 1
    :try_start_4
    invoke-direct {p0, v1, v0, v0, v0}, Lr5/g;->y(IIII)V

    .line 2
    iput v0, p0, Lr5/g;->q:I

    .line 3
    sget-object v0, Lr5/g$b;->c:Lr5/g$b;

    iput-object v0, p0, Lr5/g;->r:Lr5/g$b;

    .line 4
    iput-object v0, p0, Lr5/g;->s:Lr5/g$b;

    .line 5
    iget v0, p0, Lr5/g;->p:I

    if-le v0, v1, :cond_16

    invoke-direct {p0, v1}, Lr5/g;->v(I)V

    .line 6
    :cond_16
    iput v1, p0, Lr5/g;->p:I
    :try_end_18
    .catchall {:try_start_4 .. :try_end_18} :catchall_1a

    .line 7
    monitor-exit p0

    return-void

    :catchall_1a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized j(Lr5/g$d;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_1
    iget-object v0, p0, Lr5/g;->r:Lr5/g$b;

    iget v0, v0, Lr5/g$b;->a:I

    const/4 v1, 0x0

    .line 2
    :goto_6
    iget v2, p0, Lr5/g;->q:I

    if-ge v1, v2, :cond_27

    .line 3
    invoke-direct {p0, v0}, Lr5/g;->o(I)Lr5/g$b;

    move-result-object v0

    .line 4
    new-instance v2, Lr5/g$c;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v0, v3}, Lr5/g$c;-><init>(Lr5/g;Lr5/g$b;Lr5/g$a;)V

    iget v3, v0, Lr5/g$b;->b:I

    invoke-interface {p1, v2, v3}, Lr5/g$d;->a(Ljava/io/InputStream;I)V

    .line 5
    iget v2, v0, Lr5/g$b;->a:I

    add-int/lit8 v2, v2, 0x4

    iget v0, v0, Lr5/g$b;->b:I

    add-int/2addr v2, v0

    invoke-direct {p0, v2}, Lr5/g;->x(I)I

    move-result v0
    :try_end_24
    .catchall {:try_start_1 .. :try_end_24} :catchall_29

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 6
    :cond_27
    monitor-exit p0

    return-void

    :catchall_29
    move-exception p1

    monitor-exit p0

    goto :goto_2d

    :goto_2c
    throw p1

    :goto_2d
    goto :goto_2c
.end method

.method public declared-synchronized l()Z
    .registers 2

    monitor-enter p0

    .line 1
    :try_start_1
    iget v0, p0, Lr5/g;->q:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_a

    if-nez v0, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    monitor-exit p0

    return v0

    :catchall_a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized s()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_1
    invoke-virtual {p0}, Lr5/g;->l()Z

    move-result v0

    if-nez v0, :cond_43

    .line 2
    iget v0, p0, Lr5/g;->q:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_10

    .line 3
    invoke-virtual {p0}, Lr5/g;->h()V

    goto :goto_41

    .line 4
    :cond_10
    iget-object v0, p0, Lr5/g;->r:Lr5/g$b;

    iget v2, v0, Lr5/g$b;->a:I

    const/4 v3, 0x4

    add-int/2addr v2, v3

    iget v0, v0, Lr5/g$b;->b:I

    add-int/2addr v2, v0

    invoke-direct {p0, v2}, Lr5/g;->x(I)I

    move-result v0

    .line 5
    iget-object v2, p0, Lr5/g;->t:[B

    const/4 v4, 0x0

    invoke-direct {p0, v0, v2, v4, v3}, Lr5/g;->t(I[BII)V

    .line 6
    iget-object v2, p0, Lr5/g;->t:[B

    invoke-static {v2, v4}, Lr5/g;->q([BI)I

    move-result v2

    .line 7
    iget v3, p0, Lr5/g;->p:I

    iget v4, p0, Lr5/g;->q:I

    sub-int/2addr v4, v1

    iget-object v5, p0, Lr5/g;->s:Lr5/g$b;

    iget v5, v5, Lr5/g$b;->a:I

    invoke-direct {p0, v3, v4, v0, v5}, Lr5/g;->y(IIII)V

    .line 8
    iget v3, p0, Lr5/g;->q:I

    sub-int/2addr v3, v1

    iput v3, p0, Lr5/g;->q:I

    .line 9
    new-instance v1, Lr5/g$b;

    invoke-direct {v1, v0, v2}, Lr5/g$b;-><init>(II)V

    iput-object v1, p0, Lr5/g;->r:Lr5/g$b;
    :try_end_41
    .catchall {:try_start_1 .. :try_end_41} :catchall_49

    .line 10
    :goto_41
    monitor-exit p0

    return-void

    .line 11
    :cond_43
    :try_start_43
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
    :try_end_49
    .catchall {:try_start_43 .. :try_end_49} :catchall_49

    :catchall_49
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, "fileLength="

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lr5/g;->p:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", size="

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lr5/g;->q:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", first="

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lr5/g;->r:Lr5/g$b;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", last="

    .line 6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lr5/g;->s:Lr5/g$b;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", element lengths=["

    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    :try_start_42
    new-instance v1, Lr5/g$a;

    invoke-direct {v1, p0, v0}, Lr5/g$a;-><init>(Lr5/g;Ljava/lang/StringBuilder;)V

    invoke-virtual {p0, v1}, Lr5/g;->j(Lr5/g$d;)V
    :try_end_4a
    .catch Ljava/io/IOException; {:try_start_42 .. :try_end_4a} :catch_4b

    goto :goto_55

    :catch_4b
    move-exception v1

    .line 9
    sget-object v2, Lr5/g;->u:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v4, "read error"

    invoke-virtual {v2, v3, v4, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_55
    const-string v1, "]]"

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public w()I
    .registers 5

    .line 1
    iget v0, p0, Lr5/g;->q:I

    const/16 v1, 0x10

    if-nez v0, :cond_7

    return v1

    .line 2
    :cond_7
    iget-object v0, p0, Lr5/g;->s:Lr5/g$b;

    iget v2, v0, Lr5/g$b;->a:I

    iget-object v3, p0, Lr5/g;->r:Lr5/g$b;

    iget v3, v3, Lr5/g$b;->a:I

    if-lt v2, v3, :cond_19

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x4

    .line 3
    iget v0, v0, Lr5/g$b;->b:I

    add-int/2addr v2, v0

    add-int/2addr v2, v1

    return v2

    :cond_19
    add-int/lit8 v2, v2, 0x4

    .line 4
    iget v0, v0, Lr5/g$b;->b:I

    add-int/2addr v2, v0

    iget v0, p0, Lr5/g;->p:I

    add-int/2addr v2, v0

    sub-int/2addr v2, v3

    return v2
.end method

###### Class r5.g.a (r5.g$a)
.class Lr5/g$a;
.super Ljava/lang/Object;
.source "QueueFile.java"

# interfaces
.implements Lr5/g$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lr5/g;->toString()Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field a:Z

.field final synthetic b:Ljava/lang/StringBuilder;

.field final synthetic c:Lr5/g;


# direct methods
.method constructor <init>(Lr5/g;Ljava/lang/StringBuilder;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lr5/g$a;->c:Lr5/g;

    iput-object p2, p0, Lr5/g$a;->b:Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lr5/g$a;->a:Z

    return-void
.end method


# virtual methods
.method public a(Ljava/io/InputStream;I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-boolean p1, p0, Lr5/g$a;->a:Z

    if-eqz p1, :cond_8

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lr5/g$a;->a:Z

    goto :goto_f

    .line 3
    :cond_8
    iget-object p1, p0, Lr5/g$a;->b:Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    :goto_f
    iget-object p1, p0, Lr5/g$a;->b:Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    return-void
.end method

###### Class r5.g.b (r5.g$b)
.class Lr5/g$b;
.super Ljava/lang/Object;
.source "QueueFile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lr5/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# static fields
.field static final c:Lr5/g$b;


# instance fields
.field final a:I

.field final b:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Lr5/g$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lr5/g$b;-><init>(II)V

    sput-object v0, Lr5/g$b;->c:Lr5/g$b;

    return-void
.end method

.method constructor <init>(II)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lr5/g$b;->a:I

    .line 3
    iput p2, p0, Lr5/g$b;->b:I

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "[position = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lr5/g$b;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", length = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lr5/g$b;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class r5.g.c (r5.g$c)
.class final Lr5/g$c;
.super Ljava/io/InputStream;
.source "QueueFile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lr5/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "c"
.end annotation


# instance fields
.field private o:I

.field private p:I

.field final synthetic q:Lr5/g;


# direct methods
.method private constructor <init>(Lr5/g;Lr5/g$b;)V
    .registers 4

    .line 2
    iput-object p1, p0, Lr5/g$c;->q:Lr5/g;

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 3
    iget v0, p2, Lr5/g$b;->a:I

    add-int/lit8 v0, v0, 0x4

    invoke-static {p1, v0}, Lr5/g;->b(Lr5/g;I)I

    move-result p1

    iput p1, p0, Lr5/g$c;->o:I

    .line 4
    iget p1, p2, Lr5/g$b;->b:I

    iput p1, p0, Lr5/g$c;->p:I

    return-void
.end method

.method synthetic constructor <init>(Lr5/g;Lr5/g$b;Lr5/g$a;)V
    .registers 4

    .line 1
    invoke-direct {p0, p1, p2}, Lr5/g$c;-><init>(Lr5/g;Lr5/g$b;)V

    return-void
.end method


# virtual methods
.method public read()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8
    iget v0, p0, Lr5/g$c;->p:I

    if-nez v0, :cond_6

    const/4 v0, -0x1

    return v0

    .line 9
    :cond_6
    iget-object v0, p0, Lr5/g$c;->q:Lr5/g;

    invoke-static {v0}, Lr5/g;->e(Lr5/g;)Ljava/io/RandomAccessFile;

    move-result-object v0

    iget v1, p0, Lr5/g$c;->o:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 10
    iget-object v0, p0, Lr5/g$c;->q:Lr5/g;

    invoke-static {v0}, Lr5/g;->e(Lr5/g;)Ljava/io/RandomAccessFile;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->read()I

    move-result v0

    .line 11
    iget-object v1, p0, Lr5/g$c;->q:Lr5/g;

    iget v2, p0, Lr5/g$c;->o:I

    add-int/lit8 v2, v2, 0x1

    invoke-static {v1, v2}, Lr5/g;->b(Lr5/g;I)I

    move-result v1

    iput v1, p0, Lr5/g$c;->o:I

    .line 12
    iget v1, p0, Lr5/g$c;->p:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lr5/g$c;->p:I

    return v0
.end method

.method public read([BII)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "buffer"

    .line 1
    invoke-static {p1, v0}, Lr5/g;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    or-int v0, p2, p3

    if-ltz v0, :cond_2e

    .line 2
    array-length v0, p1

    sub-int/2addr v0, p2

    if-gt p3, v0, :cond_2e

    .line 3
    iget v0, p0, Lr5/g$c;->p:I

    if-lez v0, :cond_2c

    if-le p3, v0, :cond_14

    move p3, v0

    .line 4
    :cond_14
    iget-object v0, p0, Lr5/g$c;->q:Lr5/g;

    iget v1, p0, Lr5/g$c;->o:I

    invoke-static {v0, v1, p1, p2, p3}, Lr5/g;->d(Lr5/g;I[BII)V

    .line 5
    iget-object p1, p0, Lr5/g$c;->q:Lr5/g;

    iget p2, p0, Lr5/g$c;->o:I

    add-int/2addr p2, p3

    invoke-static {p1, p2}, Lr5/g;->b(Lr5/g;I)I

    move-result p1

    iput p1, p0, Lr5/g$c;->o:I

    .line 6
    iget p1, p0, Lr5/g$c;->p:I

    sub-int/2addr p1, p3

    iput p1, p0, Lr5/g$c;->p:I

    return p3

    :cond_2c
    const/4 p1, -0x1

    return p1

    .line 7
    :cond_2e
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw p1
.end method

###### Class r5.g.d (r5.g$d)
.class public interface abstract Lr5/g$d;
.super Ljava/lang/Object;
.source "QueueFile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lr5/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "d"
.end annotation


# virtual methods
.method public abstract a(Ljava/io/InputStream;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
