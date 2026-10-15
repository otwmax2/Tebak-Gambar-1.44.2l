###### Class r1.b (r1.b)
.class public Lr1/b;
.super Ljava/lang/Object;
.source "EnqueueRunnable.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final q:Ljava/lang/String;


# instance fields
.field private final o:Lj1/g;

.field private final p:Lj1/c;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "EnqueueRunnable"

    .line 1
    invoke-static {v0}, Li1/j;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lr1/b;->q:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lj1/g;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lr1/b;->o:Lj1/g;

    .line 3
    new-instance p1, Lj1/c;

    invoke-direct {p1}, Lj1/c;-><init>()V

    iput-object p1, p0, Lr1/b;->p:Lj1/c;

    return-void
.end method

.method private static b(Lj1/g;)Z
    .registers 6

    .line 1
    invoke-static {p0}, Lj1/g;->l(Lj1/g;)Ljava/util/Set;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Lj1/g;->g()Lj1/i;

    move-result-object v1

    .line 3
    invoke-virtual {p0}, Lj1/g;->f()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    .line 4
    invoke-interface {v0, v3}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 5
    invoke-virtual {p0}, Lj1/g;->d()Ljava/lang/String;

    move-result-object v3

    .line 6
    invoke-virtual {p0}, Lj1/g;->b()Li1/d;

    move-result-object v4

    .line 7
    invoke-static {v1, v2, v0, v3, v4}, Lr1/b;->c(Lj1/i;Ljava/util/List;[Ljava/lang/String;Ljava/lang/String;Li1/d;)Z

    move-result v0

    .line 8
    invoke-virtual {p0}, Lj1/g;->k()V

    return v0
.end method

.method private static c(Lj1/i;Ljava/util/List;[Ljava/lang/String;Ljava/lang/String;Li1/d;)Z
    .registers 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj1/i;",
            "Ljava/util/List<",
            "+",
            "Li1/u;",
            ">;[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Li1/d;",
            ")Z"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 2
    invoke-virtual/range {p0 .. p0}, Lj1/i;->p()Landroidx/work/impl/WorkDatabase;

    move-result-object v6

    const/4 v7, 0x1

    if-eqz v1, :cond_18

    .line 3
    array-length v9, v1

    if-lez v9, :cond_18

    const/4 v9, 0x1

    goto :goto_19

    :cond_18
    const/4 v9, 0x0

    :goto_19
    if-eqz v9, :cond_5d

    .line 4
    array-length v10, v1

    const/4 v11, 0x0

    const/4 v12, 0x1

    const/4 v13, 0x0

    const/4 v14, 0x0

    :goto_20
    if-ge v11, v10, :cond_60

    aget-object v15, v1, v11

    .line 5
    invoke-virtual {v6}, Landroidx/work/impl/WorkDatabase;->L()Lq1/q;

    move-result-object v8

    invoke-interface {v8, v15}, Lq1/q;->n(Ljava/lang/String;)Lq1/p;

    move-result-object v8

    if-nez v8, :cond_45

    .line 6
    invoke-static {}, Li1/j;->c()Li1/j;

    move-result-object v0

    sget-object v1, Lr1/b;->q:Ljava/lang/String;

    new-array v2, v7, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v15, v2, v3

    const-string v4, "Prerequisite %s doesn\'t exist; not enqueuing"

    .line 7
    invoke-static {v4, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-array v4, v3, [Ljava/lang/Throwable;

    .line 8
    invoke-virtual {v0, v1, v2, v4}, Li1/j;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    return v3

    .line 9
    :cond_45
    iget-object v8, v8, Lq1/p;->b:Li1/s$a;

    .line 10
    sget-object v15, Li1/s$a;->q:Li1/s$a;

    if-ne v8, v15, :cond_4d

    const/4 v15, 0x1

    goto :goto_4e

    :cond_4d
    const/4 v15, 0x0

    :goto_4e
    and-int/2addr v12, v15

    .line 11
    sget-object v15, Li1/s$a;->r:Li1/s$a;

    if-ne v8, v15, :cond_55

    const/4 v14, 0x1

    goto :goto_5a

    .line 12
    :cond_55
    sget-object v15, Li1/s$a;->t:Li1/s$a;

    if-ne v8, v15, :cond_5a

    const/4 v13, 0x1

    :cond_5a
    :goto_5a
    add-int/lit8 v11, v11, 0x1

    goto :goto_20

    :cond_5d
    const/4 v12, 0x1

    const/4 v13, 0x0

    const/4 v14, 0x0

    .line 13
    :cond_60
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    xor-int/2addr v8, v7

    if-eqz v8, :cond_6b

    if-nez v9, :cond_6b

    const/4 v10, 0x1

    goto :goto_6c

    :cond_6b
    const/4 v10, 0x0

    :goto_6c
    if-eqz v10, :cond_14e

    .line 14
    invoke-virtual {v6}, Landroidx/work/impl/WorkDatabase;->L()Lq1/q;

    move-result-object v10

    invoke-interface {v10, v2}, Lq1/q;->d(Ljava/lang/String;)Ljava/util/List;

    move-result-object v10

    .line 15
    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_14e

    .line 16
    sget-object v11, Li1/d;->q:Li1/d;

    if-eq v3, v11, :cond_ca

    sget-object v11, Li1/d;->r:Li1/d;

    if-ne v3, v11, :cond_85

    goto :goto_ca

    .line 17
    :cond_85
    sget-object v11, Li1/d;->p:Li1/d;

    if-ne v3, v11, :cond_a5

    .line 18
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_8d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_a5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lq1/p$b;

    .line 19
    iget-object v11, v11, Lq1/p$b;->b:Li1/s$a;

    sget-object v15, Li1/s$a;->o:Li1/s$a;

    if-eq v11, v15, :cond_a3

    sget-object v15, Li1/s$a;->p:Li1/s$a;

    if-ne v11, v15, :cond_8d

    :cond_a3
    const/4 v11, 0x0

    return v11

    :cond_a5
    const/4 v11, 0x0

    .line 20
    invoke-static {v2, v0, v11}, Lr1/a;->c(Ljava/lang/String;Lj1/i;Z)Lr1/a;

    move-result-object v3

    invoke-virtual {v3}, Lr1/a;->run()V

    .line 21
    invoke-virtual {v6}, Landroidx/work/impl/WorkDatabase;->L()Lq1/q;

    move-result-object v3

    .line 22
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_b5
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_c7

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lq1/p$b;

    .line 23
    iget-object v15, v15, Lq1/p$b;->a:Ljava/lang/String;

    invoke-interface {v3, v15}, Lq1/q;->a(Ljava/lang/String;)V

    goto :goto_b5

    :cond_c7
    const/4 v3, 0x1

    goto/16 :goto_14f

    :cond_ca
    :goto_ca
    const/4 v11, 0x0

    .line 24
    invoke-virtual {v6}, Landroidx/work/impl/WorkDatabase;->D()Lq1/b;

    move-result-object v9

    .line 25
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 26
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_d8
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_113

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v7, v16

    check-cast v7, Lq1/p$b;

    .line 27
    iget-object v11, v7, Lq1/p$b;->a:Ljava/lang/String;

    invoke-interface {v9, v11}, Lq1/b;->d(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_10c

    .line 28
    iget-object v11, v7, Lq1/p$b;->b:Li1/s$a;

    move-object/from16 v17, v9

    sget-object v9, Li1/s$a;->q:Li1/s$a;

    if-ne v11, v9, :cond_f8

    const/4 v9, 0x1

    goto :goto_f9

    :cond_f8
    const/4 v9, 0x0

    :goto_f9
    and-int/2addr v9, v12

    .line 29
    sget-object v12, Li1/s$a;->r:Li1/s$a;

    if-ne v11, v12, :cond_100

    const/4 v14, 0x1

    goto :goto_105

    .line 30
    :cond_100
    sget-object v12, Li1/s$a;->t:Li1/s$a;

    if-ne v11, v12, :cond_105

    const/4 v13, 0x1

    .line 31
    :cond_105
    :goto_105
    iget-object v7, v7, Lq1/p$b;->a:Ljava/lang/String;

    invoke-interface {v15, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v12, v9

    goto :goto_10e

    :cond_10c
    move-object/from16 v17, v9

    :goto_10e
    move-object/from16 v9, v17

    const/4 v7, 0x1

    const/4 v11, 0x0

    goto :goto_d8

    .line 32
    :cond_113
    sget-object v7, Li1/d;->r:Li1/d;

    if-ne v3, v7, :cond_140

    if-nez v13, :cond_11b

    if-eqz v14, :cond_140

    .line 33
    :cond_11b
    invoke-virtual {v6}, Landroidx/work/impl/WorkDatabase;->L()Lq1/q;

    move-result-object v3

    .line 34
    invoke-interface {v3, v2}, Lq1/q;->d(Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    .line 35
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_127
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_139

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lq1/p$b;

    .line 36
    iget-object v9, v9, Lq1/p$b;->a:Ljava/lang/String;

    invoke-interface {v3, v9}, Lq1/q;->a(Ljava/lang/String;)V

    goto :goto_127

    .line 37
    :cond_139
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v15

    const/4 v3, 0x0

    const/4 v13, 0x0

    goto :goto_141

    :cond_140
    move v3, v14

    .line 38
    :goto_141
    invoke-interface {v15, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    .line 39
    array-length v7, v1

    if-lez v7, :cond_14c

    const/4 v9, 0x1

    goto :goto_14d

    :cond_14c
    const/4 v9, 0x0

    :goto_14d
    move v14, v3

    :cond_14e
    const/4 v3, 0x0

    .line 40
    :goto_14f
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_153
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_210

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Li1/u;

    .line 41
    invoke-virtual {v10}, Li1/u;->c()Lq1/p;

    move-result-object v11

    if-eqz v9, :cond_17a

    if-nez v12, :cond_17a

    if-eqz v14, :cond_16e

    .line 42
    sget-object v15, Li1/s$a;->r:Li1/s$a;

    iput-object v15, v11, Lq1/p;->b:Li1/s$a;

    goto :goto_182

    :cond_16e
    if-eqz v13, :cond_175

    .line 43
    sget-object v15, Li1/s$a;->t:Li1/s$a;

    iput-object v15, v11, Lq1/p;->b:Li1/s$a;

    goto :goto_182

    .line 44
    :cond_175
    sget-object v15, Li1/s$a;->s:Li1/s$a;

    iput-object v15, v11, Lq1/p;->b:Li1/s$a;

    goto :goto_182

    .line 45
    :cond_17a
    invoke-virtual {v11}, Lq1/p;->d()Z

    move-result v15

    if-nez v15, :cond_185

    .line 46
    iput-wide v4, v11, Lq1/p;->n:J

    :goto_182
    move-wide/from16 v17, v4

    goto :goto_18b

    :cond_185
    move-wide/from16 v17, v4

    const-wide/16 v4, 0x0

    .line 47
    iput-wide v4, v11, Lq1/p;->n:J

    .line 48
    :goto_18b
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x17

    if-lt v4, v5, :cond_199

    const/16 v5, 0x19

    if-gt v4, v5, :cond_199

    .line 49
    invoke-static {v11}, Lr1/b;->g(Lq1/p;)V

    goto :goto_1a8

    :cond_199
    const/16 v5, 0x16

    if-gt v4, v5, :cond_1a8

    const-string v4, "androidx.work.impl.background.gcm.GcmScheduler"

    .line 50
    invoke-static {v0, v4}, Lr1/b;->h(Lj1/i;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1a8

    .line 51
    invoke-static {v11}, Lr1/b;->g(Lq1/p;)V

    .line 52
    :cond_1a8
    :goto_1a8
    iget-object v4, v11, Lq1/p;->b:Li1/s$a;

    sget-object v5, Li1/s$a;->o:Li1/s$a;

    if-ne v4, v5, :cond_1af

    const/4 v3, 0x1

    .line 53
    :cond_1af
    invoke-virtual {v6}, Landroidx/work/impl/WorkDatabase;->L()Lq1/q;

    move-result-object v4

    invoke-interface {v4, v11}, Lq1/q;->b(Lq1/p;)V

    if-eqz v9, :cond_1d3

    .line 54
    array-length v4, v1

    const/4 v5, 0x0

    :goto_1ba
    if-ge v5, v4, :cond_1d3

    aget-object v11, v1, v5

    .line 55
    new-instance v15, Lq1/a;

    invoke-virtual {v10}, Li1/u;->a()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v15, v0, v11}, Lq1/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    invoke-virtual {v6}, Landroidx/work/impl/WorkDatabase;->D()Lq1/b;

    move-result-object v0

    invoke-interface {v0, v15}, Lq1/b;->c(Lq1/a;)V

    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, p0

    goto :goto_1ba

    .line 57
    :cond_1d3
    invoke-virtual {v10}, Li1/u;->b()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1db
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1f8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 58
    invoke-virtual {v6}, Landroidx/work/impl/WorkDatabase;->M()Lq1/t;

    move-result-object v5

    new-instance v11, Lq1/s;

    invoke-virtual {v10}, Li1/u;->a()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v11, v4, v15}, Lq1/s;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v11}, Lq1/t;->a(Lq1/s;)V

    goto :goto_1db

    :cond_1f8
    if-eqz v8, :cond_20a

    .line 59
    invoke-virtual {v6}, Landroidx/work/impl/WorkDatabase;->J()Lq1/k;

    move-result-object v0

    new-instance v4, Lq1/j;

    invoke-virtual {v10}, Li1/u;->a()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v2, v5}, Lq1/j;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v4}, Lq1/k;->a(Lq1/j;)V

    :cond_20a
    move-object/from16 v0, p0

    move-wide/from16 v4, v17

    goto/16 :goto_153

    :cond_210
    return v3
.end method

.method private static e(Lj1/g;)Z
    .registers 9

    .line 1
    invoke-virtual {p0}, Lj1/g;->e()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_46

    .line 2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x0

    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_45

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lj1/g;

    .line 3
    invoke-virtual {v3}, Lj1/g;->j()Z

    move-result v4

    if-nez v4, :cond_24

    .line 4
    invoke-static {v3}, Lr1/b;->e(Lj1/g;)Z

    move-result v3

    or-int/2addr v2, v3

    goto :goto_c

    .line 5
    :cond_24
    invoke-static {}, Li1/j;->c()Li1/j;

    move-result-object v4

    sget-object v5, Lr1/b;->q:Ljava/lang/String;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    .line 6
    invoke-virtual {v3}, Lj1/g;->c()Ljava/util/List;

    move-result-object v3

    const-string v7, ", "

    invoke-static {v7, v3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v1

    const-string v3, "Already enqueued work ids (%s)."

    .line 7
    invoke-static {v3, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-array v6, v1, [Ljava/lang/Throwable;

    invoke-virtual {v4, v5, v3, v6}, Li1/j;->h(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    goto :goto_c

    :cond_45
    move v1, v2

    .line 8
    :cond_46
    invoke-static {p0}, Lr1/b;->b(Lj1/g;)Z

    move-result p0

    or-int/2addr p0, v1

    return p0
.end method

.method private static g(Lq1/p;)V
    .registers 6

    .line 1
    const-class v0, Landroidx/work/impl/workers/ConstraintTrackingWorker;

    iget-object v1, p0, Lq1/p;->j:Li1/b;

    .line 2
    iget-object v2, p0, Lq1/p;->c:Ljava/lang/String;

    .line 3
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_38

    .line 4
    invoke-virtual {v1}, Li1/b;->f()Z

    move-result v3

    if-nez v3, :cond_1c

    invoke-virtual {v1}, Li1/b;->i()Z

    move-result v1

    if-eqz v1, :cond_38

    .line 5
    :cond_1c
    new-instance v1, Landroidx/work/b$a;

    invoke-direct {v1}, Landroidx/work/b$a;-><init>()V

    .line 6
    iget-object v3, p0, Lq1/p;->e:Landroidx/work/b;

    invoke-virtual {v1, v3}, Landroidx/work/b$a;->c(Landroidx/work/b;)Landroidx/work/b$a;

    move-result-object v3

    const-string v4, "androidx.work.impl.workers.ConstraintTrackingWorker.ARGUMENT_CLASS_NAME"

    .line 7
    invoke-virtual {v3, v4, v2}, Landroidx/work/b$a;->e(Ljava/lang/String;Ljava/lang/String;)Landroidx/work/b$a;

    .line 8
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lq1/p;->c:Ljava/lang/String;

    .line 9
    invoke-virtual {v1}, Landroidx/work/b$a;->a()Landroidx/work/b;

    move-result-object v0

    iput-object v0, p0, Lq1/p;->e:Landroidx/work/b;

    :cond_38
    return-void
.end method

.method private static h(Lj1/i;Ljava/lang/String;)Z
    .registers 4

    const/4 v0, 0x0

    .line 1
    :try_start_1
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    .line 2
    invoke-virtual {p0}, Lj1/i;->o()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_d
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_25

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lj1/e;

    .line 3
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1
    :try_end_21
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_21} :catch_25

    if-eqz v1, :cond_d

    const/4 p0, 0x1

    return p0

    :catch_25
    :cond_25
    return v0
.end method


# virtual methods
.method public a()Z
    .registers 3

    .line 1
    iget-object v0, p0, Lr1/b;->o:Lj1/g;

    invoke-virtual {v0}, Lj1/g;->g()Lj1/i;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lj1/i;->p()Landroidx/work/impl/WorkDatabase;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Landroidx/room/h0;->e()V

    .line 4
    :try_start_d
    iget-object v1, p0, Lr1/b;->o:Lj1/g;

    invoke-static {v1}, Lr1/b;->e(Lj1/g;)Z

    move-result v1

    .line 5
    invoke-virtual {v0}, Landroidx/room/h0;->A()V
    :try_end_16
    .catchall {:try_start_d .. :try_end_16} :catchall_1a

    .line 6
    invoke-virtual {v0}, Landroidx/room/h0;->i()V

    return v1

    :catchall_1a
    move-exception v1

    invoke-virtual {v0}, Landroidx/room/h0;->i()V

    .line 7
    throw v1
.end method

.method public d()Li1/m;
    .registers 2

    .line 1
    iget-object v0, p0, Lr1/b;->p:Lj1/c;

    return-object v0
.end method

.method public f()V
    .registers 4

    .line 1
    iget-object v0, p0, Lr1/b;->o:Lj1/g;

    invoke-virtual {v0}, Lj1/g;->g()Lj1/i;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lj1/i;->j()Landroidx/work/a;

    move-result-object v1

    .line 3
    invoke-virtual {v0}, Lj1/i;->p()Landroidx/work/impl/WorkDatabase;

    move-result-object v2

    .line 4
    invoke-virtual {v0}, Lj1/i;->o()Ljava/util/List;

    move-result-object v0

    .line 5
    invoke-static {v1, v2, v0}, Lj1/f;->b(Landroidx/work/a;Landroidx/work/impl/WorkDatabase;Ljava/util/List;)V

    return-void
.end method

.method public run()V
    .registers 6

    .line 1
    :try_start_0
    iget-object v0, p0, Lr1/b;->o:Lj1/g;

    invoke-virtual {v0}, Lj1/g;->h()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_29

    .line 2
    invoke-virtual {p0}, Lr1/b;->a()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 3
    iget-object v0, p0, Lr1/b;->o:Lj1/g;

    .line 4
    invoke-virtual {v0}, Lj1/g;->g()Lj1/i;

    move-result-object v0

    invoke-virtual {v0}, Lj1/i;->i()Landroid/content/Context;

    move-result-object v0

    .line 5
    const-class v2, Landroidx/work/impl/background/systemalarm/RescheduleReceiver;

    invoke-static {v0, v2, v1}, Lr1/d;->a(Landroid/content/Context;Ljava/lang/Class;Z)V

    .line 6
    invoke-virtual {p0}, Lr1/b;->f()V

    .line 7
    :cond_21
    iget-object v0, p0, Lr1/b;->p:Lj1/c;

    sget-object v1, Li1/m;->a:Li1/m$b$c;

    invoke-virtual {v0, v1}, Lj1/c;->a(Li1/m$b;)V

    goto :goto_47

    .line 8
    :cond_29
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "WorkContinuation has cycles (%s)"

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lr1/b;->o:Lj1/g;

    aput-object v4, v1, v3

    .line 9
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3c
    .catchall {:try_start_0 .. :try_end_3c} :catchall_3c

    :catchall_3c
    move-exception v0

    .line 10
    iget-object v1, p0, Lr1/b;->p:Lj1/c;

    new-instance v2, Li1/m$b$a;

    invoke-direct {v2, v0}, Li1/m$b$a;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lj1/c;->a(Li1/m$b;)V

    :goto_47
    return-void
.end method
