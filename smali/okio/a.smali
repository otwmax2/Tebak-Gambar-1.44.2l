###### Class okio.a (okio.a)
.class public Lokio/a;
.super Lokio/v;
.source "AsyncTimeout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokio/a$c;
    }
.end annotation


# static fields
.field private static final h:J

.field private static final i:J

.field static j:Lokio/a;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# instance fields
.field private e:Z

.field private f:Lokio/a;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private g:J


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x3c

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lokio/a;->h:J

    .line 2
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    sput-wide v0, Lokio/a;->i:J

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lokio/v;-><init>()V

    return-void
.end method

.method static i()Lokio/a;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1
    const-class v0, Lokio/a;

    sget-object v1, Lokio/a;->j:Lokio/a;

    iget-object v1, v1, Lokio/a;->f:Lokio/a;

    const/4 v2, 0x0

    if-nez v1, :cond_26

    .line 2
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    .line 3
    sget-wide v5, Lokio/a;->h:J

    invoke-virtual {v0, v5, v6}, Ljava/lang/Object;->wait(J)V

    .line 4
    sget-object v0, Lokio/a;->j:Lokio/a;

    iget-object v0, v0, Lokio/a;->f:Lokio/a;

    if-nez v0, :cond_25

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    sub-long/2addr v0, v3

    sget-wide v3, Lokio/a;->i:J

    cmp-long v5, v0, v3

    if-ltz v5, :cond_25

    .line 5
    sget-object v2, Lokio/a;->j:Lokio/a;

    :cond_25
    return-object v2

    .line 6
    :cond_26
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    invoke-direct {v1, v3, v4}, Lokio/a;->p(J)J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-lez v7, :cond_41

    const-wide/32 v5, 0xf4240

    .line 7
    div-long v7, v3, v5

    mul-long v5, v5, v7

    sub-long/2addr v3, v5

    long-to-int v1, v3

    .line 8
    invoke-virtual {v0, v7, v8, v1}, Ljava/lang/Object;->wait(JI)V

    return-object v2

    .line 9
    :cond_41
    sget-object v0, Lokio/a;->j:Lokio/a;

    iget-object v3, v1, Lokio/a;->f:Lokio/a;

    iput-object v3, v0, Lokio/a;->f:Lokio/a;

    .line 10
    iput-object v2, v1, Lokio/a;->f:Lokio/a;

    return-object v1
.end method

.method private static declared-synchronized j(Lokio/a;)Z
    .registers 4

    const-class v0, Lokio/a;

    monitor-enter v0

    .line 1
    :try_start_3
    sget-object v1, Lokio/a;->j:Lokio/a;

    :goto_5
    if-eqz v1, :cond_17

    .line 2
    iget-object v2, v1, Lokio/a;->f:Lokio/a;

    if-ne v2, p0, :cond_15

    .line 3
    iget-object v2, p0, Lokio/a;->f:Lokio/a;

    iput-object v2, v1, Lokio/a;->f:Lokio/a;

    const/4 v1, 0x0

    .line 4
    iput-object v1, p0, Lokio/a;->f:Lokio/a;
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_1a

    const/4 p0, 0x0

    .line 5
    monitor-exit v0

    return p0

    :cond_15
    move-object v1, v2

    goto :goto_5

    :cond_17
    const/4 p0, 0x1

    .line 6
    monitor-exit v0

    return p0

    :catchall_1a
    move-exception p0

    monitor-exit v0

    goto :goto_1e

    :goto_1d
    throw p0

    :goto_1e
    goto :goto_1d
.end method

.method private p(J)J
    .registers 5

    .line 1
    iget-wide v0, p0, Lokio/a;->g:J

    sub-long/2addr v0, p1

    return-wide v0
.end method

