###### Class q2.m (q2.m)
.class public Lq2/m;
.super Ljava/lang/Object;
.source "RequestTracker.java"


# instance fields
.field private final a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lt2/c;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lt2/c;",
            ">;"
        }
    .end annotation
.end field

.field private c:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lq2/m;->a:Ljava/util/Set;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lq2/m;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    .line 1
    iget-object v0, p0, Lq2/m;->a:Ljava/util/Set;

    invoke-static {v0}, Lx2/h;->h(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lt2/c;

    .line 2
    invoke-interface {v1}, Lt2/c;->clear()V

    goto :goto_a

    .line 3
    :cond_1a
    iget-object v0, p0, Lq2/m;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public b()V
    .registers 4

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lq2/m;->c:Z

    .line 2
    iget-object v0, p0, Lq2/m;->a:Ljava/util/Set;

    invoke-static {v0}, Lx2/h;->h(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_d
    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_28

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lt2/c;

    .line 3
    invoke-interface {v1}, Lt2/c;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 4
    invoke-interface {v1}, Lt2/c;->e()V

    .line 5
    iget-object v2, p0, Lq2/m;->b:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_d

    :cond_28
    return-void
.end method

.method public c(Lt2/c;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lq2/m;->a:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 2
    iget-object v0, p0, Lq2/m;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public d()V
    .registers 4

    .line 1
    iget-object v0, p0, Lq2/m;->a:Ljava/util/Set;

    invoke-static {v0}, Lx2/h;->h(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_a
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_33

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lt2/c;

    .line 2
    invoke-interface {v1}, Lt2/c;->i()Z

    move-result v2

    if-nez v2, :cond_a

    invoke-interface {v1}, Lt2/c;->isCancelled()Z

    move-result v2

    if-nez v2, :cond_a

    .line 3
    invoke-interface {v1}, Lt2/c;->e()V

    .line 4
    iget-boolean v2, p0, Lq2/m;->c:Z

    if-nez v2, :cond_2d

    .line 5
    invoke-interface {v1}, Lt2/c;->h()V

    goto :goto_a

    .line 6
    :cond_2d
    iget-object v2, p0, Lq2/m;->b:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_a

    :cond_33
    return-void
.end method

.method public e()V
    .registers 4

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lq2/m;->c:Z

    .line 2
    iget-object v0, p0, Lq2/m;->a:Ljava/util/Set;

    invoke-static {v0}, Lx2/h;->h(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_d
    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lt2/c;

    .line 3
    invoke-interface {v1}, Lt2/c;->i()Z

    move-result v2

    if-nez v2, :cond_d

    invoke-interface {v1}, Lt2/c;->isCancelled()Z

    move-result v2

    if-nez v2, :cond_d

    invoke-interface {v1}, Lt2/c;->isRunning()Z

    move-result v2

    if-nez v2, :cond_d

    .line 4
    invoke-interface {v1}, Lt2/c;->h()V

    goto :goto_d

    .line 5
    :cond_2f
    iget-object v0, p0, Lq2/m;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public f(Lt2/c;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lq2/m;->a:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2
    iget-boolean v0, p0, Lq2/m;->c:Z

    if-nez v0, :cond_d

    .line 3
    invoke-interface {p1}, Lt2/c;->h()V

    goto :goto_12

    .line 4
    :cond_d
    iget-object v0, p0, Lq2/m;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_12
    return-void
.end method
