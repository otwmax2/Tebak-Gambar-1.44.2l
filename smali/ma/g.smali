###### Class ma.g (ma.g)
.class public final Lma/g;
.super Ljava/lang/Object;
.source "StreamAllocation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lma/g$a;
    }
.end annotation


# instance fields
.field public final a:Lja/a;

.field private b:Lma/f$a;

.field private c:Lja/e0;

.field private final d:Lja/j;

.field public final e:Lja/e;

.field public final f:Lja/p;

.field private final g:Ljava/lang/Object;

.field private final h:Lma/f;

.field private i:I

.field private j:Lma/c;

.field private k:Z

.field private l:Z

.field private m:Z

.field private n:Lna/c;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Lja/j;Lja/a;Lja/e;Lja/p;Ljava/lang/Object;)V
    .registers 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lma/g;->d:Lja/j;

    .line 3
    iput-object p2, p0, Lma/g;->a:Lja/a;

    .line 4
    iput-object p3, p0, Lma/g;->e:Lja/e;

    .line 5
    iput-object p4, p0, Lma/g;->f:Lja/p;

    .line 6
    new-instance p1, Lma/f;

    invoke-direct {p0}, Lma/g;->p()Lma/d;

    move-result-object v0

    invoke-direct {p1, p2, v0, p3, p4}, Lma/f;-><init>(Lja/a;Lma/d;Lja/e;Lja/p;)V

    iput-object p1, p0, Lma/g;->h:Lma/f;

    .line 7
    iput-object p5, p0, Lma/g;->g:Ljava/lang/Object;

    return-void
.end method

.method private e(ZZZ)Ljava/net/Socket;
    .registers 5

    const/4 v0, 0x0

    if-eqz p3, :cond_5

    .line 1
    iput-object v0, p0, Lma/g;->n:Lna/c;

    :cond_5
    const/4 p3, 0x1

    if-eqz p2, :cond_a

    .line 2
    iput-boolean p3, p0, Lma/g;->l:Z

    .line 3
    :cond_a
    iget-object p2, p0, Lma/g;->j:Lma/c;

    if-eqz p2, :cond_4a

    if-eqz p1, :cond_12

    .line 4
    iput-boolean p3, p2, Lma/c;->k:Z

    .line 5
    :cond_12
    iget-object p1, p0, Lma/g;->n:Lna/c;

    if-nez p1, :cond_4a

    iget-boolean p1, p0, Lma/g;->l:Z

    if-nez p1, :cond_1e

    iget-boolean p1, p2, Lma/c;->k:Z

    if-eqz p1, :cond_4a

    .line 6
    :cond_1e
    invoke-direct {p0, p2}, Lma/g;->l(Lma/c;)V

    .line 7
    iget-object p1, p0, Lma/g;->j:Lma/c;

    iget-object p1, p1, Lma/c;->n:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_46

    .line 8
    iget-object p1, p0, Lma/g;->j:Lma/c;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide p2

    iput-wide p2, p1, Lma/c;->o:J

    .line 9
    sget-object p1, Lka/a;->a:Lka/a;

    iget-object p2, p0, Lma/g;->d:Lja/j;

    iget-object p3, p0, Lma/g;->j:Lma/c;

    invoke-virtual {p1, p2, p3}, Lka/a;->e(Lja/j;Lma/c;)Z

    move-result p1

    if-eqz p1, :cond_46

    .line 10
    iget-object p1, p0, Lma/g;->j:Lma/c;

    invoke-virtual {p1}, Lma/c;->r()Ljava/net/Socket;

    move-result-object p1

    goto :goto_47

    :cond_46
    move-object p1, v0

    .line 11
    :goto_47
    iput-object v0, p0, Lma/g;->j:Lma/c;

    move-object v0, p1

    :cond_4a
    return-object v0
.end method

