###### Class q5.j0 (q5.j0)
.class public Lq5/j0;
.super Ljava/lang/Object;
.source "SessionReportingCoordinator.java"


# instance fields
.field private final a:Lq5/t;

.field private final b:Lv5/e;

.field private final c:Lw5/b;

.field private final d:Lr5/e;

.field private final e:Lr5/m;

.field private final f:Lq5/b0;


# direct methods
.method constructor <init>(Lq5/t;Lv5/e;Lw5/b;Lr5/e;Lr5/m;Lq5/b0;)V
    .registers 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lq5/j0;->a:Lq5/t;

    .line 3
    iput-object p2, p0, Lq5/j0;->b:Lv5/e;

    .line 4
    iput-object p3, p0, Lq5/j0;->c:Lw5/b;

    .line 5
    iput-object p4, p0, Lq5/j0;->d:Lr5/e;

    .line 6
    iput-object p5, p0, Lq5/j0;->e:Lr5/m;

    .line 7
    iput-object p6, p0, Lq5/j0;->f:Lq5/b0;

    return-void
.end method

.method public static synthetic a(Lq5/j0;Lcom/google/android/gms/tasks/Task;)Z
    .registers 2

    invoke-direct {p0, p1}, Lq5/j0;->r(Lcom/google/android/gms/tasks/Task;)Z

    move-result p0

    return p0
.end method

.method public static synthetic b(Ls5/f0$c;Ls5/f0$c;)I
    .registers 2

    invoke-static {p0, p1}, Lq5/j0;->o(Ls5/f0$c;Ls5/f0$c;)I

    move-result p0

    return p0
.end method

.method private c(Ls5/f0$e$d;Lr5/e;Lr5/m;)Ls5/f0$e$d;
    .registers 6

    .line 1
    invoke-virtual {p1}, Ls5/f0$e$d;->h()Ls5/f0$e$d$b;

    move-result-object v0

    .line 2
    invoke-virtual {p2}, Lr5/e;->c()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_1a

    .line 3
    invoke-static {}, Ls5/f0$e$d$d;->a()Ls5/f0$e$d$d$a;

    move-result-object v1

    invoke-virtual {v1, p2}, Ls5/f0$e$d$d$a;->b(Ljava/lang/String;)Ls5/f0$e$d$d$a;

    move-result-object p2

    invoke-virtual {p2}, Ls5/f0$e$d$d$a;->a()Ls5/f0$e$d$d;

    move-result-object p2

    .line 4
    invoke-virtual {v0, p2}, Ls5/f0$e$d$b;->d(Ls5/f0$e$d$d;)Ls5/f0$e$d$b;

    goto :goto_23

    .line 5
    :cond_1a
    invoke-static {}, Ln5/g;->f()Ln5/g;

    move-result-object p2

    const-string v1, "No log data to include with this event."

    invoke-virtual {p2, v1}, Ln5/g;->i(Ljava/lang/String;)V

    .line 6
    :goto_23
    invoke-virtual {p3}, Lr5/m;->e()Ljava/util/Map;

    move-result-object p2

    invoke-static {p2}, Lq5/j0;->m(Ljava/util/Map;)Ljava/util/List;

    move-result-object p2

    .line 7
    invoke-virtual {p3}, Lr5/m;->f()Ljava/util/Map;

    move-result-object p3

    invoke-static {p3}, Lq5/j0;->m(Ljava/util/Map;)Ljava/util/List;

    move-result-object p3

    .line 8
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3f

    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_56

    .line 9
    :cond_3f
    invoke-virtual {p1}, Ls5/f0$e$d;->b()Ls5/f0$e$d$a;

    move-result-object p1

    invoke-virtual {p1}, Ls5/f0$e$d$a;->i()Ls5/f0$e$d$a$a;

    move-result-object p1

    .line 10
    invoke-virtual {p1, p2}, Ls5/f0$e$d$a$a;->e(Ljava/util/List;)Ls5/f0$e$d$a$a;

    move-result-object p1

    .line 11
    invoke-virtual {p1, p3}, Ls5/f0$e$d$a$a;->g(Ljava/util/List;)Ls5/f0$e$d$a$a;

    move-result-object p1

    .line 12
    invoke-virtual {p1}, Ls5/f0$e$d$a$a;->a()Ls5/f0$e$d$a;

    move-result-object p1

    .line 13
    invoke-virtual {v0, p1}, Ls5/f0$e$d$b;->b(Ls5/f0$e$d$a;)Ls5/f0$e$d$b;

    .line 14
    :cond_56
    invoke-virtual {v0}, Ls5/f0$e$d$b;->a()Ls5/f0$e$d;

    move-result-object p1

    return-object p1
