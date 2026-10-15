###### Class x0.f (x0.f)
.class public abstract Lx0/f;
.super Lx0/l;
.source "EntityDeletionOrUpdateAdapter.java"


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

.method public final h(Ljava/lang/Object;)I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lx0/l;->a()Lb1/k;

    move-result-object v0

    .line 2
    :try_start_4
    invoke-virtual {p0, v0, p1}, Lx0/f;->g(Lb1/k;Ljava/lang/Object;)V

    .line 3
    invoke-interface {v0}, Lb1/k;->u0()I

    move-result p1
    :try_end_b
    .catchall {:try_start_4 .. :try_end_b} :catchall_f

    .line 4
    invoke-virtual {p0, v0}, Lx0/l;->f(Lb1/k;)V

    return p1

    :catchall_f
    move-exception p1

    invoke-virtual {p0, v0}, Lx0/l;->f(Lb1/k;)V

    .line 5
    throw p1
.end method