.method private f(IIIIZ)Lma/c;
    .registers 24
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    .line 1
    iget-object v2, v1, Lma/g;->d:Lja/j;

    monitor-enter v2

    .line 2
    :try_start_5
    iget-boolean v0, v1, Lma/g;->l:Z

    if-nez v0, :cond_133

    .line 3
    iget-object v0, v1, Lma/g;->n:Lna/c;

    if-nez v0, :cond_12b

    .line 4
    iget-boolean v0, v1, Lma/g;->m:Z

    if-nez v0, :cond_123

    .line 5
    iget-object v0, v1, Lma/g;->j:Lma/c;

    .line 6
    invoke-direct/range {p0 .. p0}, Lma/g;->n()Ljava/net/Socket;

    move-result-object v3

    .line 7
    iget-object v4, v1, Lma/g;->j:Lma/c;

    const/4 v5, 0x0

    if-eqz v4, :cond_1e

    move-object v0, v5

    goto :goto_1f

    :cond_1e
    move-object v4, v5

    .line 8
    :goto_1f
    iget-boolean v6, v1, Lma/g;->k:Z

    if-nez v6, :cond_24

    move-object v0, v5

    :cond_24
    const/4 v6, 0x1

    const/4 v7, 0x0

    if-nez v4, :cond_3c

    .line 9
    sget-object v8, Lka/a;->a:Lka/a;

    iget-object v9, v1, Lma/g;->d:Lja/j;

    iget-object v10, v1, Lma/g;->a:Lja/a;

    invoke-virtual {v8, v9, v10, v1, v5}, Lka/a;->h(Lja/j;Lja/a;Lma/g;Lja/e0;)Lma/c;

    .line 10
    iget-object v8, v1, Lma/g;->j:Lma/c;

    if-eqz v8, :cond_39

    move-object v4, v8

    const/4 v9, 0x1

    move-object v8, v5

    goto :goto_3e

    .line 11
    :cond_39
    iget-object v8, v1, Lma/g;->c:Lja/e0;

    goto :goto_3d

    :cond_3c
    move-object v8, v5

    :goto_3d
    const/4 v9, 0x0

    .line 12
    :goto_3e
    monitor-exit v2
    :try_end_3f
    .catchall {:try_start_5 .. :try_end_3f} :catchall_13b

    .line 13
    invoke-static {v3}, Lka/c;->h(Ljava/net/Socket;)V

    if-eqz v0, :cond_4b

    .line 14
    iget-object v2, v1, Lma/g;->f:Lja/p;

    iget-object v3, v1, Lma/g;->e:Lja/e;

    invoke-virtual {v2, v3, v0}, Lja/p;->h(Lja/e;Lja/i;)V

    :cond_4b
    if-eqz v9, :cond_54

    .line 15
    iget-object v0, v1, Lma/g;->f:Lja/p;

    iget-object v2, v1, Lma/g;->e:Lja/e;

    invoke-virtual {v0, v2, v4}, Lja/p;->g(Lja/e;Lja/i;)V

    :cond_54
    if-eqz v4, :cond_5f

    .line 16
    iget-object v0, v1, Lma/g;->j:Lma/c;

    invoke-virtual {v0}, Lma/c;->q()Lja/e0;

    move-result-object v0

    iput-object v0, v1, Lma/g;->c:Lja/e0;

    return-object v4

    :cond_5f
    if-nez v8, :cond_75

    .line 17
    iget-object v0, v1, Lma/g;->b:Lma/f$a;

    if-eqz v0, :cond_6b

    invoke-virtual {v0}, Lma/f$a;->b()Z

    move-result v0

    if-nez v0, :cond_75

    .line 18
    :cond_6b
    iget-object v0, v1, Lma/g;->h:Lma/f;

    invoke-virtual {v0}, Lma/f;->e()Lma/f$a;

    move-result-object v0

    iput-object v0, v1, Lma/g;->b:Lma/f$a;

    const/4 v0, 0x1

    goto :goto_76

    :cond_75
    const/4 v0, 0x0

    .line 19
    :goto_76
    iget-object v3, v1, Lma/g;->d:Lja/j;

    monitor-enter v3

    .line 20
    :try_start_79
    iget-boolean v2, v1, Lma/g;->m:Z

    if-nez v2, :cond_118

    if-eqz v0, :cond_a7

    .line 21
    iget-object v0, v1, Lma/g;->b:Lma/f$a;

    invoke-virtual {v0}, Lma/f$a;->a()Ljava/util/List;

    move-result-object v0

    .line 22
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v10, 0x0

    :goto_8a
    if-ge v10, v2, :cond_a7

    .line 23
    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lja/e0;

    .line 24
    sget-object v12, Lka/a;->a:Lka/a;

    iget-object v13, v1, Lma/g;->d:Lja/j;

    iget-object v14, v1, Lma/g;->a:Lja/a;

    invoke-virtual {v12, v13, v14, v1, v11}, Lka/a;->h(Lja/j;Lja/a;Lma/g;Lja/e0;)Lma/c;

    .line 25
    iget-object v12, v1, Lma/g;->j:Lma/c;

    if-eqz v12, :cond_a4

    .line 26
    iput-object v11, v1, Lma/g;->c:Lja/e0;

    move-object v4, v12

    const/4 v9, 0x1

    goto :goto_a7

    :cond_a4
    add-int/lit8 v10, v10, 0x1

    goto :goto_8a

    :cond_a7
    :goto_a7
    if-nez v9, :cond_bf

    if-nez v8, :cond_b1

    .line 27
    iget-object v0, v1, Lma/g;->b:Lma/f$a;

    invoke-virtual {v0}, Lma/f$a;->c()Lja/e0;

    move-result-object v8

    .line 28
    :cond_b1
    iput-object v8, v1, Lma/g;->c:Lja/e0;

    .line 29
    iput v7, v1, Lma/g;->i:I

    .line 30
    new-instance v4, Lma/c;

    iget-object v0, v1, Lma/g;->d:Lja/j;

    invoke-direct {v4, v0, v8}, Lma/c;-><init>(Lja/j;Lja/e0;)V

    .line 31
    invoke-virtual {v1, v4, v7}, Lma/g;->a(Lma/c;Z)V

    .line 32
    :cond_bf
    monitor-exit v3
    :try_end_c0
    .catchall {:try_start_79 .. :try_end_c0} :catchall_120

    if-eqz v9, :cond_ca

    .line 33
    iget-object v0, v1, Lma/g;->f:Lja/p;

    iget-object v2, v1, Lma/g;->e:Lja/e;

    invoke-virtual {v0, v2, v4}, Lja/p;->g(Lja/e;Lja/i;)V

    return-object v4

    .line 34
    :cond_ca
    iget-object v0, v1, Lma/g;->e:Lja/e;

    iget-object v2, v1, Lma/g;->f:Lja/p;

    move-object v10, v4

    move/from16 v11, p1

    move/from16 v12, p2

    move/from16 v13, p3

    move/from16 v14, p4

    move/from16 v15, p5

    move-object/from16 v16, v0

    move-object/from16 v17, v2

    invoke-virtual/range {v10 .. v17}, Lma/c;->e(IIIIZLja/e;Lja/p;)V

    .line 35
    invoke-direct/range {p0 .. p0}, Lma/g;->p()Lma/d;

    move-result-object v0

    invoke-virtual {v4}, Lma/c;->q()Lja/e0;

    move-result-object v2

    invoke-virtual {v0, v2}, Lma/d;->a(Lja/e0;)V

    .line 36
    iget-object v2, v1, Lma/g;->d:Lja/j;

    monitor-enter v2

    .line 37
    :try_start_ee
    iput-boolean v6, v1, Lma/g;->k:Z

    .line 38
    sget-object v0, Lka/a;->a:Lka/a;

    iget-object v3, v1, Lma/g;->d:Lja/j;

    invoke-virtual {v0, v3, v4}, Lka/a;->i(Lja/j;Lma/c;)V

    .line 39
    invoke-virtual {v4}, Lma/c;->o()Z

    move-result v0

    if-eqz v0, :cond_109

    .line 40
    sget-object v0, Lka/a;->a:Lka/a;

    iget-object v3, v1, Lma/g;->d:Lja/j;

    iget-object v4, v1, Lma/g;->a:Lja/a;

    invoke-virtual {v0, v3, v4, v1}, Lka/a;->f(Lja/j;Lja/a;Lma/g;)Ljava/net/Socket;

    move-result-object v5

    .line 41
    iget-object v4, v1, Lma/g;->j:Lma/c;

    .line 42
    :cond_109
    monitor-exit v2
    :try_end_10a
    .catchall {:try_start_ee .. :try_end_10a} :catchall_115

    .line 43
    invoke-static {v5}, Lka/c;->h(Ljava/net/Socket;)V

    .line 44
    iget-object v0, v1, Lma/g;->f:Lja/p;

    iget-object v2, v1, Lma/g;->e:Lja/e;

    invoke-virtual {v0, v2, v4}, Lja/p;->g(Lja/e;Lja/i;)V

    return-object v4

    :catchall_115
    move-exception v0

    .line 45
    :try_start_116
    monitor-exit v2
    :try_end_117
    .catchall {:try_start_116 .. :try_end_117} :catchall_115

    throw v0

    .line 46
    :cond_118
    :try_start_118
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Canceled"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_120
    move-exception v0

    .line 47
    monitor-exit v3
    :try_end_122
    .catchall {:try_start_118 .. :try_end_122} :catchall_120

    throw v0

    .line 48
    :cond_123
    :try_start_123
    new-instance v0, Ljava/io/IOException;

    const-string v3, "Canceled"

    invoke-direct {v0, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 49
    :cond_12b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v3, "codec != null"

    invoke-direct {v0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 50
    :cond_133
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v3, "released"

    invoke-direct {v0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_13b
    move-exception v0

    .line 51
    monitor-exit v2
    :try_end_13d
    .catchall {:try_start_123 .. :try_end_13d} :catchall_13b

    goto :goto_13f

    :goto_13e
    throw v0

    :goto_13f
    goto :goto_13e
.end method

.method private g(IIIIZZ)Lma/c;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    :goto_0
    invoke-direct/range {p0 .. p5}, Lma/g;->f(IIIIZ)Lma/c;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lma/g;->d:Lja/j;

    monitor-enter v1

    .line 3
    :try_start_7
    iget v2, v0, Lma/c;->l:I

    if-nez v2, :cond_13

    invoke-virtual {v0}, Lma/c;->o()Z

    move-result v2

    if-nez v2, :cond_13

    .line 4
    monitor-exit v1

    return-object v0

    .line 5
    :cond_13
    monitor-exit v1
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_1f

    .line 6
    invoke-virtual {v0, p6}, Lma/c;->n(Z)Z

    move-result v1

    if-nez v1, :cond_1e

    .line 7
    invoke-virtual {p0}, Lma/g;->j()V

    goto :goto_0

    :cond_1e
    return-object v0

    :catchall_1f
    move-exception p1

    .line 8
    :try_start_20
    monitor-exit v1
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_1f

    goto :goto_23

    :goto_22
    throw p1

    :goto_23
    goto :goto_22
.end method

.method private l(Lma/c;)V
    .registers 5

    .line 1
    iget-object v0, p1, Lma/c;->n:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_20

    .line 2
    iget-object v2, p1, Lma/c;->n:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/Reference;

    .line 3
    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p0, :cond_1d

    .line 4
    iget-object p1, p1, Lma/c;->n:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-void

    :cond_1d
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 5
    :cond_20
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    goto :goto_27

    :goto_26
    throw p1

    :goto_27
    goto :goto_26
.end method

.method private n()Ljava/net/Socket;
    .registers 3

    .line 1
    iget-object v0, p0, Lma/g;->j:Lma/c;

    if-eqz v0, :cond_f

    .line 2
    iget-boolean v0, v0, Lma/c;->k:Z

    if-eqz v0, :cond_f

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 3
    invoke-direct {p0, v1, v1, v0}, Lma/g;->e(ZZZ)Ljava/net/Socket;

    move-result-object v0

    return-object v0

    :cond_f
    const/4 v0, 0x0

    return-object v0
.end method

.method private p()Lma/d;
    .registers 3

    .line 1
    sget-object v0, Lka/a;->a:Lka/a;

    iget-object v1, p0, Lma/g;->d:Lja/j;

    invoke-virtual {v0, v1}, Lka/a;->j(Lja/j;)Lma/d;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Lma/c;Z)V
    .registers 4

    .line 1
    iget-object v0, p0, Lma/g;->j:Lma/c;

    if-nez v0, :cond_15

    .line 2
    iput-object p1, p0, Lma/g;->j:Lma/c;

    .line 3
    iput-boolean p2, p0, Lma/g;->k:Z

    .line 4
    iget-object p1, p1, Lma/c;->n:Ljava/util/List;

    new-instance p2, Lma/g$a;

    iget-object v0, p0, Lma/g;->g:Ljava/lang/Object;

    invoke-direct {p2, p0, v0}, Lma/g$a;-><init>(Lma/g;Ljava/lang/Object;)V

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 5
    :cond_15
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public b()V
    .registers 4

    .line 1
    iget-object v0, p0, Lma/g;->d:Lja/j;

    monitor-enter v0

    const/4 v1, 0x1

    .line 2
    :try_start_4
    iput-boolean v1, p0, Lma/g;->m:Z

    .line 3
    iget-object v1, p0, Lma/g;->n:Lna/c;

    .line 4
    iget-object v2, p0, Lma/g;->j:Lma/c;

    .line 5
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_4 .. :try_end_b} :catchall_17

    if-eqz v1, :cond_11

    .line 6
    invoke-interface {v1}, Lna/c;->cancel()V

    goto :goto_16

    :cond_11
    if-eqz v2, :cond_16

    .line 7
    invoke-virtual {v2}, Lma/c;->d()V

    :cond_16
    :goto_16
    return-void

    :catchall_17
    move-exception v1

    .line 8
    :try_start_18
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_17

    throw v1
.end method

.method public c()Lna/c;
    .registers 3

    .line 1
    iget-object v0, p0, Lma/g;->d:Lja/j;

    monitor-enter v0

    .line 2
    :try_start_3
    iget-object v1, p0, Lma/g;->n:Lna/c;

    monitor-exit v0

    return-object v1

    :catchall_7
    move-exception v1

    .line 3
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public declared-synchronized d()Lma/c;
    .registers 2

    monitor-enter p0

    .line 1
    :try_start_1
    iget-object v0, p0, Lma/g;->j:Lma/c;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public h()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lma/g;->c:Lja/e0;

    if-nez v0, :cond_19

    iget-object v0, p0, Lma/g;->b:Lma/f$a;

    if-eqz v0, :cond_e

    .line 2
    invoke-virtual {v0}, Lma/f$a;->b()Z

    move-result v0

    if-nez v0, :cond_19

    :cond_e
    iget-object v0, p0, Lma/g;->h:Lma/f;

    .line 3
    invoke-virtual {v0}, Lma/f;->c()Z

    move-result v0

    if-eqz v0, :cond_17

    goto :goto_19

    :cond_17
    const/4 v0, 0x0

    goto :goto_1a

    :cond_19
    :goto_19
    const/4 v0, 0x1

    :goto_1a
    return v0
.end method

.method public i(Lja/x;Lja/u$a;Z)Lna/c;
    .registers 11

    .line 1
    invoke-interface {p2}, Lja/u$a;->d()I

    move-result v1

    .line 2
    invoke-interface {p2}, Lja/u$a;->a()I

    move-result v2

    .line 3
    invoke-interface {p2}, Lja/u$a;->b()I

    move-result v3

    .line 4
    invoke-virtual {p1}, Lja/x;->v()I

    move-result v4

    .line 5
    invoke-virtual {p1}, Lja/x;->B()Z

    move-result v5

    move-object v0, p0

    move v6, p3

    .line 6
    :try_start_16
    invoke-direct/range {v0 .. v6}, Lma/g;->g(IIIIZZ)Lma/c;

    move-result-object p3

    .line 7
    invoke-virtual {p3, p1, p2, p0}, Lma/c;->p(Lja/x;Lja/u$a;Lma/g;)Lna/c;

    move-result-object p1

    .line 8
    iget-object p2, p0, Lma/g;->d:Lja/j;

    monitor-enter p2
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_21} :catch_28

    .line 9
    :try_start_21
    iput-object p1, p0, Lma/g;->n:Lna/c;

    .line 10
    monitor-exit p2

    return-object p1

    :catchall_25
    move-exception p1

    .line 11
    monitor-exit p2
    :try_end_27
    .catchall {:try_start_21 .. :try_end_27} :catchall_25

    :try_start_27
    throw p1
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_28} :catch_28

    :catch_28
    move-exception p1

    .line 12
    new-instance p2, Lma/e;

    invoke-direct {p2, p1}, Lma/e;-><init>(Ljava/io/IOException;)V

    throw p2
