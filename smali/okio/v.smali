###### Class okio.v (okio.v)
.class public Lokio/v;
.super Ljava/lang/Object;
.source "Timeout.java"


# static fields
.field public static final d:Lokio/v;


# instance fields
.field private a:Z

.field private b:J

.field private c:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lokio/v$a;

    invoke-direct {v0}, Lokio/v$a;-><init>()V

    sput-object v0, Lokio/v;->d:Lokio/v;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lokio/v;
    .registers 2

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lokio/v;->a:Z

    return-object p0
.end method

.method public b()Lokio/v;
    .registers 3

    const-wide/16 v0, 0x0

    .line 1
    iput-wide v0, p0, Lokio/v;->c:J

    return-object p0
.end method

.method public c()J
    .registers 3

    .line 1
    iget-boolean v0, p0, Lokio/v;->a:Z

    if-eqz v0, :cond_7

    .line 2
    iget-wide v0, p0, Lokio/v;->b:J

    return-wide v0

    .line 3
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No deadline"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public d(J)Lokio/v;
    .registers 4

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lokio/v;->a:Z

    .line 2
    iput-wide p1, p0, Lokio/v;->b:J

    return-object p0
.end method

.method public e()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lokio/v;->a:Z

    return v0
.end method

.method public f()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-nez v0, :cond_21

    .line 2
    iget-boolean v0, p0, Lokio/v;->a:Z

    if-eqz v0, :cond_20

    iget-wide v0, p0, Lokio/v;->b:J

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_18

    goto :goto_20

    .line 3
    :cond_18
    new-instance v0, Ljava/io/InterruptedIOException;

    const-string v1, "deadline reached"

    invoke-direct {v0, v1}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_20
    :goto_20
    return-void

    .line 4
    :cond_21
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 5
    new-instance v0, Ljava/io/InterruptedIOException;

    const-string v1, "interrupted"

    invoke-direct {v0, v1}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public g(JLjava/util/concurrent/TimeUnit;)Lokio/v;
    .registers 7

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_17

    if-eqz p3, :cond_f

    .line 1
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide p1

    iput-wide p1, p0, Lokio/v;->c:J

    return-object p0

    .line 2
    :cond_f
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "unit == null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_17
    new-instance p3, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "timeout < 0: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p3
.end method

.method public h()J
    .registers 3

    .line 1
    iget-wide v0, p0, Lokio/v;->c:J

    return-wide v0
.end method

###### Class okio.v.a (okio.v$a)
.class final Lokio/v$a;
.super Lokio/v;
.source "Timeout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokio/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lokio/v;-><init>()V

    return-void
.end method


# virtual methods
.method public d(J)Lokio/v;
    .registers 3

    return-object p0
.end method

.method public f()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public g(JLjava/util/concurrent/TimeUnit;)Lokio/v;
    .registers 4

    return-object p0
.end method
