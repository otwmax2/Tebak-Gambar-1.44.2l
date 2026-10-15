###### Class pa.j (pa.j)
.class final Lpa/j;
.super Ljava/lang/Object;
.source "Http2Writer.java"

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field private static final u:Ljava/util/logging/Logger;


# instance fields
.field private final o:Lokio/d;

.field private final p:Z

.field private final q:Lokio/c;

.field private r:I

.field private s:Z

.field final t:Lpa/d$b;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    const-class v0, Lpa/e;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lpa/j;->u:Ljava/util/logging/Logger;

    return-void
.end method

.method constructor <init>(Lokio/d;Z)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lpa/j;->o:Lokio/d;

    .line 3
    iput-boolean p2, p0, Lpa/j;->p:Z

    .line 4
    new-instance p1, Lokio/c;

    invoke-direct {p1}, Lokio/c;-><init>()V

    iput-object p1, p0, Lpa/j;->q:Lokio/c;

    .line 5
    new-instance p2, Lpa/d$b;

    invoke-direct {p2, p1}, Lpa/d$b;-><init>(Lokio/c;)V

    iput-object p2, p0, Lpa/j;->t:Lpa/d$b;

    const/16 p1, 0x4000

    .line 6
    iput p1, p0, Lpa/j;->r:I

    return-void
.end method