.end method

.method private d(Ls5/f0$e$d;)Ls5/f0$e$d;
    .registers 4

    .line 1
    iget-object v0, p0, Lq5/j0;->d:Lr5/e;

    iget-object v1, p0, Lq5/j0;->e:Lr5/m;

    .line 2
    invoke-direct {p0, p1, v0, v1}, Lq5/j0;->c(Ls5/f0$e$d;Lr5/e;Lr5/m;)Ls5/f0$e$d;

    move-result-object p1

    .line 3
    iget-object v0, p0, Lq5/j0;->e:Lr5/m;

    .line 4
    invoke-direct {p0, p1, v0}, Lq5/j0;->e(Ls5/f0$e$d;Lr5/m;)Ls5/f0$e$d;

    move-result-object p1

    return-object p1
.end method

.method private e(Ls5/f0$e$d;Lr5/m;)Ls5/f0$e$d;
    .registers 4

    .line 1
    invoke-virtual {p2}, Lr5/m;->g()Ljava/util/List;

    move-result-object p2

    .line 2
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    return-object p1

    .line 3
    :cond_b
    invoke-virtual {p1}, Ls5/f0$e$d;->h()Ls5/f0$e$d$b;

    move-result-object p1

    .line 4
    invoke-static {}, Ls5/f0$e$d$f;->a()Ls5/f0$e$d$f$a;

    move-result-object v0

    .line 5
    invoke-virtual {v0, p2}, Ls5/f0$e$d$f$a;->b(Ljava/util/List;)Ls5/f0$e$d$f$a;

    move-result-object p2

    .line 6
    invoke-virtual {p2}, Ls5/f0$e$d$f$a;->a()Ls5/f0$e$d$f;

    move-result-object p2

    .line 7
    invoke-virtual {p1, p2}, Ls5/f0$e$d$b;->e(Ls5/f0$e$d$f;)Ls5/f0$e$d$b;

    .line 8
    invoke-virtual {p1}, Ls5/f0$e$d$b;->a()Ls5/f0$e$d;

    move-result-object p1

    return-object p1
.end method

.method private static f(Landroid/app/ApplicationExitInfo;)Ls5/f0$a;
    .registers 6

    const/4 v0, 0x0

    .line 1
    :try_start_1
    invoke-virtual {p0}, Landroid/app/ApplicationExitInfo;->getTraceInputStream()Ljava/io/InputStream;

    move-result-object v1

    if-eqz v1, :cond_31

    .line 2
    invoke-static {v1}, Lq5/j0;->g(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_b} :catch_c

    goto :goto_31

    :catch_c
    move-exception v1

    .line 3
    invoke-static {}, Ln5/g;->f()Ln5/g;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not get input trace in application exit info: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    invoke-virtual {p0}, Landroid/app/ApplicationExitInfo;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " Error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 5
    invoke-virtual {v2, v1}, Ln5/g;->k(Ljava/lang/String;)V

    .line 6
    :cond_31
    :goto_31
    invoke-static {}, Ls5/f0$a;->a()Ls5/f0$a$b;

    move-result-object v1

    .line 7
    invoke-virtual {p0}, Landroid/app/ApplicationExitInfo;->getImportance()I

    move-result v2

    invoke-virtual {v1, v2}, Ls5/f0$a$b;->c(I)Ls5/f0$a$b;

    move-result-object v1

    .line 8
    invoke-virtual {p0}, Landroid/app/ApplicationExitInfo;->getProcessName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ls5/f0$a$b;->e(Ljava/lang/String;)Ls5/f0$a$b;

    move-result-object v1

    .line 9
    invoke-virtual {p0}, Landroid/app/ApplicationExitInfo;->getReason()I

    move-result v2

    invoke-virtual {v1, v2}, Ls5/f0$a$b;->g(I)Ls5/f0$a$b;

    move-result-object v1

    .line 10
    invoke-virtual {p0}, Landroid/app/ApplicationExitInfo;->getTimestamp()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ls5/f0$a$b;->i(J)Ls5/f0$a$b;

    move-result-object v1

    .line 11
    invoke-virtual {p0}, Landroid/app/ApplicationExitInfo;->getPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ls5/f0$a$b;->d(I)Ls5/f0$a$b;

    move-result-object v1

    .line 12
    invoke-virtual {p0}, Landroid/app/ApplicationExitInfo;->getPss()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ls5/f0$a$b;->f(J)Ls5/f0$a$b;

    move-result-object v1

    .line 13
    invoke-virtual {p0}, Landroid/app/ApplicationExitInfo;->getRss()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ls5/f0$a$b;->h(J)Ls5/f0$a$b;

    move-result-object p0

    .line 14
    invoke-virtual {p0, v0}, Ls5/f0$a$b;->j(Ljava/lang/String;)Ls5/f0$a$b;

    move-result-object p0

    .line 15
    invoke-virtual {p0}, Ls5/f0$a$b;->a()Ls5/f0$a;

    move-result-object p0

    return-object p0
