###### Class s.l (s.l)
.class public Ls/l;
.super Ls/e;
.source "WidgetContainer.java"


# instance fields
.field public K0:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ls/e;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ls/e;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ls/l;->K0:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public a(Ls/e;)V
    .registers 3

    .line 1
    iget-object v0, p0, Ls/l;->K0:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2
    invoke-virtual {p1}, Ls/e;->I()Ls/e;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 3
    invoke-virtual {p1}, Ls/e;->I()Ls/e;

    move-result-object v0

    check-cast v0, Ls/l;

    .line 4
    invoke-virtual {v0, p1}, Ls/l;->q1(Ls/e;)V

    .line 5
    :cond_14
    invoke-virtual {p1, p0}, Ls/e;->Z0(Ls/e;)V

    return-void
.end method

.method public o1()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ls/e;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ls/l;->K0:Ljava/util/ArrayList;

    return-object v0
.end method

.method public p1()V
    .registers 5

    .line 1
    iget-object v0, p0, Ls/l;->K0:Ljava/util/ArrayList;

    if-nez v0, :cond_5

    return-void

    .line 2
    :cond_5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_a
    if-ge v1, v0, :cond_20

    .line 3
    iget-object v2, p0, Ls/l;->K0:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ls/e;

    .line 4
    instance-of v3, v2, Ls/l;

    if-eqz v3, :cond_1d

    .line 5
    check-cast v2, Ls/l;

    invoke-virtual {v2}, Ls/l;->p1()V

    :cond_1d
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_20
    return-void
.end method

.method public q1(Ls/e;)V
    .registers 3

    .line 1
    iget-object v0, p0, Ls/l;->K0:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2
    invoke-virtual {p1}, Ls/e;->r0()V

    return-void
.end method

.method public r0()V
    .registers 2

    .line 1
    iget-object v0, p0, Ls/l;->K0:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2
    invoke-super {p0}, Ls/e;->r0()V

    return-void
.end method

.method public r1()V
    .registers 2

    .line 1
    iget-object v0, p0, Ls/l;->K0:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public t0(Lp/c;)V
    .registers 5

    .line 1
    invoke-super {p0, p1}, Ls/e;->t0(Lp/c;)V

    .line 2
    iget-object v0, p0, Ls/l;->K0:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_a
    if-ge v1, v0, :cond_1a

    .line 3
    iget-object v2, p0, Ls/l;->K0:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ls/e;

    .line 4
    invoke-virtual {v2, p1}, Ls/e;->t0(Lp/c;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_1a
    return-void
.end method
