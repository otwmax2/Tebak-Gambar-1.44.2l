###### Class b2.d (b2.d)
.class Lb2/d;
.super Ljava/lang/Object;
.source "EngineJob.java"

# interfaces
.implements Lb2/i$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb2/d$c;,
        Lb2/d$b;
    }
.end annotation


# static fields
.field private static final q:Lb2/d$b;

.field private static final r:Landroid/os/Handler;


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lt2/g;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lb2/d$b;

.field private final c:Lb2/e;

.field private final d:Lz1/c;

.field private final e:Ljava/util/concurrent/ExecutorService;

.field private final f:Ljava/util/concurrent/ExecutorService;

.field private final g:Z

.field private h:Z

.field private i:Lb2/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb2/l<",
            "*>;"
        }
    .end annotation
.end field

.field private j:Z

.field private k:Ljava/lang/Exception;

.field private l:Z

.field private m:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lt2/g;",
            ">;"
        }
    .end annotation
.end field

.field private n:Lb2/i;

.field private o:Lb2/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb2/h<",
            "*>;"
        }
    .end annotation
.end field

.field private volatile p:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 1
    new-instance v0, Lb2/d$b;

    invoke-direct {v0}, Lb2/d$b;-><init>()V

    sput-object v0, Lb2/d;->q:Lb2/d$b;

    .line 2
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Lb2/d$c;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lb2/d$c;-><init>(Lb2/d$a;)V

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    sput-object v0, Lb2/d;->r:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Lz1/c;Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/ExecutorService;ZLb2/e;)V
    .registers 13

    .line 1
    sget-object v6, Lb2/d;->q:Lb2/d$b;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lb2/d;-><init>(Lz1/c;Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/ExecutorService;ZLb2/e;Lb2/d$b;)V

    return-void
.end method

.method public constructor <init>(Lz1/c;Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/ExecutorService;ZLb2/e;Lb2/d$b;)V
    .registers 8

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lb2/d;->a:Ljava/util/List;

    .line 4
    iput-object p1, p0, Lb2/d;->d:Lz1/c;

    .line 5
    iput-object p2, p0, Lb2/d;->e:Ljava/util/concurrent/ExecutorService;

    .line 6
    iput-object p3, p0, Lb2/d;->f:Ljava/util/concurrent/ExecutorService;

    .line 7
    iput-boolean p4, p0, Lb2/d;->g:Z

    .line 8
    iput-object p5, p0, Lb2/d;->c:Lb2/e;

    .line 9
    iput-object p6, p0, Lb2/d;->b:Lb2/d$b;

    return-void
.end method