.end method

.method public j()V
    .registers 5

    .line 1
    iget-object v0, p0, Lma/g;->d:Lja/j;

    monitor-enter v0

    .line 2
    :try_start_3
    iget-object v1, p0, Lma/g;->j:Lma/c;

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 3
    invoke-direct {p0, v2, v3, v3}, Lma/g;->e(ZZZ)Ljava/net/Socket;

    move-result-object v2

    .line 4
    iget-object v3, p0, Lma/g;->j:Lma/c;

    if-eqz v3, :cond_10

    const/4 v1, 0x0

    .line 5
    :cond_10
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_1e

    .line 6
    invoke-static {v2}, Lka/c;->h(Ljava/net/Socket;)V

    if-eqz v1, :cond_1d

    .line 7
    iget-object v0, p0, Lma/g;->f:Lja/p;

    iget-object v2, p0, Lma/g;->e:Lja/e;

    invoke-virtual {v0, v2, v1}, Lja/p;->h(Lja/e;Lja/i;)V

    :cond_1d
    return-void

    :catchall_1e
    move-exception v1

    .line 8
    :try_start_1f
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_1e

    throw v1
.end method

.method public k()V
    .registers 6

    .line 1
    iget-object v0, p0, Lma/g;->d:Lja/j;

    monitor-enter v0

    .line 2
    :try_start_3
    iget-object v1, p0, Lma/g;->j:Lma/c;

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 3
    invoke-direct {p0, v3, v2, v3}, Lma/g;->e(ZZZ)Ljava/net/Socket;

    move-result-object v2

    .line 4
    iget-object v3, p0, Lma/g;->j:Lma/c;

    const/4 v4, 0x0

    if-eqz v3, :cond_11

    move-object v1, v4

    .line 5
    :cond_11
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_2d

    .line 6
    invoke-static {v2}, Lka/c;->h(Ljava/net/Socket;)V

    if-eqz v1, :cond_2c

    .line 7
    sget-object v0, Lka/a;->a:Lka/a;

    iget-object v2, p0, Lma/g;->e:Lja/e;

    invoke-virtual {v0, v2, v4}, Lka/a;->k(Lja/e;Ljava/io/IOException;)Ljava/io/IOException;

    .line 8
    iget-object v0, p0, Lma/g;->f:Lja/p;

    iget-object v2, p0, Lma/g;->e:Lja/e;

    invoke-virtual {v0, v2, v1}, Lja/p;->h(Lja/e;Lja/i;)V

    .line 9
    iget-object v0, p0, Lma/g;->f:Lja/p;

    iget-object v1, p0, Lma/g;->e:Lja/e;

    invoke-virtual {v0, v1}, Lja/p;->a(Lja/e;)V

    :cond_2c
    return-void

    :catchall_2d
    move-exception v1

    .line 10
    :try_start_2e
    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_2e .. :try_end_2f} :catchall_2d

    throw v1
