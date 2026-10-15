###### Class t2.h (t2.h)
.class public Lt2/h;
.super Ljava/lang/Object;
.source "ThumbnailRequestCoordinator.java"

# interfaces
.implements Lt2/d;
.implements Lt2/c;


# instance fields
.field private a:Lt2/c;

.field private b:Lt2/c;

.field private c:Lt2/d;


# direct methods
.method public constructor <init>(Lt2/d;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lt2/h;->c:Lt2/d;

    return-void
.end method

.method private j()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lt2/h;->c:Lt2/d;

    if-eqz v0, :cond_d

    invoke-interface {v0, p0}, Lt2/d;->a(Lt2/c;)Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_d

    :cond_b
    const/4 v0, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 v0, 0x1

    :goto_e
    return v0
.end method

.method private k()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lt2/h;->c:Lt2/d;

    if-eqz v0, :cond_d

    invoke-interface {v0, p0}, Lt2/d;->c(Lt2/c;)Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_d

    :cond_b
    const/4 v0, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 v0, 0x1

    :goto_e
    return v0
.end method

.method private l()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lt2/h;->c:Lt2/d;

    if-eqz v0, :cond_c

    invoke-interface {v0}, Lt2/d;->d()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method


# virtual methods
.method public a(Lt2/c;)Z
    .registers 3

    .line 1
    invoke-direct {p0}, Lt2/h;->j()Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lt2/h;->a:Lt2/c;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_16

    invoke-virtual {p0}, Lt2/h;->d()Z

    move-result p1

    if-nez p1, :cond_16

    const/4 p1, 0x1

    goto :goto_17

    :cond_16
    const/4 p1, 0x0

    :goto_17
    return p1
.end method

.method public b()V
    .registers 2

    .line 1
    iget-object v0, p0, Lt2/h;->a:Lt2/c;

    invoke-interface {v0}, Lt2/c;->b()V

    .line 2
    iget-object v0, p0, Lt2/h;->b:Lt2/c;

    invoke-interface {v0}, Lt2/c;->b()V

    return-void
.end method

.method public c(Lt2/c;)Z
    .registers 3

    .line 1
    invoke-direct {p0}, Lt2/h;->k()Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lt2/h;->a:Lt2/c;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_16

    iget-object p1, p0, Lt2/h;->a:Lt2/c;

    invoke-interface {p1}, Lt2/c;->f()Z

    move-result p1

    if-nez p1, :cond_18

    :cond_16
    const/4 p1, 0x1

    goto :goto_19

    :cond_18
    const/4 p1, 0x0

    :goto_19
    return p1
.end method

.method public clear()V
    .registers 2

    .line 1
    iget-object v0, p0, Lt2/h;->b:Lt2/c;

    invoke-interface {v0}, Lt2/c;->clear()V

    .line 2
    iget-object v0, p0, Lt2/h;->a:Lt2/c;

    invoke-interface {v0}, Lt2/c;->clear()V

    return-void
.end method

.method public d()Z
    .registers 2

    .line 1
    invoke-direct {p0}, Lt2/h;->l()Z

    move-result v0

    if-nez v0, :cond_f

    invoke-virtual {p0}, Lt2/h;->f()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    :goto_10
    return v0
.end method

.method public e()V
    .registers 2

    .line 1
    iget-object v0, p0, Lt2/h;->a:Lt2/c;

    invoke-interface {v0}, Lt2/c;->e()V

    .line 2
    iget-object v0, p0, Lt2/h;->b:Lt2/c;

    invoke-interface {v0}, Lt2/c;->e()V

    return-void
.end method

.method public f()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lt2/h;->a:Lt2/c;

    invoke-interface {v0}, Lt2/c;->f()Z

    move-result v0

    if-nez v0, :cond_13

    iget-object v0, p0, Lt2/h;->b:Lt2/c;

    invoke-interface {v0}, Lt2/c;->f()Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_13

    :cond_11
    const/4 v0, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 v0, 0x1

    :goto_14
    return v0
.end method

.method public g(Lt2/c;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lt2/h;->b:Lt2/c;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    return-void

    .line 2
    :cond_9
    iget-object p1, p0, Lt2/h;->c:Lt2/d;

    if-eqz p1, :cond_10

    .line 3
    invoke-interface {p1, p0}, Lt2/d;->g(Lt2/c;)V

    .line 4
    :cond_10
    iget-object p1, p0, Lt2/h;->b:Lt2/c;

    invoke-interface {p1}, Lt2/c;->i()Z

    move-result p1

    if-nez p1, :cond_1d

    .line 5
    iget-object p1, p0, Lt2/h;->b:Lt2/c;

    invoke-interface {p1}, Lt2/c;->clear()V

    :cond_1d
    return-void
.end method

.method public h()V
    .registers 2

    .line 1
    iget-object v0, p0, Lt2/h;->b:Lt2/c;

    invoke-interface {v0}, Lt2/c;->isRunning()Z

    move-result v0

    if-nez v0, :cond_d

    .line 2
    iget-object v0, p0, Lt2/h;->b:Lt2/c;

    invoke-interface {v0}, Lt2/c;->h()V

    .line 3
    :cond_d
    iget-object v0, p0, Lt2/h;->a:Lt2/c;

    invoke-interface {v0}, Lt2/c;->isRunning()Z

    move-result v0

    if-nez v0, :cond_1a

    .line 4
    iget-object v0, p0, Lt2/h;->a:Lt2/c;

    invoke-interface {v0}, Lt2/c;->h()V

    :cond_1a
    return-void
.end method

.method public i()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lt2/h;->a:Lt2/c;

    invoke-interface {v0}, Lt2/c;->i()Z

    move-result v0

    if-nez v0, :cond_13

    iget-object v0, p0, Lt2/h;->b:Lt2/c;

    invoke-interface {v0}, Lt2/c;->i()Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_13

    :cond_11
    const/4 v0, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 v0, 0x1

    :goto_14
    return v0
.end method

.method public isCancelled()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lt2/h;->a:Lt2/c;

    invoke-interface {v0}, Lt2/c;->isCancelled()Z

    move-result v0

    return v0
.end method

.method public isRunning()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lt2/h;->a:Lt2/c;

    invoke-interface {v0}, Lt2/c;->isRunning()Z

    move-result v0

    return v0
.end method

.method public m(Lt2/c;Lt2/c;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lt2/h;->a:Lt2/c;

    .line 2
    iput-object p2, p0, Lt2/h;->b:Lt2/c;

    return-void
.end method