.method private static declared-synchronized q(Lokio/a;JZ)V
    .registers 10

    const-class v0, Lokio/a;

    monitor-enter v0

    .line 1
    :try_start_3
    sget-object v1, Lokio/a;->j:Lokio/a;

    if-nez v1, :cond_16

    .line 2
    new-instance v1, Lokio/a;

    invoke-direct {v1}, Lokio/a;-><init>()V

    sput-object v1, Lokio/a;->j:Lokio/a;

    .line 3
    new-instance v1, Lokio/a$c;

    invoke-direct {v1}, Lokio/a$c;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 4
    :cond_16
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, p1, v3

    if-eqz v5, :cond_2f

    if-eqz p3, :cond_2f

    .line 5
    invoke-virtual {p0}, Lokio/v;->c()J

    move-result-wide v3

    sub-long/2addr v3, v1

    invoke-static {p1, p2, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    add-long/2addr p1, v1

    iput-wide p1, p0, Lokio/a;->g:J

    goto :goto_3f

    :cond_2f
    cmp-long v5, p1, v3

    if-eqz v5, :cond_37

    add-long/2addr p1, v1

    .line 6
    iput-wide p1, p0, Lokio/a;->g:J

    goto :goto_3f

    :cond_37
    if-eqz p3, :cond_64

    .line 7
    invoke-virtual {p0}, Lokio/v;->c()J

    move-result-wide p1

    iput-wide p1, p0, Lokio/a;->g:J

    .line 8
    :goto_3f
    invoke-direct {p0, v1, v2}, Lokio/a;->p(J)J

    move-result-wide p1

    .line 9
    sget-object p3, Lokio/a;->j:Lokio/a;

    .line 10
    :goto_45
    iget-object v3, p3, Lokio/a;->f:Lokio/a;

    if-eqz v3, :cond_55

    invoke-direct {v3, v1, v2}, Lokio/a;->p(J)J

    move-result-wide v3

    cmp-long v5, p1, v3

    if-gez v5, :cond_52

    goto :goto_55

    .line 11
    :cond_52
    iget-object p3, p3, Lokio/a;->f:Lokio/a;

    goto :goto_45

    .line 12
    :cond_55
    :goto_55
    iget-object p1, p3, Lokio/a;->f:Lokio/a;

    iput-object p1, p0, Lokio/a;->f:Lokio/a;

    .line 13
    iput-object p0, p3, Lokio/a;->f:Lokio/a;

    .line 14
    sget-object p0, Lokio/a;->j:Lokio/a;

    if-ne p3, p0, :cond_62

    .line 15
    invoke-virtual {v0}, Ljava/lang/Object;->notify()V
    :try_end_62
    .catchall {:try_start_3 .. :try_end_62} :catchall_6a

    .line 16
    :cond_62
    monitor-exit v0

    return-void

    .line 17
    :cond_64
    :try_start_64
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0
    :try_end_6a
    .catchall {:try_start_64 .. :try_end_6a} :catchall_6a

    :catchall_6a
    move-exception p0

    monitor-exit v0

    goto :goto_6e

    :goto_6d
    throw p0

    :goto_6e
    goto :goto_6d
.end method


# virtual methods
.method public final k()V
    .registers 7

    .line 1
    iget-boolean v0, p0, Lokio/a;->e:Z

    if-nez v0, :cond_1c

    .line 2
    invoke-virtual {p0}, Lokio/v;->h()J

    move-result-wide v0

    .line 3
    invoke-virtual {p0}, Lokio/v;->e()Z

    move-result v2

    const-wide/16 v3, 0x0

    cmp-long v5, v0, v3

    if-nez v5, :cond_15

    if-nez v2, :cond_15

    return-void

    :cond_15
    const/4 v3, 0x1

    .line 4
    iput-boolean v3, p0, Lokio/a;->e:Z

    .line 5
    invoke-static {p0, v0, v1, v2}, Lokio/a;->q(Lokio/a;JZ)V

    return-void

    .line 6
    :cond_1c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unbalanced enter/exit"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method final l(Ljava/io/IOException;)Ljava/io/IOException;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lokio/a;->n()Z

    move-result v0

    if-nez v0, :cond_7

    return-object p1

    .line 2
    :cond_7
    invoke-virtual {p0, p1}, Lokio/a;->o(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object p1

    return-object p1
.end method

.method final m(Z)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lokio/a;->n()Z

    move-result v0

    if-eqz v0, :cond_f

    if-nez p1, :cond_9

    goto :goto_f

    :cond_9
    const/4 p1, 0x0

    .line 2
    invoke-virtual {p0, p1}, Lokio/a;->o(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :cond_f
    :goto_f
    return-void
.end method

.method public final n()Z
    .registers 3

    .line 1
    iget-boolean v0, p0, Lokio/a;->e:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 2
    :cond_6
    iput-boolean v1, p0, Lokio/a;->e:Z

    .line 3
    invoke-static {p0}, Lokio/a;->j(Lokio/a;)Z

    move-result v0

    return v0
.end method

.method protected o(Ljava/io/IOException;)Ljava/io/IOException;
    .registers 4
    .param p1    # Ljava/io/IOException;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    new-instance v0, Ljava/io/InterruptedIOException;

    const-string v1, "timeout"

    invoke-direct {v0, v1}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_c

    .line 2
    invoke-virtual {v0, p1}, Ljava/io/InterruptedIOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    :cond_c
    return-object v0
.end method

.method public final r(Lokio/t;)Lokio/t;
    .registers 3

    .line 1
    new-instance v0, Lokio/a$a;

    invoke-direct {v0, p0, p1}, Lokio/a$a;-><init>(Lokio/a;Lokio/t;)V

    return-object v0
.end method

.method public final s(Lokio/u;)Lokio/u;
    .registers 3

    .line 1
    new-instance v0, Lokio/a$b;

    invoke-direct {v0, p0, p1}, Lokio/a$b;-><init>(Lokio/a;Lokio/u;)V

    return-object v0
.end method

.method protected t()V
    .registers 1

    return-void
.end method

###### Class okio.a.C0216a (okio.a$a)
.class Lokio/a$a;
.super Ljava/lang/Object;
.source "AsyncTimeout.java"

# interfaces
.implements Lokio/t;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lokio/a;->r(Lokio/t;)Lokio/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic o:Lokio/t;

.field final synthetic p:Lokio/a;


# direct methods
.method constructor <init>(Lokio/a;Lokio/t;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lokio/a$a;->p:Lokio/a;

    iput-object p2, p0, Lokio/a$a;->o:Lokio/t;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a2(Lokio/c;J)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-wide v0, p1, Lokio/c;->p:J

    const-wide/16 v2, 0x0

    move-wide v4, p2

    invoke-static/range {v0 .. v5}, Lokio/w;->b(JJJ)V

    :goto_8
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-lez v2, :cond_4a

    .line 2
    iget-object v2, p1, Lokio/c;->o:Lokio/q;

    :goto_10
    const-wide/32 v3, 0x10000

    cmp-long v5, v0, v3

    if-gez v5, :cond_27

    .line 3
    iget v3, v2, Lokio/q;->c:I

    iget v4, v2, Lokio/q;->b:I

    sub-int/2addr v3, v4

    int-to-long v3, v3

    add-long/2addr v0, v3

    cmp-long v3, v0, p2

    if-ltz v3, :cond_24

    move-wide v0, p2

    goto :goto_27

    .line 4
    :cond_24
    iget-object v2, v2, Lokio/q;->f:Lokio/q;

    goto :goto_10

    :cond_27
    :goto_27
    const/4 v2, 0x0

    .line 5
    iget-object v3, p0, Lokio/a$a;->p:Lokio/a;

    invoke-virtual {v3}, Lokio/a;->k()V

    .line 6
    :try_start_2d
    iget-object v3, p0, Lokio/a$a;->o:Lokio/t;

    invoke-interface {v3, p1, v0, v1}, Lokio/t;->a2(Lokio/c;J)V
    :try_end_32
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_32} :catch_3c
    .catchall {:try_start_2d .. :try_end_32} :catchall_3a

    sub-long/2addr p2, v0

    const/4 v0, 0x1

    .line 7
    iget-object v1, p0, Lokio/a$a;->p:Lokio/a;

    invoke-virtual {v1, v0}, Lokio/a;->m(Z)V

    goto :goto_8

    :catchall_3a
    move-exception p1

    goto :goto_44

    :catch_3c
    move-exception p1

    .line 8
    :try_start_3d
    iget-object p2, p0, Lokio/a$a;->p:Lokio/a;

    invoke-virtual {p2, p1}, Lokio/a;->l(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object p1

    throw p1
    :try_end_44
    .catchall {:try_start_3d .. :try_end_44} :catchall_3a

    .line 9
    :goto_44
    iget-object p2, p0, Lokio/a$a;->p:Lokio/a;

    invoke-virtual {p2, v2}, Lokio/a;->m(Z)V

    throw p1

    :cond_4a
    return-void
.end method

.method public close()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lokio/a$a;->p:Lokio/a;

    invoke-virtual {v0}, Lokio/a;->k()V

    .line 2
    :try_start_5
    iget-object v0, p0, Lokio/a$a;->o:Lokio/t;

    invoke-interface {v0}, Lokio/t;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_a} :catch_13
    .catchall {:try_start_5 .. :try_end_a} :catchall_11

    const/4 v0, 0x1

    .line 3
    iget-object v1, p0, Lokio/a$a;->p:Lokio/a;

    invoke-virtual {v1, v0}, Lokio/a;->m(Z)V

    return-void

    :catchall_11
    move-exception v0

    goto :goto_1b

    :catch_13
    move-exception v0

    .line 4
    :try_start_14
    iget-object v1, p0, Lokio/a$a;->p:Lokio/a;

    invoke-virtual {v1, v0}, Lokio/a;->l(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v0

    throw v0
    :try_end_1b
    .catchall {:try_start_14 .. :try_end_1b} :catchall_11

    .line 5
    :goto_1b
    iget-object v1, p0, Lokio/a$a;->p:Lokio/a;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lokio/a;->m(Z)V

    throw v0
.end method

.method public flush()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lokio/a$a;->p:Lokio/a;

    invoke-virtual {v0}, Lokio/a;->k()V

    .line 2
    :try_start_5
    iget-object v0, p0, Lokio/a$a;->o:Lokio/t;

    invoke-interface {v0}, Lokio/t;->flush()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_a} :catch_13
    .catchall {:try_start_5 .. :try_end_a} :catchall_11

    const/4 v0, 0x1

    .line 3
    iget-object v1, p0, Lokio/a$a;->p:Lokio/a;

    invoke-virtual {v1, v0}, Lokio/a;->m(Z)V

    return-void

    :catchall_11
    move-exception v0

    goto :goto_1b

    :catch_13
    move-exception v0

    .line 4
    :try_start_14
    iget-object v1, p0, Lokio/a$a;->p:Lokio/a;

    invoke-virtual {v1, v0}, Lokio/a;->l(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v0

    throw v0
    :try_end_1b
    .catchall {:try_start_14 .. :try_end_1b} :catchall_11

    .line 5
    :goto_1b
    iget-object v1, p0, Lokio/a$a;->p:Lokio/a;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lokio/a;->m(Z)V

    throw v0
.end method

.method public timeout()Lokio/v;
    .registers 2

    .line 1
    iget-object v0, p0, Lokio/a$a;->p:Lokio/a;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AsyncTimeout.sink("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lokio/a$a;->o:Lokio/t;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class okio.a.b (okio.a$b)
.class Lokio/a$b;
.super Ljava/lang/Object;
.source "AsyncTimeout.java"

# interfaces
.implements Lokio/u;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lokio/a;->s(Lokio/u;)Lokio/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic o:Lokio/u;

.field final synthetic p:Lokio/a;


# direct methods
.method constructor <init>(Lokio/a;Lokio/u;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lokio/a$b;->p:Lokio/a;

    iput-object p2, p0, Lokio/a$b;->o:Lokio/u;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lokio/a$b;->o:Lokio/u;

    invoke-interface {v0}, Lokio/u;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_e
    .catchall {:try_start_0 .. :try_end_5} :catchall_c

    const/4 v0, 0x1

    .line 2
    iget-object v1, p0, Lokio/a$b;->p:Lokio/a;

    invoke-virtual {v1, v0}, Lokio/a;->m(Z)V

    return-void

    :catchall_c
    move-exception v0

    goto :goto_16

    :catch_e
    move-exception v0

    .line 3
    :try_start_f
    iget-object v1, p0, Lokio/a$b;->p:Lokio/a;

    invoke-virtual {v1, v0}, Lokio/a;->l(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v0

    throw v0
    :try_end_16
    .catchall {:try_start_f .. :try_end_16} :catchall_c

    .line 4
    :goto_16
    iget-object v1, p0, Lokio/a$b;->p:Lokio/a;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lokio/a;->m(Z)V

    throw v0
.end method

.method public read(Lokio/c;J)J
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lokio/a$b;->p:Lokio/a;

    invoke-virtual {v0}, Lokio/a;->k()V

    .line 2
    :try_start_5
    iget-object v0, p0, Lokio/a$b;->o:Lokio/u;

    invoke-interface {v0, p1, p2, p3}, Lokio/u;->read(Lokio/c;J)J

    move-result-wide p1
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_b} :catch_14
    .catchall {:try_start_5 .. :try_end_b} :catchall_12

    const/4 p3, 0x1

    .line 3
    iget-object v0, p0, Lokio/a$b;->p:Lokio/a;

    invoke-virtual {v0, p3}, Lokio/a;->m(Z)V

    return-wide p1

    :catchall_12
    move-exception p1

    goto :goto_1c

    :catch_14
    move-exception p1

    .line 4
    :try_start_15
    iget-object p2, p0, Lokio/a$b;->p:Lokio/a;

    invoke-virtual {p2, p1}, Lokio/a;->l(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object p1

    throw p1
    :try_end_1c
    .catchall {:try_start_15 .. :try_end_1c} :catchall_12

    .line 5
    :goto_1c
    iget-object p2, p0, Lokio/a$b;->p:Lokio/a;

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Lokio/a;->m(Z)V

    throw p1
.end method

.method public timeout()Lokio/v;
    .registers 2

    .line 1
    iget-object v0, p0, Lokio/a$b;->p:Lokio/a;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AsyncTimeout.source("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lokio/a$b;->o:Lokio/u;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class okio.a.c (okio.a$c)
.class final Lokio/a$c;
.super Ljava/lang/Thread;
.source "AsyncTimeout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokio/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "c"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 2

    const-string v0, "Okio Watchdog"

    .line 1
    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Ljava/lang/Thread;->setDaemon(Z)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 1
    :catch_0
    :goto_0
    :try_start_0
    const-class v0, Lokio/a;

    monitor-enter v0
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_3} :catch_0

    .line 2
    :try_start_3
    invoke-static {}, Lokio/a;->i()Lokio/a;

    move-result-object v1

    if-nez v1, :cond_b

    .line 3
    monitor-exit v0

    goto :goto_0

    .line 4
    :cond_b
    sget-object v2, Lokio/a;->j:Lokio/a;

    if-ne v1, v2, :cond_14

    const/4 v1, 0x0

    .line 5
    sput-object v1, Lokio/a;->j:Lokio/a;

    .line 6
    monitor-exit v0

    return-void

    .line 7
    :cond_14
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_19

    .line 8
    :try_start_15
    invoke-virtual {v1}, Lokio/a;->t()V
    :try_end_18
    .catch Ljava/lang/InterruptedException; {:try_start_15 .. :try_end_18} :catch_0

    goto :goto_0

    :catchall_19
    move-exception v1

    .line 9
    :try_start_1a
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_19

    :try_start_1b
    goto :goto_1d
    :try_end_1c
    .catch Ljava/lang/InterruptedException; {:try_start_1b .. :try_end_1c} :catch_0

    :goto_1c
    throw v1

    :goto_1d
    goto :goto_1c
.end method
