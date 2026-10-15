###### Class q5.t (q5.t)
.class public Lq5/t;
.super Ljava/lang/Object;
.source "CrashlyticsReportDataCapture.java"


# static fields
.field private static final g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field static final h:Ljava/lang/String;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lq5/b0;

.field private final c:Lq5/a;

.field private final d:Ly5/d;

.field private final e:Lx5/i;

.field private final f:Ln5/i;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lq5/t;->g:Ljava/util/Map;

    const/4 v1, 0x5

    .line 2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "armeabi"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x6

    .line 3
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "armeabi-v7a"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x9

    .line 4
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "arm64-v8a"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x0

    .line 5
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "x86"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x1

    .line 6
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "x86_64"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "18.6.0"

    aput-object v3, v2, v1

    const-string v1, "Crashlytics Android SDK/%s"

    .line 8
    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lq5/t;->h:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lq5/b0;Lq5/a;Ly5/d;Lx5/i;)V
    .registers 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Ln5/i;->a:Ln5/i;

    iput-object v0, p0, Lq5/t;->f:Ln5/i;

    .line 3
    iput-object p1, p0, Lq5/t;->a:Landroid/content/Context;

    .line 4
    iput-object p2, p0, Lq5/t;->b:Lq5/b0;

    .line 5
    iput-object p3, p0, Lq5/t;->c:Lq5/a;

    .line 6
    iput-object p4, p0, Lq5/t;->d:Ly5/d;

    .line 7
    iput-object p5, p0, Lq5/t;->e:Lx5/i;

    return-void
.end method

.method private A(Ls5/f0$a;)Ls5/f0$e$d$a$c;
    .registers 5

    .line 1
    iget-object v0, p0, Lq5/t;->f:Ln5/i;

    .line 2
    invoke-virtual {p1}, Ls5/f0$a;->e()Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-virtual {p1}, Ls5/f0$a;->d()I

    move-result v2

    .line 4
    invoke-virtual {p1}, Ls5/f0$a;->c()I

    move-result p1

    .line 5
    invoke-virtual {v0, v1, v2, p1}, Ln5/i;->a(Ljava/lang/String;II)Ls5/f0$e$d$a$c;

    move-result-object p1

    return-object p1
.end method

.method private a(Ls5/f0$a;)Ls5/f0$a;
    .registers 7

    .line 1
    iget-object v0, p0, Lq5/t;->e:Lx5/i;

    invoke-interface {v0}, Lx5/i;->b()Lx5/d;

    move-result-object v0

    iget-object v0, v0, Lx5/d;->b:Lx5/d$a;

    iget-boolean v0, v0, Lx5/d$a;->c:Z

    if-eqz v0, :cond_58

    iget-object v0, p0, Lq5/t;->c:Lq5/a;

    iget-object v0, v0, Lq5/a;->c:Ljava/util/List;

    .line 2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_58

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    iget-object v1, p0, Lq5/t;->c:Lq5/a;

    iget-object v1, v1, Lq5/a;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_23
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_53

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lq5/f;

    .line 5
    invoke-static {}, Ls5/f0$a$a;->a()Ls5/f0$a$a$a;

    move-result-object v3

    .line 6
    invoke-virtual {v2}, Lq5/f;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ls5/f0$a$a$a;->d(Ljava/lang/String;)Ls5/f0$a$a$a;

    move-result-object v3

    .line 7
    invoke-virtual {v2}, Lq5/f;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ls5/f0$a$a$a;->b(Ljava/lang/String;)Ls5/f0$a$a$a;

    move-result-object v3

    .line 8
    invoke-virtual {v2}, Lq5/f;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ls5/f0$a$a$a;->c(Ljava/lang/String;)Ls5/f0$a$a$a;

    move-result-object v2

    .line 9
    invoke-virtual {v2}, Ls5/f0$a$a$a;->a()Ls5/f0$a$a;

    move-result-object v2

    .line 10
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_23

    .line 11
    :cond_53
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_59

    :cond_58
    const/4 v0, 0x0

    .line 12
    :goto_59
    invoke-static {}, Ls5/f0$a;->a()Ls5/f0$a$b;

    move-result-object v1

    .line 13
    invoke-virtual {p1}, Ls5/f0$a;->c()I

    move-result v2

    invoke-virtual {v1, v2}, Ls5/f0$a$b;->c(I)Ls5/f0$a$b;

    move-result-object v1

    .line 14
    invoke-virtual {p1}, Ls5/f0$a;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ls5/f0$a$b;->e(Ljava/lang/String;)Ls5/f0$a$b;

    move-result-object v1

    .line 15
    invoke-virtual {p1}, Ls5/f0$a;->g()I

    move-result v2

    invoke-virtual {v1, v2}, Ls5/f0$a$b;->g(I)Ls5/f0$a$b;

    move-result-object v1

    .line 16
    invoke-virtual {p1}, Ls5/f0$a;->i()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ls5/f0$a$b;->i(J)Ls5/f0$a$b;

    move-result-object v1

    .line 17
    invoke-virtual {p1}, Ls5/f0$a;->d()I

    move-result v2

    invoke-virtual {v1, v2}, Ls5/f0$a$b;->d(I)Ls5/f0$a$b;

    move-result-object v1

    .line 18
    invoke-virtual {p1}, Ls5/f0$a;->f()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ls5/f0$a$b;->f(J)Ls5/f0$a$b;

    move-result-object v1

    .line 19
    invoke-virtual {p1}, Ls5/f0$a;->h()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ls5/f0$a$b;->h(J)Ls5/f0$a$b;

    move-result-object v1

    .line 20
    invoke-virtual {p1}, Ls5/f0$a;->j()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ls5/f0$a$b;->j(Ljava/lang/String;)Ls5/f0$a$b;

    move-result-object p1

    .line 21
    invoke-virtual {p1, v0}, Ls5/f0$a$b;->b(Ljava/util/List;)Ls5/f0$a$b;

    move-result-object p1

    .line 22
    invoke-virtual {p1}, Ls5/f0$a$b;->a()Ls5/f0$a;

    move-result-object p1

    return-object p1
