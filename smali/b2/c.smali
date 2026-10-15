###### Class b2.c (b2.c)
.class public Lb2/c;
.super Ljava/lang/Object;
.source "Engine.java"

# interfaces
.implements Lb2/e;
.implements Ld2/h$a;
.implements Lb2/h$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb2/c$a;,
        Lb2/c$d;,
        Lb2/c$e;,
        Lb2/c$b;,
        Lb2/c$c;
    }
.end annotation


# instance fields
.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lz1/c;",
            "Lb2/d;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lb2/g;

.field private final c:Ld2/h;

.field private final d:Lb2/c$a;

.field private final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lz1/c;",
            "Ljava/lang/ref/WeakReference<",
            "Lb2/h<",
            "*>;>;>;"
        }
    .end annotation
.end field

.field private final f:Lb2/m;

.field private final g:Lb2/c$b;

.field private h:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue<",
            "Lb2/h<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ld2/h;Ld2/a$a;Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/ExecutorService;)V
    .registers 15

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 1
    invoke-direct/range {v0 .. v9}, Lb2/c;-><init>(Ld2/h;Ld2/a$a;Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/ExecutorService;Ljava/util/Map;Lb2/g;Ljava/util/Map;Lb2/c$a;Lb2/m;)V

    return-void
.end method

.method constructor <init>(Ld2/h;Ld2/a$a;Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/ExecutorService;Ljava/util/Map;Lb2/g;Ljava/util/Map;Lb2/c$a;Lb2/m;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ld2/h;",
            "Ld2/a$a;",
            "Ljava/util/concurrent/ExecutorService;",
            "Ljava/util/concurrent/ExecutorService;",
            "Ljava/util/Map<",
            "Lz1/c;",
            "Lb2/d;",
            ">;",
            "Lb2/g;",
            "Ljava/util/Map<",
            "Lz1/c;",
            "Ljava/lang/ref/WeakReference<",
            "Lb2/h<",
            "*>;>;>;",
            "Lb2/c$a;",
            "Lb2/m;",
            ")V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lb2/c;->c:Ld2/h;

    .line 4
    new-instance v0, Lb2/c$b;

    invoke-direct {v0, p2}, Lb2/c$b;-><init>(Ld2/a$a;)V

    iput-object v0, p0, Lb2/c;->g:Lb2/c$b;

    if-nez p7, :cond_13

    .line 5
    new-instance p7, Ljava/util/HashMap;

    invoke-direct {p7}, Ljava/util/HashMap;-><init>()V

    .line 6
    :cond_13
    iput-object p7, p0, Lb2/c;->e:Ljava/util/Map;

    if-nez p6, :cond_1c

    .line 7
    new-instance p6, Lb2/g;

    invoke-direct {p6}, Lb2/g;-><init>()V

    .line 8
    :cond_1c
    iput-object p6, p0, Lb2/c;->b:Lb2/g;

    if-nez p5, :cond_25

    .line 9
    new-instance p5, Ljava/util/HashMap;

    invoke-direct {p5}, Ljava/util/HashMap;-><init>()V

    .line 10
    :cond_25
    iput-object p5, p0, Lb2/c;->a:Ljava/util/Map;

    if-nez p8, :cond_2e

    .line 11
    new-instance p8, Lb2/c$a;

    invoke-direct {p8, p3, p4, p0}, Lb2/c$a;-><init>(Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/ExecutorService;Lb2/e;)V

    .line 12
    :cond_2e
    iput-object p8, p0, Lb2/c;->d:Lb2/c$a;

    if-nez p9, :cond_37

    .line 13
    new-instance p9, Lb2/m;

    invoke-direct {p9}, Lb2/m;-><init>()V

    .line 14
    :cond_37
    iput-object p9, p0, Lb2/c;->f:Lb2/m;

    .line 15
    invoke-interface {p1, p0}, Ld2/h;->a(Ld2/h$a;)V

    return-void
.end method

.method private e(Lz1/c;)Lb2/h;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lz1/c;",
            ")",
            "Lb2/h<",
            "*>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lb2/c;->c:Ld2/h;

    invoke-interface {v0, p1}, Ld2/h;->e(Lz1/c;)Lb2/l;

    move-result-object p1

    if-nez p1, :cond_a

    const/4 p1, 0x0

    goto :goto_18

    .line 2
    :cond_a
    instance-of v0, p1, Lb2/h;

    if-eqz v0, :cond_11

    .line 3
    check-cast p1, Lb2/h;

    goto :goto_18

    .line 4
    :cond_11
    new-instance v0, Lb2/h;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Lb2/h;-><init>(Lb2/l;Z)V

    move-object p1, v0

    :goto_18
    return-object p1
.end method

.method private f()Ljava/lang/ref/ReferenceQueue;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/ref/ReferenceQueue<",
            "Lb2/h<",
            "*>;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lb2/c;->h:Ljava/lang/ref/ReferenceQueue;

    if-nez v0, :cond_1b

    .line 2
    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object v0, p0, Lb2/c;->h:Ljava/lang/ref/ReferenceQueue;

    .line 3
    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v0

    .line 4
    new-instance v1, Lb2/c$d;

    iget-object v2, p0, Lb2/c;->e:Ljava/util/Map;

    iget-object v3, p0, Lb2/c;->h:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v1, v2, v3}, Lb2/c$d;-><init>(Ljava/util/Map;Ljava/lang/ref/ReferenceQueue;)V

    invoke-virtual {v0, v1}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    .line 5
    :cond_1b
    iget-object v0, p0, Lb2/c;->h:Ljava/lang/ref/ReferenceQueue;

    return-object v0