.method private p(IJ)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :goto_0
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-lez v2, :cond_24

    .line 1
    iget v2, p0, Lpa/j;->r:I

    int-to-long v2, v2

    invoke-static {v2, v3, p2, p3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int v3, v2

    int-to-long v4, v3

    sub-long/2addr p2, v4

    const/16 v2, 0x9

    cmp-long v6, p2, v0

    if-nez v6, :cond_18

    const/4 v0, 0x4

    goto :goto_19

    :cond_18
    const/4 v0, 0x0

    .line 2
    :goto_19
    invoke-virtual {p0, p1, v3, v2, v0}, Lpa/j;->f(IIBB)V

    .line 3
    iget-object v0, p0, Lpa/j;->o:Lokio/d;

    iget-object v1, p0, Lpa/j;->q:Lokio/c;

    invoke-interface {v0, v1, v4, v5}, Lokio/t;->a2(Lokio/c;J)V

    goto :goto_0

    :cond_24
    return-void
.end method

.method private static q(Lokio/d;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    ushr-int/lit8 v0, p1, 0x10

    and-int/lit16 v0, v0, 0xff

    .line 1
    invoke-interface {p0, v0}, Lokio/d;->T0(I)Lokio/d;

    ushr-int/lit8 v0, p1, 0x8

    and-int/lit16 v0, v0, 0xff

    .line 2
    invoke-interface {p0, v0}, Lokio/d;->T0(I)Lokio/d;

    and-int/lit16 p1, p1, 0xff

    .line 3
    invoke-interface {p0, p1}, Lokio/d;->T0(I)Lokio/d;

    return-void
.end method


# virtual methods
.method public declared-synchronized b(Lpa/m;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_1
    iget-boolean v0, p0, Lpa/j;->s:Z

    if-nez v0, :cond_2a

    .line 2
    iget v0, p0, Lpa/j;->r:I

    invoke-virtual {p1, v0}, Lpa/m;->f(I)I

    move-result v0

    iput v0, p0, Lpa/j;->r:I

    .line 3
    invoke-virtual {p1}, Lpa/m;->c()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1d

    .line 4
    iget-object v0, p0, Lpa/j;->t:Lpa/d$b;

    invoke-virtual {p1}, Lpa/m;->c()I

    move-result p1

    invoke-virtual {v0, p1}, Lpa/d$b;->e(I)V

    :cond_1d
    const/4 p1, 0x4

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 5
    invoke-virtual {p0, v1, v1, p1, v0}, Lpa/j;->f(IIBB)V

    .line 6
    iget-object p1, p0, Lpa/j;->o:Lokio/d;

    invoke-interface {p1}, Lokio/d;->flush()V
    :try_end_28
    .catchall {:try_start_1 .. :try_end_28} :catchall_32

    .line 7
    monitor-exit p0

    return-void

    .line 8
    :cond_2a
    :try_start_2a
    new-instance p1, Ljava/io/IOException;

    const-string v0, "closed"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_32
    .catchall {:try_start_2a .. :try_end_32} :catchall_32

    :catchall_32
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized c()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_1
    iget-boolean v0, p0, Lpa/j;->s:Z

    if-nez v0, :cond_3c

    .line 2
    iget-boolean v0, p0, Lpa/j;->p:Z
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_44

    if-nez v0, :cond_b

    monitor-exit p0

    return-void

    .line 3
    :cond_b
    :try_start_b
    sget-object v0, Lpa/j;->u:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_2a

    const-string v1, ">> CONNECTION %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 4
    sget-object v4, Lpa/e;->a:Lokio/f;

    invoke-virtual {v4}, Lokio/f;->n()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lka/c;->r(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 5
    :cond_2a
    iget-object v0, p0, Lpa/j;->o:Lokio/d;

    sget-object v1, Lpa/e;->a:Lokio/f;

    invoke-virtual {v1}, Lokio/f;->N()[B

    move-result-object v1

    invoke-interface {v0, v1}, Lokio/d;->Y2([B)Lokio/d;

    .line 6
    iget-object v0, p0, Lpa/j;->o:Lokio/d;

    invoke-interface {v0}, Lokio/d;->flush()V
    :try_end_3a
    .catchall {:try_start_b .. :try_end_3a} :catchall_44

    .line 7
    monitor-exit p0

    return-void

    .line 8
    :cond_3c
    :try_start_3c
    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_44
    .catchall {:try_start_3c .. :try_end_44} :catchall_44

    :catchall_44
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x1

    .line 1
    :try_start_2
    iput-boolean v0, p0, Lpa/j;->s:Z

    .line 2
    iget-object v0, p0, Lpa/j;->o:Lokio/d;

    invoke-interface {v0}, Lokio/t;->close()V
    :try_end_9
    .catchall {:try_start_2 .. :try_end_9} :catchall_b

    .line 3
    monitor-exit p0

    return-void

    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized d(ZILokio/c;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_1
    iget-boolean v0, p0, Lpa/j;->s:Z

    if-nez v0, :cond_f

    const/4 v0, 0x0

    if-eqz p1, :cond_a

    const/4 p1, 0x1

    int-to-byte v0, p1

    .line 2
    :cond_a
    invoke-virtual {p0, p2, v0, p3, p4}, Lpa/j;->e(IBLokio/c;I)V
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_17

    .line 3
    monitor-exit p0

    return-void

    .line 4
    :cond_f
    :try_start_f
    new-instance p1, Ljava/io/IOException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_17
    .catchall {:try_start_f .. :try_end_17} :catchall_17

    :catchall_17
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method e(IBLokio/c;I)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p4, v0, p2}, Lpa/j;->f(IIBB)V

    if-lez p4, :cond_c

    .line 2
    iget-object p1, p0, Lpa/j;->o:Lokio/d;

    int-to-long v0, p4

    invoke-interface {p1, p3, v0, v1}, Lokio/t;->a2(Lokio/c;J)V

    :cond_c
    return-void
.end method

.method public f(IIBB)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lpa/j;->u:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_12

    invoke-static {v2, p1, p2, p3, p4}, Lpa/e;->b(ZIIBB)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 2
    :cond_12
    iget v0, p0, Lpa/j;->r:I

    const/4 v1, 0x1

    if-gt p2, v0, :cond_48

    const/high16 v0, -0x80000000

    and-int/2addr v0, p1

    if-nez v0, :cond_39

    .line 3
    iget-object v0, p0, Lpa/j;->o:Lokio/d;

    invoke-static {v0, p2}, Lpa/j;->q(Lokio/d;I)V

    .line 4
    iget-object p2, p0, Lpa/j;->o:Lokio/d;

    and-int/lit16 p3, p3, 0xff

    invoke-interface {p2, p3}, Lokio/d;->T0(I)Lokio/d;

    .line 5
    iget-object p2, p0, Lpa/j;->o:Lokio/d;

    and-int/lit16 p3, p4, 0xff

    invoke-interface {p2, p3}, Lokio/d;->T0(I)Lokio/d;

    .line 6
    iget-object p2, p0, Lpa/j;->o:Lokio/d;

    const p3, 0x7fffffff

    and-int/2addr p1, p3

    invoke-interface {p2, p1}, Lokio/d;->x0(I)Lokio/d;

    return-void

    :cond_39
    new-array p2, v1, [Ljava/lang/Object;

    .line 7
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p2, v2

    const-string p1, "reserved bit set: %s"

    invoke-static {p1, p2}, Lpa/e;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object p1

    throw p1

    :cond_48
    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    .line 8
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, p1, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, v1

    const-string p2, "FRAME_SIZE_ERROR length > %d: %d"

    invoke-static {p2, p1}, Lpa/e;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object p1

    throw p1
.end method

.method public declared-synchronized flush()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_1
    iget-boolean v0, p0, Lpa/j;->s:Z

    if-nez v0, :cond_c

    .line 2
    iget-object v0, p0, Lpa/j;->o:Lokio/d;

    invoke-interface {v0}, Lokio/d;->flush()V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_14

    .line 3
    monitor-exit p0

    return-void

    .line 4
    :cond_c
    :try_start_c
    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_14
    .catchall {:try_start_c .. :try_end_14} :catchall_14

    :catchall_14
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized g(ILpa/b;[B)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_1
    iget-boolean v0, p0, Lpa/j;->s:Z

    if-nez v0, :cond_36

    .line 2
    iget v0, p2, Lpa/b;->o:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_2d

    .line 3
    array-length v0, p3

    add-int/lit8 v0, v0, 0x8

    const/4 v1, 0x7

    .line 4
    invoke-virtual {p0, v2, v0, v1, v2}, Lpa/j;->f(IIBB)V

    .line 5
    iget-object v0, p0, Lpa/j;->o:Lokio/d;

    invoke-interface {v0, p1}, Lokio/d;->x0(I)Lokio/d;

    .line 6
    iget-object p1, p0, Lpa/j;->o:Lokio/d;

    iget p2, p2, Lpa/b;->o:I

    invoke-interface {p1, p2}, Lokio/d;->x0(I)Lokio/d;

    .line 7
    array-length p1, p3

    if-lez p1, :cond_26

    .line 8
    iget-object p1, p0, Lpa/j;->o:Lokio/d;

    invoke-interface {p1, p3}, Lokio/d;->Y2([B)Lokio/d;

    .line 9
    :cond_26
    iget-object p1, p0, Lpa/j;->o:Lokio/d;

    invoke-interface {p1}, Lokio/d;->flush()V
    :try_end_2b
    .catchall {:try_start_1 .. :try_end_2b} :catchall_3e

    .line 10
    monitor-exit p0

    return-void

    :cond_2d
    :try_start_2d
    const-string p1, "errorCode.httpCode == -1"

    new-array p2, v2, [Ljava/lang/Object;

    .line 11
    invoke-static {p1, p2}, Lpa/e;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object p1

    throw p1

    .line 12
    :cond_36
    new-instance p1, Ljava/io/IOException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_3e
    .catchall {:try_start_2d .. :try_end_3e} :catchall_3e

    :catchall_3e
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method h(ZILjava/util/List;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZI",
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

    .line 1
    iget-boolean v0, p0, Lpa/j;->s:Z

    if-nez v0, :cond_38

    .line 2
    iget-object v0, p0, Lpa/j;->t:Lpa/d$b;

    invoke-virtual {v0, p3}, Lpa/d$b;->g(Ljava/util/List;)V

    .line 3
    iget-object p3, p0, Lpa/j;->q:Lokio/c;

    invoke-virtual {p3}, Lokio/c;->s()J

    move-result-wide v0

    .line 4
    iget p3, p0, Lpa/j;->r:I

    int-to-long v2, p3

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int p3, v2

    int-to-long v2, p3

    cmp-long v4, v0, v2

    if-nez v4, :cond_1e

    const/4 v4, 0x4

    goto :goto_1f

    :cond_1e
    const/4 v4, 0x0

    :goto_1f
    if-eqz p1, :cond_24

    or-int/lit8 p1, v4, 0x1

    int-to-byte v4, p1

    :cond_24
    const/4 p1, 0x1

    .line 5
    invoke-virtual {p0, p2, p3, p1, v4}, Lpa/j;->f(IIBB)V

    .line 6
    iget-object p1, p0, Lpa/j;->o:Lokio/d;

    iget-object p3, p0, Lpa/j;->q:Lokio/c;

    invoke-interface {p1, p3, v2, v3}, Lokio/t;->a2(Lokio/c;J)V

    cmp-long p1, v0, v2

    if-lez p1, :cond_37

    sub-long/2addr v0, v2

    .line 7
    invoke-direct {p0, p2, v0, v1}, Lpa/j;->p(IJ)V

    :cond_37
    return-void

    .line 8
    :cond_38
    new-instance p1, Ljava/io/IOException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public i()I
    .registers 2

    .line 1
    iget v0, p0, Lpa/j;->r:I

    return v0
.end method

.method public declared-synchronized j(ZII)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_1
    iget-boolean v0, p0, Lpa/j;->s:Z

    if-nez v0, :cond_22

    const/16 v0, 0x8

    const/4 v1, 0x6

    const/4 v2, 0x0

    if-eqz p1, :cond_d

    const/4 p1, 0x1

    goto :goto_e

    :cond_d
    const/4 p1, 0x0

    .line 2
    :goto_e
    invoke-virtual {p0, v2, v0, v1, p1}, Lpa/j;->f(IIBB)V

    .line 3
    iget-object p1, p0, Lpa/j;->o:Lokio/d;

    invoke-interface {p1, p2}, Lokio/d;->x0(I)Lokio/d;

    .line 4
    iget-object p1, p0, Lpa/j;->o:Lokio/d;

    invoke-interface {p1, p3}, Lokio/d;->x0(I)Lokio/d;

    .line 5
    iget-object p1, p0, Lpa/j;->o:Lokio/d;

    invoke-interface {p1}, Lokio/d;->flush()V
    :try_end_20
    .catchall {:try_start_1 .. :try_end_20} :catchall_2a

    .line 6
    monitor-exit p0

    return-void

    .line 7
    :cond_22
    :try_start_22
    new-instance p1, Ljava/io/IOException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_2a
    .catchall {:try_start_22 .. :try_end_2a} :catchall_2a

    :catchall_2a
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized k(IILjava/util/List;)V
    .registers 11
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

    monitor-enter p0

    .line 1
    :try_start_1
    iget-boolean v0, p0, Lpa/j;->s:Z

    if-nez v0, :cond_41

    .line 2
    iget-object v0, p0, Lpa/j;->t:Lpa/d$b;

    invoke-virtual {v0, p3}, Lpa/d$b;->g(Ljava/util/List;)V

    .line 3
    iget-object p3, p0, Lpa/j;->q:Lokio/c;

    invoke-virtual {p3}, Lokio/c;->s()J

    move-result-wide v0

    .line 4
    iget p3, p0, Lpa/j;->r:I

    const/4 v2, 0x4

    sub-int/2addr p3, v2

    int-to-long v3, p3

    invoke-static {v3, v4, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    long-to-int p3, v3

    const/4 v3, 0x5

    int-to-long v4, p3

    cmp-long v6, v0, v4

    if-nez v6, :cond_22

    const/4 v6, 0x4

    goto :goto_23

    :cond_22
    const/4 v6, 0x0

    :goto_23
    add-int/2addr p3, v2

    .line 5
    invoke-virtual {p0, p1, p3, v3, v6}, Lpa/j;->f(IIBB)V

    .line 6
    iget-object p3, p0, Lpa/j;->o:Lokio/d;

    const v2, 0x7fffffff

    and-int/2addr p2, v2

    invoke-interface {p3, p2}, Lokio/d;->x0(I)Lokio/d;

    .line 7
    iget-object p2, p0, Lpa/j;->o:Lokio/d;

    iget-object p3, p0, Lpa/j;->q:Lokio/c;

    invoke-interface {p2, p3, v4, v5}, Lokio/t;->a2(Lokio/c;J)V

    cmp-long p2, v0, v4

    if-lez p2, :cond_3f

    sub-long/2addr v0, v4

    .line 8
    invoke-direct {p0, p1, v0, v1}, Lpa/j;->p(IJ)V
    :try_end_3f
    .catchall {:try_start_1 .. :try_end_3f} :catchall_49

    .line 9
    :cond_3f
    monitor-exit p0

    return-void

    .line 10
    :cond_41
    :try_start_41
    new-instance p1, Ljava/io/IOException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_49
    .catchall {:try_start_41 .. :try_end_49} :catchall_49

    :catchall_49
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized l(ILpa/b;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_1
    iget-boolean v0, p0, Lpa/j;->s:Z

    if-nez v0, :cond_24

    .line 2
    iget v0, p2, Lpa/b;->o:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1e

    const/4 v0, 0x4

    const/4 v1, 0x3

    const/4 v2, 0x0

    .line 3
    invoke-virtual {p0, p1, v0, v1, v2}, Lpa/j;->f(IIBB)V

    .line 4
    iget-object p1, p0, Lpa/j;->o:Lokio/d;

    iget p2, p2, Lpa/b;->o:I

    invoke-interface {p1, p2}, Lokio/d;->x0(I)Lokio/d;

    .line 5
    iget-object p1, p0, Lpa/j;->o:Lokio/d;

    invoke-interface {p1}, Lokio/d;->flush()V
    :try_end_1c
    .catchall {:try_start_1 .. :try_end_1c} :catchall_2c

    .line 6
    monitor-exit p0

    return-void

    .line 7
    :cond_1e
    :try_start_1e
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 8
    :cond_24
    new-instance p1, Ljava/io/IOException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_2c
    .catchall {:try_start_1e .. :try_end_2c} :catchall_2c

    :catchall_2c
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized m(Lpa/m;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_1
    iget-boolean v0, p0, Lpa/j;->s:Z

    if-nez v0, :cond_3d

    .line 2
    invoke-virtual {p1}, Lpa/m;->j()I

    move-result v0

    mul-int/lit8 v0, v0, 0x6

    const/4 v1, 0x0

    const/4 v2, 0x4

    .line 3
    invoke-virtual {p0, v1, v0, v2, v1}, Lpa/j;->f(IIBB)V

    :goto_10
    const/16 v0, 0xa

    if-ge v1, v0, :cond_36

    .line 4
    invoke-virtual {p1, v1}, Lpa/m;->g(I)Z

    move-result v0

    if-nez v0, :cond_1b

    goto :goto_33

    :cond_1b
    if-ne v1, v2, :cond_1f

    const/4 v0, 0x3

    goto :goto_25

    :cond_1f
    const/4 v0, 0x7

    if-ne v1, v0, :cond_24

    const/4 v0, 0x4

    goto :goto_25

    :cond_24
    move v0, v1

    .line 5
    :goto_25
    iget-object v3, p0, Lpa/j;->o:Lokio/d;

    invoke-interface {v3, v0}, Lokio/d;->r0(I)Lokio/d;

    .line 6
    iget-object v0, p0, Lpa/j;->o:Lokio/d;

    invoke-virtual {p1, v1}, Lpa/m;->b(I)I

    move-result v3

    invoke-interface {v0, v3}, Lokio/d;->x0(I)Lokio/d;

    :goto_33
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 7
    :cond_36
    iget-object p1, p0, Lpa/j;->o:Lokio/d;

    invoke-interface {p1}, Lokio/d;->flush()V
    :try_end_3b
    .catchall {:try_start_1 .. :try_end_3b} :catchall_45

    .line 8
    monitor-exit p0

    return-void

    .line 9
    :cond_3d
    :try_start_3d
    new-instance p1, Ljava/io/IOException;

    const-string v0, "closed"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_45
    .catchall {:try_start_3d .. :try_end_45} :catchall_45

    :catchall_45
    move-exception p1

    monitor-exit p0

    goto :goto_49

    :goto_48
    throw p1

    :goto_49
    goto :goto_48
.end method

.method public declared-synchronized n(ZIILjava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZII",
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

    monitor-enter p0

    .line 1
    :try_start_1
    iget-boolean p3, p0, Lpa/j;->s:Z

    if-nez p3, :cond_a

    .line 2
    invoke-virtual {p0, p1, p2, p4}, Lpa/j;->h(ZILjava/util/List;)V
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_12

    .line 3
    monitor-exit p0

    return-void

    .line 4
    :cond_a
    :try_start_a
    new-instance p1, Ljava/io/IOException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_12
    .catchall {:try_start_a .. :try_end_12} :catchall_12

    :catchall_12
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized o(IJ)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_1
    iget-boolean v0, p0, Lpa/j;->s:Z

    if-nez v0, :cond_36

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    cmp-long v3, p2, v0

    if-eqz v3, :cond_26

    const-wide/32 v0, 0x7fffffff

    cmp-long v3, p2, v0

    if-gtz v3, :cond_26

    const/4 v0, 0x4

    const/16 v1, 0x8

    .line 2
    invoke-virtual {p0, p1, v0, v1, v2}, Lpa/j;->f(IIBB)V

    .line 3
    iget-object p1, p0, Lpa/j;->o:Lokio/d;

    long-to-int p3, p2

    invoke-interface {p1, p3}, Lokio/d;->x0(I)Lokio/d;

    .line 4
    iget-object p1, p0, Lpa/j;->o:Lokio/d;

    invoke-interface {p1}, Lokio/d;->flush()V
    :try_end_24
    .catchall {:try_start_1 .. :try_end_24} :catchall_3e

    .line 5
    monitor-exit p0

    return-void

    :cond_26
    :try_start_26
    const-string p1, "windowSizeIncrement == 0 || windowSizeIncrement > 0x7fffffffL: %s"

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 6
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    aput-object p2, v0, v2

    .line 7
    invoke-static {p1, v0}, Lpa/e;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object p1

    throw p1

    .line 8
    :cond_36
    new-instance p1, Ljava/io/IOException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_3e
    .catchall {:try_start_26 .. :try_end_3e} :catchall_3e

    :catchall_3e
    move-exception p1

    monitor-exit p0

    throw p1
.end method
