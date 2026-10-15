###### Class f8.t (f8.t)
.class public Lf8/t;
.super Ljava/lang/Object;
.source "Picasso.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lf8/t$e;,
        Lf8/t$b;,
        Lf8/t$c;,
        Lf8/t$f;,
        Lf8/t$g;,
        Lf8/t$d;
    }
.end annotation


# static fields
.field static final p:Landroid/os/Handler;

.field static volatile q:Lf8/t;


# instance fields
.field private final a:Lf8/t$d;

.field private final b:Lf8/t$g;

.field private final c:Lf8/t$c;

.field private final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lf8/y;",
            ">;"
        }
    .end annotation
.end field

.field final e:Landroid/content/Context;

.field final f:Lf8/i;

.field final g:Lf8/d;

.field final h:Lf8/a0;

.field final i:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Lf8/a;",
            ">;"
        }
    .end annotation
.end field

.field final j:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/widget/ImageView;",
            "Lf8/h;",
            ">;"
        }
    .end annotation
.end field

.field final k:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final l:Landroid/graphics/Bitmap$Config;

.field m:Z

.field volatile n:Z

.field o:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Lf8/t$a;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lf8/t$a;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lf8/t;->p:Landroid/os/Handler;

    const/4 v0, 0x0

    .line 2
    sput-object v0, Lf8/t;->q:Lf8/t;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lf8/i;Lf8/d;Lf8/t$d;Lf8/t$g;Ljava/util/List;Lf8/a0;Landroid/graphics/Bitmap$Config;ZZ)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lf8/i;",
            "Lf8/d;",
            "Lf8/t$d;",
            "Lf8/t$g;",
            "Ljava/util/List<",
            "Lf8/y;",
            ">;",
            "Lf8/a0;",
            "Landroid/graphics/Bitmap$Config;",
            "ZZ)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lf8/t;->e:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lf8/t;->f:Lf8/i;

    .line 4
    iput-object p3, p0, Lf8/t;->g:Lf8/d;

    .line 5
    iput-object p4, p0, Lf8/t;->a:Lf8/t$d;

    .line 6
    iput-object p5, p0, Lf8/t;->b:Lf8/t$g;

    .line 7
    iput-object p8, p0, Lf8/t;->l:Landroid/graphics/Bitmap$Config;

    if-eqz p6, :cond_16

    .line 8
    invoke-interface {p6}, Ljava/util/List;->size()I

    move-result p3

    goto :goto_17

    :cond_16
    const/4 p3, 0x0

    .line 9
    :goto_17
    new-instance p4, Ljava/util/ArrayList;

    add-int/lit8 p3, p3, 0x7

    invoke-direct {p4, p3}, Ljava/util/ArrayList;-><init>(I)V

    .line 10
    new-instance p3, Lf8/z;

    invoke-direct {p3, p1}, Lf8/z;-><init>(Landroid/content/Context;)V

    invoke-interface {p4, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz p6, :cond_2b

    .line 11
    invoke-interface {p4, p6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 12
    :cond_2b
    new-instance p3, Lf8/f;

    invoke-direct {p3, p1}, Lf8/f;-><init>(Landroid/content/Context;)V

    invoke-interface {p4, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 13
    new-instance p3, Lf8/o;

    invoke-direct {p3, p1}, Lf8/o;-><init>(Landroid/content/Context;)V

    invoke-interface {p4, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 14
    new-instance p3, Lf8/g;

    invoke-direct {p3, p1}, Lf8/g;-><init>(Landroid/content/Context;)V

    invoke-interface {p4, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 15
    new-instance p3, Lf8/b;

    invoke-direct {p3, p1}, Lf8/b;-><init>(Landroid/content/Context;)V

    invoke-interface {p4, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 16
    new-instance p3, Lf8/k;

    invoke-direct {p3, p1}, Lf8/k;-><init>(Landroid/content/Context;)V

    invoke-interface {p4, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 17
    new-instance p1, Lf8/r;

    iget-object p2, p2, Lf8/i;->d:Lf8/j;

    invoke-direct {p1, p2, p7}, Lf8/r;-><init>(Lf8/j;Lf8/a0;)V

    invoke-interface {p4, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 18
    invoke-static {p4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lf8/t;->d:Ljava/util/List;

    .line 19
    iput-object p7, p0, Lf8/t;->h:Lf8/a0;

    .line 20
    new-instance p1, Ljava/util/WeakHashMap;

    invoke-direct {p1}, Ljava/util/WeakHashMap;-><init>()V

    iput-object p1, p0, Lf8/t;->i:Ljava/util/Map;

    .line 21
    new-instance p1, Ljava/util/WeakHashMap;

    invoke-direct {p1}, Ljava/util/WeakHashMap;-><init>()V

    iput-object p1, p0, Lf8/t;->j:Ljava/util/Map;

    .line 22
    iput-boolean p9, p0, Lf8/t;->m:Z

    .line 23
    iput-boolean p10, p0, Lf8/t;->n:Z

    .line 24
    new-instance p1, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {p1}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object p1, p0, Lf8/t;->k:Ljava/lang/ref/ReferenceQueue;

    .line 25
    new-instance p2, Lf8/t$c;

    sget-object p3, Lf8/t;->p:Landroid/os/Handler;

    invoke-direct {p2, p1, p3}, Lf8/t$c;-><init>(Ljava/lang/ref/ReferenceQueue;Landroid/os/Handler;)V

    iput-object p2, p0, Lf8/t;->c:Lf8/t$c;

    .line 26
    invoke-virtual {p2}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method static synthetic a(Lf8/t;Ljava/lang/Object;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lf8/t;->b(Ljava/lang/Object;)V

    return-void
.end method

.method private b(Ljava/lang/Object;)V
    .registers 4

    .line 1
    invoke-static {}, Lf8/e0;->c()V

    .line 2
    iget-object v0, p0, Lf8/t;->i:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lf8/a;

    if-eqz v0, :cond_15

    .line 3
    invoke-virtual {v0}, Lf8/a;->a()V

    .line 4
    iget-object v1, p0, Lf8/t;->f:Lf8/i;

    invoke-virtual {v1, v0}, Lf8/i;->c(Lf8/a;)V

    .line 5
    :cond_15
    instance-of v0, p1, Landroid/widget/ImageView;

    if-eqz v0, :cond_28

    .line 6
    check-cast p1, Landroid/widget/ImageView;

    .line 7
    iget-object v0, p0, Lf8/t;->j:Ljava/util/Map;

    .line 8
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lf8/h;

    if-eqz p1, :cond_28

    .line 9
    invoke-virtual {p1}, Lf8/h;->a()V

    :cond_28
    return-void
.end method

.method private f(Landroid/graphics/Bitmap;Lf8/t$e;Lf8/a;)V
    .registers 6

    .line 1
    invoke-virtual {p3}, Lf8/a;->l()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 2
    :cond_7
    invoke-virtual {p3}, Lf8/a;->m()Z

    move-result v0

    if-nez v0, :cond_16

    .line 3
    iget-object v0, p0, Lf8/t;->i:Ljava/util/Map;

    invoke-virtual {p3}, Lf8/a;->k()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_16
    const-string v0, "Main"

    if-eqz p1, :cond_48

    if-eqz p2, :cond_40

    .line 4
    invoke-virtual {p3, p1, p2}, Lf8/a;->b(Landroid/graphics/Bitmap;Lf8/t$e;)V

    .line 5
    iget-boolean p1, p0, Lf8/t;->n:Z

    if-eqz p1, :cond_5a

    .line 6
    iget-object p1, p3, Lf8/a;->b:Lf8/w;

    invoke-virtual {p1}, Lf8/w;->d()Ljava/lang/String;

    move-result-object p1

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "from "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "completed"

    invoke-static {v0, p3, p1, p2}, Lf8/e0;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5a

    .line 7
    :cond_40
    new-instance p1, Ljava/lang/AssertionError;

    const-string p2, "LoadedFrom cannot be null."

    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    .line 8
    :cond_48
    invoke-virtual {p3}, Lf8/a;->c()V

    .line 9
    iget-boolean p1, p0, Lf8/t;->n:Z

    if-eqz p1, :cond_5a

    .line 10
    iget-object p1, p3, Lf8/a;->b:Lf8/w;

    invoke-virtual {p1}, Lf8/w;->d()Ljava/lang/String;

    move-result-object p1

    const-string p2, "errored"

    invoke-static {v0, p2, p1}, Lf8/e0;->u(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_5a
    :goto_5a
    return-void
.end method

.method public static o(Landroid/content/Context;)Lf8/t;
    .registers 3

    .line 1
    sget-object v0, Lf8/t;->q:Lf8/t;

    if-nez v0, :cond_1b

    .line 2
    const-class v0, Lf8/t;

    monitor-enter v0

    .line 3
    :try_start_7
    sget-object v1, Lf8/t;->q:Lf8/t;

    if-nez v1, :cond_16

    .line 4
    new-instance v1, Lf8/t$b;

    invoke-direct {v1, p0}, Lf8/t$b;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lf8/t$b;->a()Lf8/t;

    move-result-object p0

    sput-object p0, Lf8/t;->q:Lf8/t;

    .line 5
    :cond_16
    monitor-exit v0

    goto :goto_1b

    :catchall_18
    move-exception p0

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_7 .. :try_end_1a} :catchall_18

    throw p0

    .line 6
    :cond_1b
    :goto_1b
    sget-object p0, Lf8/t;->q:Lf8/t;

    return-object p0
.end method


# virtual methods
.method public c(Landroid/widget/ImageView;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lf8/t;->b(Ljava/lang/Object;)V

    return-void
.end method

.method d(Lf8/c;)V
    .registers 9

    .line 1
    invoke-virtual {p1}, Lf8/c;->h()Lf8/a;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Lf8/c;->i()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_14

    .line 3
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_14

    const/4 v4, 0x1

    goto :goto_15

    :cond_14
    const/4 v4, 0x0

    :goto_15
    if-nez v0, :cond_1b

    if-eqz v4, :cond_1a

    goto :goto_1b

    :cond_1a
    const/4 v2, 0x0

    :cond_1b
    :goto_1b
    if-nez v2, :cond_1e

    return-void

    .line 4
    :cond_1e
    invoke-virtual {p1}, Lf8/c;->j()Lf8/w;

    move-result-object v2

    iget-object v2, v2, Lf8/w;->d:Landroid/net/Uri;

    .line 5
    invoke-virtual {p1}, Lf8/c;->k()Ljava/lang/Exception;

    move-result-object v5

    .line 6
    invoke-virtual {p1}, Lf8/c;->q()Landroid/graphics/Bitmap;

    move-result-object v6

    .line 7
    invoke-virtual {p1}, Lf8/c;->m()Lf8/t$e;

    move-result-object p1

    if-eqz v0, :cond_35

    .line 8
    invoke-direct {p0, v6, p1, v0}, Lf8/t;->f(Landroid/graphics/Bitmap;Lf8/t$e;Lf8/a;)V

    :cond_35
    if-eqz v4, :cond_49

    .line 9
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    :goto_3b
    if-ge v3, v0, :cond_49

    .line 10
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lf8/a;

    .line 11
    invoke-direct {p0, v6, p1, v4}, Lf8/t;->f(Landroid/graphics/Bitmap;Lf8/t$e;Lf8/a;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_3b

    .line 12
    :cond_49
    iget-object p1, p0, Lf8/t;->a:Lf8/t$d;

    if-eqz p1, :cond_52

    if-eqz v5, :cond_52

    .line 13
    invoke-interface {p1, p0, v2, v5}, Lf8/t$d;->a(Lf8/t;Landroid/net/Uri;Ljava/lang/Exception;)V

    :cond_52
    return-void
.end method

.method e(Landroid/widget/ImageView;Lf8/h;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lf8/t;->j:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method g(Lf8/a;)V
    .registers 4

    .line 1
    invoke-virtual {p1}, Lf8/a;->k()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 2
    iget-object v1, p0, Lf8/t;->i:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eq v1, p1, :cond_16

    .line 3
    invoke-direct {p0, v0}, Lf8/t;->b(Ljava/lang/Object;)V

    .line 4
    iget-object v1, p0, Lf8/t;->i:Ljava/util/Map;

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    :cond_16
    invoke-virtual {p0, p1}, Lf8/t;->m(Lf8/a;)V

    return-void
.end method

.method h()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lf8/y;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lf8/t;->d:Ljava/util/List;

    return-object v0
.end method

.method public i(Landroid/net/Uri;)Lf8/x;
    .registers 4

    .line 1
    new-instance v0, Lf8/x;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lf8/x;-><init>(Lf8/t;Landroid/net/Uri;I)V

    return-object v0
.end method

.method public j(Ljava/lang/String;)Lf8/x;
    .registers 4

    if-nez p1, :cond_a

    .line 1
    new-instance p1, Lf8/x;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p1, p0, v0, v1}, Lf8/x;-><init>(Lf8/t;Landroid/net/Uri;I)V

    return-object p1

    .line 2
    :cond_a
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1d

    .line 3
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p0, p1}, Lf8/t;->i(Landroid/net/Uri;)Lf8/x;

    move-result-object p1

    return-object p1

    .line 4
    :cond_1d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Path must not be empty."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method k(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 3

    .line 1
    iget-object v0, p0, Lf8/t;->g:Lf8/d;

    invoke-interface {v0, p1}, Lf8/d;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p1, :cond_e

    .line 2
    iget-object v0, p0, Lf8/t;->h:Lf8/a0;

    invoke-virtual {v0}, Lf8/a0;->d()V

    goto :goto_13

    .line 3
    :cond_e
    iget-object v0, p0, Lf8/t;->h:Lf8/a0;

    invoke-virtual {v0}, Lf8/a0;->e()V

    :goto_13
    return-object p1
.end method

.method l(Lf8/a;)V
    .registers 6

    .line 1
    iget v0, p1, Lf8/a;->e:I

    invoke-static {v0}, Lf8/p;->c(I)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 2
    invoke-virtual {p1}, Lf8/a;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lf8/t;->k(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_12

    :cond_11
    const/4 v0, 0x0

    :goto_12
    const-string v1, "Main"

    if-eqz v0, :cond_3c

    .line 3
    sget-object v2, Lf8/t$e;->p:Lf8/t$e;

    invoke-direct {p0, v0, v2, p1}, Lf8/t;->f(Landroid/graphics/Bitmap;Lf8/t$e;Lf8/a;)V

    .line 4
    iget-boolean v0, p0, Lf8/t;->n:Z

    if-eqz v0, :cond_4e

    .line 5
    iget-object p1, p1, Lf8/a;->b:Lf8/w;

    invoke-virtual {p1}, Lf8/w;->d()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "from "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "completed"

    invoke-static {v1, v2, p1, v0}, Lf8/e0;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4e

    .line 6
    :cond_3c
    invoke-virtual {p0, p1}, Lf8/t;->g(Lf8/a;)V

    .line 7
    iget-boolean v0, p0, Lf8/t;->n:Z

    if-eqz v0, :cond_4e

    .line 8
    iget-object p1, p1, Lf8/a;->b:Lf8/w;

    invoke-virtual {p1}, Lf8/w;->d()Ljava/lang/String;

    move-result-object p1

    const-string v0, "resumed"

    invoke-static {v1, v0, p1}, Lf8/e0;->u(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_4e
    :goto_4e
    return-void
.end method

.method m(Lf8/a;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lf8/t;->f:Lf8/i;

    invoke-virtual {v0, p1}, Lf8/i;->h(Lf8/a;)V

    return-void
.end method

.method n(Lf8/w;)Lf8/w;
    .registers 5

    .line 1
    iget-object v0, p0, Lf8/t;->b:Lf8/t$g;

    invoke-interface {v0, p1}, Lf8/t$g;->a(Lf8/w;)Lf8/w;

    move-result-object v0

    if-eqz v0, :cond_9

    return-object v0

    .line 2
    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Request transformer "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lf8/t;->b:Lf8/t$g;

    .line 3
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " returned null for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

###### Class f8.t.a (f8.t$a)
.class final Lf8/t$a;
.super Landroid/os/Handler;
.source "Picasso.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf8/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>(Landroid/os/Looper;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_57

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eq v0, v1, :cond_3f

    const/16 v1, 0xd

    if-ne v0, v1, :cond_26

    .line 2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    .line 3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    :goto_16
    if-ge v2, v0, :cond_7b

    .line 4
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lf8/a;

    .line 5
    iget-object v3, v1, Lf8/a;->a:Lf8/t;

    invoke-virtual {v3, v1}, Lf8/t;->l(Lf8/a;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    .line 6
    :cond_26
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown handler message received: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 7
    :cond_3f
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    .line 8
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    :goto_47
    if-ge v2, v0, :cond_7b

    .line 9
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lf8/c;

    .line 10
    iget-object v3, v1, Lf8/c;->p:Lf8/t;

    invoke-virtual {v3, v1}, Lf8/t;->d(Lf8/c;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_47

    .line 11
    :cond_57
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lf8/a;

    .line 12
    invoke-virtual {p1}, Lf8/a;->g()Lf8/t;

    move-result-object v0

    iget-boolean v0, v0, Lf8/t;->n:Z

    if-eqz v0, :cond_72

    .line 13
    iget-object v0, p1, Lf8/a;->b:Lf8/w;

    invoke-virtual {v0}, Lf8/w;->d()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Main"

    const-string v2, "canceled"

    const-string v3, "target got garbage collected"

    invoke-static {v1, v2, v0, v3}, Lf8/e0;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    :cond_72
    iget-object v0, p1, Lf8/a;->a:Lf8/t;

    invoke-virtual {p1}, Lf8/a;->k()Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p1}, Lf8/t;->a(Lf8/t;Ljava/lang/Object;)V

    :cond_7b
    return-void
.end method

###### Class f8.t.b (f8.t$b)
.class public Lf8/t$b;
.super Ljava/lang/Object;
.source "Picasso.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf8/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private b:Lf8/j;

.field private c:Ljava/util/concurrent/ExecutorService;

.field private d:Lf8/d;

.field private e:Lf8/t$d;

.field private f:Lf8/t$g;

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lf8/y;",
            ">;"
        }
    .end annotation
.end field

.field private h:Landroid/graphics/Bitmap$Config;

.field private i:Z

.field private j:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_c

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lf8/t$b;->a:Landroid/content/Context;

    return-void

    .line 3
    :cond_c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Context must not be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public a()Lf8/t;
    .registers 15

    .line 1
    iget-object v7, p0, Lf8/t$b;->a:Landroid/content/Context;

    .line 2
    iget-object v0, p0, Lf8/t$b;->b:Lf8/j;

    if-nez v0, :cond_c

    .line 3
    invoke-static {v7}, Lf8/e0;->g(Landroid/content/Context;)Lf8/j;

    move-result-object v0

    iput-object v0, p0, Lf8/t$b;->b:Lf8/j;

    .line 4
    :cond_c
    iget-object v0, p0, Lf8/t$b;->d:Lf8/d;

    if-nez v0, :cond_17

    .line 5
    new-instance v0, Lf8/m;

    invoke-direct {v0, v7}, Lf8/m;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lf8/t$b;->d:Lf8/d;

    .line 6
    :cond_17
    iget-object v0, p0, Lf8/t$b;->c:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_22

    .line 7
    new-instance v0, Lf8/v;

    invoke-direct {v0}, Lf8/v;-><init>()V

    iput-object v0, p0, Lf8/t$b;->c:Ljava/util/concurrent/ExecutorService;

    .line 8
    :cond_22
    iget-object v0, p0, Lf8/t$b;->f:Lf8/t$g;

    if-nez v0, :cond_2a

    .line 9
    sget-object v0, Lf8/t$g;->a:Lf8/t$g;

    iput-object v0, p0, Lf8/t$b;->f:Lf8/t$g;

    .line 10
    :cond_2a
    new-instance v8, Lf8/a0;

    iget-object v0, p0, Lf8/t$b;->d:Lf8/d;

    invoke-direct {v8, v0}, Lf8/a0;-><init>(Lf8/d;)V

    .line 11
    new-instance v9, Lf8/i;

    iget-object v2, p0, Lf8/t$b;->c:Ljava/util/concurrent/ExecutorService;

    sget-object v3, Lf8/t;->p:Landroid/os/Handler;

    iget-object v4, p0, Lf8/t$b;->b:Lf8/j;

    iget-object v5, p0, Lf8/t$b;->d:Lf8/d;

    move-object v0, v9

    move-object v1, v7

    move-object v6, v8

    invoke-direct/range {v0 .. v6}, Lf8/i;-><init>(Landroid/content/Context;Ljava/util/concurrent/ExecutorService;Landroid/os/Handler;Lf8/j;Lf8/d;Lf8/a0;)V

    .line 12
    new-instance v11, Lf8/t;

    iget-object v3, p0, Lf8/t$b;->d:Lf8/d;

    iget-object v4, p0, Lf8/t$b;->e:Lf8/t$d;

    iget-object v5, p0, Lf8/t$b;->f:Lf8/t$g;

    iget-object v6, p0, Lf8/t$b;->g:Ljava/util/List;

    iget-object v10, p0, Lf8/t$b;->h:Landroid/graphics/Bitmap$Config;

    iget-boolean v12, p0, Lf8/t$b;->i:Z

    iget-boolean v13, p0, Lf8/t$b;->j:Z

    move-object v0, v11

    move-object v2, v9

    move-object v7, v8

    move-object v8, v10

    move v9, v12

    move v10, v13

    invoke-direct/range {v0 .. v10}, Lf8/t;-><init>(Landroid/content/Context;Lf8/i;Lf8/d;Lf8/t$d;Lf8/t$g;Ljava/util/List;Lf8/a0;Landroid/graphics/Bitmap$Config;ZZ)V

    return-object v11
.end method

###### Class f8.t.c (f8.t$c)
.class Lf8/t$c;
.super Ljava/lang/Thread;
.source "Picasso.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf8/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation


# instance fields
.field private final o:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final p:Landroid/os/Handler;


# direct methods
.method constructor <init>(Ljava/lang/ref/ReferenceQueue;Landroid/os/Handler;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/ReferenceQueue<",
            "Ljava/lang/Object;",
            ">;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 2
    iput-object p1, p0, Lf8/t$c;->o:Ljava/lang/ref/ReferenceQueue;

    .line 3
    iput-object p2, p0, Lf8/t$c;->p:Landroid/os/Handler;

    const/4 p1, 0x1

    .line 4
    invoke-virtual {p0, p1}, Ljava/lang/Thread;->setDaemon(Z)V

    const-string p1, "Picasso-refQueue"

    .line 5
    invoke-virtual {p0, p1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    const/16 v0, 0xa

    .line 1
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 2
    :goto_5
    :try_start_5
    iget-object v0, p0, Lf8/t$c;->o:Ljava/lang/ref/ReferenceQueue;

    const-wide/16 v1, 0x3e8

    .line 3
    invoke-virtual {v0, v1, v2}, Ljava/lang/ref/ReferenceQueue;->remove(J)Ljava/lang/ref/Reference;

    move-result-object v0

    check-cast v0, Lf8/a$a;

    .line 4
    iget-object v1, p0, Lf8/t$c;->p:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    if-eqz v0, :cond_24

    const/4 v2, 0x3

    .line 5
    iput v2, v1, Landroid/os/Message;->what:I

    .line 6
    iget-object v0, v0, Lf8/a$a;->a:Lf8/a;

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 7
    iget-object v0, p0, Lf8/t$c;->p:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_5

    .line 8
    :cond_24
    invoke-virtual {v1}, Landroid/os/Message;->recycle()V
    :try_end_27
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_27} :catch_33
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_27} :catch_28

    goto :goto_5

    :catch_28
    move-exception v0

    .line 9
    iget-object v1, p0, Lf8/t$c;->p:Landroid/os/Handler;

    new-instance v2, Lf8/t$c$a;

    invoke-direct {v2, p0, v0}, Lf8/t$c$a;-><init>(Lf8/t$c;Ljava/lang/Exception;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :catch_33
    return-void
.end method

###### Class f8.t.c.a (f8.t$c$a)
.class Lf8/t$c$a;
.super Ljava/lang/Object;
.source "Picasso.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lf8/t$c;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic o:Ljava/lang/Exception;

.field final synthetic p:Lf8/t$c;


# direct methods
.method constructor <init>(Lf8/t$c;Ljava/lang/Exception;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lf8/t$c$a;->p:Lf8/t$c;

    iput-object p2, p0, Lf8/t$c$a;->o:Ljava/lang/Exception;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 1
    new-instance v0, Ljava/lang/RuntimeException;

    iget-object v1, p0, Lf8/t$c$a;->o:Ljava/lang/Exception;

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

###### Class f8.t.d (f8.t$d)
.class public interface abstract Lf8/t$d;
.super Ljava/lang/Object;
.source "Picasso.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf8/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "d"
.end annotation


# virtual methods
.method public abstract a(Lf8/t;Landroid/net/Uri;Ljava/lang/Exception;)V
.end method

###### Class f8.t.e (f8.t$e)
.class public final enum Lf8/t$e;
.super Ljava/lang/Enum;
.source "Picasso.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf8/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lf8/t$e;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum p:Lf8/t$e;

.field public static final enum q:Lf8/t$e;

.field public static final enum r:Lf8/t$e;

.field private static final synthetic s:[Lf8/t$e;


# instance fields
.field final o:I


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .line 1
    new-instance v0, Lf8/t$e;

    const-string v1, "MEMORY"

    const/4 v2, 0x0

    const v3, -0xff0100

    invoke-direct {v0, v1, v2, v3}, Lf8/t$e;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lf8/t$e;->p:Lf8/t$e;

    .line 2
    new-instance v1, Lf8/t$e;

    const-string v3, "DISK"

    const/4 v4, 0x1

    const v5, -0xffff01

    invoke-direct {v1, v3, v4, v5}, Lf8/t$e;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lf8/t$e;->q:Lf8/t$e;

    .line 3
    new-instance v3, Lf8/t$e;

    const-string v5, "NETWORK"

    const/4 v6, 0x2

    const/high16 v7, -0x10000

    invoke-direct {v3, v5, v6, v7}, Lf8/t$e;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lf8/t$e;->r:Lf8/t$e;

    const/4 v5, 0x3

    new-array v5, v5, [Lf8/t$e;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 4
    sput-object v5, Lf8/t$e;->s:[Lf8/t$e;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput p3, p0, Lf8/t$e;->o:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lf8/t$e;
    .registers 2

    .line 1
    const-class v0, Lf8/t$e;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lf8/t$e;

    return-object p0
.end method

.method public static values()[Lf8/t$e;
    .registers 1

    .line 1
    sget-object v0, Lf8/t$e;->s:[Lf8/t$e;

    invoke-virtual {v0}, [Lf8/t$e;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lf8/t$e;

    return-object v0
.end method

###### Class f8.t.f (f8.t$f)
.class public final enum Lf8/t$f;
.super Ljava/lang/Enum;
.source "Picasso.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf8/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "f"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lf8/t$f;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum o:Lf8/t$f;

.field public static final enum p:Lf8/t$f;

.field public static final enum q:Lf8/t$f;

.field private static final synthetic r:[Lf8/t$f;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .line 1
    new-instance v0, Lf8/t$f;

    const-string v1, "LOW"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lf8/t$f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lf8/t$f;->o:Lf8/t$f;

    .line 2
    new-instance v1, Lf8/t$f;

    const-string v3, "NORMAL"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lf8/t$f;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lf8/t$f;->p:Lf8/t$f;

    .line 3
    new-instance v3, Lf8/t$f;

    const-string v5, "HIGH"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lf8/t$f;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lf8/t$f;->q:Lf8/t$f;

    const/4 v5, 0x3

    new-array v5, v5, [Lf8/t$f;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 4
    sput-object v5, Lf8/t$f;->r:[Lf8/t$f;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lf8/t$f;
    .registers 2

    .line 1
    const-class v0, Lf8/t$f;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lf8/t$f;

    return-object p0
.end method

.method public static values()[Lf8/t$f;
    .registers 1

    .line 1
    sget-object v0, Lf8/t$f;->r:[Lf8/t$f;

    invoke-virtual {v0}, [Lf8/t$f;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lf8/t$f;

    return-object v0
.end method

###### Class f8.t.g (f8.t$g)
.class public interface abstract Lf8/t$g;
.super Ljava/lang/Object;
.source "Picasso.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf8/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "g"
.end annotation


# static fields
.field public static final a:Lf8/t$g;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lf8/t$g$a;

    invoke-direct {v0}, Lf8/t$g$a;-><init>()V

    sput-object v0, Lf8/t$g;->a:Lf8/t$g;

    return-void
.end method


# virtual methods
.method public abstract a(Lf8/w;)Lf8/w;
.end method

###### Class f8.t.g.a (f8.t$g$a)
.class final Lf8/t$g$a;
.super Ljava/lang/Object;
.source "Picasso.java"

# interfaces
.implements Lf8/t$g;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf8/t$g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lf8/w;)Lf8/w;
    .registers 2

    return-object p1
.end method
