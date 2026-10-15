###### Class w1.a (w1.a)
.class public final Lw1/a;
.super Ljava/lang/Object;
.source "DiskLruCache.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lw1/a$c;,
        Lw1/a$b;,
        Lw1/a$d;
    }
.end annotation


# instance fields
.field final A:Ljava/util/concurrent/ThreadPoolExecutor;

.field private final B:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private final o:Ljava/io/File;

.field private final p:Ljava/io/File;

.field private final q:Ljava/io/File;

.field private final r:Ljava/io/File;

.field private final s:I

.field private t:J

.field private final u:I

.field private v:J

.field private w:Ljava/io/Writer;

.field private final x:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Lw1/a$c;",
            ">;"
        }
    .end annotation
.end field

.field private y:I

.field private z:J


# direct methods
.method private constructor <init>(Ljava/io/File;IIJ)V
    .registers 21

    move-object v0, p0

    move-object/from16 v1, p1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v2, 0x0

    .line 2
    iput-wide v2, v0, Lw1/a;->v:J

    .line 3
    new-instance v4, Ljava/util/LinkedHashMap;

    const/4 v5, 0x0

    const/high16 v6, 0x3f400000    # 0.75f

    const/4 v7, 0x1

    invoke-direct {v4, v5, v6, v7}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    iput-object v4, v0, Lw1/a;->x:Ljava/util/LinkedHashMap;

    .line 4
    iput-wide v2, v0, Lw1/a;->z:J

    .line 5
    new-instance v2, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v13, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v14, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v14}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    const/4 v9, 0x0

    const/4 v10, 0x1

    const-wide/16 v11, 0x3c

    move-object v8, v2

    invoke-direct/range {v8 .. v14}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v2, v0, Lw1/a;->A:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 6
    new-instance v2, Lw1/a$a;

    invoke-direct {v2, p0}, Lw1/a$a;-><init>(Lw1/a;)V

    iput-object v2, v0, Lw1/a;->B:Ljava/util/concurrent/Callable;

    .line 7
    iput-object v1, v0, Lw1/a;->o:Ljava/io/File;

    move/from16 v2, p2

    .line 8
    iput v2, v0, Lw1/a;->s:I

    .line 9
    new-instance v2, Ljava/io/File;

    const-string v3, "journal"

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v2, v0, Lw1/a;->p:Ljava/io/File;

    .line 10
    new-instance v2, Ljava/io/File;

    const-string v3, "journal.tmp"

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v2, v0, Lw1/a;->q:Ljava/io/File;

    .line 11
    new-instance v2, Ljava/io/File;

    const-string v3, "journal.bkp"

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v2, v0, Lw1/a;->r:Ljava/io/File;

    move/from16 v1, p3

    .line 12
    iput v1, v0, Lw1/a;->u:I

    move-wide/from16 v1, p4

    .line 13
    iput-wide v1, v0, Lw1/a;->t:J

    return-void
.end method

.method static synthetic b(Lw1/a;)Ljava/io/Writer;
    .registers 1

    .line 1
    iget-object p0, p0, Lw1/a;->w:Ljava/io/Writer;

    return-object p0
.end method

.method static synthetic c(Lw1/a;)V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lw1/a;->y()V

    return-void
.end method

.method static synthetic d(Lw1/a;)I
    .registers 1

    .line 1
    iget p0, p0, Lw1/a;->u:I

    return p0
.end method

.method static synthetic e(Lw1/a;)Ljava/io/File;
    .registers 1

    .line 1
    iget-object p0, p0, Lw1/a;->o:Ljava/io/File;

    return-object p0
.end method

.method static synthetic f(Lw1/a;)Z
    .registers 1

    .line 1
    invoke-direct {p0}, Lw1/a;->q()Z

    move-result p0

    return p0
.end method

.method static synthetic g(Lw1/a;Lw1/a$b;Z)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lw1/a;->k(Lw1/a$b;Z)V

    return-void
.end method

.method static synthetic h(Lw1/a;)V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lw1/a;->v()V

    return-void
.end method

.method static synthetic i(Lw1/a;I)I
    .registers 2

    .line 1
    iput p1, p0, Lw1/a;->y:I

    return p1
.end method

