###### Class l3.u (l3.u)
.class public Ll3/u;
.super Ljava/lang/Object;
.source "TransportRuntime.java"

# interfaces
.implements Ll3/t;


# annotations
.annotation runtime Ljavax/inject/Singleton;
.end annotation


# static fields
.field private static volatile e:Ll3/v;


# instance fields
.field private final a:Lv3/a;

.field private final b:Lv3/a;

.field private final c:Lr3/e;

.field private final d:Ls3/s;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method constructor <init>(Lv3/a;Lv3/a;Lr3/e;Ls3/s;Ls3/w;)V
    .registers 6
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Ll3/u;->a:Lv3/a;

    .line 3
    iput-object p2, p0, Ll3/u;->b:Lv3/a;

    .line 4
    iput-object p3, p0, Ll3/u;->c:Lr3/e;

    .line 5
    iput-object p4, p0, Ll3/u;->d:Ls3/s;

    .line 6
    invoke-virtual {p5}, Ls3/w;->c()V

    return-void
.end method

.method private b(Ll3/o;)Ll3/i;
    .registers 6

    .line 1
    invoke-static {}, Ll3/i;->a()Ll3/i$a;

    move-result-object v0

    iget-object v1, p0, Ll3/u;->a:Lv3/a;

    .line 2
    invoke-interface {v1}, Lv3/a;->a()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ll3/i$a;->i(J)Ll3/i$a;

    move-result-object v0

    iget-object v1, p0, Ll3/u;->b:Lv3/a;

    .line 3
    invoke-interface {v1}, Lv3/a;->a()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ll3/i$a;->k(J)Ll3/i$a;

    move-result-object v0

    .line 4
    invoke-virtual {p1}, Ll3/o;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ll3/i$a;->j(Ljava/lang/String;)Ll3/i$a;

    move-result-object v0

    new-instance v1, Ll3/h;

    .line 5
    invoke-virtual {p1}, Ll3/o;->b()Lj3/b;

    move-result-object v2

    invoke-virtual {p1}, Ll3/o;->d()[B

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ll3/h;-><init>(Lj3/b;[B)V

    invoke-virtual {v0, v1}, Ll3/i$a;->h(Ll3/h;)Ll3/i$a;

    move-result-object v0

    .line 6
    invoke-virtual {p1}, Ll3/o;->c()Lj3/c;

    move-result-object p1

    invoke-virtual {p1}, Lj3/c;->a()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ll3/i$a;->g(Ljava/lang/Integer;)Ll3/i$a;

    move-result-object p1

    .line 7
    invoke-virtual {p1}, Ll3/i$a;->d()Ll3/i;

    move-result-object p1

    return-object p1
.end method

.method public static c()Ll3/u;
    .registers 2

    .line 1
    sget-object v0, Ll3/u;->e:Ll3/v;

    if-eqz v0, :cond_9

    .line 2
    invoke-virtual {v0}, Ll3/v;->c()Ll3/u;

    move-result-object v0

    return-object v0

    .line 3
    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not initialized!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static d(Ll3/f;)Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ll3/f;",
            ")",
            "Ljava/util/Set<",
            "Lj3/b;",
            ">;"
        }
    .end annotation

    .line 1
    instance-of v0, p0, Ll3/g;

    if-eqz v0, :cond_f

    .line 2
    check-cast p0, Ll3/g;

    .line 3
    invoke-interface {p0}, Ll3/g;->a()Ljava/util/Set;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p0

    return-object p0

    :cond_f
    const-string p0, "proto"

    .line 4
    invoke-static {p0}, Lj3/b;->b(Ljava/lang/String;)Lj3/b;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public static f(Landroid/content/Context;)V
    .registers 3

    .line 1
    sget-object v0, Ll3/u;->e:Ll3/v;

    if-nez v0, :cond_1e

    .line 2
    const-class v0, Ll3/u;

    monitor-enter v0

    .line 3
    :try_start_7
    sget-object v1, Ll3/u;->e:Ll3/v;

    if-nez v1, :cond_19

    .line 4
    invoke-static {}, Ll3/e;->d()Ll3/v$a;

    move-result-object v1

    .line 5
    invoke-interface {v1, p0}, Ll3/v$a;->a(Landroid/content/Context;)Ll3/v$a;

    move-result-object p0

    .line 6
    invoke-interface {p0}, Ll3/v$a;->build()Ll3/v;

    move-result-object p0

    sput-object p0, Ll3/u;->e:Ll3/v;

    .line 7
    :cond_19
    monitor-exit v0

    goto :goto_1e

    :catchall_1b
    move-exception p0

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_7 .. :try_end_1d} :catchall_1b

    throw p0

    :cond_1e
    :goto_1e
    return-void
.end method


# virtual methods
.method public a(Ll3/o;Lj3/h;)V
    .registers 6

    .line 1
    iget-object v0, p0, Ll3/u;->c:Lr3/e;

    .line 2
    invoke-virtual {p1}, Ll3/o;->f()Ll3/p;

    move-result-object v1

    invoke-virtual {p1}, Ll3/o;->c()Lj3/c;

    move-result-object v2

    invoke-virtual {v2}, Lj3/c;->c()Lj3/d;

    move-result-object v2

    invoke-virtual {v1, v2}, Ll3/p;->f(Lj3/d;)Ll3/p;

    move-result-object v1

    .line 3
    invoke-direct {p0, p1}, Ll3/u;->b(Ll3/o;)Ll3/i;

    move-result-object p1

    .line 4
    invoke-interface {v0, v1, p1, p2}, Lr3/e;->a(Ll3/p;Ll3/i;Lj3/h;)V

    return-void
.end method

.method public e()Ls3/s;
    .registers 2

    .line 1
    iget-object v0, p0, Ll3/u;->d:Ls3/s;

    return-object v0
.end method

.method public g(Ll3/f;)Lj3/g;
    .registers 6

    .line 1
    new-instance v0, Ll3/q;

    .line 2
    invoke-static {p1}, Ll3/u;->d(Ll3/f;)Ljava/util/Set;

    move-result-object v1

    .line 3
    invoke-static {}, Ll3/p;->a()Ll3/p$a;

    move-result-object v2

    .line 4
    invoke-interface {p1}, Ll3/f;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ll3/p$a;->b(Ljava/lang/String;)Ll3/p$a;

    move-result-object v2

    .line 5
    invoke-interface {p1}, Ll3/f;->getExtras()[B

    move-result-object p1

    invoke-virtual {v2, p1}, Ll3/p$a;->c([B)Ll3/p$a;

    move-result-object p1

    .line 6
    invoke-virtual {p1}, Ll3/p$a;->a()Ll3/p;

    move-result-object p1

    invoke-direct {v0, v1, p1, p0}, Ll3/q;-><init>(Ljava/util/Set;Ll3/p;Ll3/t;)V

    return-object v0
.end method
