###### Class g1.q (g1.q)
.class public Lg1/q;
.super Lg1/m;
.source "TransitionSet.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lg1/q$b;
    }
.end annotation


# instance fields
.field private Y:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lg1/m;",
            ">;"
        }
    .end annotation
.end field

.field private Z:Z

.field a0:I

.field b0:Z

.field private c0:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lg1/m;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lg1/q;->Y:Ljava/util/ArrayList;

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lg1/q;->Z:Z

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lg1/q;->b0:Z

    .line 5
    iput v0, p0, Lg1/q;->c0:I

    return-void
.end method

.method private i0(Lg1/m;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lg1/q;->Y:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2
    iput-object p0, p1, Lg1/m;->F:Lg1/q;

    return-void
.end method

.method private s0()V
    .registers 4

    .line 1
    new-instance v0, Lg1/q$b;

    invoke-direct {v0, p0}, Lg1/q$b;-><init>(Lg1/q;)V

    .line 2
    iget-object v1, p0, Lg1/q;->Y:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lg1/m;

    .line 3
    invoke-virtual {v2, v0}, Lg1/m;->a(Lg1/m$f;)Lg1/m;

    goto :goto_b

    .line 4
    :cond_1b
    iget-object v0, p0, Lg1/q;->Y:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, p0, Lg1/q;->a0:I

    return-void
.end method


# virtual methods
.method public P(Landroid/view/View;)V
    .registers 5

    .line 1
    invoke-super {p0, p1}, Lg1/m;->P(Landroid/view/View;)V

    .line 2
    iget-object v0, p0, Lg1/q;->Y:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_a
    if-ge v1, v0, :cond_1a

    .line 3
    iget-object v2, p0, Lg1/q;->Y:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lg1/m;

    invoke-virtual {v2, p1}, Lg1/m;->P(Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_1a
    return-void
.end method

.method public bridge synthetic R(Lg1/m$f;)Lg1/m;
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lg1/q;->m0(Lg1/m$f;)Lg1/q;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic S(Landroid/view/View;)Lg1/m;
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lg1/q;->n0(Landroid/view/View;)Lg1/q;

    move-result-object p1

    return-object p1
.end method

.method public T(Landroid/view/View;)V
    .registers 5

    .line 1
    invoke-super {p0, p1}, Lg1/m;->T(Landroid/view/View;)V

    .line 2
    iget-object v0, p0, Lg1/q;->Y:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_a
    if-ge v1, v0, :cond_1a

    .line 3
    iget-object v2, p0, Lg1/q;->Y:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lg1/m;

    invoke-virtual {v2, p1}, Lg1/m;->T(Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_1a
    return-void
.end method

.method protected V()V
    .registers 5

    .line 1
    iget-object v0, p0, Lg1/q;->Y:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 2
    invoke-virtual {p0}, Lg1/m;->d0()V

    .line 3
    invoke-virtual {p0}, Lg1/m;->q()V

    return-void

    .line 4
    :cond_f
    invoke-direct {p0}, Lg1/q;->s0()V

    .line 5
    iget-boolean v0, p0, Lg1/q;->Z:Z

    if-nez v0, :cond_4b

    const/4 v0, 0x1

    .line 6
    :goto_17
    iget-object v1, p0, Lg1/q;->Y:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_3c

    .line 7
    iget-object v1, p0, Lg1/q;->Y:Ljava/util/ArrayList;

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg1/m;

    .line 8
    iget-object v2, p0, Lg1/q;->Y:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lg1/m;

    .line 9
    new-instance v3, Lg1/q$a;

    invoke-direct {v3, p0, v2}, Lg1/q$a;-><init>(Lg1/q;Lg1/m;)V

    invoke-virtual {v1, v3}, Lg1/m;->a(Lg1/m$f;)Lg1/m;

    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    .line 10
    :cond_3c
    iget-object v0, p0, Lg1/q;->Y:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg1/m;

    if-eqz v0, :cond_61

    .line 11
    invoke-virtual {v0}, Lg1/m;->V()V

    goto :goto_61

    .line 12
    :cond_4b
    iget-object v0, p0, Lg1/q;->Y:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_51
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_61

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg1/m;

    .line 13
    invoke-virtual {v1}, Lg1/m;->V()V

    goto :goto_51

    :cond_61
    :goto_61
    return-void
.end method

.method public bridge synthetic W(J)Lg1/m;
    .registers 3

    .line 1
    invoke-virtual {p0, p1, p2}, Lg1/q;->o0(J)Lg1/q;

    move-result-object p1

    return-object p1
.end method

.method public Y(Lg1/m$e;)V
    .registers 5

    .line 1
    invoke-super {p0, p1}, Lg1/m;->Y(Lg1/m$e;)V

    .line 2
    iget v0, p0, Lg1/q;->c0:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lg1/q;->c0:I

    .line 3
    iget-object v0, p0, Lg1/q;->Y:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_10
    if-ge v1, v0, :cond_20

    .line 4
    iget-object v2, p0, Lg1/q;->Y:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lg1/m;

    invoke-virtual {v2, p1}, Lg1/m;->Y(Lg1/m$e;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    :cond_20
    return-void
.end method

.method public bridge synthetic Z(Landroid/animation/TimeInterpolator;)Lg1/m;
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lg1/q;->p0(Landroid/animation/TimeInterpolator;)Lg1/q;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic a(Lg1/m$f;)Lg1/m;
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lg1/q;->f0(Lg1/m$f;)Lg1/q;

    move-result-object p1

    return-object p1
.end method

.method public a0(Lg1/g;)V
    .registers 4

    .line 1
    invoke-super {p0, p1}, Lg1/m;->a0(Lg1/g;)V

    .line 2
    iget v0, p0, Lg1/q;->c0:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lg1/q;->c0:I

    .line 3
    iget-object v0, p0, Lg1/q;->Y:Ljava/util/ArrayList;

    if-eqz v0, :cond_24

    const/4 v0, 0x0

    .line 4
    :goto_e
    iget-object v1, p0, Lg1/q;->Y:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_24

    .line 5
    iget-object v1, p0, Lg1/q;->Y:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg1/m;

    invoke-virtual {v1, p1}, Lg1/m;->a0(Lg1/g;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    :cond_24
    return-void
.end method

.method public bridge synthetic b(Landroid/view/View;)Lg1/m;
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lg1/q;->g0(Landroid/view/View;)Lg1/q;

    move-result-object p1

    return-object p1
.end method

.method public b0(Lg1/p;)V
    .registers 5

    .line 1
    invoke-super {p0, p1}, Lg1/m;->b0(Lg1/p;)V

    .line 2
    iget v0, p0, Lg1/q;->c0:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lg1/q;->c0:I

    .line 3
    iget-object v0, p0, Lg1/q;->Y:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_10
    if-ge v1, v0, :cond_20

    .line 4
    iget-object v2, p0, Lg1/q;->Y:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lg1/m;

    invoke-virtual {v2, p1}, Lg1/m;->b0(Lg1/p;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    :cond_20
    return-void
.end method

.method public bridge synthetic c0(J)Lg1/m;
    .registers 3

    .line 1
    invoke-virtual {p0, p1, p2}, Lg1/q;->r0(J)Lg1/q;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lg1/q;->n()Lg1/m;

    move-result-object v0

    return-object v0
.end method

.method e0(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    .line 1
    invoke-super {p0, p1}, Lg1/m;->e0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 2
    :goto_5
    iget-object v2, p0, Lg1/q;->Y:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_41

    .line 3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lg1/q;->Y:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg1/m;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lg1/m;->e0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_41
    return-object v0
.end method

.method public f0(Lg1/m$f;)Lg1/q;
    .registers 2

    .line 1
    invoke-super {p0, p1}, Lg1/m;->a(Lg1/m$f;)Lg1/m;

    move-result-object p1

    check-cast p1, Lg1/q;

    return-object p1
.end method

.method public g0(Landroid/view/View;)Lg1/q;
    .registers 4

    const/4 v0, 0x0

    .line 1
    :goto_1
    iget-object v1, p0, Lg1/q;->Y:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_17

    .line 2
    iget-object v1, p0, Lg1/q;->Y:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg1/m;

    invoke-virtual {v1, p1}, Lg1/m;->b(Landroid/view/View;)Lg1/m;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 3
    :cond_17
    invoke-super {p0, p1}, Lg1/m;->b(Landroid/view/View;)Lg1/m;

    move-result-object p1

    check-cast p1, Lg1/q;

    return-object p1
.end method

.method public h(Lg1/s;)V
    .registers 5

    .line 1
    iget-object v0, p1, Lg1/s;->b:Landroid/view/View;

    invoke-virtual {p0, v0}, Lg1/m;->H(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 2
    iget-object v0, p0, Lg1/q;->Y:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_e
    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg1/m;

    .line 3
    iget-object v2, p1, Lg1/s;->b:Landroid/view/View;

    invoke-virtual {v1, v2}, Lg1/m;->H(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 4
    invoke-virtual {v1, p1}, Lg1/m;->h(Lg1/s;)V

    .line 5
    iget-object v2, p1, Lg1/s;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_e

    :cond_2b
    return-void
.end method

.method public h0(Lg1/m;)Lg1/q;
    .registers 7

    .line 1
    invoke-direct {p0, p1}, Lg1/q;->i0(Lg1/m;)V

    .line 2
    iget-wide v0, p0, Lg1/m;->q:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_e

    .line 3
    invoke-virtual {p1, v0, v1}, Lg1/m;->W(J)Lg1/m;

    .line 4
    :cond_e
    iget v0, p0, Lg1/q;->c0:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1b

    .line 5
    invoke-virtual {p0}, Lg1/m;->t()Landroid/animation/TimeInterpolator;

    move-result-object v0

    invoke-virtual {p1, v0}, Lg1/m;->Z(Landroid/animation/TimeInterpolator;)Lg1/m;

    .line 6
    :cond_1b
    iget v0, p0, Lg1/q;->c0:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_28

    .line 7
    invoke-virtual {p0}, Lg1/m;->x()Lg1/p;

    move-result-object v0

    invoke-virtual {p1, v0}, Lg1/m;->b0(Lg1/p;)V

    .line 8
    :cond_28
    iget v0, p0, Lg1/q;->c0:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_35

    .line 9
    invoke-virtual {p0}, Lg1/m;->w()Lg1/g;

    move-result-object v0

    invoke-virtual {p1, v0}, Lg1/m;->a0(Lg1/g;)V

    .line 10
    :cond_35
    iget v0, p0, Lg1/q;->c0:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_42

    .line 11
    invoke-virtual {p0}, Lg1/m;->s()Lg1/m$e;

    move-result-object v0

    invoke-virtual {p1, v0}, Lg1/m;->Y(Lg1/m$e;)V

    :cond_42
    return-object p0
.end method

.method j(Lg1/s;)V
    .registers 5

    .line 1
    invoke-super {p0, p1}, Lg1/m;->j(Lg1/s;)V

    .line 2
    iget-object v0, p0, Lg1/q;->Y:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_a
    if-ge v1, v0, :cond_1a

    .line 3
    iget-object v2, p0, Lg1/q;->Y:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lg1/m;

    invoke-virtual {v2, p1}, Lg1/m;->j(Lg1/s;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_1a
    return-void
.end method

.method public j0(I)Lg1/m;
    .registers 3

    if-ltz p1, :cond_14

    .line 1
    iget-object v0, p0, Lg1/q;->Y:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_b

    goto :goto_14

    .line 2
    :cond_b
    iget-object v0, p0, Lg1/q;->Y:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lg1/m;

    return-object p1

    :cond_14
    :goto_14
    const/4 p1, 0x0

    return-object p1
.end method

.method public k(Lg1/s;)V
    .registers 5

    .line 1
    iget-object v0, p1, Lg1/s;->b:Landroid/view/View;

    invoke-virtual {p0, v0}, Lg1/m;->H(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 2
    iget-object v0, p0, Lg1/q;->Y:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_e
    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg1/m;

    .line 3
    iget-object v2, p1, Lg1/s;->b:Landroid/view/View;

    invoke-virtual {v1, v2}, Lg1/m;->H(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 4
    invoke-virtual {v1, p1}, Lg1/m;->k(Lg1/s;)V

    .line 5
    iget-object v2, p1, Lg1/s;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_e

    :cond_2b
    return-void
.end method

.method public k0()I
    .registers 2

    .line 1
    iget-object v0, p0, Lg1/q;->Y:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public m0(Lg1/m$f;)Lg1/q;
    .registers 2

    .line 1
    invoke-super {p0, p1}, Lg1/m;->R(Lg1/m$f;)Lg1/m;

    move-result-object p1

    check-cast p1, Lg1/q;

    return-object p1
.end method

.method public n()Lg1/m;
    .registers 5

    .line 1
    invoke-super {p0}, Lg1/m;->n()Lg1/m;

    move-result-object v0

    check-cast v0, Lg1/q;

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lg1/q;->Y:Ljava/util/ArrayList;

    .line 3
    iget-object v1, p0, Lg1/q;->Y:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_14
    if-ge v2, v1, :cond_28

    .line 4
    iget-object v3, p0, Lg1/q;->Y:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lg1/m;

    invoke-virtual {v3}, Lg1/m;->n()Lg1/m;

    move-result-object v3

    invoke-direct {v0, v3}, Lg1/q;->i0(Lg1/m;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    :cond_28
    return-object v0
.end method

.method public n0(Landroid/view/View;)Lg1/q;
    .registers 4

    const/4 v0, 0x0

    .line 1
    :goto_1
    iget-object v1, p0, Lg1/q;->Y:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_17

    .line 2
    iget-object v1, p0, Lg1/q;->Y:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg1/m;

    invoke-virtual {v1, p1}, Lg1/m;->S(Landroid/view/View;)Lg1/m;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 3
    :cond_17
    invoke-super {p0, p1}, Lg1/m;->S(Landroid/view/View;)Lg1/m;

    move-result-object p1

    check-cast p1, Lg1/q;

    return-object p1
.end method

.method public o0(J)Lg1/q;
    .registers 8

    .line 1
    invoke-super {p0, p1, p2}, Lg1/m;->W(J)Lg1/m;

    .line 2
    iget-wide v0, p0, Lg1/m;->q:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_24

    iget-object v0, p0, Lg1/q;->Y:Ljava/util/ArrayList;

    if-eqz v0, :cond_24

    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_14
    if-ge v1, v0, :cond_24

    .line 4
    iget-object v2, p0, Lg1/q;->Y:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lg1/m;

    invoke-virtual {v2, p1, p2}, Lg1/m;->W(J)Lg1/m;

    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    :cond_24
    return-object p0
.end method

.method protected p(Landroid/view/ViewGroup;Lg1/t;Lg1/t;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .registers 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Lg1/t;",
            "Lg1/t;",
            "Ljava/util/ArrayList<",
            "Lg1/s;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lg1/s;",
            ">;)V"
        }
    .end annotation

    move-object v0, p0

    .line 1
    invoke-virtual {p0}, Lg1/m;->z()J

    move-result-wide v1

    .line 2
    iget-object v3, v0, Lg1/q;->Y:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_c
    if-ge v4, v3, :cond_40

    .line 3
    iget-object v5, v0, Lg1/q;->Y:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Lg1/m;

    const-wide/16 v7, 0x0

    cmp-long v5, v1, v7

    if-lez v5, :cond_33

    .line 4
    iget-boolean v5, v0, Lg1/q;->Z:Z

    if-nez v5, :cond_23

    if-nez v4, :cond_33

    .line 5
    :cond_23
    invoke-virtual {v6}, Lg1/m;->z()J

    move-result-wide v9

    cmp-long v5, v9, v7

    if-lez v5, :cond_30

    add-long/2addr v9, v1

    .line 6
    invoke-virtual {v6, v9, v10}, Lg1/m;->c0(J)Lg1/m;

    goto :goto_33

    .line 7
    :cond_30
    invoke-virtual {v6, v1, v2}, Lg1/m;->c0(J)Lg1/m;

    :cond_33
    :goto_33
    move-object v7, p1

    move-object v8, p2

    move-object v9, p3

    move-object/from16 v10, p4

    move-object/from16 v11, p5

    .line 8
    invoke-virtual/range {v6 .. v11}, Lg1/m;->p(Landroid/view/ViewGroup;Lg1/t;Lg1/t;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_c

    :cond_40
    return-void
.end method

.method public p0(Landroid/animation/TimeInterpolator;)Lg1/q;
    .registers 5

    .line 1
    iget v0, p0, Lg1/q;->c0:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lg1/q;->c0:I

    .line 2
    iget-object v0, p0, Lg1/q;->Y:Ljava/util/ArrayList;

    if-eqz v0, :cond_1f

    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_f
    if-ge v1, v0, :cond_1f

    .line 4
    iget-object v2, p0, Lg1/q;->Y:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lg1/m;

    invoke-virtual {v2, p1}, Lg1/m;->Z(Landroid/animation/TimeInterpolator;)Lg1/m;

    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 5
    :cond_1f
    invoke-super {p0, p1}, Lg1/m;->Z(Landroid/animation/TimeInterpolator;)Lg1/m;

    move-result-object p1

    check-cast p1, Lg1/q;

    return-object p1
.end method

.method public q0(I)Lg1/q;
    .registers 5

    const/4 v0, 0x1

    if-eqz p1, :cond_20

    if-ne p1, v0, :cond_9

    const/4 p1, 0x0

    .line 1
    iput-boolean p1, p0, Lg1/q;->Z:Z

    goto :goto_22

    .line 2
    :cond_9
    new-instance v0, Landroid/util/AndroidRuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid parameter for TransitionSet ordering: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3
    :cond_20
    iput-boolean v0, p0, Lg1/q;->Z:Z

    :goto_22
    return-object p0
.end method

.method public r0(J)Lg1/q;
    .registers 3

    .line 1
    invoke-super {p0, p1, p2}, Lg1/m;->c0(J)Lg1/m;

    move-result-object p1

    check-cast p1, Lg1/q;

    return-object p1
.end method

###### Class g1.q.a (g1.q$a)
.class Lg1/q$a;
.super Lg1/n;
.source "TransitionSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lg1/q;->V()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lg1/m;

.field final synthetic b:Lg1/q;


# direct methods
.method constructor <init>(Lg1/q;Lg1/m;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lg1/q$a;->b:Lg1/q;

    iput-object p2, p0, Lg1/q$a;->a:Lg1/m;

    invoke-direct {p0}, Lg1/n;-><init>()V

    return-void
.end method


# virtual methods
.method public d(Lg1/m;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lg1/q$a;->a:Lg1/m;

    invoke-virtual {v0}, Lg1/m;->V()V

    .line 2
    invoke-virtual {p1, p0}, Lg1/m;->R(Lg1/m$f;)Lg1/m;

    return-void
.end method

###### Class g1.q.b (g1.q$b)
.class Lg1/q$b;
.super Lg1/n;
.source "TransitionSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lg1/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# instance fields
.field a:Lg1/q;


# direct methods
.method constructor <init>(Lg1/q;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Lg1/n;-><init>()V

    .line 2
    iput-object p1, p0, Lg1/q$b;->a:Lg1/q;

    return-void
.end method


# virtual methods
.method public d(Lg1/m;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lg1/q$b;->a:Lg1/q;

    iget v1, v0, Lg1/q;->a0:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lg1/q;->a0:I

    if-nez v1, :cond_10

    const/4 v1, 0x0

    .line 2
    iput-boolean v1, v0, Lg1/q;->b0:Z

    .line 3
    invoke-virtual {v0}, Lg1/m;->q()V

    .line 4
    :cond_10
    invoke-virtual {p1, p0}, Lg1/m;->R(Lg1/m$f;)Lg1/m;

    return-void
.end method

.method public e(Lg1/m;)V
    .registers 3

    .line 1
    iget-object p1, p0, Lg1/q$b;->a:Lg1/q;

    iget-boolean v0, p1, Lg1/q;->b0:Z

    if-nez v0, :cond_e

    .line 2
    invoke-virtual {p1}, Lg1/m;->d0()V

    .line 3
    iget-object p1, p0, Lg1/q$b;->a:Lg1/q;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lg1/q;->b0:Z

    :cond_e
    return-void
.end method
