###### Class f8.i (f8.i)
.class Lf8/i;
.super Ljava/lang/Object;
.source "Dispatcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lf8/i$c;,
        Lf8/i$b;,
        Lf8/i$a;
    }
.end annotation


# instance fields
.field final a:Lf8/i$b;

.field final b:Landroid/content/Context;

.field final c:Ljava/util/concurrent/ExecutorService;

.field final d:Lf8/j;

.field final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lf8/c;",
            ">;"
        }
    .end annotation
.end field

.field final f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Lf8/a;",
            ">;"
        }
    .end annotation
.end field

.field final g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Lf8/a;",
            ">;"
        }
    .end annotation
.end field

.field final h:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final i:Landroid/os/Handler;

.field final j:Landroid/os/Handler;

.field final k:Lf8/d;

.field final l:Lf8/a0;

.field final m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lf8/c;",
            ">;"
        }
    .end annotation
.end field

.field final n:Lf8/i$c;

.field final o:Z

.field p:Z


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/util/concurrent/ExecutorService;Landroid/os/Handler;Lf8/j;Lf8/d;Lf8/a0;)V
    .registers 9

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lf8/i$b;

    invoke-direct {v0}, Lf8/i$b;-><init>()V

    iput-object v0, p0, Lf8/i;->a:Lf8/i$b;

    .line 3
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 4
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {v1}, Lf8/e0;->j(Landroid/os/Looper;)V

    .line 5
    iput-object p1, p0, Lf8/i;->b:Landroid/content/Context;

    .line 6
    iput-object p2, p0, Lf8/i;->c:Ljava/util/concurrent/ExecutorService;

    .line 7
    new-instance p2, Ljava/util/LinkedHashMap;

    invoke-direct {p2}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p2, p0, Lf8/i;->e:Ljava/util/Map;

    .line 8
    new-instance p2, Ljava/util/WeakHashMap;

    invoke-direct {p2}, Ljava/util/WeakHashMap;-><init>()V

    iput-object p2, p0, Lf8/i;->f:Ljava/util/Map;

    .line 9
    new-instance p2, Ljava/util/WeakHashMap;

    invoke-direct {p2}, Ljava/util/WeakHashMap;-><init>()V

    iput-object p2, p0, Lf8/i;->g:Ljava/util/Map;

    .line 10
    new-instance p2, Ljava/util/HashSet;

    invoke-direct {p2}, Ljava/util/HashSet;-><init>()V

    iput-object p2, p0, Lf8/i;->h:Ljava/util/Set;

    .line 11
    new-instance p2, Lf8/i$a;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p2, v0, p0}, Lf8/i$a;-><init>(Landroid/os/Looper;Lf8/i;)V

    iput-object p2, p0, Lf8/i;->i:Landroid/os/Handler;

    .line 12
    iput-object p4, p0, Lf8/i;->d:Lf8/j;

    .line 13
    iput-object p3, p0, Lf8/i;->j:Landroid/os/Handler;

    .line 14
    iput-object p5, p0, Lf8/i;->k:Lf8/d;

    .line 15
    iput-object p6, p0, Lf8/i;->l:Lf8/a0;

    .line 16
    new-instance p2, Ljava/util/ArrayList;

    const/4 p3, 0x4

    invoke-direct {p2, p3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p2, p0, Lf8/i;->m:Ljava/util/List;

    .line 17
    invoke-static {p1}, Lf8/e0;->r(Landroid/content/Context;)Z

    move-result p2

    iput-boolean p2, p0, Lf8/i;->p:Z

    const-string p2, "android.permission.ACCESS_NETWORK_STATE"

    .line 18
    invoke-static {p1, p2}, Lf8/e0;->q(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lf8/i;->o:Z

    .line 19
    new-instance p1, Lf8/i$c;

    invoke-direct {p1, p0}, Lf8/i$c;-><init>(Lf8/i;)V

    iput-object p1, p0, Lf8/i;->n:Lf8/i$c;

    .line 20
    invoke-virtual {p1}, Lf8/i$c;->a()V

    return-void
.end method

.method private a(Lf8/c;)V
    .registers 5

    .line 1
    invoke-virtual {p1}, Lf8/c;->s()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 2
    :cond_7
    iget-object v0, p0, Lf8/i;->m:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3
    iget-object p1, p0, Lf8/i;->i:Landroid/os/Handler;

    const/4 v0, 0x7

    invoke-virtual {p1, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-nez p1, :cond_1c

    .line 4
    iget-object p1, p0, Lf8/i;->i:Landroid/os/Handler;

    const-wide/16 v1, 0xc8

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_1c
    return-void
.end method

.method private i()V
    .registers 6

    .line 1
    iget-object v0, p0, Lf8/i;->f:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3d

    .line 2
    iget-object v0, p0, Lf8/i;->f:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 3
    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3d

    .line 4
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lf8/a;

    .line 5
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 6
    invoke-virtual {v1}, Lf8/a;->g()Lf8/t;

    move-result-object v2

    iget-boolean v2, v2, Lf8/t;->n:Z

    if-eqz v2, :cond_38

    .line 7
    invoke-virtual {v1}, Lf8/a;->i()Lf8/w;

    move-result-object v2

    invoke-virtual {v2}, Lf8/w;->d()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Dispatcher"

    const-string v4, "replaying"

    invoke-static {v3, v4, v2}, Lf8/e0;->u(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_38
    const/4 v2, 0x0

    .line 8
    invoke-virtual {p0, v1, v2}, Lf8/i;->w(Lf8/a;Z)V

    goto :goto_12

    :cond_3d
    return-void
.end method

.method private j(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lf8/c;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_4b

    .line 1
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_4b

    :cond_9
    const/4 v0, 0x0

    .line 2
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lf8/c;

    .line 3
    invoke-virtual {v0}, Lf8/c;->o()Lf8/t;

    move-result-object v0

    .line 4
    iget-boolean v0, v0, Lf8/t;->n:Z

    if-eqz v0, :cond_4b

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_21
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_40

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lf8/c;

    .line 7
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_38

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    :cond_38
    invoke-static {v1}, Lf8/e0;->l(Lf8/c;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_21

    .line 9
    :cond_40
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Dispatcher"

    const-string v1, "delivered"

    invoke-static {v0, v1, p1}, Lf8/e0;->u(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_4b
    :goto_4b
    return-void
.end method

.method private k(Lf8/a;)V
    .registers 4

    .line 1
    invoke-virtual {p1}, Lf8/a;->k()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_e

    const/4 v1, 0x1

    .line 2
    iput-boolean v1, p1, Lf8/a;->k:Z

    .line 3
    iget-object v1, p0, Lf8/i;->f:Ljava/util/Map;

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_e
    return-void
.end method

.method private l(Lf8/c;)V
    .registers 5

    .line 1
    invoke-virtual {p1}, Lf8/c;->h()Lf8/a;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 2
    invoke-direct {p0, v0}, Lf8/i;->k(Lf8/a;)V

    .line 3
    :cond_9
    invoke-virtual {p1}, Lf8/c;->i()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_22

    const/4 v0, 0x0

    .line 4
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    :goto_14
    if-ge v0, v1, :cond_22

    .line 5
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lf8/a;

    .line 6
    invoke-direct {p0, v2}, Lf8/i;->k(Lf8/a;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    :cond_22
    return-void
.end method


# virtual methods
.method b(Z)V
    .registers 5

    .line 1
    iget-object v0, p0, Lf8/i;->i:Landroid/os/Handler;

    const/4 v1, 0x0

    const/16 v2, 0xa

    invoke-virtual {v0, v2, p1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method c(Lf8/a;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lf8/i;->i:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method d(Lf8/c;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lf8/i;->i:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method e(Lf8/c;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lf8/i;->i:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method f(Landroid/net/NetworkInfo;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lf8/i;->i:Landroid/os/Handler;

    const/16 v1, 0x9

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method g(Lf8/c;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lf8/i;->i:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method h(Lf8/a;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lf8/i;->i:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method m(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lf8/i;->p:Z

    return-void
.end method

.method n()V
    .registers 4

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lf8/i;->m:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2
    iget-object v1, p0, Lf8/i;->m:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 3
    iget-object v1, p0, Lf8/i;->j:Landroid/os/Handler;

    const/16 v2, 0x8

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 4
    invoke-direct {p0, v0}, Lf8/i;->j(Ljava/util/List;)V

    return-void
.end method

.method o(Lf8/a;)V
    .registers 6

    .line 1
    invoke-virtual {p1}, Lf8/a;->d()Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lf8/i;->e:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lf8/c;

    const-string v2, "canceled"

    const-string v3, "Dispatcher"

    if-eqz v1, :cond_33

    .line 3
    invoke-virtual {v1, p1}, Lf8/c;->f(Lf8/a;)V

    .line 4
    invoke-virtual {v1}, Lf8/c;->c()Z

    move-result v1

    if-eqz v1, :cond_33

    .line 5
    iget-object v1, p0, Lf8/i;->e:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-virtual {p1}, Lf8/a;->g()Lf8/t;

    move-result-object v0

    iget-boolean v0, v0, Lf8/t;->n:Z

    if-eqz v0, :cond_33

    .line 7
    invoke-virtual {p1}, Lf8/a;->i()Lf8/w;

    move-result-object v0

    invoke-virtual {v0}, Lf8/w;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v2, v0}, Lf8/e0;->u(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    :cond_33
    iget-object v0, p0, Lf8/i;->h:Ljava/util/Set;

    invoke-virtual {p1}, Lf8/a;->j()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5d

    .line 9
    iget-object v0, p0, Lf8/i;->g:Ljava/util/Map;

    invoke-virtual {p1}, Lf8/a;->k()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    invoke-virtual {p1}, Lf8/a;->g()Lf8/t;

    move-result-object v0

    iget-boolean v0, v0, Lf8/t;->n:Z

    if-eqz v0, :cond_5d

    .line 11
    invoke-virtual {p1}, Lf8/a;->i()Lf8/w;

    move-result-object v0

    invoke-virtual {v0}, Lf8/w;->d()Ljava/lang/String;

    move-result-object v0

    const-string v1, "because paused request got canceled"

    invoke-static {v3, v2, v0, v1}, Lf8/e0;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    :cond_5d
    iget-object v0, p0, Lf8/i;->f:Ljava/util/Map;

    invoke-virtual {p1}, Lf8/a;->k()Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lf8/a;

    if-eqz p1, :cond_80

    .line 13
    invoke-virtual {p1}, Lf8/a;->g()Lf8/t;

    move-result-object v0

    iget-boolean v0, v0, Lf8/t;->n:Z

    if-eqz v0, :cond_80

    .line 14
    invoke-virtual {p1}, Lf8/a;->i()Lf8/w;

    move-result-object p1

    invoke-virtual {p1}, Lf8/w;->d()Ljava/lang/String;

    move-result-object p1

    const-string v0, "from replaying"

    invoke-static {v3, v2, p1, v0}, Lf8/e0;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_80
    return-void
.end method

.method p(Lf8/c;)V
    .registers 5

    .line 1
    invoke-virtual {p1}, Lf8/c;->n()I

    move-result v0

    invoke-static {v0}, Lf8/p;->e(I)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 2
    iget-object v0, p0, Lf8/i;->k:Lf8/d;

    invoke-virtual {p1}, Lf8/c;->l()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lf8/c;->q()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lf8/d;->c(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 3
    :cond_17
    iget-object v0, p0, Lf8/i;->e:Ljava/util/Map;

    invoke-virtual {p1}, Lf8/c;->l()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-direct {p0, p1}, Lf8/i;->a(Lf8/c;)V

    .line 5
    invoke-virtual {p1}, Lf8/c;->o()Lf8/t;

    move-result-object v0

    iget-boolean v0, v0, Lf8/t;->n:Z

    if-eqz v0, :cond_38

    .line 6
    invoke-static {p1}, Lf8/e0;->l(Lf8/c;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Dispatcher"

    const-string v1, "batched"

    const-string v2, "for completion"

    invoke-static {v0, v1, p1, v2}, Lf8/e0;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_38
    return-void
.end method

.method q(Lf8/c;Z)V
    .registers 6

    .line 1
    invoke-virtual {p1}, Lf8/c;->o()Lf8/t;

    move-result-object v0

    iget-boolean v0, v0, Lf8/t;->n:Z

    if-eqz v0, :cond_2b

    .line 2
    invoke-static {p1}, Lf8/e0;->l(Lf8/c;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "for error"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_1b

    const-string p2, " (will replay)"

    goto :goto_1d

    :cond_1b
    const-string p2, ""

    :goto_1d
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v1, "Dispatcher"

    const-string v2, "batched"

    invoke-static {v1, v2, v0, p2}, Lf8/e0;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    :cond_2b
    iget-object p2, p0, Lf8/i;->e:Ljava/util/Map;

    invoke-virtual {p1}, Lf8/c;->l()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-direct {p0, p1}, Lf8/i;->a(Lf8/c;)V

    return-void
.end method

.method r(Landroid/net/NetworkInfo;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lf8/i;->c:Ljava/util/concurrent/ExecutorService;

    instance-of v1, v0, Lf8/v;

    if-eqz v1, :cond_b

    .line 2
    check-cast v0, Lf8/v;

    invoke-virtual {v0, p1}, Lf8/v;->a(Landroid/net/NetworkInfo;)V

    :cond_b
    if-eqz p1, :cond_16

    .line 3
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result p1

    if-eqz p1, :cond_16

    .line 4
    invoke-direct {p0}, Lf8/i;->i()V

    :cond_16
    return-void
.end method

.method s(Ljava/lang/Object;)V
    .registers 15

    .line 1
    iget-object v0, p0, Lf8/i;->h:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    return-void

    .line 2
    :cond_9
    iget-object v0, p0, Lf8/i;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_13
    :goto_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_d9

    .line 3
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lf8/c;

    .line 4
    invoke-virtual {v1}, Lf8/c;->o()Lf8/t;

    move-result-object v2

    iget-boolean v2, v2, Lf8/t;->n:Z

    .line 5
    invoke-virtual {v1}, Lf8/c;->h()Lf8/a;

    move-result-object v3

    .line 6
    invoke-virtual {v1}, Lf8/c;->i()Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x1

    if-eqz v4, :cond_38

    .line 7
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_38

    const/4 v6, 0x1

    goto :goto_39

    :cond_38
    const/4 v6, 0x0

    :goto_39
    if-nez v3, :cond_3e

    if-nez v6, :cond_3e

    goto :goto_13

    :cond_3e
    const-string v7, "\' was paused"

    const-string v8, "because tag \'"

    const-string v9, "paused"

    const-string v10, "Dispatcher"

    if-eqz v3, :cond_7b

    .line 8
    invoke-virtual {v3}, Lf8/a;->j()Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7b

    .line 9
    invoke-virtual {v1, v3}, Lf8/c;->f(Lf8/a;)V

    .line 10
    iget-object v11, p0, Lf8/i;->g:Ljava/util/Map;

    invoke-virtual {v3}, Lf8/a;->k()Ljava/lang/Object;

    move-result-object v12

    invoke-interface {v11, v12, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v2, :cond_7b

    .line 11
    iget-object v3, v3, Lf8/a;->b:Lf8/w;

    invoke-virtual {v3}, Lf8/w;->d()Ljava/lang/String;

    move-result-object v3

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v9, v3, v11}, Lf8/e0;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_7b
    if-eqz v6, :cond_c1

    .line 12
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v5

    :goto_82
    if-ltz v3, :cond_c1

    .line 13
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lf8/a;

    .line 14
    invoke-virtual {v5}, Lf8/a;->j()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_95

    goto :goto_be

    .line 15
    :cond_95
    invoke-virtual {v1, v5}, Lf8/c;->f(Lf8/a;)V

    .line 16
    iget-object v6, p0, Lf8/i;->g:Ljava/util/Map;

    invoke-virtual {v5}, Lf8/a;->k()Ljava/lang/Object;

    move-result-object v11

    invoke-interface {v6, v11, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v2, :cond_be

    .line 17
    iget-object v5, v5, Lf8/a;->b:Lf8/w;

    invoke-virtual {v5}, Lf8/w;->d()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v10, v9, v5, v6}, Lf8/e0;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_be
    :goto_be
    add-int/lit8 v3, v3, -0x1

    goto :goto_82

    .line 18
    :cond_c1
    invoke-virtual {v1}, Lf8/c;->c()Z

    move-result v3

    if-eqz v3, :cond_13

    .line 19
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    if-eqz v2, :cond_13

    .line 20
    invoke-static {v1}, Lf8/e0;->l(Lf8/c;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "canceled"

    const-string v3, "all actions paused"

    invoke-static {v10, v2, v1, v3}, Lf8/e0;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_13

    :cond_d9
    return-void
.end method

.method t(Ljava/lang/Object;)V
    .registers 6

    .line 1
    iget-object v0, p0, Lf8/i;->h:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    return-void

    :cond_9
    const/4 v0, 0x0

    .line 2
    iget-object v1, p0, Lf8/i;->g:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_14
    :goto_14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_38

    .line 3
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lf8/a;

    .line 4
    invoke-virtual {v2}, Lf8/a;->j()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    if-nez v0, :cond_31

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    :cond_31
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_14

    :cond_38
    if-eqz v0, :cond_45

    .line 8
    iget-object p1, p0, Lf8/i;->j:Landroid/os/Handler;

    const/16 v1, 0xd

    invoke-virtual {p1, v1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_45
    return-void
.end method

.method u(Lf8/c;)V
    .registers 7

    .line 1
    invoke-virtual {p1}, Lf8/c;->s()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 2
    :cond_7
    iget-object v0, p0, Lf8/i;->c:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_14

    .line 3
    invoke-virtual {p0, p1, v1}, Lf8/i;->q(Lf8/c;Z)V

    return-void

    :cond_14
    const/4 v0, 0x0

    .line 4
    iget-boolean v2, p0, Lf8/i;->o:Z

    if-eqz v2, :cond_27

    .line 5
    iget-object v0, p0, Lf8/i;->b:Landroid/content/Context;

    const-string v2, "connectivity"

    invoke-static {v0, v2}, Lf8/e0;->p(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 6
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    :cond_27
    const/4 v2, 0x1

    if-eqz v0, :cond_32

    .line 7
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_32

    const/4 v3, 0x1

    goto :goto_33

    :cond_32
    const/4 v3, 0x0

    .line 8
    :goto_33
    iget-boolean v4, p0, Lf8/i;->p:Z

    invoke-virtual {p1, v4, v0}, Lf8/c;->u(ZLandroid/net/NetworkInfo;)Z

    move-result v0

    .line 9
    invoke-virtual {p1}, Lf8/c;->v()Z

    move-result v4

    if-nez v0, :cond_4f

    .line 10
    iget-boolean v0, p0, Lf8/i;->o:Z

    if-eqz v0, :cond_46

    if-eqz v4, :cond_46

    const/4 v1, 0x1

    .line 11
    :cond_46
    invoke-virtual {p0, p1, v1}, Lf8/i;->q(Lf8/c;Z)V

    if-eqz v1, :cond_4e

    .line 12
    invoke-direct {p0, p1}, Lf8/i;->l(Lf8/c;)V

    :cond_4e
    return-void

    .line 13
    :cond_4f
    iget-boolean v0, p0, Lf8/i;->o:Z

    if-eqz v0, :cond_5f

    if-eqz v3, :cond_56

    goto :goto_5f

    .line 14
    :cond_56
    invoke-virtual {p0, p1, v4}, Lf8/i;->q(Lf8/c;Z)V

    if-eqz v4, :cond_5e

    .line 15
    invoke-direct {p0, p1}, Lf8/i;->l(Lf8/c;)V

    :cond_5e
    return-void

    .line 16
    :cond_5f
    :goto_5f
    invoke-virtual {p1}, Lf8/c;->o()Lf8/t;

    move-result-object v0

    iget-boolean v0, v0, Lf8/t;->n:Z

    if-eqz v0, :cond_72

    .line 17
    invoke-static {p1}, Lf8/e0;->l(Lf8/c;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Dispatcher"

    const-string v2, "retrying"

    invoke-static {v1, v2, v0}, Lf8/e0;->u(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    :cond_72
    invoke-virtual {p1}, Lf8/c;->k()Ljava/lang/Exception;

    move-result-object v0

    instance-of v0, v0, Lf8/r$a;

    if-eqz v0, :cond_83

    .line 19
    iget v0, p1, Lf8/c;->w:I

    sget-object v1, Lf8/q;->p:Lf8/q;

    iget v1, v1, Lf8/q;->o:I

    or-int/2addr v0, v1

    iput v0, p1, Lf8/c;->w:I

    .line 20
    :cond_83
    iget-object v0, p0, Lf8/i;->c:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    iput-object v0, p1, Lf8/c;->B:Ljava/util/concurrent/Future;

    return-void
.end method

.method v(Lf8/a;)V
    .registers 3

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, p1, v0}, Lf8/i;->w(Lf8/a;Z)V

    return-void
.end method

.method w(Lf8/a;Z)V
    .registers 7

    .line 1
    iget-object v0, p0, Lf8/i;->h:Ljava/util/Set;

    invoke-virtual {p1}, Lf8/a;->j()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "Dispatcher"

    if-eqz v0, :cond_45

    .line 2
    iget-object p2, p0, Lf8/i;->g:Ljava/util/Map;

    invoke-virtual {p1}, Lf8/a;->k()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-virtual {p1}, Lf8/a;->g()Lf8/t;

    move-result-object p2

    iget-boolean p2, p2, Lf8/t;->n:Z

    if-eqz p2, :cond_44

    .line 4
    iget-object p2, p1, Lf8/a;->b:Lf8/w;

    invoke-virtual {p2}, Lf8/w;->d()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "because tag \'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    invoke-virtual {p1}, Lf8/a;->j()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "\' is paused"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "paused"

    .line 6
    invoke-static {v1, v0, p2, p1}, Lf8/e0;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_44
    return-void

    .line 7
    :cond_45
    iget-object v0, p0, Lf8/i;->e:Ljava/util/Map;

    invoke-virtual {p1}, Lf8/a;->d()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lf8/c;

    if-eqz v0, :cond_57

    .line 8
    invoke-virtual {v0, p1}, Lf8/c;->b(Lf8/a;)V

    return-void

    .line 9
    :cond_57
    iget-object v0, p0, Lf8/i;->c:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-eqz v0, :cond_75

    .line 10
    invoke-virtual {p1}, Lf8/a;->g()Lf8/t;

    move-result-object p2

    iget-boolean p2, p2, Lf8/t;->n:Z

    if-eqz p2, :cond_74

    .line 11
    iget-object p1, p1, Lf8/a;->b:Lf8/w;

    invoke-virtual {p1}, Lf8/w;->d()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ignored"

    const-string v0, "because shut down"

    invoke-static {v1, p2, p1, v0}, Lf8/e0;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_74
    return-void

    .line 12
    :cond_75
    invoke-virtual {p1}, Lf8/a;->g()Lf8/t;

    move-result-object v0

    iget-object v2, p0, Lf8/i;->k:Lf8/d;

    iget-object v3, p0, Lf8/i;->l:Lf8/a0;

    invoke-static {v0, p0, v2, v3, p1}, Lf8/c;->g(Lf8/t;Lf8/i;Lf8/d;Lf8/a0;Lf8/a;)Lf8/c;

    move-result-object v0

    .line 13
    iget-object v2, p0, Lf8/i;->c:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v2, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v2

    iput-object v2, v0, Lf8/c;->B:Ljava/util/concurrent/Future;

    .line 14
    iget-object v2, p0, Lf8/i;->e:Ljava/util/Map;

    invoke-virtual {p1}, Lf8/a;->d()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_9d

    .line 15
    iget-object p2, p0, Lf8/i;->f:Ljava/util/Map;

    invoke-virtual {p1}, Lf8/a;->k()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    :cond_9d
    invoke-virtual {p1}, Lf8/a;->g()Lf8/t;

    move-result-object p2

    iget-boolean p2, p2, Lf8/t;->n:Z

    if-eqz p2, :cond_b0

    .line 17
    iget-object p1, p1, Lf8/a;->b:Lf8/w;

    invoke-virtual {p1}, Lf8/w;->d()Ljava/lang/String;

    move-result-object p1

    const-string p2, "enqueued"

    invoke-static {v1, p2, p1}, Lf8/e0;->u(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_b0
    return-void
.end method

###### Class f8.i.a (f8.i$a)
.class Lf8/i$a;
.super Landroid/os/Handler;
.source "Dispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf8/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private final a:Lf8/i;


# direct methods
.method public constructor <init>(Landroid/os/Looper;Lf8/i;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 2
    iput-object p2, p0, Lf8/i$a;->a:Lf8/i;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_70

    .line 2
    :pswitch_6
    sget-object v0, Lf8/t;->p:Landroid/os/Handler;

    new-instance v1, Lf8/i$a$a;

    invoke-direct {v1, p0, p1}, Lf8/i$a$a;-><init>(Lf8/i$a;Landroid/os/Message;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_6e

    .line 3
    :pswitch_11
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 4
    iget-object v0, p0, Lf8/i$a;->a:Lf8/i;

    invoke-virtual {v0, p1}, Lf8/i;->t(Ljava/lang/Object;)V

    goto :goto_6e

    .line 5
    :pswitch_19
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 6
    iget-object v0, p0, Lf8/i$a;->a:Lf8/i;

    invoke-virtual {v0, p1}, Lf8/i;->s(Ljava/lang/Object;)V

    goto :goto_6e

    .line 7
    :pswitch_21
    iget-object v0, p0, Lf8/i$a;->a:Lf8/i;

    iget p1, p1, Landroid/os/Message;->arg1:I

    const/4 v2, 0x1

    if-ne p1, v2, :cond_29

    const/4 v1, 0x1

    :cond_29
    invoke-virtual {v0, v1}, Lf8/i;->m(Z)V

    goto :goto_6e

    .line 8
    :pswitch_2d
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/net/NetworkInfo;

    .line 9
    iget-object v0, p0, Lf8/i$a;->a:Lf8/i;

    invoke-virtual {v0, p1}, Lf8/i;->r(Landroid/net/NetworkInfo;)V

    goto :goto_6e

    .line 10
    :pswitch_37
    iget-object p1, p0, Lf8/i$a;->a:Lf8/i;

    invoke-virtual {p1}, Lf8/i;->n()V

    goto :goto_6e

    .line 11
    :pswitch_3d
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lf8/c;

    .line 12
    iget-object v0, p0, Lf8/i$a;->a:Lf8/i;

    invoke-virtual {v0, p1, v1}, Lf8/i;->q(Lf8/c;Z)V

    goto :goto_6e

    .line 13
    :pswitch_47
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lf8/c;

    .line 14
    iget-object v0, p0, Lf8/i$a;->a:Lf8/i;

    invoke-virtual {v0, p1}, Lf8/i;->u(Lf8/c;)V

    goto :goto_6e

    .line 15
    :pswitch_51
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lf8/c;

    .line 16
    iget-object v0, p0, Lf8/i$a;->a:Lf8/i;

    invoke-virtual {v0, p1}, Lf8/i;->p(Lf8/c;)V

    goto :goto_6e

    .line 17
    :pswitch_5b
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lf8/a;

    .line 18
    iget-object v0, p0, Lf8/i$a;->a:Lf8/i;

    invoke-virtual {v0, p1}, Lf8/i;->o(Lf8/a;)V

    goto :goto_6e

    .line 19
    :pswitch_65
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lf8/a;

    .line 20
    iget-object v0, p0, Lf8/i$a;->a:Lf8/i;

    invoke-virtual {v0, p1}, Lf8/i;->v(Lf8/a;)V

    :goto_6e
    return-void

    nop

    :pswitch_data_70
    .packed-switch 0x1
        :pswitch_65
        :pswitch_5b
        :pswitch_6
        :pswitch_51
        :pswitch_47
        :pswitch_3d
        :pswitch_37
        :pswitch_6
        :pswitch_2d
        :pswitch_21
        :pswitch_19
        :pswitch_11
    .end packed-switch
.end method

###### Class f8.i.a.RunnableC0159a (f8.i$a$a)
.class Lf8/i$a$a;
.super Ljava/lang/Object;
.source "Dispatcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lf8/i$a;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic o:Landroid/os/Message;

.field final synthetic p:Lf8/i$a;


# direct methods
.method constructor <init>(Lf8/i$a;Landroid/os/Message;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lf8/i$a$a;->p:Lf8/i$a;

    iput-object p2, p0, Lf8/i$a$a;->o:Landroid/os/Message;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 1
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown handler message received: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lf8/i$a$a;->o:Landroid/os/Message;

    iget v2, v2, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

###### Class f8.i.b (f8.i$b)
.class Lf8/i$b;
.super Landroid/os/HandlerThread;
.source "Dispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf8/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 3

    const-string v0, "Picasso-Dispatcher"

    const/16 v1, 0xa

    .line 1
    invoke-direct {p0, v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    return-void
.end method

###### Class f8.i.c (f8.i$c)
.class Lf8/i$c;
.super Landroid/content/BroadcastReceiver;
.source "Dispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf8/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "c"
.end annotation


# instance fields
.field private final a:Lf8/i;


# direct methods
.method constructor <init>(Lf8/i;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 2
    iput-object p1, p0, Lf8/i$c;->a:Lf8/i;

    return-void
.end method


# virtual methods
.method a()V
    .registers 3

    .line 1
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    .line 2
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3
    iget-object v1, p0, Lf8/i$c;->a:Lf8/i;

    iget-boolean v1, v1, Lf8/i;->o:Z

    if-eqz v1, :cond_15

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    .line 4
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 5
    :cond_15
    iget-object v1, p0, Lf8/i$c;->a:Lf8/i;

    iget-object v1, v1, Lf8/i;->b:Landroid/content/Context;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    if-nez p2, :cond_3

    return-void

    .line 1
    :cond_3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    .line 2
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_23

    const-string p1, "state"

    .line 3
    invoke-virtual {p2, p1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_18

    return-void

    .line 4
    :cond_18
    iget-object v0, p0, Lf8/i$c;->a:Lf8/i;

    const/4 v1, 0x0

    invoke-virtual {p2, p1, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    invoke-virtual {v0, p1}, Lf8/i;->b(Z)V

    goto :goto_3c

    :cond_23
    const-string p2, "android.net.conn.CONNECTIVITY_CHANGE"

    .line 5
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3c

    const-string p2, "connectivity"

    .line 6
    invoke-static {p1, p2}, Lf8/e0;->p(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    .line 7
    iget-object p2, p0, Lf8/i$c;->a:Lf8/i;

    invoke-virtual {p1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p1

    invoke-virtual {p2, p1}, Lf8/i;->f(Landroid/net/NetworkInfo;)V

    :cond_3c
    :goto_3c
    return-void
.end method
