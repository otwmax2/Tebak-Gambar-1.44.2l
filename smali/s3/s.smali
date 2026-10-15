###### Class s3.s (s3.s)
.class public Ls3/s;
.super Ljava/lang/Object;
.source "Uploader.java"


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lm3/e;

.field private final c:Lt3/d;

.field private final d:Ls3/y;

.field private final e:Ljava/util/concurrent/Executor;

.field private final f:Lu3/b;

.field private final g:Lv3/a;

.field private final h:Lv3/a;

.field private final i:Lt3/c;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lm3/e;Lt3/d;Ls3/y;Ljava/util/concurrent/Executor;Lu3/b;Lv3/a;Lv3/a;Lt3/c;)V
    .registers 10
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Ls3/s;->a:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Ls3/s;->b:Lm3/e;

    .line 4
    iput-object p3, p0, Ls3/s;->c:Lt3/d;

    .line 5
    iput-object p4, p0, Ls3/s;->d:Ls3/y;

    .line 6
    iput-object p5, p0, Ls3/s;->e:Ljava/util/concurrent/Executor;

    .line 7
    iput-object p6, p0, Ls3/s;->f:Lu3/b;

    .line 8
    iput-object p7, p0, Ls3/s;->g:Lv3/a;

    .line 9
    iput-object p8, p0, Ls3/s;->h:Lv3/a;

    .line 10
    iput-object p9, p0, Ls3/s;->i:Lt3/c;

    return-void
.end method