.end method

.method private h(Lz1/c;Z)Lb2/h;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lz1/c;",
            "Z)",
            "Lb2/h<",
            "*>;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p2, :cond_4

    return-object v0

    .line 1
    :cond_4
    iget-object p2, p0, Lb2/c;->e:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/ref/WeakReference;

    if-eqz p2, :cond_20

    .line 2
    invoke-virtual {p2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Lb2/h;

    if-eqz v0, :cond_1b

    .line 3
    invoke-virtual {v0}, Lb2/h;->a()V

    goto :goto_20

    .line 4
    :cond_1b
    iget-object p2, p0, Lb2/c;->e:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_20
    :goto_20
    return-object v0
.end method

.method private i(Lz1/c;Z)Lb2/h;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lz1/c;",
            "Z)",
            "Lb2/h<",
            "*>;"
        }
    .end annotation

    if-nez p2, :cond_4

    const/4 p1, 0x0

    return-object p1

    .line 1
    :cond_4
    invoke-direct {p0, p1}, Lb2/c;->e(Lz1/c;)Lb2/h;

    move-result-object p2

    if-eqz p2, :cond_1b

    .line 2
    invoke-virtual {p2}, Lb2/h;->a()V

    .line 3
    iget-object v0, p0, Lb2/c;->e:Ljava/util/Map;

    new-instance v1, Lb2/c$e;

    invoke-direct {p0}, Lb2/c;->f()Ljava/lang/ref/ReferenceQueue;

    move-result-object v2

    invoke-direct {v1, p1, p2, v2}, Lb2/c$e;-><init>(Lz1/c;Lb2/h;Ljava/lang/ref/ReferenceQueue;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1b
    return-object p2
.end method

.method private static j(Ljava/lang/String;JLz1/c;)V
    .registers 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " in "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1, p2}, Lx2/d;->a(J)D

    move-result-wide p0

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string p0, "ms, key: "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Engine"

    invoke-static {p1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public a(Lz1/c;Lb2/h;)V
    .registers 4

    .line 1
    invoke-static {}, Lx2/h;->b()V

    .line 2
    iget-object v0, p0, Lb2/c;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-virtual {p2}, Lb2/h;->d()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 4
    iget-object v0, p0, Lb2/c;->c:Ld2/h;

    invoke-interface {v0, p1, p2}, Ld2/h;->b(Lz1/c;Lb2/l;)Lb2/l;

    goto :goto_19

    .line 5
    :cond_14
    iget-object p1, p0, Lb2/c;->f:Lb2/m;

    invoke-virtual {p1, p2}, Lb2/m;->a(Lb2/l;)V

    :goto_19
    return-void
.end method

.method public b(Lb2/d;Lz1/c;)V
    .registers 4

    .line 1
    invoke-static {}, Lx2/h;->b()V

    .line 2
    iget-object v0, p0, Lb2/c;->a:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb2/d;

    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_16

    .line 4
    iget-object p1, p0, Lb2/c;->a:Ljava/util/Map;

    invoke-interface {p1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_16
    return-void
.end method

.method public c(Lb2/l;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb2/l<",
            "*>;)V"
        }
    .end annotation

    .line 1
    invoke-static {}, Lx2/h;->b()V

    .line 2
    iget-object v0, p0, Lb2/c;->f:Lb2/m;

    invoke-virtual {v0, p1}, Lb2/m;->a(Lb2/l;)V

    return-void
.end method

.method public d(Lz1/c;Lb2/h;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lz1/c;",
            "Lb2/h<",
            "*>;)V"
        }
    .end annotation

    .line 1
    invoke-static {}, Lx2/h;->b()V

    if-eqz p2, :cond_1c

    .line 2
    invoke-virtual {p2, p1, p0}, Lb2/h;->f(Lz1/c;Lb2/h$a;)V

    .line 3
    invoke-virtual {p2}, Lb2/h;->d()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 4
    iget-object v0, p0, Lb2/c;->e:Ljava/util/Map;

    new-instance v1, Lb2/c$e;

    invoke-direct {p0}, Lb2/c;->f()Ljava/lang/ref/ReferenceQueue;

    move-result-object v2

    invoke-direct {v1, p1, p2, v2}, Lb2/c$e;-><init>(Lz1/c;Lb2/h;Ljava/lang/ref/ReferenceQueue;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    :cond_1c
    iget-object p2, p0, Lb2/c;->a:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public g(Lz1/c;IILa2/c;Ls2/b;Lz1/g;Lp2/c;Lv1/i;ZLb2/b;Lt2/g;)Lb2/c$c;
    .registers 39
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "Z:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lz1/c;",
            "II",
            "La2/c<",
            "TT;>;",
            "Ls2/b<",
            "TT;TZ;>;",
            "Lz1/g<",
            "TZ;>;",
            "Lp2/c<",
            "TZ;TR;>;",
            "Lv1/i;",
            "Z",
            "Lb2/b;",
            "Lt2/g;",
            ")",
            "Lb2/c$c;"
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p9

    move-object/from16 v2, p11

    .line 1
    invoke-static {}, Lx2/h;->b()V

    .line 2
    invoke-static {}, Lx2/d;->b()J

    move-result-wide v3

    .line 3
    invoke-interface/range {p4 .. p4}, La2/c;->a()Ljava/lang/String;

    move-result-object v6

    .line 4
    iget-object v5, v0, Lb2/c;->b:Lb2/g;

    invoke-interface/range {p5 .. p5}, Ls2/b;->g()Lz1/e;

    move-result-object v10

    invoke-interface/range {p5 .. p5}, Ls2/b;->f()Lz1/e;

    move-result-object v11

    invoke-interface/range {p5 .. p5}, Ls2/b;->d()Lz1/f;

    move-result-object v13

    invoke-interface/range {p5 .. p5}, Ls2/b;->a()Lz1/b;

    move-result-object v15

    move-object/from16 v7, p1

    move/from16 v8, p2

    move/from16 v9, p3

    move-object/from16 v12, p6

    move-object/from16 v14, p7

    invoke-virtual/range {v5 .. v15}, Lb2/g;->a(Ljava/lang/String;Lz1/c;IILz1/e;Lz1/e;Lz1/g;Lz1/f;Lp2/c;Lz1/b;)Lb2/f;

    move-result-object v5

    .line 5
    invoke-direct {v0, v5, v1}, Lb2/c;->i(Lz1/c;Z)Lb2/h;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x2

    const-string v9, "Engine"

    if-eqz v6, :cond_4a

    .line 6
    invoke-interface {v2, v6}, Lt2/g;->d(Lb2/l;)V

    .line 7
    invoke-static {v9, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_49

    const-string v1, "Loaded resource from cache"

    .line 8
    invoke-static {v1, v3, v4, v5}, Lb2/c;->j(Ljava/lang/String;JLz1/c;)V

    :cond_49
    return-object v7

    .line 9
    :cond_4a
    invoke-direct {v0, v5, v1}, Lb2/c;->h(Lz1/c;Z)Lb2/h;

    move-result-object v6

    if-eqz v6, :cond_5f

    .line 10
    invoke-interface {v2, v6}, Lt2/g;->d(Lb2/l;)V

    .line 11
    invoke-static {v9, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_5e

    const-string v1, "Loaded resource from active resources"

    .line 12
    invoke-static {v1, v3, v4, v5}, Lb2/c;->j(Ljava/lang/String;JLz1/c;)V

    :cond_5e
    return-object v7

    .line 13
    :cond_5f
    iget-object v6, v0, Lb2/c;->a:Ljava/util/Map;

    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lb2/d;

    if-eqz v6, :cond_7d

    .line 14
    invoke-virtual {v6, v2}, Lb2/d;->f(Lt2/g;)V

    .line 15
    invoke-static {v9, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_77

    const-string v1, "Added to existing load"

    .line 16
    invoke-static {v1, v3, v4, v5}, Lb2/c;->j(Ljava/lang/String;JLz1/c;)V

    .line 17
    :cond_77
    new-instance v1, Lb2/c$c;

    invoke-direct {v1, v2, v6}, Lb2/c$c;-><init>(Lt2/g;Lb2/d;)V

    return-object v1

    .line 18
    :cond_7d
    iget-object v6, v0, Lb2/c;->d:Lb2/c$a;

    invoke-virtual {v6, v5, v1}, Lb2/c$a;->a(Lz1/c;Z)Lb2/d;

    move-result-object v1

    .line 19
    new-instance v6, Lb2/a;

    iget-object v7, v0, Lb2/c;->g:Lb2/c$b;

    move-object/from16 v16, v6

    move-object/from16 v17, v5

    move/from16 v18, p2

    move/from16 v19, p3

    move-object/from16 v20, p4

    move-object/from16 v21, p5

    move-object/from16 v22, p6

    move-object/from16 v23, p7

    move-object/from16 v24, v7

    move-object/from16 v25, p10

    move-object/from16 v26, p8

    invoke-direct/range {v16 .. v26}, Lb2/a;-><init>(Lb2/f;IILa2/c;Ls2/b;Lz1/g;Lp2/c;Lb2/a$a;Lb2/b;Lv1/i;)V

    .line 20
    new-instance v7, Lb2/i;

    move-object/from16 v10, p8

    invoke-direct {v7, v1, v6, v10}, Lb2/i;-><init>(Lb2/i$a;Lb2/a;Lv1/i;)V

    .line 21
    iget-object v6, v0, Lb2/c;->a:Ljava/util/Map;

    invoke-interface {v6, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    invoke-virtual {v1, v2}, Lb2/d;->f(Lt2/g;)V

    .line 23
    invoke-virtual {v1, v7}, Lb2/d;->m(Lb2/i;)V

    .line 24
    invoke-static {v9, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_bd

    const-string v6, "Started new load"

    .line 25
    invoke-static {v6, v3, v4, v5}, Lb2/c;->j(Ljava/lang/String;JLz1/c;)V

    .line 26
    :cond_bd
    new-instance v3, Lb2/c$c;

    invoke-direct {v3, v2, v1}, Lb2/c$c;-><init>(Lt2/g;Lb2/d;)V

    return-object v3
.end method

.method public k(Lb2/l;)V
    .registers 3

    .line 1
    invoke-static {}, Lx2/h;->b()V

    .line 2
    instance-of v0, p1, Lb2/h;

    if-eqz v0, :cond_d

    .line 3
    check-cast p1, Lb2/h;

    invoke-virtual {p1}, Lb2/h;->e()V

    return-void

    .line 4
    :cond_d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Cannot release anything but an EngineResource"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

###### Class b2.c.a (b2.c$a)
.class Lb2/c$a;
.super Ljava/lang/Object;
.source "Engine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb2/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private final a:Ljava/util/concurrent/ExecutorService;

.field private final b:Ljava/util/concurrent/ExecutorService;

.field private final c:Lb2/e;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/ExecutorService;Lb2/e;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lb2/c$a;->a:Ljava/util/concurrent/ExecutorService;

    .line 3
    iput-object p2, p0, Lb2/c$a;->b:Ljava/util/concurrent/ExecutorService;

    .line 4
    iput-object p3, p0, Lb2/c$a;->c:Lb2/e;

    return-void
.end method


# virtual methods
.method public a(Lz1/c;Z)Lb2/d;
    .registers 10

    .line 1
    new-instance v6, Lb2/d;

    iget-object v2, p0, Lb2/c$a;->a:Ljava/util/concurrent/ExecutorService;

    iget-object v3, p0, Lb2/c$a;->b:Ljava/util/concurrent/ExecutorService;

    iget-object v5, p0, Lb2/c$a;->c:Lb2/e;

    move-object v0, v6

    move-object v1, p1

    move v4, p2

    invoke-direct/range {v0 .. v5}, Lb2/d;-><init>(Lz1/c;Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/ExecutorService;ZLb2/e;)V

    return-object v6
.end method

###### Class b2.c.b (b2.c$b)
.class Lb2/c$b;
.super Ljava/lang/Object;
.source "Engine.java"

# interfaces
.implements Lb2/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb2/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field private final a:Ld2/a$a;

.field private volatile b:Ld2/a;


# direct methods
.method public constructor <init>(Ld2/a$a;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lb2/c$b;->a:Ld2/a$a;

    return-void
.end method


# virtual methods
.method public a()Ld2/a;
    .registers 2

    .line 1
    iget-object v0, p0, Lb2/c$b;->b:Ld2/a;

    if-nez v0, :cond_21

    .line 2
    monitor-enter p0

    .line 3
    :try_start_5
    iget-object v0, p0, Lb2/c$b;->b:Ld2/a;

    if-nez v0, :cond_11

    .line 4
    iget-object v0, p0, Lb2/c$b;->a:Ld2/a$a;

    invoke-interface {v0}, Ld2/a$a;->build()Ld2/a;

    move-result-object v0

    iput-object v0, p0, Lb2/c$b;->b:Ld2/a;

    .line 5
    :cond_11
    iget-object v0, p0, Lb2/c$b;->b:Ld2/a;

    if-nez v0, :cond_1c

    .line 6
    new-instance v0, Ld2/b;

    invoke-direct {v0}, Ld2/b;-><init>()V

    iput-object v0, p0, Lb2/c$b;->b:Ld2/a;

    .line 7
    :cond_1c
    monitor-exit p0

    goto :goto_21

    :catchall_1e
    move-exception v0

    monitor-exit p0
    :try_end_20
    .catchall {:try_start_5 .. :try_end_20} :catchall_1e

    throw v0

    .line 8
    :cond_21
    :goto_21
    iget-object v0, p0, Lb2/c$b;->b:Ld2/a;

    return-object v0
.end method

###### Class b2.c.C0081c (b2.c$c)
.class public Lb2/c$c;
.super Ljava/lang/Object;
.source "Engine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb2/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field private final a:Lb2/d;

.field private final b:Lt2/g;


# direct methods
.method public constructor <init>(Lt2/g;Lb2/d;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lb2/c$c;->b:Lt2/g;

    .line 3
    iput-object p2, p0, Lb2/c$c;->a:Lb2/d;

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    .line 1
    iget-object v0, p0, Lb2/c$c;->a:Lb2/d;

    iget-object v1, p0, Lb2/c$c;->b:Lt2/g;

    invoke-virtual {v0, v1}, Lb2/d;->l(Lt2/g;)V

    return-void
.end method

###### Class b2.c.d (b2.c$d)
.class Lb2/c$d;
.super Ljava/lang/Object;
.source "Engine.java"

# interfaces
.implements Landroid/os/MessageQueue$IdleHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb2/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "d"
.end annotation


# instance fields
.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lz1/c;",
            "Ljava/lang/ref/WeakReference<",
            "Lb2/h<",
            "*>;>;>;"
        }
    .end annotation
.end field

.field private final b:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue<",
            "Lb2/h<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Map;Ljava/lang/ref/ReferenceQueue;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lz1/c;",
            "Ljava/lang/ref/WeakReference<",
            "Lb2/h<",
            "*>;>;>;",
            "Ljava/lang/ref/ReferenceQueue<",
            "Lb2/h<",
            "*>;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lb2/c$d;->a:Ljava/util/Map;

    .line 3
    iput-object p2, p0, Lb2/c$d;->b:Ljava/lang/ref/ReferenceQueue;

    return-void
.end method


# virtual methods
.method public queueIdle()Z
    .registers 3

    .line 1
    iget-object v0, p0, Lb2/c$d;->b:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    check-cast v0, Lb2/c$e;

    if-eqz v0, :cond_13

    .line 2
    iget-object v1, p0, Lb2/c$d;->a:Ljava/util/Map;

    invoke-static {v0}, Lb2/c$e;->a(Lb2/c$e;)Lz1/c;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_13
    const/4 v0, 0x1

    return v0
.end method

###### Class b2.c.e (b2.c$e)
.class Lb2/c$e;
.super Ljava/lang/ref/WeakReference;
.source "Engine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb2/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ref/WeakReference<",
        "Lb2/h<",
        "*>;>;"
    }
.end annotation


# instance fields
.field private final a:Lz1/c;


# direct methods
.method public constructor <init>(Lz1/c;Lb2/h;Ljava/lang/ref/ReferenceQueue;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lz1/c;",
            "Lb2/h<",
            "*>;",
            "Ljava/lang/ref/ReferenceQueue<",
            "-",
            "Lb2/h<",
            "*>;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p2, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    .line 2
    iput-object p1, p0, Lb2/c$e;->a:Lz1/c;

    return-void
.end method

.method static synthetic a(Lb2/c$e;)Lz1/c;
    .registers 1

    .line 1
    iget-object p0, p0, Lb2/c$e;->a:Lz1/c;

    return-object p0
.end method