.end method

.method public m(Lma/c;)Ljava/net/Socket;
    .registers 5

    .line 1
    iget-object v0, p0, Lma/g;->n:Lna/c;

    if-nez v0, :cond_26

    iget-object v0, p0, Lma/g;->j:Lma/c;

    iget-object v0, v0, Lma/c;->n:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_26

    .line 2
    iget-object v0, p0, Lma/g;->j:Lma/c;

    iget-object v0, v0, Lma/c;->n:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/Reference;

    .line 3
    invoke-direct {p0, v1, v2, v2}, Lma/g;->e(ZZZ)Ljava/net/Socket;

    move-result-object v1

    .line 4
    iput-object p1, p0, Lma/g;->j:Lma/c;

    .line 5
    iget-object p1, p1, Lma/c;->n:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v1

    .line 6
    :cond_26
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public o()Lja/e0;
    .registers 2

    .line 1
    iget-object v0, p0, Lma/g;->c:Lja/e0;

    return-object v0
.end method

.method public q(Ljava/io/IOException;)V
    .registers 8

    .line 1
    iget-object v0, p0, Lma/g;->d:Lja/j;

    monitor-enter v0

    .line 2
    :try_start_3
    instance-of v1, p1, Lpa/n;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_23

    .line 3
    check-cast p1, Lpa/n;

    iget-object p1, p1, Lpa/n;->o:Lpa/b;

    .line 4
    sget-object v1, Lpa/b;->t:Lpa/b;

    if-ne p1, v1, :cond_1c

    .line 5
    iget p1, p0, Lma/g;->i:I

    add-int/2addr p1, v4

    iput p1, p0, Lma/g;->i:I

    if-le p1, v4, :cond_46

    .line 6
    iput-object v3, p0, Lma/g;->c:Lja/e0;

    goto :goto_44

    .line 7
    :cond_1c
    sget-object v1, Lpa/b;->u:Lpa/b;

    if-eq p1, v1, :cond_46

    .line 8
    iput-object v3, p0, Lma/g;->c:Lja/e0;

    goto :goto_44

    .line 9
    :cond_23
    iget-object v1, p0, Lma/g;->j:Lma/c;

    if-eqz v1, :cond_46

    .line 10
    invoke-virtual {v1}, Lma/c;->o()Z

    move-result v1

    if-eqz v1, :cond_31

    instance-of v1, p1, Lpa/a;

    if-eqz v1, :cond_46

    .line 11
    :cond_31
    iget-object v1, p0, Lma/g;->j:Lma/c;

    iget v1, v1, Lma/c;->l:I

    if-nez v1, :cond_44

    .line 12
    iget-object v1, p0, Lma/g;->c:Lja/e0;

    if-eqz v1, :cond_42

    if-eqz p1, :cond_42

    .line 13
    iget-object v5, p0, Lma/g;->h:Lma/f;

    invoke-virtual {v5, v1, p1}, Lma/f;->a(Lja/e0;Ljava/io/IOException;)V

    .line 14
    :cond_42
    iput-object v3, p0, Lma/g;->c:Lja/e0;

    :cond_44
    :goto_44
    const/4 p1, 0x1

    goto :goto_47

    :cond_46
    const/4 p1, 0x0

    .line 15
    :goto_47
    iget-object v1, p0, Lma/g;->j:Lma/c;

    .line 16
    invoke-direct {p0, p1, v2, v4}, Lma/g;->e(ZZZ)Ljava/net/Socket;

    move-result-object p1

    .line 17
    iget-object v2, p0, Lma/g;->j:Lma/c;

    if-nez v2, :cond_57

    iget-boolean v2, p0, Lma/g;->k:Z

    if-nez v2, :cond_56

    goto :goto_57

    :cond_56
    move-object v3, v1

    .line 18
    :cond_57
    :goto_57
    monitor-exit v0
    :try_end_58
    .catchall {:try_start_3 .. :try_end_58} :catchall_65

    .line 19
    invoke-static {p1}, Lka/c;->h(Ljava/net/Socket;)V

    if-eqz v3, :cond_64

    .line 20
    iget-object p1, p0, Lma/g;->f:Lja/p;

    iget-object v0, p0, Lma/g;->e:Lja/e;

    invoke-virtual {p1, v0, v3}, Lja/p;->h(Lja/e;Lja/i;)V

    :cond_64
    return-void

    :catchall_65
    move-exception p1

    .line 21
    :try_start_66
    monitor-exit v0
    :try_end_67
    .catchall {:try_start_66 .. :try_end_67} :catchall_65

    throw p1
