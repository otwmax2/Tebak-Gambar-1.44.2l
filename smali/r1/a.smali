###### Class r1.a (r1.a)
.class public abstract Lr1/a;
.super Ljava/lang/Object;
.source "CancelWorkRunnable.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final o:Lj1/c;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lj1/c;

    invoke-direct {v0}, Lj1/c;-><init>()V

    iput-object v0, p0, Lr1/a;->o:Lj1/c;

    return-void
.end method

.method public static b(Ljava/util/UUID;Lj1/i;)Lr1/a;
    .registers 3

    .line 1
    new-instance v0, Lr1/a$a;

    invoke-direct {v0, p1, p0}, Lr1/a$a;-><init>(Lj1/i;Ljava/util/UUID;)V

    return-object v0
.end method

.method public static c(Ljava/lang/String;Lj1/i;Z)Lr1/a;
    .registers 4

    .line 1
    new-instance v0, Lr1/a$c;

    invoke-direct {v0, p1, p0, p2}, Lr1/a$c;-><init>(Lj1/i;Ljava/lang/String;Z)V

    return-object v0
.end method

.method public static d(Ljava/lang/String;Lj1/i;)Lr1/a;
    .registers 3

    .line 1
    new-instance v0, Lr1/a$b;

    invoke-direct {v0, p1, p0}, Lr1/a$b;-><init>(Lj1/i;Ljava/lang/String;)V

    return-object v0
.end method

