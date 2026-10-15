###### Class x0.g (x0.g)
.class public abstract Lx0/g;
.super Lx0/l;
.source "EntityInsertionAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lx0/l;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroidx/room/h0;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lx0/l;-><init>(Landroidx/room/h0;)V

    return-void
.end method


# virtual methods
.method protected abstract g(Lb1/k;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb1/k;",
            "TT;)V"
        }
    .end annotation
.end method

.method public final h(Ljava/lang/Iterable;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lx0/l;->a()Lb1/k;

    move-result-object v0

    .line 2
    :try_start_4
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_8
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 3
    invoke-virtual {p0, v0, v1}, Lx0/g;->g(Lb1/k;Ljava/lang/Object;)V

    .line 4
    invoke-interface {v0}, Lb1/k;->I3()J
    :try_end_18
    .catchall {:try_start_4 .. :try_end_18} :catchall_1d

    goto :goto_8

    .line 5
    :cond_19
    invoke-virtual {p0, v0}, Lx0/l;->f(Lb1/k;)V

    return-void

    :catchall_1d
    move-exception p1

    invoke-virtual {p0, v0}, Lx0/l;->f(Lb1/k;)V

    .line 6
    goto :goto_23

    :goto_22
    throw p1

    :goto_23
    goto :goto_22
.end method

.method public final i(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lx0/l;->a()Lb1/k;

    move-result-object v0

    .line 2
    :try_start_4
    invoke-virtual {p0, v0, p1}, Lx0/g;->g(Lb1/k;Ljava/lang/Object;)V

    .line 3
    invoke-interface {v0}, Lb1/k;->I3()J
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_e

    .line 4
    invoke-virtual {p0, v0}, Lx0/l;->f(Lb1/k;)V

    return-void

    :catchall_e
    move-exception p1

    invoke-virtual {p0, v0}, Lx0/l;->f(Lb1/k;)V

    .line 5
    throw p1
.end method