.end method

.method public r(ZLna/c;JLjava/io/IOException;)V
    .registers 8

    .line 1
    iget-object v0, p0, Lma/g;->f:Lja/p;

    iget-object v1, p0, Lma/g;->e:Lja/e;

    invoke-virtual {v0, v1, p3, p4}, Lja/p;->p(Lja/e;J)V

    .line 2
    iget-object p3, p0, Lma/g;->d:Lja/j;

    monitor-enter p3

    if-eqz p2, :cond_59

    .line 3
    :try_start_c
    iget-object p4, p0, Lma/g;->n:Lna/c;

    if-ne p2, p4, :cond_59

    const/4 p2, 0x1

    if-nez p1, :cond_1a

    .line 4
    iget-object p4, p0, Lma/g;->j:Lma/c;

    iget v0, p4, Lma/c;->l:I

    add-int/2addr v0, p2

    iput v0, p4, Lma/c;->l:I

    .line 5
    :cond_1a
    iget-object p4, p0, Lma/g;->j:Lma/c;

    const/4 v0, 0x0

    .line 6
    invoke-direct {p0, p1, v0, p2}, Lma/g;->e(ZZZ)Ljava/net/Socket;

    move-result-object p1

    .line 7
    iget-object p2, p0, Lma/g;->j:Lma/c;

    const/4 v0, 0x0

    if-eqz p2, :cond_27

    move-object p4, v0

    .line 8
    :cond_27
    iget-boolean p2, p0, Lma/g;->l:Z

    .line 9
    monitor-exit p3
    :try_end_2a
    .catchall {:try_start_c .. :try_end_2a} :catchall_7a

    .line 10
    invoke-static {p1}, Lka/c;->h(Ljava/net/Socket;)V

    if-eqz p4, :cond_36

    .line 11
    iget-object p1, p0, Lma/g;->f:Lja/p;

    iget-object p3, p0, Lma/g;->e:Lja/e;

    invoke-virtual {p1, p3, p4}, Lja/p;->h(Lja/e;Lja/i;)V

    :cond_36
    if-eqz p5, :cond_48

    .line 12
    sget-object p1, Lka/a;->a:Lka/a;

    iget-object p2, p0, Lma/g;->e:Lja/e;

    invoke-virtual {p1, p2, p5}, Lka/a;->k(Lja/e;Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object p1

    .line 13
    iget-object p2, p0, Lma/g;->f:Lja/p;

    iget-object p3, p0, Lma/g;->e:Lja/e;

    invoke-virtual {p2, p3, p1}, Lja/p;->b(Lja/e;Ljava/io/IOException;)V

    goto :goto_58

    :cond_48
    if-eqz p2, :cond_58

    .line 14
    sget-object p1, Lka/a;->a:Lka/a;

    iget-object p2, p0, Lma/g;->e:Lja/e;

    invoke-virtual {p1, p2, v0}, Lka/a;->k(Lja/e;Ljava/io/IOException;)Ljava/io/IOException;

    .line 15
    iget-object p1, p0, Lma/g;->f:Lja/p;

    iget-object p2, p0, Lma/g;->e:Lja/e;

    invoke-virtual {p1, p2}, Lja/p;->a(Lja/e;)V

    :cond_58
    :goto_58
    return-void

    .line 16
    :cond_59
    :try_start_59
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "expected "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p5, p0, Lma/g;->n:Lna/c;

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p5, " but was "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_7a
    move-exception p1

    .line 17
    monitor-exit p3
    :try_end_7c
    .catchall {:try_start_59 .. :try_end_7c} :catchall_7a

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lma/g;->d()Lma/c;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 2
    invoke-virtual {v0}, Lma/c;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_11

    :cond_b
    iget-object v0, p0, Lma/g;->a:Lja/a;

    invoke-virtual {v0}, Lja/a;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_11
    return-object v0
.end method

###### Class ma.g.a (ma.g$a)
.class public final Lma/g$a;
.super Ljava/lang/ref/WeakReference;
.source "StreamAllocation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lma/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ref/WeakReference<",
        "Lma/g;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lma/g;Ljava/lang/Object;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 2
    iput-object p2, p0, Lma/g$a;->a:Ljava/lang/Object;

    return-void
.end method