.end method

.method private b()Ls5/f0$b;
    .registers 3

    .line 1
    invoke-static {}, Ls5/f0;->b()Ls5/f0$b;

    move-result-object v0

    const-string v1, "18.6.0"

    .line 2
    invoke-virtual {v0, v1}, Ls5/f0$b;->k(Ljava/lang/String;)Ls5/f0$b;

    move-result-object v0

    iget-object v1, p0, Lq5/t;->c:Lq5/a;

    iget-object v1, v1, Lq5/a;->a:Ljava/lang/String;

    .line 3
    invoke-virtual {v0, v1}, Ls5/f0$b;->g(Ljava/lang/String;)Ls5/f0$b;

    move-result-object v0

    iget-object v1, p0, Lq5/t;->b:Lq5/b0;

    .line 4
    invoke-virtual {v1}, Lq5/b0;->a()Lq5/c0$a;

    move-result-object v1

    invoke-virtual {v1}, Lq5/c0$a;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ls5/f0$b;->h(Ljava/lang/String;)Ls5/f0$b;

    move-result-object v0

    iget-object v1, p0, Lq5/t;->b:Lq5/b0;

    .line 5
    invoke-virtual {v1}, Lq5/b0;->a()Lq5/c0$a;

    move-result-object v1

    invoke-virtual {v1}, Lq5/c0$a;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ls5/f0$b;->f(Ljava/lang/String;)Ls5/f0$b;

    move-result-object v0

    iget-object v1, p0, Lq5/t;->c:Lq5/a;

    iget-object v1, v1, Lq5/a;->f:Ljava/lang/String;

    .line 6
    invoke-virtual {v0, v1}, Ls5/f0$b;->d(Ljava/lang/String;)Ls5/f0$b;

    move-result-object v0

    iget-object v1, p0, Lq5/t;->c:Lq5/a;

    iget-object v1, v1, Lq5/a;->g:Ljava/lang/String;

    .line 7
    invoke-virtual {v0, v1}, Ls5/f0$b;->e(Ljava/lang/String;)Ls5/f0$b;

    move-result-object v0

    const/4 v1, 0x4

    .line 8
    invoke-virtual {v0, v1}, Ls5/f0$b;->j(I)Ls5/f0$b;

    move-result-object v0

    return-object v0
.end method

.method private static f(J)J
    .registers 5

    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-lez v2, :cond_7

    goto :goto_8

    :cond_7
    move-wide p0, v0

    :goto_8
    return-wide p0
.end method

.method private static g()I
    .registers 4

    .line 1
    sget-object v0, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    .line 2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x7

    if-eqz v1, :cond_a

    return v2

    .line 3
    :cond_a
    sget-object v1, Lq5/t;->g:Ljava/util/Map;

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_1b

    return v2

    .line 4
    :cond_1b
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method private h()Ls5/f0$e$d$a$b$a;
    .registers 4

    .line 1
    invoke-static {}, Ls5/f0$e$d$a$b$a;->a()Ls5/f0$e$d$a$b$a$a;

    move-result-object v0

    const-wide/16 v1, 0x0

    .line 2
    invoke-virtual {v0, v1, v2}, Ls5/f0$e$d$a$b$a$a;->b(J)Ls5/f0$e$d$a$b$a$a;

    move-result-object v0

    .line 3
    invoke-virtual {v0, v1, v2}, Ls5/f0$e$d$a$b$a$a;->d(J)Ls5/f0$e$d$a$b$a$a;

    move-result-object v0

    iget-object v1, p0, Lq5/t;->c:Lq5/a;

    iget-object v1, v1, Lq5/a;->e:Ljava/lang/String;

    .line 4
    invoke-virtual {v0, v1}, Ls5/f0$e$d$a$b$a$a;->c(Ljava/lang/String;)Ls5/f0$e$d$a$b$a$a;

    move-result-object v0

    iget-object v1, p0, Lq5/t;->c:Lq5/a;

    iget-object v1, v1, Lq5/a;->b:Ljava/lang/String;

    .line 5
    invoke-virtual {v0, v1}, Ls5/f0$e$d$a$b$a$a;->e(Ljava/lang/String;)Ls5/f0$e$d$a$b$a$a;

    move-result-object v0

    .line 6
    invoke-virtual {v0}, Ls5/f0$e$d$a$b$a$a;->a()Ls5/f0$e$d$a$b$a;

    move-result-object v0

    return-object v0
.end method