.method public static synthetic a(Ls3/s;Ll3/p;ILjava/lang/Runnable;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Ls3/s;->t(Ll3/p;ILjava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic b(Ls3/s;Ll3/p;)Ljava/lang/Boolean;
    .registers 2

    invoke-direct {p0, p1}, Ls3/s;->l(Ll3/p;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Ls3/s;Ljava/util/Map;)Ljava/lang/Object;
    .registers 2

    invoke-direct {p0, p1}, Ls3/s;->q(Ljava/util/Map;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Ls3/s;Ll3/p;)Ljava/lang/Iterable;
    .registers 2

    invoke-direct {p0, p1}, Ls3/s;->m(Ll3/p;)Ljava/lang/Iterable;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic e(Ls3/s;Ljava/lang/Iterable;Ll3/p;J)Ljava/lang/Object;
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Ls3/s;->n(Ljava/lang/Iterable;Ll3/p;J)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic f(Ls3/s;Ll3/p;J)Ljava/lang/Object;
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Ls3/s;->r(Ll3/p;J)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic g(Ls3/s;Ljava/lang/Iterable;)Ljava/lang/Object;
    .registers 2

    invoke-direct {p0, p1}, Ls3/s;->o(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic h(Ls3/s;Ll3/p;I)Ljava/lang/Object;
    .registers 3

    invoke-direct {p0, p1, p2}, Ls3/s;->s(Ll3/p;I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic i(Ls3/s;)Ljava/lang/Object;
    .registers 1

    invoke-direct {p0}, Ls3/s;->p()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private synthetic l(Ll3/p;)Ljava/lang/Boolean;
    .registers 3

    .line 1
    iget-object v0, p0, Ls3/s;->c:Lt3/d;

    invoke-interface {v0, p1}, Lt3/d;->b2(Ll3/p;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method private synthetic m(Ll3/p;)Ljava/lang/Iterable;
    .registers 3

    .line 1
    iget-object v0, p0, Ls3/s;->c:Lt3/d;

    invoke-interface {v0, p1}, Lt3/d;->V0(Ll3/p;)Ljava/lang/Iterable;

    move-result-object p1

    return-object p1
.end method

.method private synthetic n(Ljava/lang/Iterable;Ll3/p;J)Ljava/lang/Object;
    .registers 7

    .line 1
    iget-object v0, p0, Ls3/s;->c:Lt3/d;

    invoke-interface {v0, p1}, Lt3/d;->s3(Ljava/lang/Iterable;)V

    .line 2
    iget-object p1, p0, Ls3/s;->c:Lt3/d;

    iget-object v0, p0, Ls3/s;->g:Lv3/a;

    .line 3
    invoke-interface {v0}, Lv3/a;->a()J

    move-result-wide v0

    add-long/2addr v0, p3

    .line 4
    invoke-interface {p1, p2, v0, v1}, Lt3/d;->o0(Ll3/p;J)V

    const/4 p1, 0x0

    return-object p1
.end method

.method private synthetic o(Ljava/lang/Iterable;)Ljava/lang/Object;
    .registers 3

    .line 1
    iget-object v0, p0, Ls3/s;->c:Lt3/d;

    invoke-interface {v0, p1}, Lt3/d;->b0(Ljava/lang/Iterable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method private synthetic p()Ljava/lang/Object;
    .registers 2

    .line 1
    iget-object v0, p0, Ls3/s;->i:Lt3/c;

    invoke-interface {v0}, Lt3/c;->c()V

    const/4 v0, 0x0

    return-object v0
.end method

.method private synthetic q(Ljava/util/Map;)Ljava/lang/Object;
    .registers 7

    .line 1
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_8
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 2
    iget-object v1, p0, Ls3/s;->i:Lt3/c;

    .line 3
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-long v2, v2

    sget-object v4, Lo3/c$b;->u:Lo3/c$b;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 4
    invoke-interface {v1, v2, v3, v4, v0}, Lt3/c;->e(JLo3/c$b;Ljava/lang/String;)V

    goto :goto_8

    :cond_2d
    const/4 p1, 0x0

    return-object p1
.end method

.method private synthetic r(Ll3/p;J)Ljava/lang/Object;
    .registers 7

    .line 1
    iget-object v0, p0, Ls3/s;->c:Lt3/d;

    iget-object v1, p0, Ls3/s;->g:Lv3/a;

    .line 2
    invoke-interface {v1}, Lv3/a;->a()J

    move-result-wide v1

    add-long/2addr v1, p2

    .line 3
    invoke-interface {v0, p1, v1, v2}, Lt3/d;->o0(Ll3/p;J)V

    const/4 p1, 0x0

    return-object p1
.end method

.method private synthetic s(Ll3/p;I)Ljava/lang/Object;
    .registers 4

    .line 1
    iget-object v0, p0, Ls3/s;->d:Ls3/y;

    add-int/lit8 p2, p2, 0x1

    invoke-interface {v0, p1, p2}, Ls3/y;->b(Ll3/p;I)V

    const/4 p1, 0x0

    return-object p1
.end method

.method private synthetic t(Ll3/p;ILjava/lang/Runnable;)V
    .registers 7

    .line 1
    :try_start_0
    iget-object v0, p0, Ls3/s;->f:Lu3/b;

    iget-object v1, p0, Ls3/s;->c:Lt3/d;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Ls3/i;

    invoke-direct {v2, v1}, Ls3/i;-><init>(Lt3/d;)V

    invoke-interface {v0, v2}, Lu3/b;->b(Lu3/b$a;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p0}, Ls3/s;->k()Z

    move-result v0

    if-nez v0, :cond_20

    .line 3
    iget-object v0, p0, Ls3/s;->f:Lu3/b;

    new-instance v1, Ls3/p;

    invoke-direct {v1, p0, p1, p2}, Ls3/p;-><init>(Ls3/s;Ll3/p;I)V

    invoke-interface {v0, v1}, Lu3/b;->b(Lu3/b$a;)Ljava/lang/Object;

    goto :goto_2d

    .line 4
    :cond_20
    invoke-virtual {p0, p1, p2}, Ls3/s;->u(Ll3/p;I)Lm3/g;
    :try_end_23
    .catch Lu3/a; {:try_start_0 .. :try_end_23} :catch_26
    .catchall {:try_start_0 .. :try_end_23} :catchall_24

    goto :goto_2d

    :catchall_24
    move-exception p1

    goto :goto_31

    .line 5
    :catch_26
    :try_start_26
    iget-object v0, p0, Ls3/s;->d:Ls3/y;

    add-int/lit8 p2, p2, 0x1

    invoke-interface {v0, p1, p2}, Ls3/y;->b(Ll3/p;I)V
    :try_end_2d
    .catchall {:try_start_26 .. :try_end_2d} :catchall_24

    .line 6
    :goto_2d
    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    return-void

    :goto_31
    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    .line 7
    throw p1
.end method


# virtual methods
.method public j(Lm3/m;)Ll3/i;
    .registers 6

    .line 1
    iget-object v0, p0, Ls3/s;->f:Lu3/b;

    iget-object v1, p0, Ls3/s;->i:Lt3/c;

    .line 2
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Ls3/r;

    invoke-direct {v2, v1}, Ls3/r;-><init>(Lt3/c;)V

    invoke-interface {v0, v2}, Lu3/b;->b(Lu3/b$a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo3/a;

    .line 3
    invoke-static {}, Ll3/i;->a()Ll3/i$a;

    move-result-object v1

    iget-object v2, p0, Ls3/s;->g:Lv3/a;

    .line 4
    invoke-interface {v2}, Lv3/a;->a()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ll3/i$a;->i(J)Ll3/i$a;

    move-result-object v1

    iget-object v2, p0, Ls3/s;->h:Lv3/a;

    .line 5
    invoke-interface {v2}, Lv3/a;->a()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ll3/i$a;->k(J)Ll3/i$a;

    move-result-object v1

    const-string v2, "GDT_CLIENT_METRICS"

    .line 6
    invoke-virtual {v1, v2}, Ll3/i$a;->j(Ljava/lang/String;)Ll3/i$a;

    move-result-object v1

    new-instance v2, Ll3/h;

    const-string v3, "proto"

    .line 7
    invoke-static {v3}, Lj3/b;->b(Ljava/lang/String;)Lj3/b;

    move-result-object v3

    invoke-virtual {v0}, Lo3/a;->f()[B

    move-result-object v0

    invoke-direct {v2, v3, v0}, Ll3/h;-><init>(Lj3/b;[B)V

    .line 8
    invoke-virtual {v1, v2}, Ll3/i$a;->h(Ll3/h;)Ll3/i$a;

    move-result-object v0

    .line 9
    invoke-virtual {v0}, Ll3/i$a;->d()Ll3/i;

    move-result-object v0

    .line 10
    invoke-interface {p1, v0}, Lm3/m;->a(Ll3/i;)Ll3/i;

    move-result-object p1

    return-object p1
.end method

.method k()Z
    .registers 3

    .line 1
    iget-object v0, p0, Ls3/s;->a:Landroid/content/Context;

    const-string v1, "connectivity"

    .line 2
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 3
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 4
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_18

    const/4 v0, 0x1

    goto :goto_19

    :cond_18
    const/4 v0, 0x0

    :goto_19
    return v0
.end method

.method public u(Ll3/p;I)Lm3/g;
    .registers 14

    .line 1
    iget-object v0, p0, Ls3/s;->b:Lm3/e;

    invoke-virtual {p1}, Ll3/p;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lm3/e;->a(Ljava/lang/String;)Lm3/m;

    move-result-object v0

    const-wide/16 v1, 0x0

    .line 2
    invoke-static {v1, v2}, Lm3/g;->e(J)Lm3/g;

    move-result-object v3

    :cond_10
    :goto_10
    move-wide v8, v1

    .line 3
    :cond_11
    :goto_11
    iget-object v1, p0, Ls3/s;->f:Lu3/b;

    new-instance v2, Ls3/n;

    invoke-direct {v2, p0, p1}, Ls3/n;-><init>(Ls3/s;Ll3/p;)V

    invoke-interface {v1, v2}, Lu3/b;->b(Lu3/b$a;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_12a

    .line 4
    iget-object v1, p0, Ls3/s;->f:Lu3/b;

    new-instance v2, Ls3/o;

    invoke-direct {v2, p0, p1}, Ls3/o;-><init>(Ls3/s;Ll3/p;)V

    .line 5
    invoke-interface {v1, v2}, Lu3/b;->b(Lu3/b$a;)Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Ljava/lang/Iterable;

    .line 6
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_3d

    return-object v3

    :cond_3d
    if-nez v0, :cond_4c

    const-string v1, "Uploader"

    const-string v2, "Unknown backend for %s, deleting event batch for it..."

    .line 7
    invoke-static {v1, v2, p1}, Lp3/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 8
    invoke-static {}, Lm3/g;->a()Lm3/g;

    move-result-object v1

    :goto_4a
    move-object v3, v1

    goto :goto_8f

    .line 9
    :cond_4c
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 10
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_55
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_69

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lt3/k;

    .line 11
    invoke-virtual {v3}, Lt3/k;->b()Ll3/i;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_55

    .line 12
    :cond_69
    invoke-virtual {p1}, Ll3/p;->e()Z

    move-result v2

    if-eqz v2, :cond_76

    .line 13
    invoke-virtual {p0, v0}, Ls3/s;->j(Lm3/m;)Ll3/i;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 14
    :cond_76
    invoke-static {}, Lm3/f;->a()Lm3/f$a;

    move-result-object v2

    .line 15
    invoke-virtual {v2, v1}, Lm3/f$a;->b(Ljava/lang/Iterable;)Lm3/f$a;

    move-result-object v1

    .line 16
    invoke-virtual {p1}, Ll3/p;->c()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lm3/f$a;->c([B)Lm3/f$a;

    move-result-object v1

    .line 17
    invoke-virtual {v1}, Lm3/f$a;->a()Lm3/f;

    move-result-object v1

    .line 18
    invoke-interface {v0, v1}, Lm3/m;->b(Lm3/f;)Lm3/g;

    move-result-object v1

    goto :goto_4a

    .line 19
    :goto_8f
    invoke-virtual {v3}, Lm3/g;->c()Lm3/g$a;

    move-result-object v1

    sget-object v2, Lm3/g$a;->p:Lm3/g$a;

    const/4 v10, 0x1

    if-ne v1, v2, :cond_ac

    .line 20
    iget-object v0, p0, Ls3/s;->f:Lu3/b;

    new-instance v1, Ls3/l;

    move-object v4, v1

    move-object v5, p0

    move-object v7, p1

    invoke-direct/range {v4 .. v9}, Ls3/l;-><init>(Ls3/s;Ljava/lang/Iterable;Ll3/p;J)V

    invoke-interface {v0, v1}, Lu3/b;->b(Lu3/b$a;)Ljava/lang/Object;

    .line 21
    iget-object v0, p0, Ls3/s;->d:Ls3/y;

    add-int/2addr p2, v10

    invoke-interface {v0, p1, p2, v10}, Ls3/y;->a(Ll3/p;IZ)V

    return-object v3

    .line 22
    :cond_ac
    iget-object v1, p0, Ls3/s;->f:Lu3/b;

    new-instance v2, Ls3/k;

    invoke-direct {v2, p0, v6}, Ls3/k;-><init>(Ls3/s;Ljava/lang/Iterable;)V

    invoke-interface {v1, v2}, Lu3/b;->b(Lu3/b$a;)Ljava/lang/Object;

    .line 23
    invoke-virtual {v3}, Lm3/g;->c()Lm3/g$a;

    move-result-object v1

    sget-object v2, Lm3/g$a;->o:Lm3/g$a;

    if-ne v1, v2, :cond_d8

    .line 24
    invoke-virtual {v3}, Lm3/g;->b()J

    move-result-wide v1

    invoke-static {v8, v9, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    .line 25
    invoke-virtual {p1}, Ll3/p;->e()Z

    move-result v4

    if-eqz v4, :cond_10

    .line 26
    iget-object v4, p0, Ls3/s;->f:Lu3/b;

    new-instance v5, Ls3/j;

    invoke-direct {v5, p0}, Ls3/j;-><init>(Ls3/s;)V

    invoke-interface {v4, v5}, Lu3/b;->b(Lu3/b$a;)Ljava/lang/Object;

    goto/16 :goto_10

    .line 27
    :cond_d8
    invoke-virtual {v3}, Lm3/g;->c()Lm3/g$a;

    move-result-object v1

    sget-object v2, Lm3/g$a;->r:Lm3/g$a;

    if-ne v1, v2, :cond_11

    .line 28
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 29
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_e9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_11e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lt3/k;

    .line 30
    invoke-virtual {v4}, Lt3/k;->b()Ll3/i;

    move-result-object v4

    invoke-virtual {v4}, Ll3/i;->j()Ljava/lang/String;

    move-result-object v4

    .line 31
    invoke-interface {v1, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_10b

    .line 32
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_e9

    .line 33
    :cond_10b
    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    add-int/2addr v5, v10

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_e9

    .line 34
    :cond_11e
    iget-object v2, p0, Ls3/s;->f:Lu3/b;

    new-instance v4, Ls3/m;

    invoke-direct {v4, p0, v1}, Ls3/m;-><init>(Ls3/s;Ljava/util/Map;)V

    invoke-interface {v2, v4}, Lu3/b;->b(Lu3/b$a;)Ljava/lang/Object;

    goto/16 :goto_11

    .line 35
    :cond_12a
    iget-object p2, p0, Ls3/s;->f:Lu3/b;

    new-instance v0, Ls3/q;

    invoke-direct {v0, p0, p1, v8, v9}, Ls3/q;-><init>(Ls3/s;Ll3/p;J)V

    invoke-interface {p2, v0}, Lu3/b;->b(Lu3/b$a;)Ljava/lang/Object;

    return-object v3
.end method

.method public v(Ll3/p;ILjava/lang/Runnable;)V
    .registers 6

    .line 1
    iget-object v0, p0, Ls3/s;->e:Ljava/util/concurrent/Executor;

    new-instance v1, Ls3/h;

    invoke-direct {v1, p0, p1, p2, p3}, Ls3/h;-><init>(Ls3/s;Ll3/p;ILjava/lang/Runnable;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

###### Class s3.h (s3.h)
.class public final synthetic Ls3/h;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic o:Ls3/s;

.field public final synthetic p:Ll3/p;

.field public final synthetic q:I

.field public final synthetic r:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Ls3/s;Ll3/p;ILjava/lang/Runnable;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ls3/h;->o:Ls3/s;

    iput-object p2, p0, Ls3/h;->p:Ll3/p;

    iput p3, p0, Ls3/h;->q:I

    iput-object p4, p0, Ls3/h;->r:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    iget-object v0, p0, Ls3/h;->o:Ls3/s;

    iget-object v1, p0, Ls3/h;->p:Ll3/p;

    iget v2, p0, Ls3/h;->q:I

    iget-object v3, p0, Ls3/h;->r:Ljava/lang/Runnable;

    invoke-static {v0, v1, v2, v3}, Ls3/s;->a(Ls3/s;Ll3/p;ILjava/lang/Runnable;)V

    return-void
.end method

###### Class s3.i (s3.i)
.class public final synthetic Ls3/i;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lu3/b$a;


# instance fields
.field public final synthetic a:Lt3/d;


# direct methods
.method public synthetic constructor <init>(Lt3/d;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ls3/i;->a:Lt3/d;

    return-void
.end method


# virtual methods
.method public final execute()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Ls3/i;->a:Lt3/d;

    invoke-interface {v0}, Lt3/d;->W()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

###### Class s3.j (s3.j)
.class public final synthetic Ls3/j;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lu3/b$a;


# instance fields
.field public final synthetic a:Ls3/s;


# direct methods
.method public synthetic constructor <init>(Ls3/s;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ls3/j;->a:Ls3/s;

    return-void
.end method


# virtual methods
.method public final execute()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Ls3/j;->a:Ls3/s;

    invoke-static {v0}, Ls3/s;->i(Ls3/s;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

###### Class s3.k (s3.k)
.class public final synthetic Ls3/k;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lu3/b$a;


# instance fields
.field public final synthetic a:Ls3/s;

.field public final synthetic b:Ljava/lang/Iterable;


# direct methods
.method public synthetic constructor <init>(Ls3/s;Ljava/lang/Iterable;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ls3/k;->a:Ls3/s;

    iput-object p2, p0, Ls3/k;->b:Ljava/lang/Iterable;

    return-void
.end method


# virtual methods
.method public final execute()Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Ls3/k;->a:Ls3/s;

    iget-object v1, p0, Ls3/k;->b:Ljava/lang/Iterable;

    invoke-static {v0, v1}, Ls3/s;->g(Ls3/s;Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

###### Class s3.l (s3.l)
.class public final synthetic Ls3/l;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lu3/b$a;


# instance fields
.field public final synthetic a:Ls3/s;

.field public final synthetic b:Ljava/lang/Iterable;

.field public final synthetic c:Ll3/p;

.field public final synthetic d:J


# direct methods
.method public synthetic constructor <init>(Ls3/s;Ljava/lang/Iterable;Ll3/p;J)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ls3/l;->a:Ls3/s;

    iput-object p2, p0, Ls3/l;->b:Ljava/lang/Iterable;

    iput-object p3, p0, Ls3/l;->c:Ll3/p;

    iput-wide p4, p0, Ls3/l;->d:J

    return-void
.end method


# virtual methods
.method public final execute()Ljava/lang/Object;
    .registers 6

    iget-object v0, p0, Ls3/l;->a:Ls3/s;

    iget-object v1, p0, Ls3/l;->b:Ljava/lang/Iterable;

    iget-object v2, p0, Ls3/l;->c:Ll3/p;

    iget-wide v3, p0, Ls3/l;->d:J

    invoke-static {v0, v1, v2, v3, v4}, Ls3/s;->e(Ls3/s;Ljava/lang/Iterable;Ll3/p;J)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

###### Class s3.m (s3.m)
.class public final synthetic Ls3/m;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lu3/b$a;


# instance fields
.field public final synthetic a:Ls3/s;

.field public final synthetic b:Ljava/util/Map;


# direct methods
.method public synthetic constructor <init>(Ls3/s;Ljava/util/Map;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ls3/m;->a:Ls3/s;

    iput-object p2, p0, Ls3/m;->b:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final execute()Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Ls3/m;->a:Ls3/s;

    iget-object v1, p0, Ls3/m;->b:Ljava/util/Map;

    invoke-static {v0, v1}, Ls3/s;->c(Ls3/s;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

###### Class s3.n (s3.n)
.class public final synthetic Ls3/n;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lu3/b$a;


# instance fields
.field public final synthetic a:Ls3/s;

.field public final synthetic b:Ll3/p;


# direct methods
.method public synthetic constructor <init>(Ls3/s;Ll3/p;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ls3/n;->a:Ls3/s;

    iput-object p2, p0, Ls3/n;->b:Ll3/p;

    return-void
.end method


# virtual methods
.method public final execute()Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Ls3/n;->a:Ls3/s;

    iget-object v1, p0, Ls3/n;->b:Ll3/p;

    invoke-static {v0, v1}, Ls3/s;->b(Ls3/s;Ll3/p;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

###### Class s3.o (s3.o)
.class public final synthetic Ls3/o;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lu3/b$a;


# instance fields
.field public final synthetic a:Ls3/s;

.field public final synthetic b:Ll3/p;


# direct methods
.method public synthetic constructor <init>(Ls3/s;Ll3/p;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ls3/o;->a:Ls3/s;

    iput-object p2, p0, Ls3/o;->b:Ll3/p;

    return-void
.end method


# virtual methods
.method public final execute()Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Ls3/o;->a:Ls3/s;

    iget-object v1, p0, Ls3/o;->b:Ll3/p;

    invoke-static {v0, v1}, Ls3/s;->d(Ls3/s;Ll3/p;)Ljava/lang/Iterable;

    move-result-object v0

    return-object v0
.end method

###### Class s3.p (s3.p)
.class public final synthetic Ls3/p;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lu3/b$a;


# instance fields
.field public final synthetic a:Ls3/s;

.field public final synthetic b:Ll3/p;

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Ls3/s;Ll3/p;I)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ls3/p;->a:Ls3/s;

    iput-object p2, p0, Ls3/p;->b:Ll3/p;

    iput p3, p0, Ls3/p;->c:I

    return-void
.end method


# virtual methods
.method public final execute()Ljava/lang/Object;
    .registers 4

    iget-object v0, p0, Ls3/p;->a:Ls3/s;

    iget-object v1, p0, Ls3/p;->b:Ll3/p;

    iget v2, p0, Ls3/p;->c:I

    invoke-static {v0, v1, v2}, Ls3/s;->h(Ls3/s;Ll3/p;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

###### Class s3.q (s3.q)
.class public final synthetic Ls3/q;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lu3/b$a;


# instance fields
.field public final synthetic a:Ls3/s;

.field public final synthetic b:Ll3/p;

.field public final synthetic c:J


# direct methods
.method public synthetic constructor <init>(Ls3/s;Ll3/p;J)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ls3/q;->a:Ls3/s;

    iput-object p2, p0, Ls3/q;->b:Ll3/p;

    iput-wide p3, p0, Ls3/q;->c:J

    return-void
.end method


# virtual methods
.method public final execute()Ljava/lang/Object;
    .registers 5

    iget-object v0, p0, Ls3/q;->a:Ls3/s;

    iget-object v1, p0, Ls3/q;->b:Ll3/p;

    iget-wide v2, p0, Ls3/q;->c:J

    invoke-static {v0, v1, v2, v3}, Ls3/s;->f(Ls3/s;Ll3/p;J)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

###### Class s3.r (s3.r)
.class public final synthetic Ls3/r;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lu3/b$a;


# instance fields
.field public final synthetic a:Lt3/c;


# direct methods
.method public synthetic constructor <init>(Lt3/c;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ls3/r;->a:Lt3/c;

    return-void
.end method


# virtual methods
.method public final execute()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Ls3/r;->a:Lt3/c;

    invoke-interface {v0}, Lt3/c;->d()Lo3/a;

    move-result-object v0

    return-object v0
.end method