.method private f(Landroidx/work/impl/WorkDatabase;Ljava/lang/String;)V
    .registers 8

    .line 1
    invoke-virtual {p1}, Landroidx/work/impl/WorkDatabase;->L()Lq1/q;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Landroidx/work/impl/WorkDatabase;->D()Lq1/b;

    move-result-object p1

    .line 3
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 4
    invoke-virtual {v1, p2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 5
    :goto_10
    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_3b

    .line 6
    invoke-virtual {v1}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 7
    invoke-interface {v0, p2}, Lq1/q;->m(Ljava/lang/String;)Li1/s$a;

    move-result-object v2

    .line 8
    sget-object v3, Li1/s$a;->q:Li1/s$a;

    if-eq v2, v3, :cond_33

    sget-object v3, Li1/s$a;->r:Li1/s$a;

    if-eq v2, v3, :cond_33

    .line 9
    sget-object v2, Li1/s$a;->t:Li1/s$a;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    invoke-interface {v0, v2, v3}, Lq1/q;->g(Li1/s$a;[Ljava/lang/String;)I

    .line 10
    :cond_33
    invoke-interface {p1, p2}, Lq1/b;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    goto :goto_10

    :cond_3b
    return-void
.end method


# virtual methods
.method a(Lj1/i;Ljava/lang/String;)V
    .registers 4

    .line 1
    invoke-virtual {p1}, Lj1/i;->p()Landroidx/work/impl/WorkDatabase;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lr1/a;->f(Landroidx/work/impl/WorkDatabase;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Lj1/i;->n()Lj1/d;

    move-result-object v0

    .line 3
    invoke-virtual {v0, p2}, Lj1/d;->l(Ljava/lang/String;)Z

    .line 4
    invoke-virtual {p1}, Lj1/i;->o()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_16
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_26

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lj1/e;

    .line 5
    invoke-interface {v0, p2}, Lj1/e;->cancel(Ljava/lang/String;)V

    goto :goto_16

    :cond_26
    return-void
.end method

.method public e()Li1/m;
    .registers 2

    .line 1
    iget-object v0, p0, Lr1/a;->o:Lj1/c;

    return-object v0
.end method

.method g(Lj1/i;)V
    .registers 4

    .line 1
    invoke-virtual {p1}, Lj1/i;->j()Landroidx/work/a;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Lj1/i;->p()Landroidx/work/impl/WorkDatabase;

    move-result-object v1

    .line 3
    invoke-virtual {p1}, Lj1/i;->o()Ljava/util/List;

    move-result-object p1

    .line 4
    invoke-static {v0, v1, p1}, Lj1/f;->b(Landroidx/work/a;Landroidx/work/impl/WorkDatabase;Ljava/util/List;)V

    return-void
.end method

.method abstract h()V
.end method

.method public run()V
    .registers 4

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lr1/a;->h()V

    .line 2
    iget-object v0, p0, Lr1/a;->o:Lj1/c;

    sget-object v1, Li1/m;->a:Li1/m$b$c;

    invoke-virtual {v0, v1}, Lj1/c;->a(Li1/m$b;)V
    :try_end_a
    .catchall {:try_start_0 .. :try_end_a} :catchall_b

    goto :goto_16

    :catchall_b
    move-exception v0

    .line 3
    iget-object v1, p0, Lr1/a;->o:Lj1/c;

    new-instance v2, Li1/m$b$a;

    invoke-direct {v2, v0}, Li1/m$b$a;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lj1/c;->a(Li1/m$b;)V

    :goto_16
    return-void
.end method

###### Class r1.a.C0225a (r1.a$a)
.class Lr1/a$a;
.super Lr1/a;
.source "CancelWorkRunnable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lr1/a;->b(Ljava/util/UUID;Lj1/i;)Lr1/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic p:Lj1/i;

.field final synthetic q:Ljava/util/UUID;


# direct methods
.method constructor <init>(Lj1/i;Ljava/util/UUID;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lr1/a$a;->p:Lj1/i;

    iput-object p2, p0, Lr1/a$a;->q:Ljava/util/UUID;

    invoke-direct {p0}, Lr1/a;-><init>()V

    return-void
.end method


# virtual methods
.method h()V
    .registers 4

    .line 1
    iget-object v0, p0, Lr1/a$a;->p:Lj1/i;

    invoke-virtual {v0}, Lj1/i;->p()Landroidx/work/impl/WorkDatabase;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Landroidx/room/h0;->e()V

    .line 3
    :try_start_9
    iget-object v1, p0, Lr1/a$a;->p:Lj1/i;

    iget-object v2, p0, Lr1/a$a;->q:Ljava/util/UUID;

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lr1/a;->a(Lj1/i;Ljava/lang/String;)V

    .line 4
    invoke-virtual {v0}, Landroidx/room/h0;->A()V
    :try_end_17
    .catchall {:try_start_9 .. :try_end_17} :catchall_20

    .line 5
    invoke-virtual {v0}, Landroidx/room/h0;->i()V

    .line 6
    iget-object v0, p0, Lr1/a$a;->p:Lj1/i;

    invoke-virtual {p0, v0}, Lr1/a;->g(Lj1/i;)V

    return-void

    :catchall_20
    move-exception v1

    .line 7
    invoke-virtual {v0}, Landroidx/room/h0;->i()V

    .line 8
    throw v1
.end method

###### Class r1.a.b (r1.a$b)
.class Lr1/a$b;
.super Lr1/a;
.source "CancelWorkRunnable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lr1/a;->d(Ljava/lang/String;Lj1/i;)Lr1/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic p:Lj1/i;

.field final synthetic q:Ljava/lang/String;


# direct methods
.method constructor <init>(Lj1/i;Ljava/lang/String;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lr1/a$b;->p:Lj1/i;

    iput-object p2, p0, Lr1/a$b;->q:Ljava/lang/String;

    invoke-direct {p0}, Lr1/a;-><init>()V

    return-void
.end method


# virtual methods
.method h()V
    .registers 5

    .line 1
    iget-object v0, p0, Lr1/a$b;->p:Lj1/i;

    invoke-virtual {v0}, Lj1/i;->p()Landroidx/work/impl/WorkDatabase;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Landroidx/room/h0;->e()V

    .line 3
    :try_start_9
    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->L()Lq1/q;

    move-result-object v1

    .line 4
    iget-object v2, p0, Lr1/a$b;->q:Ljava/lang/String;

    invoke-interface {v1, v2}, Lq1/q;->p(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 5
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_17
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_29

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 6
    iget-object v3, p0, Lr1/a$b;->p:Lj1/i;

    invoke-virtual {p0, v3, v2}, Lr1/a;->a(Lj1/i;Ljava/lang/String;)V

    goto :goto_17

    .line 7
    :cond_29
    invoke-virtual {v0}, Landroidx/room/h0;->A()V
    :try_end_2c
    .catchall {:try_start_9 .. :try_end_2c} :catchall_35

    .line 8
    invoke-virtual {v0}, Landroidx/room/h0;->i()V

    .line 9
    iget-object v0, p0, Lr1/a$b;->p:Lj1/i;

    invoke-virtual {p0, v0}, Lr1/a;->g(Lj1/i;)V

    return-void

    :catchall_35
    move-exception v1

    .line 10
    invoke-virtual {v0}, Landroidx/room/h0;->i()V

    .line 11
    goto :goto_3b

    :goto_3a
    throw v1

    :goto_3b
    goto :goto_3a
.end method

###### Class r1.a.c (r1.a$c)
.class Lr1/a$c;
.super Lr1/a;
.source "CancelWorkRunnable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lr1/a;->c(Ljava/lang/String;Lj1/i;Z)Lr1/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic p:Lj1/i;

.field final synthetic q:Ljava/lang/String;

.field final synthetic r:Z


# direct methods
.method constructor <init>(Lj1/i;Ljava/lang/String;Z)V
    .registers 4

    .line 1
    iput-object p1, p0, Lr1/a$c;->p:Lj1/i;

    iput-object p2, p0, Lr1/a$c;->q:Ljava/lang/String;

    iput-boolean p3, p0, Lr1/a$c;->r:Z

    invoke-direct {p0}, Lr1/a;-><init>()V

    return-void
.end method


# virtual methods
.method h()V
    .registers 5

    .line 1
    iget-object v0, p0, Lr1/a$c;->p:Lj1/i;

    invoke-virtual {v0}, Lj1/i;->p()Landroidx/work/impl/WorkDatabase;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Landroidx/room/h0;->e()V

    .line 3
    :try_start_9
    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->L()Lq1/q;

    move-result-object v1

    .line 4
    iget-object v2, p0, Lr1/a$c;->q:Ljava/lang/String;

    invoke-interface {v1, v2}, Lq1/q;->l(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 5
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_17
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_29

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 6
    iget-object v3, p0, Lr1/a$c;->p:Lj1/i;

    invoke-virtual {p0, v3, v2}, Lr1/a;->a(Lj1/i;Ljava/lang/String;)V

    goto :goto_17

    .line 7
    :cond_29
    invoke-virtual {v0}, Landroidx/room/h0;->A()V
    :try_end_2c
    .catchall {:try_start_9 .. :try_end_2c} :catchall_39

    .line 8
    invoke-virtual {v0}, Landroidx/room/h0;->i()V

    .line 9
    iget-boolean v0, p0, Lr1/a$c;->r:Z

    if-eqz v0, :cond_38

    .line 10
    iget-object v0, p0, Lr1/a$c;->p:Lj1/i;

    invoke-virtual {p0, v0}, Lr1/a;->g(Lj1/i;)V

    :cond_38
    return-void

    :catchall_39
    move-exception v1

    .line 11
    invoke-virtual {v0}, Landroidx/room/h0;->i()V

    .line 12
    goto :goto_3f

    :goto_3e
    throw v1

    :goto_3f
    goto :goto_3e
.end method