.method private i()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ls5/f0$e$d$a$b$a;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lq5/t;->h()Ls5/f0$e$d$a$b$a;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private j(ILs5/f0$a;)Ls5/f0$e$d$a;
    .registers 5

    .line 1
    invoke-virtual {p2}, Ls5/f0$a;->c()I

    move-result v0

    const/16 v1, 0x64

    if-eq v0, v1, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    .line 2
    :goto_b
    invoke-static {}, Ls5/f0$e$d$a;->a()Ls5/f0$e$d$a$a;

    move-result-object v1

    .line 3
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, v0}, Ls5/f0$e$d$a$a;->c(Ljava/lang/Boolean;)Ls5/f0$e$d$a$a;

    move-result-object v0

    .line 4
    invoke-direct {p0, p2}, Lq5/t;->A(Ls5/f0$a;)Ls5/f0$e$d$a$c;

    move-result-object v1

    invoke-virtual {v0, v1}, Ls5/f0$e$d$a$a;->d(Ls5/f0$e$d$a$c;)Ls5/f0$e$d$a$a;

    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Ls5/f0$e$d$a$a;->h(I)Ls5/f0$e$d$a$a;

    move-result-object p1

    .line 6
    invoke-direct {p0, p2}, Lq5/t;->o(Ls5/f0$a;)Ls5/f0$e$d$a$b;

    move-result-object p2

    invoke-virtual {p1, p2}, Ls5/f0$e$d$a$a;->f(Ls5/f0$e$d$a$b;)Ls5/f0$e$d$a$a;

    move-result-object p1

    .line 7
    invoke-virtual {p1}, Ls5/f0$e$d$a$a;->a()Ls5/f0$e$d$a;

    move-result-object p1

    return-object p1
.end method

.method private k(ILy5/e;Ljava/lang/Thread;IIZ)Ls5/f0$e$d$a;
    .registers 13

    .line 1
    iget-object v0, p0, Lq5/t;->f:Ln5/i;

    iget-object v1, p0, Lq5/t;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Ln5/i;->e(Landroid/content/Context;)Ls5/f0$e$d$a$c;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Ls5/f0$e$d$a$c;->b()I

    move-result v1

    if-lez v1, :cond_1e

    .line 3
    invoke-virtual {v0}, Ls5/f0$e$d$a$c;->b()I

    move-result v1

    const/16 v2, 0x64

    if-eq v1, v2, :cond_18

    const/4 v1, 0x1

    goto :goto_19

    :cond_18
    const/4 v1, 0x0

    :goto_19
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_1f

    :cond_1e
    const/4 v1, 0x0

    .line 4
    :goto_1f
    invoke-static {}, Ls5/f0$e$d$a;->a()Ls5/f0$e$d$a$a;

    move-result-object v2

    .line 5
    invoke-virtual {v2, v1}, Ls5/f0$e$d$a$a;->c(Ljava/lang/Boolean;)Ls5/f0$e$d$a$a;

    move-result-object v1

    .line 6
    invoke-virtual {v1, v0}, Ls5/f0$e$d$a$a;->d(Ls5/f0$e$d$a$c;)Ls5/f0$e$d$a$a;

    move-result-object v0

    iget-object v1, p0, Lq5/t;->f:Ln5/i;

    iget-object v2, p0, Lq5/t;->a:Landroid/content/Context;

    .line 7
    invoke-virtual {v1, v2}, Ln5/i;->d(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ls5/f0$e$d$a$a;->b(Ljava/util/List;)Ls5/f0$e$d$a$a;

    move-result-object v0

    .line 8
    invoke-virtual {v0, p1}, Ls5/f0$e$d$a$a;->h(I)Ls5/f0$e$d$a$a;

    move-result-object p1

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    .line 9
    invoke-direct/range {v0 .. v5}, Lq5/t;->p(Ly5/e;Ljava/lang/Thread;IIZ)Ls5/f0$e$d$a$b;

    move-result-object p2

    .line 10
    invoke-virtual {p1, p2}, Ls5/f0$e$d$a$a;->f(Ls5/f0$e$d$a$b;)Ls5/f0$e$d$a$a;

    move-result-object p1

    .line 11
    invoke-virtual {p1}, Ls5/f0$e$d$a$a;->a()Ls5/f0$e$d$a;

    move-result-object p1

    return-object p1
.end method

.method private l(I)Ls5/f0$e$d$c;
    .registers 10

    .line 1
    iget-object v0, p0, Lq5/t;->a:Landroid/content/Context;

    invoke-static {v0}, Lq5/e;->a(Landroid/content/Context;)Lq5/e;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lq5/e;->b()Ljava/lang/Float;

    move-result-object v1

    if-eqz v1, :cond_15

    .line 3
    invoke-virtual {v1}, Ljava/lang/Float;->doubleValue()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    goto :goto_16

    :cond_15
    const/4 v1, 0x0

    .line 4
    :goto_16
    invoke-virtual {v0}, Lq5/e;->c()I

    move-result v0

    .line 5
    iget-object v2, p0, Lq5/t;->a:Landroid/content/Context;

    invoke-static {v2}, Lq5/i;->n(Landroid/content/Context;)Z

    move-result v2

    .line 6
    iget-object v3, p0, Lq5/t;->a:Landroid/content/Context;

    .line 7
    invoke-static {v3}, Lq5/i;->b(Landroid/content/Context;)J

    move-result-wide v3

    iget-object v5, p0, Lq5/t;->a:Landroid/content/Context;

    .line 8
    invoke-static {v5}, Lq5/i;->a(Landroid/content/Context;)J

    move-result-wide v5

    sub-long/2addr v3, v5

    .line 9
    invoke-static {v3, v4}, Lq5/t;->f(J)J

    move-result-wide v3

    .line 10
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lq5/i;->c(Ljava/lang/String;)J

    move-result-wide v5

    .line 11
    invoke-static {}, Ls5/f0$e$d$c;->a()Ls5/f0$e$d$c$a;

    move-result-object v7

    .line 12
    invoke-virtual {v7, v1}, Ls5/f0$e$d$c$a;->b(Ljava/lang/Double;)Ls5/f0$e$d$c$a;

    move-result-object v1

    .line 13
    invoke-virtual {v1, v0}, Ls5/f0$e$d$c$a;->c(I)Ls5/f0$e$d$c$a;

    move-result-object v0

    .line 14
    invoke-virtual {v0, v2}, Ls5/f0$e$d$c$a;->f(Z)Ls5/f0$e$d$c$a;

    move-result-object v0

    .line 15
    invoke-virtual {v0, p1}, Ls5/f0$e$d$c$a;->e(I)Ls5/f0$e$d$c$a;

    move-result-object p1

    .line 16
    invoke-virtual {p1, v3, v4}, Ls5/f0$e$d$c$a;->g(J)Ls5/f0$e$d$c$a;

    move-result-object p1

    .line 17
    invoke-virtual {p1, v5, v6}, Ls5/f0$e$d$c$a;->d(J)Ls5/f0$e$d$c$a;

    move-result-object p1

    .line 18
    invoke-virtual {p1}, Ls5/f0$e$d$c$a;->a()Ls5/f0$e$d$c;

    move-result-object p1

    return-object p1
.end method

.method private m(Ly5/e;II)Ls5/f0$e$d$a$b$c;
    .registers 5

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, p3, v0}, Lq5/t;->n(Ly5/e;III)Ls5/f0$e$d$a$b$c;

    move-result-object p1

    return-object p1