.method private j()V
    .registers 3

    .line 1
    iget-object v0, p0, Lw1/a;->w:Ljava/io/Writer;

    if-eqz v0, :cond_5

    return-void

    .line 2
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "cache is closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private declared-synchronized k(Lw1/a$b;Z)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_1
    invoke-static {p1}, Lw1/a$b;->c(Lw1/a$b;)Lw1/a$c;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lw1/a$c;->g(Lw1/a$c;)Lw1/a$b;

    move-result-object v1

    if-ne v1, p1, :cond_108

    const/4 v1, 0x0

    if-eqz p2, :cond_4d

    .line 3
    invoke-static {v0}, Lw1/a$c;->e(Lw1/a$c;)Z

    move-result v2

    if-nez v2, :cond_4d

    const/4 v2, 0x0

    .line 4
    :goto_15
    iget v3, p0, Lw1/a;->u:I

    if-ge v2, v3, :cond_4d

    .line 5
    invoke-static {p1}, Lw1/a$b;->d(Lw1/a$b;)[Z

    move-result-object v3

    aget-boolean v3, v3, v2

    if-eqz v3, :cond_33

    .line 6
    invoke-virtual {v0, v2}, Lw1/a$c;->k(I)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_30

    .line 7
    invoke-virtual {p1}, Lw1/a$b;->a()V
    :try_end_2e
    .catchall {:try_start_1 .. :try_end_2e} :catchall_10e

    .line 8
    monitor-exit p0

    return-void

    :cond_30
    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    .line 9
    :cond_33
    :try_start_33
    invoke-virtual {p1}, Lw1/a$b;->a()V

    .line 10
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Newly created entry didn\'t create value for index "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 11
    :cond_4d
    :goto_4d
    iget p1, p0, Lw1/a;->u:I

    if-ge v1, p1, :cond_81

    .line 12
    invoke-virtual {v0, v1}, Lw1/a$c;->k(I)Ljava/io/File;

    move-result-object p1

    if-eqz p2, :cond_7b

    .line 13
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_7e

    .line 14
    invoke-virtual {v0, v1}, Lw1/a$c;->j(I)Ljava/io/File;

    move-result-object v2

    .line 15
    invoke-virtual {p1, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 16
    invoke-static {v0}, Lw1/a$c;->a(Lw1/a$c;)[J

    move-result-object p1

    aget-wide v3, p1, v1

    .line 17
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v5

    .line 18
    invoke-static {v0}, Lw1/a$c;->a(Lw1/a$c;)[J

    move-result-object p1

    aput-wide v5, p1, v1

    .line 19
    iget-wide v7, p0, Lw1/a;->v:J

    sub-long/2addr v7, v3

    add-long/2addr v7, v5

    iput-wide v7, p0, Lw1/a;->v:J

    goto :goto_7e

    .line 20
    :cond_7b
    invoke-static {p1}, Lw1/a;->m(Ljava/io/File;)V

    :cond_7e
    :goto_7e
    add-int/lit8 v1, v1, 0x1

    goto :goto_4d

    .line 21
    :cond_81
    iget p1, p0, Lw1/a;->y:I

    const/4 v1, 0x1

    add-int/2addr p1, v1

    iput p1, p0, Lw1/a;->y:I

    const/4 p1, 0x0

    .line 22
    invoke-static {v0, p1}, Lw1/a$c;->h(Lw1/a$c;Lw1/a$b;)Lw1/a$b;

    .line 23
    invoke-static {v0}, Lw1/a$c;->e(Lw1/a$c;)Z

    move-result p1

    or-int/2addr p1, p2

    const/16 v2, 0xa

    const/16 v3, 0x20

    if-eqz p1, :cond_c9

    .line 24
    invoke-static {v0, v1}, Lw1/a$c;->f(Lw1/a$c;Z)Z

    .line 25
    iget-object p1, p0, Lw1/a;->w:Ljava/io/Writer;

    const-string v1, "CLEAN"

    invoke-virtual {p1, v1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 26
    iget-object p1, p0, Lw1/a;->w:Ljava/io/Writer;

    invoke-virtual {p1, v3}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    .line 27
    iget-object p1, p0, Lw1/a;->w:Ljava/io/Writer;

    invoke-static {v0}, Lw1/a$c;->b(Lw1/a$c;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 28
    iget-object p1, p0, Lw1/a;->w:Ljava/io/Writer;

    invoke-virtual {v0}, Lw1/a$c;->l()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 29
    iget-object p1, p0, Lw1/a;->w:Ljava/io/Writer;

    invoke-virtual {p1, v2}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    if-eqz p2, :cond_ec

    .line 30
    iget-wide p1, p0, Lw1/a;->z:J

    const-wide/16 v1, 0x1

    add-long/2addr v1, p1

    iput-wide v1, p0, Lw1/a;->z:J

    invoke-static {v0, p1, p2}, Lw1/a$c;->d(Lw1/a$c;J)J

    goto :goto_ec

    .line 31
    :cond_c9
    iget-object p1, p0, Lw1/a;->x:Ljava/util/LinkedHashMap;

    invoke-static {v0}, Lw1/a$c;->b(Lw1/a$c;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    iget-object p1, p0, Lw1/a;->w:Ljava/io/Writer;

    const-string p2, "REMOVE"

    invoke-virtual {p1, p2}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 33
    iget-object p1, p0, Lw1/a;->w:Ljava/io/Writer;

    invoke-virtual {p1, v3}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    .line 34
    iget-object p1, p0, Lw1/a;->w:Ljava/io/Writer;

    invoke-static {v0}, Lw1/a$c;->b(Lw1/a$c;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 35
    iget-object p1, p0, Lw1/a;->w:Ljava/io/Writer;

    invoke-virtual {p1, v2}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    .line 36
    :cond_ec
    :goto_ec
    iget-object p1, p0, Lw1/a;->w:Ljava/io/Writer;

    invoke-virtual {p1}, Ljava/io/Writer;->flush()V

    .line 37
    iget-wide p1, p0, Lw1/a;->v:J

    iget-wide v0, p0, Lw1/a;->t:J

    cmp-long v2, p1, v0

    if-gtz v2, :cond_ff

    invoke-direct {p0}, Lw1/a;->q()Z

    move-result p1

    if-eqz p1, :cond_106

    .line 38
    :cond_ff
    iget-object p1, p0, Lw1/a;->A:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object p2, p0, Lw1/a;->B:Ljava/util/concurrent/Callable;

    invoke-virtual {p1, p2}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    :try_end_106
    .catchall {:try_start_33 .. :try_end_106} :catchall_10e

    .line 39
    :cond_106
    monitor-exit p0

    return-void

    .line 40
    :cond_108
    :try_start_108
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
    :try_end_10e
    .catchall {:try_start_108 .. :try_end_10e} :catchall_10e

    :catchall_10e
    move-exception p1

    monitor-exit p0

    goto :goto_112

    :goto_111
    throw p1

    :goto_112
    goto :goto_111
.end method

.method private static m(Ljava/io/File;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result p0

    if-eqz p0, :cond_d

    goto :goto_13

    .line 2
    :cond_d
    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    throw p0

    :cond_13
    :goto_13
    return-void
.end method

.method private declared-synchronized o(Ljava/lang/String;J)Lw1/a$b;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_1
    invoke-direct {p0}, Lw1/a;->j()V

    .line 2
    iget-object v0, p0, Lw1/a;->x:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lw1/a$c;

    const-wide/16 v1, -0x1

    const/4 v3, 0x0

    cmp-long v4, p2, v1

    if-eqz v4, :cond_1f

    if-eqz v0, :cond_1d

    .line 3
    invoke-static {v0}, Lw1/a$c;->c(Lw1/a$c;)J

    move-result-wide v1
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_5d

    cmp-long v4, v1, p2

    if-eqz v4, :cond_1f

    .line 4
    :cond_1d
    monitor-exit p0

    return-object v3

    :cond_1f
    if-nez v0, :cond_2c

    .line 5
    :try_start_21
    new-instance v0, Lw1/a$c;

    invoke-direct {v0, p0, p1, v3}, Lw1/a$c;-><init>(Lw1/a;Ljava/lang/String;Lw1/a$a;)V

    .line 6
    iget-object p2, p0, Lw1/a;->x:Ljava/util/LinkedHashMap;

    invoke-virtual {p2, p1, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_34

    .line 7
    :cond_2c
    invoke-static {v0}, Lw1/a$c;->g(Lw1/a$c;)Lw1/a$b;

    move-result-object p2
    :try_end_30
    .catchall {:try_start_21 .. :try_end_30} :catchall_5d

    if-eqz p2, :cond_34

    .line 8
    monitor-exit p0

    return-object v3

    .line 9
    :cond_34
    :goto_34
    :try_start_34
    new-instance p2, Lw1/a$b;

    invoke-direct {p2, p0, v0, v3}, Lw1/a$b;-><init>(Lw1/a;Lw1/a$c;Lw1/a$a;)V

    .line 10
    invoke-static {v0, p2}, Lw1/a$c;->h(Lw1/a$c;Lw1/a$b;)Lw1/a$b;

    .line 11
    iget-object p3, p0, Lw1/a;->w:Ljava/io/Writer;

    const-string v0, "DIRTY"

    invoke-virtual {p3, v0}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 12
    iget-object p3, p0, Lw1/a;->w:Ljava/io/Writer;

    const/16 v0, 0x20

    invoke-virtual {p3, v0}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    .line 13
    iget-object p3, p0, Lw1/a;->w:Ljava/io/Writer;

    invoke-virtual {p3, p1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 14
    iget-object p1, p0, Lw1/a;->w:Ljava/io/Writer;

    const/16 p3, 0xa

    invoke-virtual {p1, p3}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    .line 15
    iget-object p1, p0, Lw1/a;->w:Ljava/io/Writer;

    invoke-virtual {p1}, Ljava/io/Writer;->flush()V
    :try_end_5b
    .catchall {:try_start_34 .. :try_end_5b} :catchall_5d

    .line 16
    monitor-exit p0

    return-object p2

    :catchall_5d
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private q()Z
    .registers 3

    .line 1
    iget v0, p0, Lw1/a;->y:I

    const/16 v1, 0x7d0

    if-lt v0, v1, :cond_10

    iget-object v1, p0, Lw1/a;->x:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->size()I

    move-result v1

    if-lt v0, v1, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method public static r(Ljava/io/File;IIJ)Lw1/a;
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v2, p3, v0

    if-lez v2, :cond_87

    if-lez p2, :cond_7f

    .line 1
    new-instance v0, Ljava/io/File;

    const-string v1, "journal.bkp"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 3
    new-instance v1, Ljava/io/File;

    const-string v2, "journal"

    invoke-direct {v1, p0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 4
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_26

    .line 5
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_2a

    :cond_26
    const/4 v2, 0x0

    .line 6
    invoke-static {v0, v1, v2}, Lw1/a;->x(Ljava/io/File;Ljava/io/File;Z)V

    .line 7
    :cond_2a
    :goto_2a
    new-instance v0, Lw1/a;

    move-object v3, v0

    move-object v4, p0

    move v5, p1

    move v6, p2

    move-wide v7, p3

    invoke-direct/range {v3 .. v8}, Lw1/a;-><init>(Ljava/io/File;IIJ)V

    .line 8
    iget-object v1, v0, Lw1/a;->p:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_6e

    .line 9
    :try_start_3c
    invoke-direct {v0}, Lw1/a;->t()V

    .line 10
    invoke-direct {v0}, Lw1/a;->s()V
    :try_end_42
    .catch Ljava/io/IOException; {:try_start_3c .. :try_end_42} :catch_43

    return-object v0

    :catch_43
    move-exception v1

    .line 11
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DiskLruCache "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " is corrupt: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", removing"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 12
    invoke-virtual {v0}, Lw1/a;->l()V

    .line 13
    :cond_6e
    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    .line 14
    new-instance v0, Lw1/a;

    move-object v3, v0

    move-object v4, p0

    move v5, p1

    move v6, p2

    move-wide v7, p3

    invoke-direct/range {v3 .. v8}, Lw1/a;-><init>(Ljava/io/File;IIJ)V

    .line 15
    invoke-direct {v0}, Lw1/a;->v()V

    return-object v0

    .line 16
    :cond_7f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "valueCount <= 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 17
    :cond_87
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "maxSize <= 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private s()V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lw1/a;->q:Ljava/io/File;

    invoke-static {v0}, Lw1/a;->m(Ljava/io/File;)V

    .line 2
    iget-object v0, p0, Lw1/a;->x:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_f
    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_51

    .line 3
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lw1/a$c;

    .line 4
    invoke-static {v1}, Lw1/a$c;->g(Lw1/a$c;)Lw1/a$b;

    move-result-object v2

    const/4 v3, 0x0

    if-nez v2, :cond_34

    .line 5
    :goto_22
    iget v2, p0, Lw1/a;->u:I

    if-ge v3, v2, :cond_f

    .line 6
    iget-wide v4, p0, Lw1/a;->v:J

    invoke-static {v1}, Lw1/a$c;->a(Lw1/a$c;)[J

    move-result-object v2

    aget-wide v6, v2, v3

    add-long/2addr v4, v6

    iput-wide v4, p0, Lw1/a;->v:J

    add-int/lit8 v3, v3, 0x1

    goto :goto_22

    :cond_34
    const/4 v2, 0x0

    .line 7
    invoke-static {v1, v2}, Lw1/a$c;->h(Lw1/a$c;Lw1/a$b;)Lw1/a$b;

    .line 8
    :goto_38
    iget v2, p0, Lw1/a;->u:I

    if-ge v3, v2, :cond_4d

    .line 9
    invoke-virtual {v1, v3}, Lw1/a$c;->j(I)Ljava/io/File;

    move-result-object v2

    invoke-static {v2}, Lw1/a;->m(Ljava/io/File;)V

    .line 10
    invoke-virtual {v1, v3}, Lw1/a$c;->k(I)Ljava/io/File;

    move-result-object v2

    invoke-static {v2}, Lw1/a;->m(Ljava/io/File;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_38

    .line 11
    :cond_4d
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_f

    :cond_51
    return-void
.end method

.method private t()V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, ", "

    .line 1
    new-instance v1, Lw1/b;

    new-instance v2, Ljava/io/FileInputStream;

    iget-object v3, p0, Lw1/a;->p:Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    sget-object v3, Lw1/c;->a:Ljava/nio/charset/Charset;

    invoke-direct {v1, v2, v3}, Lw1/b;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    .line 2
    :try_start_10
    invoke-virtual {v1}, Lw1/b;->e()Ljava/lang/String;

    move-result-object v2

    .line 3
    invoke-virtual {v1}, Lw1/b;->e()Ljava/lang/String;

    move-result-object v3

    .line 4
    invoke-virtual {v1}, Lw1/b;->e()Ljava/lang/String;

    move-result-object v4

    .line 5
    invoke-virtual {v1}, Lw1/b;->e()Ljava/lang/String;

    move-result-object v5

    .line 6
    invoke-virtual {v1}, Lw1/b;->e()Ljava/lang/String;

    move-result-object v6

    const-string v7, "libcore.io.DiskLruCache"

    .line 7
    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8c

    const-string v7, "1"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8c

    iget v7, p0, Lw1/a;->s:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8c

    iget v4, p0, Lw1/a;->u:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8c

    const-string v4, ""

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_52
    .catchall {:try_start_10 .. :try_end_52} :catchall_ba

    if-eqz v4, :cond_8c

    const/4 v0, 0x0

    .line 8
    :goto_55
    :try_start_55
    invoke-virtual {v1}, Lw1/b;->e()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lw1/a;->u(Ljava/lang/String;)V
    :try_end_5c
    .catch Ljava/io/EOFException; {:try_start_55 .. :try_end_5c} :catch_5f
    .catchall {:try_start_55 .. :try_end_5c} :catchall_ba

    add-int/lit8 v0, v0, 0x1

    goto :goto_55

    .line 9
    :catch_5f
    :try_start_5f
    iget-object v2, p0, Lw1/a;->x:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->size()I

    move-result v2

    sub-int/2addr v0, v2

    iput v0, p0, Lw1/a;->y:I

    .line 10
    invoke-virtual {v1}, Lw1/b;->d()Z

    move-result v0

    if-eqz v0, :cond_72

    .line 11
    invoke-direct {p0}, Lw1/a;->v()V

    goto :goto_88

    .line 12
    :cond_72
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v2, Ljava/io/OutputStreamWriter;

    new-instance v3, Ljava/io/FileOutputStream;

    iget-object v4, p0, Lw1/a;->p:Ljava/io/File;

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    sget-object v4, Lw1/c;->a:Ljava/nio/charset/Charset;

    invoke-direct {v2, v3, v4}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v0, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    iput-object v0, p0, Lw1/a;->w:Ljava/io/Writer;
    :try_end_88
    .catchall {:try_start_5f .. :try_end_88} :catchall_ba

    .line 13
    :goto_88
    invoke-static {v1}, Lw1/c;->a(Ljava/io/Closeable;)V

    return-void

    .line 14
    :cond_8c
    :try_start_8c
    new-instance v4, Ljava/io/IOException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "unexpected journal header: ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_ba
    .catchall {:try_start_8c .. :try_end_ba} :catchall_ba

    :catchall_ba
    move-exception v0

    .line 15
    invoke-static {v1}, Lw1/c;->a(Ljava/io/Closeable;)V

    goto :goto_c0

    :goto_bf
    throw v0

    :goto_c0
    goto :goto_bf
.end method

.method private u(Ljava/lang/String;)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x20

    .line 1
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const-string v2, "unexpected journal line: "

    const/4 v3, -0x1

    if-eq v1, v3, :cond_9c

    add-int/lit8 v4, v1, 0x1

    .line 2
    invoke-virtual {p1, v0, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    if-ne v0, v3, :cond_28

    .line 3
    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x6

    if-ne v1, v5, :cond_2c

    const-string v5, "REMOVE"

    .line 4
    invoke-virtual {p1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2c

    .line 5
    iget-object p1, p0, Lw1/a;->x:Ljava/util/LinkedHashMap;

    invoke-virtual {p1, v4}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 6
    :cond_28
    invoke-virtual {p1, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 7
    :cond_2c
    iget-object v5, p0, Lw1/a;->x:Ljava/util/LinkedHashMap;

    invoke-virtual {v5, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lw1/a$c;

    const/4 v6, 0x0

    if-nez v5, :cond_41

    .line 8
    new-instance v5, Lw1/a$c;

    invoke-direct {v5, p0, v4, v6}, Lw1/a$c;-><init>(Lw1/a;Ljava/lang/String;Lw1/a$a;)V

    .line 9
    iget-object v7, p0, Lw1/a;->x:Ljava/util/LinkedHashMap;

    invoke-virtual {v7, v4, v5}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_41
    const/4 v4, 0x5

    if-eq v0, v3, :cond_64

    if-ne v1, v4, :cond_64

    const-string v7, "CLEAN"

    .line 10
    invoke-virtual {p1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_64

    const/4 v1, 0x1

    add-int/2addr v0, v1

    .line 11
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 12
    invoke-static {v5, v1}, Lw1/a$c;->f(Lw1/a$c;Z)Z

    .line 13
    invoke-static {v5, v6}, Lw1/a$c;->h(Lw1/a$c;Lw1/a$b;)Lw1/a$b;

    .line 14
    invoke-static {v5, p1}, Lw1/a$c;->i(Lw1/a$c;[Ljava/lang/String;)V

    goto :goto_86

    :cond_64
    if-ne v0, v3, :cond_79

    if-ne v1, v4, :cond_79

    const-string v4, "DIRTY"

    .line 15
    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_79

    .line 16
    new-instance p1, Lw1/a$b;

    invoke-direct {p1, p0, v5, v6}, Lw1/a$b;-><init>(Lw1/a;Lw1/a$c;Lw1/a$a;)V

    invoke-static {v5, p1}, Lw1/a$c;->h(Lw1/a$c;Lw1/a$b;)Lw1/a$b;

    goto :goto_86

    :cond_79
    if-ne v0, v3, :cond_87

    const/4 v0, 0x4

    if-ne v1, v0, :cond_87

    const-string v0, "READ"

    .line 17
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_87

    :goto_86
    return-void

    .line 18
    :cond_87
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 19
    :cond_9c
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private declared-synchronized v()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_1
    iget-object v0, p0, Lw1/a;->w:Ljava/io/Writer;

    if-eqz v0, :cond_8

    .line 2
    invoke-virtual {v0}, Ljava/io/Writer;->close()V

    .line 3
    :cond_8
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v1, Ljava/io/OutputStreamWriter;

    new-instance v2, Ljava/io/FileOutputStream;

    iget-object v3, p0, Lw1/a;->q:Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    sget-object v3, Lw1/c;->a:Ljava/nio/charset/Charset;

    invoke-direct {v1, v2, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_1b
    .catchall {:try_start_1 .. :try_end_1b} :catchall_e9

    :try_start_1b
    const-string v1, "libcore.io.DiskLruCache"

    .line 4
    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v1, "\n"

    .line 5
    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v1, "1"

    .line 6
    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v1, "\n"

    .line 7
    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 8
    iget v1, p0, Lw1/a;->s:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v1, "\n"

    .line 9
    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 10
    iget v1, p0, Lw1/a;->u:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v1, "\n"

    .line 11
    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v1, "\n"

    .line 12
    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 13
    iget-object v1, p0, Lw1/a;->x:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_ad

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lw1/a$c;

    .line 14
    invoke-static {v2}, Lw1/a$c;->g(Lw1/a$c;)Lw1/a$b;

    move-result-object v3

    const/16 v4, 0xa

    if-eqz v3, :cond_8a

    .line 15
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DIRTY "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lw1/a$c;->b(Lw1/a$c;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_5a

    .line 16
    :cond_8a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CLEAN "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lw1/a$c;->b(Lw1/a$c;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lw1/a$c;->l()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_ac
    .catchall {:try_start_1b .. :try_end_ac} :catchall_e4

    goto :goto_5a

    .line 17
    :cond_ad
    :try_start_ad
    invoke-virtual {v0}, Ljava/io/Writer;->close()V

    .line 18
    iget-object v0, p0, Lw1/a;->p:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_c0

    .line 19
    iget-object v0, p0, Lw1/a;->p:Ljava/io/File;

    iget-object v2, p0, Lw1/a;->r:Ljava/io/File;

    invoke-static {v0, v2, v1}, Lw1/a;->x(Ljava/io/File;Ljava/io/File;Z)V

    .line 20
    :cond_c0
    iget-object v0, p0, Lw1/a;->q:Ljava/io/File;

    iget-object v2, p0, Lw1/a;->p:Ljava/io/File;

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Lw1/a;->x(Ljava/io/File;Ljava/io/File;Z)V

    .line 21
    iget-object v0, p0, Lw1/a;->r:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 22
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v2, Ljava/io/OutputStreamWriter;

    new-instance v3, Ljava/io/FileOutputStream;

    iget-object v4, p0, Lw1/a;->p:Ljava/io/File;

    invoke-direct {v3, v4, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    sget-object v1, Lw1/c;->a:Ljava/nio/charset/Charset;

    invoke-direct {v2, v3, v1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v0, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    iput-object v0, p0, Lw1/a;->w:Ljava/io/Writer;
    :try_end_e2
    .catchall {:try_start_ad .. :try_end_e2} :catchall_e9

    .line 23
    monitor-exit p0

    return-void

    :catchall_e4
    move-exception v1

    .line 24
    :try_start_e5
    invoke-virtual {v0}, Ljava/io/Writer;->close()V

    throw v1
    :try_end_e9
    .catchall {:try_start_e5 .. :try_end_e9} :catchall_e9

    :catchall_e9
    move-exception v0

    monitor-exit p0

    goto :goto_ed

    :goto_ec
    throw v0

    :goto_ed
    goto :goto_ec
.end method

.method private static x(Ljava/io/File;Ljava/io/File;Z)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p2, :cond_5

    .line 1
    invoke-static {p1}, Lw1/a;->m(Ljava/io/File;)V

    .line 2
    :cond_5
    invoke-virtual {p0, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result p0

    if-eqz p0, :cond_c

    return-void

    .line 3
    :cond_c
    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    throw p0
.end method

.method private y()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    :goto_0
    iget-wide v0, p0, Lw1/a;->v:J

    iget-wide v2, p0, Lw1/a;->t:J

    cmp-long v4, v0, v2

    if-lez v4, :cond_22

    .line 2
    iget-object v0, p0, Lw1/a;->x:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 3
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lw1/a;->w(Ljava/lang/String;)Z

    goto :goto_0

    :cond_22
    return-void
.end method


# virtual methods
.method public declared-synchronized close()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_1
    iget-object v0, p0, Lw1/a;->w:Ljava/io/Writer;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_3d

    if-nez v0, :cond_7

    .line 2
    monitor-exit p0

    return-void

    .line 3
    :cond_7
    :try_start_7
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lw1/a;->x:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_16
    :goto_16
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_30

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lw1/a$c;

    .line 4
    invoke-static {v1}, Lw1/a$c;->g(Lw1/a$c;)Lw1/a$b;

    move-result-object v2

    if-eqz v2, :cond_16

    .line 5
    invoke-static {v1}, Lw1/a$c;->g(Lw1/a$c;)Lw1/a$b;

    move-result-object v1

    invoke-virtual {v1}, Lw1/a$b;->a()V

    goto :goto_16

    .line 6
    :cond_30
    invoke-direct {p0}, Lw1/a;->y()V

    .line 7
    iget-object v0, p0, Lw1/a;->w:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->close()V

    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, Lw1/a;->w:Ljava/io/Writer;
    :try_end_3b
    .catchall {:try_start_7 .. :try_end_3b} :catchall_3d

    .line 9
    monitor-exit p0

    return-void

    :catchall_3d
    move-exception v0

    monitor-exit p0

    goto :goto_41

    :goto_40
    throw v0

    :goto_41
    goto :goto_40
.end method

.method public l()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lw1/a;->close()V

    .line 2
    iget-object v0, p0, Lw1/a;->o:Ljava/io/File;

    invoke-static {v0}, Lw1/c;->b(Ljava/io/File;)V

    return-void
.end method

.method public n(Ljava/lang/String;)Lw1/a$b;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, -0x1

    .line 1
    invoke-direct {p0, p1, v0, v1}, Lw1/a;->o(Ljava/lang/String;J)Lw1/a$b;

    move-result-object p1

    return-object p1
.end method

.method public declared-synchronized p(Ljava/lang/String;)Lw1/a$d;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_1
    invoke-direct {p0}, Lw1/a;->j()V

    .line 2
    iget-object v0, p0, Lw1/a;->x:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lw1/a$c;
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_6e

    const/4 v1, 0x0

    if-nez v0, :cond_11

    .line 3
    monitor-exit p0

    return-object v1

    .line 4
    :cond_11
    :try_start_11
    invoke-static {v0}, Lw1/a$c;->e(Lw1/a$c;)Z

    move-result v2
    :try_end_15
    .catchall {:try_start_11 .. :try_end_15} :catchall_6e

    if-nez v2, :cond_19

    .line 5
    monitor-exit p0

    return-object v1

    .line 6
    :cond_19
    :try_start_19
    iget-object v2, v0, Lw1/a$c;->c:[Ljava/io/File;

    array-length v3, v2

    const/4 v4, 0x0

    :goto_1d
    if-ge v4, v3, :cond_2c

    aget-object v5, v2, v4

    .line 7
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5
    :try_end_25
    .catchall {:try_start_19 .. :try_end_25} :catchall_6e

    if-nez v5, :cond_29

    .line 8
    monitor-exit p0

    return-object v1

    :cond_29
    add-int/lit8 v4, v4, 0x1

    goto :goto_1d

    .line 9
    :cond_2c
    :try_start_2c
    iget v1, p0, Lw1/a;->y:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lw1/a;->y:I

    .line 10
    iget-object v1, p0, Lw1/a;->w:Ljava/io/Writer;

    const-string v2, "READ"

    invoke-virtual {v1, v2}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 11
    iget-object v1, p0, Lw1/a;->w:Ljava/io/Writer;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    .line 12
    iget-object v1, p0, Lw1/a;->w:Ljava/io/Writer;

    invoke-virtual {v1, p1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 13
    iget-object v1, p0, Lw1/a;->w:Ljava/io/Writer;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    .line 14
    invoke-direct {p0}, Lw1/a;->q()Z

    move-result v1

    if-eqz v1, :cond_59

    .line 15
    iget-object v1, p0, Lw1/a;->A:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object v2, p0, Lw1/a;->B:Ljava/util/concurrent/Callable;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    .line 16
    :cond_59
    new-instance v8, Lw1/a$d;

    invoke-static {v0}, Lw1/a$c;->c(Lw1/a$c;)J

    move-result-wide v3

    iget-object v5, v0, Lw1/a$c;->c:[Ljava/io/File;

    invoke-static {v0}, Lw1/a$c;->a(Lw1/a$c;)[J

    move-result-object v6

    const/4 v7, 0x0

    move-object v0, v8

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v7}, Lw1/a$d;-><init>(Lw1/a;Ljava/lang/String;J[Ljava/io/File;[JLw1/a$a;)V
    :try_end_6c
    .catchall {:try_start_2c .. :try_end_6c} :catchall_6e

    monitor-exit p0

    return-object v8

    :catchall_6e
    move-exception p1

    monitor-exit p0

    goto :goto_72

    :goto_71
    throw p1

    :goto_72
    goto :goto_71
.end method

.method public declared-synchronized w(Ljava/lang/String;)Z
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_1
    invoke-direct {p0}, Lw1/a;->j()V

    .line 2
    iget-object v0, p0, Lw1/a;->x:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lw1/a$c;

    const/4 v1, 0x0

    if-eqz v0, :cond_8d

    .line 3
    invoke-static {v0}, Lw1/a$c;->g(Lw1/a$c;)Lw1/a$b;

    move-result-object v2

    if-eqz v2, :cond_17

    goto/16 :goto_8d

    .line 4
    :cond_17
    :goto_17
    iget v2, p0, Lw1/a;->u:I

    if-ge v1, v2, :cond_59

    .line 5
    invoke-virtual {v0, v1}, Lw1/a$c;->j(I)Ljava/io/File;

    move-result-object v2

    .line 6
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_43

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v3

    if-eqz v3, :cond_2c

    goto :goto_43

    .line 7
    :cond_2c
    new-instance p1, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "failed to delete "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 8
    :cond_43
    :goto_43
    iget-wide v2, p0, Lw1/a;->v:J

    invoke-static {v0}, Lw1/a$c;->a(Lw1/a$c;)[J

    move-result-object v4

    aget-wide v5, v4, v1

    sub-long/2addr v2, v5

    iput-wide v2, p0, Lw1/a;->v:J

    .line 9
    invoke-static {v0}, Lw1/a$c;->a(Lw1/a$c;)[J

    move-result-object v2

    const-wide/16 v3, 0x0

    aput-wide v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    .line 10
    :cond_59
    iget v0, p0, Lw1/a;->y:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lw1/a;->y:I

    .line 11
    iget-object v0, p0, Lw1/a;->w:Ljava/io/Writer;

    const-string v2, "REMOVE"

    invoke-virtual {v0, v2}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 12
    iget-object v0, p0, Lw1/a;->w:Ljava/io/Writer;

    const/16 v2, 0x20

    invoke-virtual {v0, v2}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    .line 13
    iget-object v0, p0, Lw1/a;->w:Ljava/io/Writer;

    invoke-virtual {v0, p1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 14
    iget-object v0, p0, Lw1/a;->w:Ljava/io/Writer;

    const/16 v2, 0xa

    invoke-virtual {v0, v2}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    .line 15
    iget-object v0, p0, Lw1/a;->x:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    invoke-direct {p0}, Lw1/a;->q()Z

    move-result p1

    if-eqz p1, :cond_8b

    .line 17
    iget-object p1, p0, Lw1/a;->A:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object v0, p0, Lw1/a;->B:Ljava/util/concurrent/Callable;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    :try_end_8b
    .catchall {:try_start_1 .. :try_end_8b} :catchall_8f

    .line 18
    :cond_8b
    monitor-exit p0

    return v1

    .line 19
    :cond_8d
    :goto_8d
    monitor-exit p0

    return v1

    :catchall_8f
    move-exception p1

    monitor-exit p0

    goto :goto_93

    :goto_92
    throw p1

    :goto_93
    goto :goto_92
.end method

###### Class w1.a.CallableC0286a (w1.a$a)
.class Lw1/a$a;
.super Ljava/lang/Object;
.source "DiskLruCache.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lw1/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lw1/a;


# direct methods
.method constructor <init>(Lw1/a;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lw1/a$a;->a:Lw1/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Void;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lw1/a$a;->a:Lw1/a;

    monitor-enter v0

    .line 2
    :try_start_3
    iget-object v1, p0, Lw1/a$a;->a:Lw1/a;

    invoke-static {v1}, Lw1/a;->b(Lw1/a;)Ljava/io/Writer;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_e

    .line 3
    monitor-exit v0

    return-object v2

    .line 4
    :cond_e
    iget-object v1, p0, Lw1/a$a;->a:Lw1/a;

    invoke-static {v1}, Lw1/a;->c(Lw1/a;)V

    .line 5
    iget-object v1, p0, Lw1/a$a;->a:Lw1/a;

    invoke-static {v1}, Lw1/a;->f(Lw1/a;)Z

    move-result v1

    if-eqz v1, :cond_26

    .line 6
    iget-object v1, p0, Lw1/a$a;->a:Lw1/a;

    invoke-static {v1}, Lw1/a;->h(Lw1/a;)V

    .line 7
    iget-object v1, p0, Lw1/a$a;->a:Lw1/a;

    const/4 v3, 0x0

    invoke-static {v1, v3}, Lw1/a;->i(Lw1/a;I)I

    .line 8
    :cond_26
    monitor-exit v0

    return-object v2

    :catchall_28
    move-exception v1

    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_3 .. :try_end_2a} :catchall_28

    throw v1
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lw1/a$a;->a()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

###### Class w1.a.b (w1.a$b)
.class public final Lw1/a$b;
.super Ljava/lang/Object;
.source "DiskLruCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lw1/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "b"
.end annotation


# instance fields
.field private final a:Lw1/a$c;

.field private final b:[Z

.field private c:Z

.field final synthetic d:Lw1/a;


# direct methods
.method private constructor <init>(Lw1/a;Lw1/a$c;)V
    .registers 3

    .line 2
    iput-object p1, p0, Lw1/a$b;->d:Lw1/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p2, p0, Lw1/a$b;->a:Lw1/a$c;

    .line 4
    invoke-static {p2}, Lw1/a$c;->e(Lw1/a$c;)Z

    move-result p2

    if-eqz p2, :cond_f

    const/4 p1, 0x0

    goto :goto_15

    :cond_f
    invoke-static {p1}, Lw1/a;->d(Lw1/a;)I

    move-result p1

    new-array p1, p1, [Z

    :goto_15
    iput-object p1, p0, Lw1/a$b;->b:[Z

    return-void
.end method

.method synthetic constructor <init>(Lw1/a;Lw1/a$c;Lw1/a$a;)V
    .registers 4

    .line 1
    invoke-direct {p0, p1, p2}, Lw1/a$b;-><init>(Lw1/a;Lw1/a$c;)V

    return-void
.end method

.method static synthetic c(Lw1/a$b;)Lw1/a$c;
    .registers 1

    .line 1
    iget-object p0, p0, Lw1/a$b;->a:Lw1/a$c;

    return-object p0
.end method

.method static synthetic d(Lw1/a$b;)[Z
    .registers 1

    .line 1
    iget-object p0, p0, Lw1/a$b;->b:[Z

    return-object p0
.end method


# virtual methods
.method public a()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lw1/a$b;->d:Lw1/a;

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lw1/a;->g(Lw1/a;Lw1/a$b;Z)V

    return-void
.end method

.method public b()V
    .registers 2

    .line 1
    iget-boolean v0, p0, Lw1/a$b;->c:Z

    if-nez v0, :cond_7

    .line 2
    :try_start_4
    invoke-virtual {p0}, Lw1/a$b;->a()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_7} :catch_7

    :catch_7
    :cond_7
    return-void
.end method

.method public e()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lw1/a$b;->d:Lw1/a;

    const/4 v1, 0x1

    invoke-static {v0, p0, v1}, Lw1/a;->g(Lw1/a;Lw1/a$b;Z)V

    .line 2
    iput-boolean v1, p0, Lw1/a$b;->c:Z

    return-void
.end method

.method public f(I)Ljava/io/File;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lw1/a$b;->d:Lw1/a;

    monitor-enter v0

    .line 2
    :try_start_3
    iget-object v1, p0, Lw1/a$b;->a:Lw1/a$c;

    invoke-static {v1}, Lw1/a$c;->g(Lw1/a$c;)Lw1/a$b;

    move-result-object v1

    if-ne v1, p0, :cond_35

    .line 3
    iget-object v1, p0, Lw1/a$b;->a:Lw1/a$c;

    invoke-static {v1}, Lw1/a$c;->e(Lw1/a$c;)Z

    move-result v1

    if-nez v1, :cond_18

    .line 4
    iget-object v1, p0, Lw1/a$b;->b:[Z

    const/4 v2, 0x1

    aput-boolean v2, v1, p1

    .line 5
    :cond_18
    iget-object v1, p0, Lw1/a$b;->a:Lw1/a$c;

    invoke-virtual {v1, p1}, Lw1/a$c;->k(I)Ljava/io/File;

    move-result-object p1

    .line 6
    iget-object v1, p0, Lw1/a$b;->d:Lw1/a;

    invoke-static {v1}, Lw1/a;->e(Lw1/a;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_33

    .line 7
    iget-object v1, p0, Lw1/a$b;->d:Lw1/a;

    invoke-static {v1}, Lw1/a;->e(Lw1/a;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 8
    :cond_33
    monitor-exit v0

    return-object p1

    .line 9
    :cond_35
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :catchall_3b
    move-exception p1

    .line 10
    monitor-exit v0
    :try_end_3d
    .catchall {:try_start_3 .. :try_end_3d} :catchall_3b

    throw p1
.end method

###### Class w1.a.c (w1.a$c)
.class final Lw1/a$c;
.super Ljava/lang/Object;
.source "DiskLruCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lw1/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "c"
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:[J

.field c:[Ljava/io/File;

.field d:[Ljava/io/File;

.field private e:Z

.field private f:Lw1/a$b;

.field private g:J

.field final synthetic h:Lw1/a;


# direct methods
.method private constructor <init>(Lw1/a;Ljava/lang/String;)V
    .registers 9

    .line 2
    iput-object p1, p0, Lw1/a$c;->h:Lw1/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p2, p0, Lw1/a$c;->a:Ljava/lang/String;

    .line 4
    invoke-static {p1}, Lw1/a;->d(Lw1/a;)I

    move-result v0

    new-array v0, v0, [J

    iput-object v0, p0, Lw1/a$c;->b:[J

    .line 5
    invoke-static {p1}, Lw1/a;->d(Lw1/a;)I

    move-result v0

    new-array v0, v0, [Ljava/io/File;

    iput-object v0, p0, Lw1/a$c;->c:[Ljava/io/File;

    .line 6
    invoke-static {p1}, Lw1/a;->d(Lw1/a;)I

    move-result v0

    new-array v0, v0, [Ljava/io/File;

    iput-object v0, p0, Lw1/a$c;->d:[Ljava/io/File;

    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 p2, 0x2e

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 8
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p2

    const/4 v1, 0x0

    .line 9
    :goto_2e
    invoke-static {p1}, Lw1/a;->d(Lw1/a;)I

    move-result v2

    if-ge v1, v2, :cond_64

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 11
    iget-object v2, p0, Lw1/a$c;->c:[Ljava/io/File;

    new-instance v3, Ljava/io/File;

    invoke-static {p1}, Lw1/a;->e(Lw1/a;)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    aput-object v3, v2, v1

    const-string v2, ".tmp"

    .line 12
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    iget-object v2, p0, Lw1/a$c;->d:[Ljava/io/File;

    new-instance v3, Ljava/io/File;

    invoke-static {p1}, Lw1/a;->e(Lw1/a;)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    aput-object v3, v2, v1

    .line 14
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->setLength(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2e

    :cond_64
    return-void
.end method

.method synthetic constructor <init>(Lw1/a;Ljava/lang/String;Lw1/a$a;)V
    .registers 4

    .line 1
    invoke-direct {p0, p1, p2}, Lw1/a$c;-><init>(Lw1/a;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lw1/a$c;)[J
    .registers 1

    .line 1
    iget-object p0, p0, Lw1/a$c;->b:[J

    return-object p0
.end method

.method static synthetic b(Lw1/a$c;)Ljava/lang/String;
    .registers 1

    .line 1
    iget-object p0, p0, Lw1/a$c;->a:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic c(Lw1/a$c;)J
    .registers 3

    .line 1
    iget-wide v0, p0, Lw1/a$c;->g:J

    return-wide v0
.end method

.method static synthetic d(Lw1/a$c;J)J
    .registers 3

    .line 1
    iput-wide p1, p0, Lw1/a$c;->g:J

    return-wide p1
.end method

.method static synthetic e(Lw1/a$c;)Z
    .registers 1

    .line 1
    iget-boolean p0, p0, Lw1/a$c;->e:Z

    return p0
.end method

.method static synthetic f(Lw1/a$c;Z)Z
    .registers 2

    .line 1
    iput-boolean p1, p0, Lw1/a$c;->e:Z

    return p1
.end method

.method static synthetic g(Lw1/a$c;)Lw1/a$b;
    .registers 1

    .line 1
    iget-object p0, p0, Lw1/a$c;->f:Lw1/a$b;

    return-object p0
.end method

.method static synthetic h(Lw1/a$c;Lw1/a$b;)Lw1/a$b;
    .registers 2

    .line 1
    iput-object p1, p0, Lw1/a$c;->f:Lw1/a$b;

    return-object p1
.end method

.method static synthetic i(Lw1/a$c;[Ljava/lang/String;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lw1/a$c;->n([Ljava/lang/String;)V

    return-void
.end method

.method private m([Ljava/lang/String;)Ljava/io/IOException;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unexpected journal line: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private n([Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    array-length v0, p1

    iget-object v1, p0, Lw1/a$c;->h:Lw1/a;

    invoke-static {v1}, Lw1/a;->d(Lw1/a;)I

    move-result v1

    if-ne v0, v1, :cond_20

    const/4 v0, 0x0

    .line 2
    :goto_a
    :try_start_a
    array-length v1, p1

    if-ge v0, v1, :cond_1a

    .line 3
    iget-object v1, p0, Lw1/a$c;->b:[J

    aget-object v2, p1, v0

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    aput-wide v2, v1, v0
    :try_end_17
    .catch Ljava/lang/NumberFormatException; {:try_start_a .. :try_end_17} :catch_1b

    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :cond_1a
    return-void

    .line 4
    :catch_1b
    invoke-direct {p0, p1}, Lw1/a$c;->m([Ljava/lang/String;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    .line 5
    :cond_20
    invoke-direct {p0, p1}, Lw1/a$c;->m([Ljava/lang/String;)Ljava/io/IOException;

    move-result-object p1

    goto :goto_26

    :goto_25
    throw p1

    :goto_26
    goto :goto_25
.end method


# virtual methods
.method public j(I)Ljava/io/File;
    .registers 3

    .line 1
    iget-object v0, p0, Lw1/a$c;->c:[Ljava/io/File;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public k(I)Ljava/io/File;
    .registers 3

    .line 1
    iget-object v0, p0, Lw1/a$c;->d:[Ljava/io/File;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public l()Ljava/lang/String;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    iget-object v1, p0, Lw1/a$c;->b:[J

    array-length v2, v1

    const/4 v3, 0x0

    :goto_9
    if-ge v3, v2, :cond_18

    aget-wide v4, v1, v3

    const/16 v6, 0x20

    .line 3
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 4
    :cond_18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class w1.a.d (w1.a$d)
.class public final Lw1/a$d;
.super Ljava/lang/Object;
.source "DiskLruCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lw1/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "d"
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:J

.field private final c:[J

.field private final d:[Ljava/io/File;

.field final synthetic e:Lw1/a;


# direct methods
.method private constructor <init>(Lw1/a;Ljava/lang/String;J[Ljava/io/File;[J)V
    .registers 7

    .line 2
    iput-object p1, p0, Lw1/a$d;->e:Lw1/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p2, p0, Lw1/a$d;->a:Ljava/lang/String;

    .line 4
    iput-wide p3, p0, Lw1/a$d;->b:J

    .line 5
    iput-object p5, p0, Lw1/a$d;->d:[Ljava/io/File;

    .line 6
    iput-object p6, p0, Lw1/a$d;->c:[J

    return-void
.end method

.method synthetic constructor <init>(Lw1/a;Ljava/lang/String;J[Ljava/io/File;[JLw1/a$a;)V
    .registers 8

    .line 1
    invoke-direct/range {p0 .. p6}, Lw1/a$d;-><init>(Lw1/a;Ljava/lang/String;J[Ljava/io/File;[J)V

    return-void
.end method


# virtual methods
.method public a(I)Ljava/io/File;
    .registers 3

    .line 1
    iget-object v0, p0, Lw1/a$d;->d:[Ljava/io/File;

    aget-object p1, v0, p1

    return-object p1
.end method
