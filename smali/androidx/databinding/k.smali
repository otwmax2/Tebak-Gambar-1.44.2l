###### Class androidx.databinding.k (androidx.databinding.k)
.class public Landroidx/databinding/k;
.super Ljava/util/ArrayList;
.source "ObservableArrayList.java"

# interfaces
.implements Landroidx/databinding/o;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/ArrayList<",
        "TT;>;",
        "Landroidx/databinding/o<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private transient o:Landroidx/databinding/i;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    new-instance v0, Landroidx/databinding/i;

    invoke-direct {v0}, Landroidx/databinding/i;-><init>()V

    iput-object v0, p0, Landroidx/databinding/k;->o:Landroidx/databinding/i;

    return-void
.end method

.method private g(II)V
    .registers 4

    .line 1
    iget-object v0, p0, Landroidx/databinding/k;->o:Landroidx/databinding/i;

    if-eqz v0, :cond_7

    .line 2
    invoke-virtual {v0, p0, p1, p2}, Landroidx/databinding/i;->q(Landroidx/databinding/o;II)V

    :cond_7
    return-void
.end method

.method private i(II)V
    .registers 4

    .line 1
    iget-object v0, p0, Landroidx/databinding/k;->o:Landroidx/databinding/i;

    if-eqz v0, :cond_7

    .line 2
    invoke-virtual {v0, p0, p1, p2}, Landroidx/databinding/i;->r(Landroidx/databinding/o;II)V

    :cond_7
    return-void
.end method


# virtual methods
.method public K2(Landroidx/databinding/o$a;)V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/databinding/k;->o:Landroidx/databinding/i;

    if-nez v0, :cond_b

    .line 2
    new-instance v0, Landroidx/databinding/i;

    invoke-direct {v0}, Landroidx/databinding/i;-><init>()V

    iput-object v0, p0, Landroidx/databinding/k;->o:Landroidx/databinding/i;

    .line 3
    :cond_b
    iget-object v0, p0, Landroidx/databinding/k;->o:Landroidx/databinding/i;

    invoke-virtual {v0, p1}, Landroidx/databinding/c;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public add(ILjava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation

    .line 3
    invoke-super {p0, p1, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const/4 p2, 0x1

    .line 4
    invoke-direct {p0, p1, p2}, Landroidx/databinding/k;->g(II)V

    return-void
.end method

.method public add(Ljava/lang/Object;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v0, 0x1

    sub-int/2addr p1, v0

    invoke-direct {p0, p1, v0}, Landroidx/databinding/k;->g(II)V

    return v0
.end method

.method public addAll(ILjava/util/Collection;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection<",
            "+TT;>;)Z"
        }
    .end annotation

    .line 4
    invoke-super {p0, p1, p2}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 5
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result p2

    invoke-direct {p0, p1, p2}, Landroidx/databinding/k;->g(II)V

    :cond_d
    return v0
.end method

.method public addAll(Ljava/util/Collection;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TT;>;)Z"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2
    invoke-super {p0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    move-result p1

    if-eqz p1, :cond_12

    .line 3
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v0

    invoke-direct {p0, v0, v1}, Landroidx/databinding/k;->g(II)V

    :cond_12
    return p1
.end method

.method public clear()V
    .registers 3

    .line 1
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2
    invoke-super {p0}, Ljava/util/ArrayList;->clear()V

    if-eqz v0, :cond_d

    const/4 v1, 0x0

    .line 3
    invoke-direct {p0, v1, v0}, Landroidx/databinding/k;->i(II)V

    :cond_d
    return-void
.end method

.method public e0(Landroidx/databinding/o$a;)V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/databinding/k;->o:Landroidx/databinding/i;

    if-eqz v0, :cond_7

    .line 2
    invoke-virtual {v0, p1}, Landroidx/databinding/c;->k(Ljava/lang/Object;)V

    :cond_7
    return-void
.end method

.method public remove(I)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x1

    .line 2
    invoke-direct {p0, p1, v1}, Landroidx/databinding/k;->i(II)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .registers 2

    .line 3
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_b

    .line 4
    invoke-virtual {p0, p1}, Landroidx/databinding/k;->remove(I)Ljava/lang/Object;

    const/4 p1, 0x1

    return p1

    :cond_b
    const/4 p1, 0x0

    return p1
.end method

.method protected removeRange(II)V
    .registers 3

    .line 1
    invoke-super {p0, p1, p2}, Ljava/util/ArrayList;->removeRange(II)V

    sub-int/2addr p2, p1

    .line 2
    invoke-direct {p0, p1, p2}, Landroidx/databinding/k;->i(II)V

    return-void
.end method

.method public set(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)TT;"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 2
    iget-object v0, p0, Landroidx/databinding/k;->o:Landroidx/databinding/i;

    if-eqz v0, :cond_c

    const/4 v1, 0x1

    .line 3
    invoke-virtual {v0, p0, p1, v1}, Landroidx/databinding/i;->p(Landroidx/databinding/o;II)V

    :cond_c
    return-object p2
.end method