.end method

.method private n(Ly5/e;III)Ls5/f0$e$d$a$b$c;
    .registers 10

    .line 1
    iget-object v0, p1, Ly5/e;->b:Ljava/lang/String;

    .line 2
    iget-object v1, p1, Ly5/e;->a:Ljava/lang/String;

    .line 3
    iget-object v2, p1, Ly5/e;->c:[Ljava/lang/StackTraceElement;

    const/4 v3, 0x0

    if-eqz v2, :cond_a

    goto :goto_c

    :cond_a
    new-array v2, v3, [Ljava/lang/StackTraceElement;

    .line 4
    :goto_c
    iget-object p1, p1, Ly5/e;->d:Ly5/e;

    if-lt p4, p3, :cond_18

    move-object v4, p1

    :goto_11
    if-eqz v4, :cond_18

    .line 5
    iget-object v4, v4, Ly5/e;->d:Ly5/e;

    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    .line 6
    :cond_18
    invoke-static {}, Ls5/f0$e$d$a$b$c;->a()Ls5/f0$e$d$a$b$c$a;

    move-result-object v4

    .line 7
    invoke-virtual {v4, v0}, Ls5/f0$e$d$a$b$c$a;->f(Ljava/lang/String;)Ls5/f0$e$d$a$b$c$a;

    move-result-object v0

    .line 8
    invoke-virtual {v0, v1}, Ls5/f0$e$d$a$b$c$a;->e(Ljava/lang/String;)Ls5/f0$e$d$a$b$c$a;

    move-result-object v0

    .line 9
    invoke-direct {p0, v2, p2}, Lq5/t;->r([Ljava/lang/StackTraceElement;I)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ls5/f0$e$d$a$b$c$a;->c(Ljava/util/List;)Ls5/f0$e$d$a$b$c$a;

    move-result-object v0

    .line 10
    invoke-virtual {v0, v3}, Ls5/f0$e$d$a$b$c$a;->d(I)Ls5/f0$e$d$a$b$c$a;

    move-result-object v0

    if-eqz p1, :cond_3d

    if-nez v3, :cond_3d

    add-int/lit8 p4, p4, 0x1

    .line 11
    invoke-direct {p0, p1, p2, p3, p4}, Lq5/t;->n(Ly5/e;III)Ls5/f0$e$d$a$b$c;

    move-result-object p1

    .line 12
    invoke-virtual {v0, p1}, Ls5/f0$e$d$a$b$c$a;->b(Ls5/f0$e$d$a$b$c;)Ls5/f0$e$d$a$b$c$a;

    .line 13
    :cond_3d
    invoke-virtual {v0}, Ls5/f0$e$d$a$b$c$a;->a()Ls5/f0$e$d$a$b$c;

    move-result-object p1

    return-object p1
.end method

.method private o(Ls5/f0$a;)Ls5/f0$e$d$a$b;
    .registers 3

    .line 1
    invoke-static {}, Ls5/f0$e$d$a$b;->a()Ls5/f0$e$d$a$b$b;

    move-result-object v0

    .line 2
    invoke-virtual {v0, p1}, Ls5/f0$e$d$a$b$b;->b(Ls5/f0$a;)Ls5/f0$e$d$a$b$b;

    move-result-object p1

    .line 3
    invoke-direct {p0}, Lq5/t;->w()Ls5/f0$e$d$a$b$d;

    move-result-object v0

    invoke-virtual {p1, v0}, Ls5/f0$e$d$a$b$b;->e(Ls5/f0$e$d$a$b$d;)Ls5/f0$e$d$a$b$b;

    move-result-object p1

    .line 4
    invoke-direct {p0}, Lq5/t;->i()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Ls5/f0$e$d$a$b$b;->c(Ljava/util/List;)Ls5/f0$e$d$a$b$b;

    move-result-object p1

    .line 5
    invoke-virtual {p1}, Ls5/f0$e$d$a$b$b;->a()Ls5/f0$e$d$a$b;

    move-result-object p1

    return-object p1
.end method

.method private p(Ly5/e;Ljava/lang/Thread;IIZ)Ls5/f0$e$d$a$b;
    .registers 7

    .line 1
    invoke-static {}, Ls5/f0$e$d$a$b;->a()Ls5/f0$e$d$a$b$b;

    move-result-object v0

    .line 2
    invoke-direct {p0, p1, p2, p3, p5}, Lq5/t;->z(Ly5/e;Ljava/lang/Thread;IZ)Ljava/util/List;

    move-result-object p2

    .line 3
    invoke-virtual {v0, p2}, Ls5/f0$e$d$a$b$b;->f(Ljava/util/List;)Ls5/f0$e$d$a$b$b;

    move-result-object p2

    .line 4
    invoke-direct {p0, p1, p3, p4}, Lq5/t;->m(Ly5/e;II)Ls5/f0$e$d$a$b$c;

    move-result-object p1

    .line 5
    invoke-virtual {p2, p1}, Ls5/f0$e$d$a$b$b;->d(Ls5/f0$e$d$a$b$c;)Ls5/f0$e$d$a$b$b;

    move-result-object p1

    .line 6
    invoke-direct {p0}, Lq5/t;->w()Ls5/f0$e$d$a$b$d;

    move-result-object p2

    invoke-virtual {p1, p2}, Ls5/f0$e$d$a$b$b;->e(Ls5/f0$e$d$a$b$d;)Ls5/f0$e$d$a$b$b;

    move-result-object p1

    .line 7
    invoke-direct {p0}, Lq5/t;->i()Ljava/util/List;

    move-result-object p2

    invoke-virtual {p1, p2}, Ls5/f0$e$d$a$b$b;->c(Ljava/util/List;)Ls5/f0$e$d$a$b$b;

    move-result-object p1

    .line 8
    invoke-virtual {p1}, Ls5/f0$e$d$a$b$b;->a()Ls5/f0$e$d$a$b;

    move-result-object p1

    return-object p1
.end method

.method private q(Ljava/lang/StackTraceElement;Ls5/f0$e$d$a$b$e$b$a;)Ls5/f0$e$d$a$b$e$b;
    .registers 10

    .line 1
    invoke-virtual {p1}, Ljava/lang/StackTraceElement;->isNativeMethod()Z

    move-result v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_12

    .line 2
    invoke-virtual {p1}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v0

    int-to-long v3, v0

    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    goto :goto_13

    :cond_12
    move-wide v3, v1

    .line 3
    :goto_13
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "."

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-virtual {p1}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v5

    .line 5
    invoke-virtual {p1}, Ljava/lang/StackTraceElement;->isNativeMethod()Z

    move-result v6

    if-nez v6, :cond_44

    invoke-virtual {p1}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v6

    if-lez v6, :cond_44

    .line 6
    invoke-virtual {p1}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result p1

    int-to-long v1, p1

    .line 7
    :cond_44
    invoke-virtual {p2, v3, v4}, Ls5/f0$e$d$a$b$e$b$a;->e(J)Ls5/f0$e$d$a$b$e$b$a;

    move-result-object p1

    invoke-virtual {p1, v0}, Ls5/f0$e$d$a$b$e$b$a;->f(Ljava/lang/String;)Ls5/f0$e$d$a$b$e$b$a;

    move-result-object p1

    invoke-virtual {p1, v5}, Ls5/f0$e$d$a$b$e$b$a;->b(Ljava/lang/String;)Ls5/f0$e$d$a$b$e$b$a;

    move-result-object p1

    invoke-virtual {p1, v1, v2}, Ls5/f0$e$d$a$b$e$b$a;->d(J)Ls5/f0$e$d$a$b$e$b$a;

    move-result-object p1

    invoke-virtual {p1}, Ls5/f0$e$d$a$b$e$b$a;->a()Ls5/f0$e$d$a$b$e$b;

    move-result-object p1

    return-object p1
.end method

.method private r([Ljava/lang/StackTraceElement;I)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/StackTraceElement;",
            "I)",
            "Ljava/util/List<",
            "Ls5/f0$e$d$a$b$e$b;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    array-length v1, p1

    const/4 v2, 0x0

    :goto_7
    if-ge v2, v1, :cond_1d

    aget-object v3, p1, v2

    .line 3
    invoke-static {}, Ls5/f0$e$d$a$b$e$b;->a()Ls5/f0$e$d$a$b$e$b$a;

    move-result-object v4

    invoke-virtual {v4, p2}, Ls5/f0$e$d$a$b$e$b$a;->c(I)Ls5/f0$e$d$a$b$e$b$a;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lq5/t;->q(Ljava/lang/StackTraceElement;Ls5/f0$e$d$a$b$e$b$a;)Ls5/f0$e$d$a$b$e$b;

    move-result-object v3

    .line 4
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 5
    :cond_1d
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method private s()Ls5/f0$e$a;
    .registers 3

    .line 1
    invoke-static {}, Ls5/f0$e$a;->a()Ls5/f0$e$a$a;

    move-result-object v0

    iget-object v1, p0, Lq5/t;->b:Lq5/b0;

    .line 2
    invoke-virtual {v1}, Lq5/b0;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ls5/f0$e$a$a;->e(Ljava/lang/String;)Ls5/f0$e$a$a;

    move-result-object v0

    iget-object v1, p0, Lq5/t;->c:Lq5/a;

    iget-object v1, v1, Lq5/a;->f:Ljava/lang/String;

    .line 3
    invoke-virtual {v0, v1}, Ls5/f0$e$a$a;->g(Ljava/lang/String;)Ls5/f0$e$a$a;

    move-result-object v0

    iget-object v1, p0, Lq5/t;->c:Lq5/a;

    iget-object v1, v1, Lq5/a;->g:Ljava/lang/String;

    .line 4
    invoke-virtual {v0, v1}, Ls5/f0$e$a$a;->d(Ljava/lang/String;)Ls5/f0$e$a$a;

    move-result-object v0

    iget-object v1, p0, Lq5/t;->b:Lq5/b0;

    .line 5
    invoke-virtual {v1}, Lq5/b0;->a()Lq5/c0$a;

    move-result-object v1

    invoke-virtual {v1}, Lq5/c0$a;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ls5/f0$e$a$a;->f(Ljava/lang/String;)Ls5/f0$e$a$a;

    move-result-object v0

    iget-object v1, p0, Lq5/t;->c:Lq5/a;

    iget-object v1, v1, Lq5/a;->h:Ln5/f;

    .line 6
    invoke-virtual {v1}, Ln5/f;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ls5/f0$e$a$a;->b(Ljava/lang/String;)Ls5/f0$e$a$a;

    move-result-object v0

    iget-object v1, p0, Lq5/t;->c:Lq5/a;

    iget-object v1, v1, Lq5/a;->h:Ln5/f;

    .line 7
    invoke-virtual {v1}, Ln5/f;->e()Ljava/lang/String;

    move-result-object v1

    .line 8
    invoke-virtual {v0, v1}, Ls5/f0$e$a$a;->c(Ljava/lang/String;)Ls5/f0$e$a$a;

    move-result-object v0

    .line 9
    invoke-virtual {v0}, Ls5/f0$e$a$a;->a()Ls5/f0$e$a;

    move-result-object v0

    return-object v0
.end method

.method private t(Ljava/lang/String;J)Ls5/f0$e;
    .registers 5

    .line 1
    invoke-static {}, Ls5/f0$e;->a()Ls5/f0$e$b;

    move-result-object v0

    .line 2
    invoke-virtual {v0, p2, p3}, Ls5/f0$e$b;->m(J)Ls5/f0$e$b;

    move-result-object p2

    .line 3
    invoke-virtual {p2, p1}, Ls5/f0$e$b;->j(Ljava/lang/String;)Ls5/f0$e$b;

    move-result-object p1

    sget-object p2, Lq5/t;->h:Ljava/lang/String;

    .line 4
    invoke-virtual {p1, p2}, Ls5/f0$e$b;->h(Ljava/lang/String;)Ls5/f0$e$b;

    move-result-object p1

    .line 5
    invoke-direct {p0}, Lq5/t;->s()Ls5/f0$e$a;

    move-result-object p2

    invoke-virtual {p1, p2}, Ls5/f0$e$b;->b(Ls5/f0$e$a;)Ls5/f0$e$b;

    move-result-object p1

    .line 6
    invoke-direct {p0}, Lq5/t;->v()Ls5/f0$e$e;

    move-result-object p2

    invoke-virtual {p1, p2}, Ls5/f0$e$b;->l(Ls5/f0$e$e;)Ls5/f0$e$b;

    move-result-object p1

    .line 7
    invoke-direct {p0}, Lq5/t;->u()Ls5/f0$e$c;

    move-result-object p2

    invoke-virtual {p1, p2}, Ls5/f0$e$b;->e(Ls5/f0$e$c;)Ls5/f0$e$b;

    move-result-object p1

    const/4 p2, 0x3

    .line 8
    invoke-virtual {p1, p2}, Ls5/f0$e$b;->i(I)Ls5/f0$e$b;

    move-result-object p1

    .line 9
    invoke-virtual {p1}, Ls5/f0$e$b;->a()Ls5/f0$e;

    move-result-object p1

    return-object p1
.end method

.method private u()Ls5/f0$e$c;
    .registers 12

    .line 1
    new-instance v0, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lq5/t;->g()I

    move-result v1

    .line 3
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v2

    .line 4
    iget-object v3, p0, Lq5/t;->a:Landroid/content/Context;

    invoke-static {v3}, Lq5/i;->b(Landroid/content/Context;)J

    move-result-wide v3

    .line 5
    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockCount()I

    move-result v5

    int-to-long v5, v5

    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSize()I

    move-result v0

    int-to-long v7, v0

    mul-long v5, v5, v7

    .line 6
    invoke-static {}, Lq5/i;->w()Z

    move-result v0

    .line 7
    invoke-static {}, Lq5/i;->l()I

    move-result v7

    .line 8
    sget-object v8, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 9
    sget-object v9, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    .line 10
    invoke-static {}, Ls5/f0$e$c;->a()Ls5/f0$e$c$a;

    move-result-object v10

    .line 11
    invoke-virtual {v10, v1}, Ls5/f0$e$c$a;->b(I)Ls5/f0$e$c$a;

    move-result-object v1

    sget-object v10, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 12
    invoke-virtual {v1, v10}, Ls5/f0$e$c$a;->f(Ljava/lang/String;)Ls5/f0$e$c$a;

    move-result-object v1

    .line 13
    invoke-virtual {v1, v2}, Ls5/f0$e$c$a;->c(I)Ls5/f0$e$c$a;

    move-result-object v1

    .line 14
    invoke-virtual {v1, v3, v4}, Ls5/f0$e$c$a;->h(J)Ls5/f0$e$c$a;

    move-result-object v1

    .line 15
    invoke-virtual {v1, v5, v6}, Ls5/f0$e$c$a;->d(J)Ls5/f0$e$c$a;

    move-result-object v1

    .line 16
    invoke-virtual {v1, v0}, Ls5/f0$e$c$a;->i(Z)Ls5/f0$e$c$a;

    move-result-object v0

    .line 17
    invoke-virtual {v0, v7}, Ls5/f0$e$c$a;->j(I)Ls5/f0$e$c$a;

    move-result-object v0

    .line 18
    invoke-virtual {v0, v8}, Ls5/f0$e$c$a;->e(Ljava/lang/String;)Ls5/f0$e$c$a;

    move-result-object v0

    .line 19
    invoke-virtual {v0, v9}, Ls5/f0$e$c$a;->g(Ljava/lang/String;)Ls5/f0$e$c$a;

    move-result-object v0

    .line 20
    invoke-virtual {v0}, Ls5/f0$e$c$a;->a()Ls5/f0$e$c;

    move-result-object v0

    return-object v0
.end method

.method private v()Ls5/f0$e$e;
    .registers 3

    .line 1
    invoke-static {}, Ls5/f0$e$e;->a()Ls5/f0$e$e$a;

    move-result-object v0

    const/4 v1, 0x3

    .line 2
    invoke-virtual {v0, v1}, Ls5/f0$e$e$a;->d(I)Ls5/f0$e$e$a;

    move-result-object v0

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 3
    invoke-virtual {v0, v1}, Ls5/f0$e$e$a;->e(Ljava/lang/String;)Ls5/f0$e$e$a;

    move-result-object v0

    sget-object v1, Landroid/os/Build$VERSION;->CODENAME:Ljava/lang/String;

    .line 4
    invoke-virtual {v0, v1}, Ls5/f0$e$e$a;->b(Ljava/lang/String;)Ls5/f0$e$e$a;

    move-result-object v0

    .line 5
    invoke-static {}, Lq5/i;->x()Z

    move-result v1

    invoke-virtual {v0, v1}, Ls5/f0$e$e$a;->c(Z)Ls5/f0$e$e$a;

    move-result-object v0

    .line 6
    invoke-virtual {v0}, Ls5/f0$e$e$a;->a()Ls5/f0$e$e;

    move-result-object v0

    return-object v0
.end method

.method private w()Ls5/f0$e$d$a$b$d;
    .registers 4

    .line 1
    invoke-static {}, Ls5/f0$e$d$a$b$d;->a()Ls5/f0$e$d$a$b$d$a;

    move-result-object v0

    const-string v1, "0"

    .line 2
    invoke-virtual {v0, v1}, Ls5/f0$e$d$a$b$d$a;->d(Ljava/lang/String;)Ls5/f0$e$d$a$b$d$a;

    move-result-object v0

    .line 3
    invoke-virtual {v0, v1}, Ls5/f0$e$d$a$b$d$a;->c(Ljava/lang/String;)Ls5/f0$e$d$a$b$d$a;

    move-result-object v0

    const-wide/16 v1, 0x0

    .line 4
    invoke-virtual {v0, v1, v2}, Ls5/f0$e$d$a$b$d$a;->b(J)Ls5/f0$e$d$a$b$d$a;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ls5/f0$e$d$a$b$d$a;->a()Ls5/f0$e$d$a$b$d;

    move-result-object v0

    return-object v0
.end method

.method private x(Ljava/lang/Thread;[Ljava/lang/StackTraceElement;)Ls5/f0$e$d$a$b$e;
    .registers 4

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lq5/t;->y(Ljava/lang/Thread;[Ljava/lang/StackTraceElement;I)Ls5/f0$e$d$a$b$e;

    move-result-object p1

    return-object p1
.end method

.method private y(Ljava/lang/Thread;[Ljava/lang/StackTraceElement;I)Ls5/f0$e$d$a$b$e;
    .registers 5

    .line 1
    invoke-static {}, Ls5/f0$e$d$a$b$e;->a()Ls5/f0$e$d$a$b$e$a;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ls5/f0$e$d$a$b$e$a;->d(Ljava/lang/String;)Ls5/f0$e$d$a$b$e$a;

    move-result-object p1

    .line 3
    invoke-virtual {p1, p3}, Ls5/f0$e$d$a$b$e$a;->c(I)Ls5/f0$e$d$a$b$e$a;

    move-result-object p1

    .line 4
    invoke-direct {p0, p2, p3}, Lq5/t;->r([Ljava/lang/StackTraceElement;I)Ljava/util/List;

    move-result-object p2

    invoke-virtual {p1, p2}, Ls5/f0$e$d$a$b$e$a;->b(Ljava/util/List;)Ls5/f0$e$d$a$b$e$a;

    move-result-object p1

    .line 5
    invoke-virtual {p1}, Ls5/f0$e$d$a$b$e$a;->a()Ls5/f0$e$d$a$b$e;

    move-result-object p1

    return-object p1
.end method

.method private z(Ly5/e;Ljava/lang/Thread;IZ)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ly5/e;",
            "Ljava/lang/Thread;",
            "IZ)",
            "Ljava/util/List<",
            "Ls5/f0$e$d$a$b$e;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    iget-object p1, p1, Ly5/e;->c:[Ljava/lang/StackTraceElement;

    .line 3
    invoke-direct {p0, p2, p1, p3}, Lq5/t;->y(Ljava/lang/Thread;[Ljava/lang/StackTraceElement;I)Ls5/f0$e$d$a$b$e;

    move-result-object p1

    .line 4
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz p4, :cond_48

    .line 5
    invoke-static {}, Ljava/lang/Thread;->getAllStackTraces()Ljava/util/Map;

    move-result-object p1

    .line 6
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1c
    :goto_1c
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_48

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Map$Entry;

    .line 7
    invoke-interface {p3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/Thread;

    .line 8
    invoke-virtual {p4, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1c

    .line 9
    iget-object v1, p0, Lq5/t;->d:Ly5/d;

    .line 10
    invoke-interface {p3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, [Ljava/lang/StackTraceElement;

    invoke-interface {v1, p3}, Ly5/d;->a([Ljava/lang/StackTraceElement;)[Ljava/lang/StackTraceElement;

    move-result-object p3

    .line 11
    invoke-direct {p0, p4, p3}, Lq5/t;->x(Ljava/lang/Thread;[Ljava/lang/StackTraceElement;)Ls5/f0$e$d$a$b$e;

    move-result-object p3

    .line 12
    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1c

    .line 13
    :cond_48
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public c(Ls5/f0$a;)Ls5/f0$e$d;
    .registers 6

    .line 1
    iget-object v0, p0, Lq5/t;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    .line 2
    invoke-static {}, Ls5/f0$e$d;->a()Ls5/f0$e$d$b;

    move-result-object v1

    const-string v2, "anr"

    .line 3
    invoke-virtual {v1, v2}, Ls5/f0$e$d$b;->g(Ljava/lang/String;)Ls5/f0$e$d$b;

    move-result-object v1

    .line 4
    invoke-virtual {p1}, Ls5/f0$a;->i()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ls5/f0$e$d$b;->f(J)Ls5/f0$e$d$b;

    move-result-object v1

    .line 5
    invoke-direct {p0, p1}, Lq5/t;->a(Ls5/f0$a;)Ls5/f0$a;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lq5/t;->j(ILs5/f0$a;)Ls5/f0$e$d$a;

    move-result-object p1

    invoke-virtual {v1, p1}, Ls5/f0$e$d$b;->b(Ls5/f0$e$d$a;)Ls5/f0$e$d$b;

    move-result-object p1

    .line 6
    invoke-direct {p0, v0}, Lq5/t;->l(I)Ls5/f0$e$d$c;

    move-result-object v0

    invoke-virtual {p1, v0}, Ls5/f0$e$d$b;->c(Ls5/f0$e$d$c;)Ls5/f0$e$d$b;

    move-result-object p1

    .line 7
    invoke-virtual {p1}, Ls5/f0$e$d$b;->a()Ls5/f0$e$d;

    move-result-object p1

    return-object p1
.end method

.method public d(Ljava/lang/Throwable;Ljava/lang/Thread;Ljava/lang/String;JIIZ)Ls5/f0$e$d;
    .registers 19

    move-object v7, p0

    .line 1
    iget-object v0, v7, Lq5/t;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v8, v0, Landroid/content/res/Configuration;->orientation:I

    .line 2
    iget-object v0, v7, Lq5/t;->d:Ly5/d;

    move-object v1, p1

    .line 3
    invoke-static {p1, v0}, Ly5/e;->a(Ljava/lang/Throwable;Ly5/d;)Ly5/e;

    move-result-object v2

    .line 4
    invoke-static {}, Ls5/f0$e$d;->a()Ls5/f0$e$d$b;

    move-result-object v0

    move-object v1, p3

    .line 5
    invoke-virtual {v0, p3}, Ls5/f0$e$d$b;->g(Ljava/lang/String;)Ls5/f0$e$d$b;

    move-result-object v0

    move-wide v3, p4

    .line 6
    invoke-virtual {v0, p4, p5}, Ls5/f0$e$d$b;->f(J)Ls5/f0$e$d$b;

    move-result-object v9

    move-object v0, p0

    move v1, v8

    move-object v3, p2

    move/from16 v4, p6

    move/from16 v5, p7

    move/from16 v6, p8

    .line 7
    invoke-direct/range {v0 .. v6}, Lq5/t;->k(ILy5/e;Ljava/lang/Thread;IIZ)Ls5/f0$e$d$a;

    move-result-object v0

    .line 8
    invoke-virtual {v9, v0}, Ls5/f0$e$d$b;->b(Ls5/f0$e$d$a;)Ls5/f0$e$d$b;

    move-result-object v0

    .line 9
    invoke-direct {p0, v8}, Lq5/t;->l(I)Ls5/f0$e$d$c;

    move-result-object v1

    invoke-virtual {v0, v1}, Ls5/f0$e$d$b;->c(Ls5/f0$e$d$c;)Ls5/f0$e$d$b;

    move-result-object v0

    .line 10
    invoke-virtual {v0}, Ls5/f0$e$d$b;->a()Ls5/f0$e$d;

    move-result-object v0

    return-object v0
.end method

.method public e(Ljava/lang/String;J)Ls5/f0;
    .registers 5

    .line 1
    invoke-direct {p0}, Lq5/t;->b()Ls5/f0$b;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3}, Lq5/t;->t(Ljava/lang/String;J)Ls5/f0$e;

    move-result-object p1

    invoke-virtual {v0, p1}, Ls5/f0$b;->l(Ls5/f0$e;)Ls5/f0$b;

    move-result-object p1

    invoke-virtual {p1}, Ls5/f0$b;->a()Ls5/f0;

    move-result-object p1

    return-object p1
.end method