.method static synthetic b(Lb2/d;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Lb2/d;->j()V

    return-void
.end method

.method static synthetic e(Lb2/d;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Lb2/d;->i()V

    return-void
.end method

.method private g(Lt2/g;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lb2/d;->m:Ljava/util/Set;

    if-nez v0, :cond_b

    .line 2
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lb2/d;->m:Ljava/util/Set;

    .line 3
    :cond_b
    iget-object v0, p0, Lb2/d;->m:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private i()V
    .registers 4

    .line 1
    iget-boolean v0, p0, Lb2/d;->h:Z

    if-eqz v0, :cond_5

    return-void

    .line 2
    :cond_5
    iget-object v0, p0, Lb2/d;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_37

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lb2/d;->l:Z

    .line 4
    iget-object v0, p0, Lb2/d;->c:Lb2/e;

    iget-object v1, p0, Lb2/d;->d:Lz1/c;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lb2/e;->d(Lz1/c;Lb2/h;)V

    .line 5
    iget-object v0, p0, Lb2/d;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1e
    :goto_1e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_36

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lt2/g;

    .line 6
    invoke-direct {p0, v1}, Lb2/d;->k(Lt2/g;)Z

    move-result v2

    if-nez v2, :cond_1e

    .line 7
    iget-object v2, p0, Lb2/d;->k:Ljava/lang/Exception;

    invoke-interface {v1, v2}, Lt2/g;->a(Ljava/lang/Exception;)V

    goto :goto_1e

    :cond_36
    return-void

    .line 8
    :cond_37
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Received an exception without any callbacks to notify"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_40

    :goto_3f
    throw v0

    :goto_40
    goto :goto_3f
.end method

.method private j()V
    .registers 4

    .line 1
    iget-boolean v0, p0, Lb2/d;->h:Z

    if-eqz v0, :cond_a

    .line 2
    iget-object v0, p0, Lb2/d;->i:Lb2/l;

    invoke-interface {v0}, Lb2/l;->b()V

    return-void

    .line 3
    :cond_a
    iget-object v0, p0, Lb2/d;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_56

    .line 4
    iget-object v0, p0, Lb2/d;->b:Lb2/d$b;

    iget-object v1, p0, Lb2/d;->i:Lb2/l;

    iget-boolean v2, p0, Lb2/d;->g:Z

    invoke-virtual {v0, v1, v2}, Lb2/d$b;->a(Lb2/l;Z)Lb2/h;

    move-result-object v0

    iput-object v0, p0, Lb2/d;->o:Lb2/h;

    const/4 v1, 0x1

    .line 5
    iput-boolean v1, p0, Lb2/d;->j:Z

    .line 6
    invoke-virtual {v0}, Lb2/h;->a()V

    .line 7
    iget-object v0, p0, Lb2/d;->c:Lb2/e;

    iget-object v1, p0, Lb2/d;->d:Lz1/c;

    iget-object v2, p0, Lb2/d;->o:Lb2/h;

    invoke-interface {v0, v1, v2}, Lb2/e;->d(Lz1/c;Lb2/h;)V

    .line 8
    iget-object v0, p0, Lb2/d;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_33
    :goto_33
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_50

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lt2/g;

    .line 9
    invoke-direct {p0, v1}, Lb2/d;->k(Lt2/g;)Z

    move-result v2

    if-nez v2, :cond_33

    .line 10
    iget-object v2, p0, Lb2/d;->o:Lb2/h;

    invoke-virtual {v2}, Lb2/h;->a()V

    .line 11
    iget-object v2, p0, Lb2/d;->o:Lb2/h;

    invoke-interface {v1, v2}, Lt2/g;->d(Lb2/l;)V

    goto :goto_33

    .line 12
    :cond_50
    iget-object v0, p0, Lb2/d;->o:Lb2/h;

    invoke-virtual {v0}, Lb2/h;->e()V

    return-void

    .line 13
    :cond_56
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Received a resource without any callbacks to notify"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_5f

    :goto_5e
    throw v0

    :goto_5f
    goto :goto_5e
.end method

.method private k(Lt2/g;)Z
    .registers 3

    .line 1
    iget-object v0, p0, Lb2/d;->m:Ljava/util/Set;

    if-eqz v0, :cond_c

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c

    const/4 p1, 0x1

    goto :goto_d

    :cond_c
    const/4 p1, 0x0

    :goto_d
    return p1
.end method


# virtual methods
.method public a(Ljava/lang/Exception;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lb2/d;->k:Ljava/lang/Exception;

    .line 2
    sget-object p1, Lb2/d;->r:Landroid/os/Handler;

    const/4 v0, 0x2

    invoke-virtual {p1, v0, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public c(Lb2/i;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lb2/d;->f:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object p1

    iput-object p1, p0, Lb2/d;->p:Ljava/util/concurrent/Future;

    return-void
.end method

.method public d(Lb2/l;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb2/l<",
            "*>;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lb2/d;->i:Lb2/l;

    .line 2
    sget-object p1, Lb2/d;->r:Landroid/os/Handler;

    const/4 v0, 0x1

    invoke-virtual {p1, v0, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public f(Lt2/g;)V
    .registers 3

    .line 1
    invoke-static {}, Lx2/h;->b()V

    .line 2
    iget-boolean v0, p0, Lb2/d;->j:Z

    if-eqz v0, :cond_d

    .line 3
    iget-object v0, p0, Lb2/d;->o:Lb2/h;

    invoke-interface {p1, v0}, Lt2/g;->d(Lb2/l;)V

    goto :goto_1c

    .line 4
    :cond_d
    iget-boolean v0, p0, Lb2/d;->l:Z

    if-eqz v0, :cond_17

    .line 5
    iget-object v0, p0, Lb2/d;->k:Ljava/lang/Exception;

    invoke-interface {p1, v0}, Lt2/g;->a(Ljava/lang/Exception;)V

    goto :goto_1c

    .line 6
    :cond_17
    iget-object v0, p0, Lb2/d;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1c
    return-void
.end method

.method h()V
    .registers 3

    .line 1
    iget-boolean v0, p0, Lb2/d;->l:Z

    if-nez v0, :cond_23

    iget-boolean v0, p0, Lb2/d;->j:Z

    if-nez v0, :cond_23

    iget-boolean v0, p0, Lb2/d;->h:Z

    if-eqz v0, :cond_d

    goto :goto_23

    .line 2
    :cond_d
    iget-object v0, p0, Lb2/d;->n:Lb2/i;

    invoke-virtual {v0}, Lb2/i;->b()V

    .line 3
    iget-object v0, p0, Lb2/d;->p:Ljava/util/concurrent/Future;

    const/4 v1, 0x1

    if-eqz v0, :cond_1a

    .line 4
    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 5
    :cond_1a
    iput-boolean v1, p0, Lb2/d;->h:Z

    .line 6
    iget-object v0, p0, Lb2/d;->c:Lb2/e;

    iget-object v1, p0, Lb2/d;->d:Lz1/c;

    invoke-interface {v0, p0, v1}, Lb2/e;->b(Lb2/d;Lz1/c;)V

    :cond_23
    :goto_23
    return-void
.end method

.method public l(Lt2/g;)V
    .registers 3

    .line 1
    invoke-static {}, Lx2/h;->b()V

    .line 2
    iget-boolean v0, p0, Lb2/d;->j:Z

    if-nez v0, :cond_1d

    iget-boolean v0, p0, Lb2/d;->l:Z

    if-eqz v0, :cond_c

    goto :goto_1d

    .line 3
    :cond_c
    iget-object v0, p0, Lb2/d;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 4
    iget-object p1, p0, Lb2/d;->a:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_20

    .line 5
    invoke-virtual {p0}, Lb2/d;->h()V

    goto :goto_20

    .line 6
    :cond_1d
    :goto_1d
    invoke-direct {p0, p1}, Lb2/d;->g(Lt2/g;)V

    :cond_20
    :goto_20
    return-void
.end method

.method public m(Lb2/i;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lb2/d;->n:Lb2/i;

    .line 2
    iget-object v0, p0, Lb2/d;->e:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object p1

    iput-object p1, p0, Lb2/d;->p:Ljava/util/concurrent/Future;

    return-void
.end method

###### Class b2.d.a (b2.d$a)
.class synthetic Lb2/d$a;
.super Ljava/lang/Object;
.source "EngineJob.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb2/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation

###### Class b2.d.b (b2.d$b)
.class Lb2/d$b;
.super Ljava/lang/Object;
.source "EngineJob.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb2/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lb2/l;Z)Lb2/h;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lb2/l<",
            "TR;>;Z)",
            "Lb2/h<",
            "TR;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lb2/h;

    invoke-direct {v0, p1, p2}, Lb2/h;-><init>(Lb2/l;Z)V

    return-object v0
.end method

###### Class b2.d.c (b2.d$c)
.class Lb2/d$c;
.super Ljava/lang/Object;
.source "EngineJob.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb2/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lb2/d$a;)V
    .registers 2

    .line 2
    invoke-direct {p0}, Lb2/d$c;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .registers 5

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v1, v0, :cond_b

    const/4 v2, 0x2

    if-ne v2, v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 p1, 0x0

    return p1

    .line 2
    :cond_b
    :goto_b
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lb2/d;

    if-ne v1, v0, :cond_15

    .line 3
    invoke-static {p1}, Lb2/d;->b(Lb2/d;)V

    goto :goto_18

    .line 4
    :cond_15
    invoke-static {p1}, Lb2/d;->e(Lb2/d;)V

    :goto_18
    return v1
.end method