.end method

.method public static g(Ljava/io/InputStream;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v1, 0x2000

    new-array v1, v1, [B

    .line 2
    :goto_9
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_15

    const/4 v3, 0x0

    .line 3
    invoke-virtual {v0, v1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_9

    .line 4
    :cond_15
    sget-object p0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static h(Landroid/content/Context;Lq5/b0;Lv5/f;Lq5/a;Lr5/e;Lr5/m;Ly5/d;Lx5/i;Lq5/g0;Lq5/m;)Lq5/j0;
    .registers 19

    move-object/from16 v6, p7

    .line 1
    new-instance v7, Lq5/t;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p3

    move-object v4, p6

    move-object/from16 v5, p7

    invoke-direct/range {v0 .. v5}, Lq5/t;-><init>(Landroid/content/Context;Lq5/b0;Lq5/a;Ly5/d;Lx5/i;)V

    .line 2
    new-instance v2, Lv5/e;

    move-object v0, p2

    move-object/from16 v1, p9

    invoke-direct {v2, p2, v6, v1}, Lv5/e;-><init>(Lv5/f;Lx5/i;Lq5/m;)V

    move-object v0, p0

    move-object/from16 v1, p8

    .line 3
    invoke-static {p0, v6, v1}, Lw5/b;->b(Landroid/content/Context;Lx5/i;Lq5/g0;)Lw5/b;

    move-result-object v3

    .line 4
    new-instance v8, Lq5/j0;

    move-object v0, v8

    move-object v1, v7

    move-object v4, p4

    move-object v5, p5

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lq5/j0;-><init>(Lq5/t;Lv5/e;Lw5/b;Lr5/e;Lr5/m;Lq5/b0;)V

    return-object v8
.end method

.method private i(Lq5/u;)Lq5/u;
    .registers 4

    .line 1
    invoke-virtual {p1}, Lq5/u;->b()Ls5/f0;

    move-result-object v0

    invoke-virtual {v0}, Ls5/f0;->g()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_24

    .line 2
    iget-object v0, p0, Lq5/j0;->f:Lq5/b0;

    invoke-virtual {v0}, Lq5/b0;->d()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-virtual {p1}, Lq5/u;->b()Ls5/f0;

    move-result-object v1

    invoke-virtual {v1, v0}, Ls5/f0;->r(Ljava/lang/String;)Ls5/f0;

    move-result-object v0

    .line 4
    invoke-virtual {p1}, Lq5/u;->d()Ljava/lang/String;

    move-result-object v1

    .line 5
    invoke-virtual {p1}, Lq5/u;->c()Ljava/io/File;

    move-result-object p1

    .line 6
    invoke-static {v0, v1, p1}, Lq5/u;->a(Ls5/f0;Ljava/lang/String;Ljava/io/File;)Lq5/u;

    move-result-object p1

    :cond_24
    return-object p1
.end method

.method private l(Ljava/lang/String;Ljava/util/List;)Landroid/app/ApplicationExitInfo;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/app/ApplicationExitInfo;",
            ">;)",
            "Landroid/app/ApplicationExitInfo;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lq5/j0;->b:Lv5/e;

    invoke-virtual {v0, p1}, Lv5/e;->q(Ljava/lang/String;)J

    move-result-wide v0

    .line 2
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    const/4 v2, 0x0

    if-eqz p2, :cond_29

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/ApplicationExitInfo;

    .line 3
    invoke-virtual {p2}, Landroid/app/ApplicationExitInfo;->getTimestamp()J

    move-result-wide v3

    cmp-long v5, v3, v0

    if-gez v5, :cond_20

    return-object v2

    .line 4
    :cond_20
    invoke-virtual {p2}, Landroid/app/ApplicationExitInfo;->getReason()I

    move-result v2

    const/4 v3, 0x6

    if-eq v2, v3, :cond_28

    goto :goto_a

    :cond_28
    return-object p2

    :cond_29
    return-object v2
.end method

.method private static m(Ljava/util/Map;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Ls5/f0$c;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 3
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_14
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_40

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 4
    invoke-static {}, Ls5/f0$c;->a()Ls5/f0$c$a;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ls5/f0$c$a;->b(Ljava/lang/String;)Ls5/f0$c$a;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ls5/f0$c$a;->c(Ljava/lang/String;)Ls5/f0$c$a;

    move-result-object v1

    invoke-virtual {v1}, Ls5/f0$c$a;->a()Ls5/f0$c;

    move-result-object v1

    .line 5
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_14

    .line 6
    :cond_40
    sget-object p0, Lq5/i0;->o:Lq5/i0;

    invoke-static {v0, p0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 7
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic o(Ls5/f0$c;Ls5/f0$c;)I
    .registers 2

    .line 1
    invoke-virtual {p0}, Ls5/f0$c;->b()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Ls5/f0$c;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private r(Lcom/google/android/gms/tasks/Task;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tasks/Task<",
            "Lq5/u;",
            ">;)Z"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->t()Z

    move-result v0

    if-eqz v0, :cond_6d

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->p()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lq5/u;

    .line 3
    invoke-static {}, Ln5/g;->f()Ln5/g;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Crashlytics report successfully enqueued to DataTransport: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    invoke-virtual {p1}, Lq5/u;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ln5/g;->b(Ljava/lang/String;)V

    .line 5
    invoke-virtual {p1}, Lq5/u;->c()Ljava/io/File;

    move-result-object p1

    .line 6
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result v0

    if-eqz v0, :cond_4f

    .line 7
    invoke-static {}, Ln5/g;->f()Ln5/g;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Deleted report file: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ln5/g;->b(Ljava/lang/String;)V

    goto :goto_6b

    .line 8
    :cond_4f
    invoke-static {}, Ln5/g;->f()Ln5/g;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Crashlytics could not delete report file: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ln5/g;->k(Ljava/lang/String;)V

    :goto_6b
    const/4 p1, 0x1

    return p1

    .line 9
    :cond_6d
    invoke-static {}, Ln5/g;->f()Ln5/g;

    move-result-object v0

    .line 10
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->o()Ljava/lang/Exception;

    move-result-object p1

    const-string v1, "Crashlytics report could not be enqueued to DataTransport"

    invoke-virtual {v0, v1, p1}, Ln5/g;->l(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return p1
.end method

.method private s(Ljava/lang/Throwable;Ljava/lang/Thread;Ljava/lang/String;Ljava/lang/String;JZ)V
    .registers 19

    move-object v0, p0

    const-string v1, "crash"

    move-object v5, p4

    .line 1
    invoke-virtual {p4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 2
    iget-object v2, v0, Lq5/j0;->a:Lq5/t;

    const/4 v8, 0x4

    const/16 v9, 0x8

    move-object v3, p1

    move-object v4, p2

    move-wide/from16 v6, p5

    move/from16 v10, p7

    .line 3
    invoke-virtual/range {v2 .. v10}, Lq5/t;->d(Ljava/lang/Throwable;Ljava/lang/Thread;Ljava/lang/String;JIIZ)Ls5/f0$e$d;

    move-result-object v2

    .line 4
    iget-object v3, v0, Lq5/j0;->b:Lv5/e;

    invoke-direct {p0, v2}, Lq5/j0;->d(Ls5/f0$e$d;)Ls5/f0$e$d;

    move-result-object v2

    move-object v4, p3

    invoke-virtual {v3, v2, p3, v1}, Lv5/e;->y(Ls5/f0$e$d;Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public j(Ljava/lang/String;Ljava/util/List;Ls5/f0$a;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lq5/e0;",
            ">;",
            "Ls5/f0$a;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-static {}, Ln5/g;->f()Ln5/g;

    move-result-object v0

    const-string v1, "SessionReportingCoordinator#finalizeSessionWithNativeEvent"

    invoke-virtual {v0, v1}, Ln5/g;->b(Ljava/lang/String;)V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_12
    :goto_12
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_28

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lq5/e0;

    .line 4
    invoke-interface {v1}, Lq5/e0;->c()Ls5/f0$d$b;

    move-result-object v1

    if-eqz v1, :cond_12

    .line 5
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_12

    .line 6
    :cond_28
    iget-object p2, p0, Lq5/j0;->b:Lv5/e;

    .line 7
    invoke-static {}, Ls5/f0$d;->a()Ls5/f0$d$a;

    move-result-object v1

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Ls5/f0$d$a;->b(Ljava/util/List;)Ls5/f0$d$a;

    move-result-object v0

    invoke-virtual {v0}, Ls5/f0$d$a;->a()Ls5/f0$d;

    move-result-object v0

    .line 8
    invoke-virtual {p2, p1, v0, p3}, Lv5/e;->l(Ljava/lang/String;Ls5/f0$d;Ls5/f0$a;)V

    return-void
.end method

.method public k(JLjava/lang/String;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lq5/j0;->b:Lv5/e;

    invoke-virtual {v0, p3, p1, p2}, Lv5/e;->k(Ljava/lang/String;J)V

    return-void
.end method

.method public n()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lq5/j0;->b:Lv5/e;

    invoke-virtual {v0}, Lv5/e;->r()Z

    move-result v0

    return v0
.end method

.method public p()Ljava/util/SortedSet;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/SortedSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lq5/j0;->b:Lv5/e;

    invoke-virtual {v0}, Lv5/e;->p()Ljava/util/SortedSet;

    move-result-object v0

    return-object v0
.end method

.method public q(Ljava/lang/String;J)V
    .registers 5

    .line 1
    iget-object v0, p0, Lq5/j0;->a:Lq5/t;

    .line 2
    invoke-virtual {v0, p1, p2, p3}, Lq5/t;->e(Ljava/lang/String;J)Ls5/f0;

    move-result-object p1

    .line 3
    iget-object p2, p0, Lq5/j0;->b:Lv5/e;

    invoke-virtual {p2, p1}, Lv5/e;->z(Ls5/f0;)V

    return-void
.end method

.method public t(Ljava/lang/Throwable;Ljava/lang/Thread;Ljava/lang/String;J)V
    .registers 16

    .line 1
    invoke-static {}, Ln5/g;->f()Ln5/g;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Persisting fatal event for session "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ln5/g;->i(Ljava/lang/String;)V

    const-string v6, "crash"

    const/4 v9, 0x1

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-wide v7, p4

    .line 2
    invoke-direct/range {v2 .. v9}, Lq5/j0;->s(Ljava/lang/Throwable;Ljava/lang/Thread;Ljava/lang/String;Ljava/lang/String;JZ)V

    return-void
.end method

.method public u(Ljava/lang/Throwable;Ljava/lang/Thread;Ljava/lang/String;J)V
    .registers 16

    .line 1
    invoke-static {}, Ln5/g;->f()Ln5/g;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Persisting non-fatal event for session "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ln5/g;->i(Ljava/lang/String;)V

    const-string v6, "error"

    const/4 v9, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-wide v7, p4

    .line 2
    invoke-direct/range {v2 .. v9}, Lq5/j0;->s(Ljava/lang/Throwable;Ljava/lang/Thread;Ljava/lang/String;Ljava/lang/String;JZ)V

    return-void
.end method

.method public v(Ljava/lang/String;Ljava/util/List;Lr5/e;Lr5/m;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/app/ApplicationExitInfo;",
            ">;",
            "Lr5/e;",
            "Lr5/m;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lq5/j0;->l(Ljava/lang/String;Ljava/util/List;)Landroid/app/ApplicationExitInfo;

    move-result-object p2

    if-nez p2, :cond_1f

    .line 2
    invoke-static {}, Ln5/g;->f()Ln5/g;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "No relevant ApplicationExitInfo occurred during session: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ln5/g;->i(Ljava/lang/String;)V

    return-void

    .line 3
    :cond_1f
    iget-object v0, p0, Lq5/j0;->a:Lq5/t;

    .line 4
    invoke-static {p2}, Lq5/j0;->f(Landroid/app/ApplicationExitInfo;)Ls5/f0$a;

    move-result-object p2

    invoke-virtual {v0, p2}, Lq5/t;->c(Ls5/f0$a;)Ls5/f0$e$d;

    move-result-object p2

    .line 5
    invoke-static {}, Ln5/g;->f()Ln5/g;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Persisting anr for session "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ln5/g;->b(Ljava/lang/String;)V

    .line 6
    invoke-direct {p0, p2, p3, p4}, Lq5/j0;->c(Ls5/f0$e$d;Lr5/e;Lr5/m;)Ls5/f0$e$d;

    move-result-object p2

    .line 7
    invoke-direct {p0, p2, p4}, Lq5/j0;->e(Ls5/f0$e$d;Lr5/m;)Ls5/f0$e$d;

    move-result-object p2

    .line 8
    iget-object p3, p0, Lq5/j0;->b:Lv5/e;

    const/4 p4, 0x1

    invoke-virtual {p3, p2, p1, p4}, Lv5/e;->y(Ls5/f0$e$d;Ljava/lang/String;Z)V

    return-void
.end method

.method public w()V
    .registers 2

    .line 1
    iget-object v0, p0, Lq5/j0;->b:Lv5/e;

    invoke-virtual {v0}, Lv5/e;->i()V

    return-void
.end method

.method public x(Ljava/util/concurrent/Executor;)Lcom/google/android/gms/tasks/Task;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lq5/j0;->y(Ljava/util/concurrent/Executor;Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public y(Ljava/util/concurrent/Executor;Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lq5/j0;->b:Lv5/e;

    .line 2
    invoke-virtual {v0}, Lv5/e;->w()Ljava/util/List;

    move-result-object v0

    .line 3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 4
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_f
    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_43

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lq5/u;

    if-eqz p2, :cond_27

    .line 5
    invoke-virtual {v2}, Lq5/u;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 6
    :cond_27
    iget-object v3, p0, Lq5/j0;->c:Lw5/b;

    .line 7
    invoke-direct {p0, v2}, Lq5/j0;->i(Lq5/u;)Lq5/u;

    move-result-object v2

    if-eqz p2, :cond_31

    const/4 v4, 0x1

    goto :goto_32

    :cond_31
    const/4 v4, 0x0

    :goto_32
    invoke-virtual {v3, v2, v4}, Lw5/b;->c(Lq5/u;Z)Lcom/google/android/gms/tasks/Task;

    move-result-object v2

    new-instance v3, Lq5/h0;

    invoke-direct {v3, p0}, Lq5/h0;-><init>(Lq5/j0;)V

    .line 8
    invoke-virtual {v2, p1, v3}, Lcom/google/android/gms/tasks/Task;->l(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;

    move-result-object v2

    .line 9
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_f

    .line 10
    :cond_43
    invoke-static {v1}, Lcom/google/android/gms/tasks/Tasks;->f(Ljava/util/Collection;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

###### Class q5.h0 (q5.h0)
.class public final synthetic Lq5/h0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/google/android/gms/tasks/Continuation;


# instance fields
.field public final synthetic a:Lq5/j0;


# direct methods
.method public synthetic constructor <init>(Lq5/j0;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lq5/h0;->a:Lq5/j0;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lq5/h0;->a:Lq5/j0;

    invoke-static {v0, p1}, Lq5/j0;->a(Lq5/j0;Lcom/google/android/gms/tasks/Task;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

###### Class q5.i0 (q5.i0)
.class public final synthetic Lq5/i0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final synthetic o:Lq5/i0;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lq5/i0;

    invoke-direct {v0}, Lq5/i0;-><init>()V

    sput-object v0, Lq5/i0;->o:Lq5/i0;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    check-cast p1, Ls5/f0$c;

    check-cast p2, Ls5/f0$c;

    invoke-static {p1, p2}, Lq5/j0;->b(Ls5/f0$c;Ls5/f0$c;)I

    move-result p1

    return p1
.end method
