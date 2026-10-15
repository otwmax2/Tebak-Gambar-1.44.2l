###### Class g1.e (g1.e)
.class public Lg1/e;
.super Landroidx/fragment/app/z;
.source "FragmentTransitionSupport.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "RestrictedApi"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/z;-><init>()V

    return-void
.end method

.method private static C(Lg1/m;)Z
    .registers 2

    .line 1
    invoke-virtual {p0}, Lg1/m;->A()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Landroidx/fragment/app/z;->l(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 2
    invoke-virtual {p0}, Lg1/m;->B()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Landroidx/fragment/app/z;->l(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 3
    invoke-virtual {p0}, Lg1/m;->C()Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Landroidx/fragment/app/z;->l(Ljava/util/List;)Z

    move-result p0

    if-nez p0, :cond_1f

    goto :goto_21

    :cond_1f
    const/4 p0, 0x0

    goto :goto_22

    :cond_21
    :goto_21
    const/4 p0, 0x1

    :goto_22
    return p0
.end method


# virtual methods
.method public A(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 1
    check-cast p1, Lg1/q;

    if-eqz p1, :cond_15

    .line 2
    invoke-virtual {p1}, Lg1/m;->D()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 3
    invoke-virtual {p1}, Lg1/m;->D()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 4
    invoke-virtual {p0, p1, p2, p3}, Lg1/e;->q(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    :cond_15
    return-void
.end method

.method public B(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    if-nez p1, :cond_4

    const/4 p1, 0x0

    return-object p1

    .line 1
    :cond_4
    new-instance v0, Lg1/q;

    invoke-direct {v0}, Lg1/q;-><init>()V

    .line 2
    check-cast p1, Lg1/m;

    invoke-virtual {v0, p1}, Lg1/q;->h0(Lg1/m;)Lg1/q;

    return-object v0
.end method

.method public a(Ljava/lang/Object;Landroid/view/View;)V
    .registers 3

    if-eqz p1, :cond_7

    .line 1
    check-cast p1, Lg1/m;

    .line 2
    invoke-virtual {p1, p2}, Lg1/m;->b(Landroid/view/View;)Lg1/m;

    :cond_7
    return-void
.end method

.method public b(Ljava/lang/Object;Ljava/util/ArrayList;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 1
    check-cast p1, Lg1/m;

    if-nez p1, :cond_5

    return-void

    .line 2
    :cond_5
    instance-of v0, p1, Lg1/q;

    const/4 v1, 0x0

    if-eqz v0, :cond_1c

    .line 3
    check-cast p1, Lg1/q;

    .line 4
    invoke-virtual {p1}, Lg1/q;->k0()I

    move-result v0

    :goto_10
    if-ge v1, v0, :cond_3e

    .line 5
    invoke-virtual {p1, v1}, Lg1/q;->j0(I)Lg1/m;

    move-result-object v2

    .line 6
    invoke-virtual {p0, v2, p2}, Lg1/e;->b(Ljava/lang/Object;Ljava/util/ArrayList;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 7
    :cond_1c
    invoke-static {p1}, Lg1/e;->C(Lg1/m;)Z

    move-result v0

    if-nez v0, :cond_3e

    .line 8
    invoke-virtual {p1}, Lg1/m;->D()Ljava/util/List;

    move-result-object v0

    .line 9
    invoke-static {v0}, Landroidx/fragment/app/z;->l(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 10
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_30
    if-ge v1, v0, :cond_3e

    .line 11
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {p1, v2}, Lg1/m;->b(Landroid/view/View;)Lg1/m;

    add-int/lit8 v1, v1, 0x1

    goto :goto_30

    :cond_3e
    return-void
.end method

.method public c(Landroid/view/ViewGroup;Ljava/lang/Object;)V
    .registers 3

    .line 1
    check-cast p2, Lg1/m;

    invoke-static {p1, p2}, Lg1/o;->a(Landroid/view/ViewGroup;Lg1/m;)V

    return-void
.end method

.method public e(Ljava/lang/Object;)Z
    .registers 2

    .line 1
    instance-of p1, p1, Lg1/m;

    return p1
.end method

.method public g(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    if-eqz p1, :cond_9

    .line 1
    check-cast p1, Lg1/m;

    invoke-virtual {p1}, Lg1/m;->n()Lg1/m;

    move-result-object p1

    goto :goto_a

    :cond_9
    const/4 p1, 0x0

    :goto_a
    return-object p1
.end method

.method public m(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    .line 1
    check-cast p1, Lg1/m;

    .line 2
    check-cast p2, Lg1/m;

    .line 3
    check-cast p3, Lg1/m;

    if-eqz p1, :cond_1d

    if-eqz p2, :cond_1d

    .line 4
    new-instance v0, Lg1/q;

    invoke-direct {v0}, Lg1/q;-><init>()V

    .line 5
    invoke-virtual {v0, p1}, Lg1/q;->h0(Lg1/m;)Lg1/q;

    move-result-object p1

    .line 6
    invoke-virtual {p1, p2}, Lg1/q;->h0(Lg1/m;)Lg1/q;

    move-result-object p1

    const/4 p2, 0x1

    .line 7
    invoke-virtual {p1, p2}, Lg1/q;->q0(I)Lg1/q;

    move-result-object p1

    goto :goto_25

    :cond_1d
    if-eqz p1, :cond_20

    goto :goto_25

    :cond_20
    if-eqz p2, :cond_24

    move-object p1, p2

    goto :goto_25

    :cond_24
    const/4 p1, 0x0

    :goto_25
    if-eqz p3, :cond_35

    .line 8
    new-instance p2, Lg1/q;

    invoke-direct {p2}, Lg1/q;-><init>()V

    if-eqz p1, :cond_31

    .line 9
    invoke-virtual {p2, p1}, Lg1/q;->h0(Lg1/m;)Lg1/q;

    .line 10
    :cond_31
    invoke-virtual {p2, p3}, Lg1/q;->h0(Lg1/m;)Lg1/q;

    return-object p2

    :cond_35
    return-object p1
.end method

.method public n(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    .line 1
    new-instance v0, Lg1/q;

    invoke-direct {v0}, Lg1/q;-><init>()V

    if-eqz p1, :cond_c

    .line 2
    check-cast p1, Lg1/m;

    invoke-virtual {v0, p1}, Lg1/q;->h0(Lg1/m;)Lg1/q;

    :cond_c
    if-eqz p2, :cond_13

    .line 3
    check-cast p2, Lg1/m;

    invoke-virtual {v0, p2}, Lg1/q;->h0(Lg1/m;)Lg1/q;

    :cond_13
    if-eqz p3, :cond_1a

    .line 4
    check-cast p3, Lg1/m;

    invoke-virtual {v0, p3}, Lg1/q;->h0(Lg1/m;)Lg1/q;

    :cond_1a
    return-object v0
.end method

.method public p(Ljava/lang/Object;Landroid/view/View;)V
    .registers 3

    if-eqz p1, :cond_7

    .line 1
    check-cast p1, Lg1/m;

    .line 2
    invoke-virtual {p1, p2}, Lg1/m;->S(Landroid/view/View;)Lg1/m;

    :cond_7
    return-void
.end method

.method public q(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 1
    check-cast p1, Lg1/m;

    .line 2
    instance-of v0, p1, Lg1/q;

    const/4 v1, 0x0

    if-eqz v0, :cond_19

    .line 3
    check-cast p1, Lg1/q;

    .line 4
    invoke-virtual {p1}, Lg1/q;->k0()I

    move-result v0

    :goto_d
    if-ge v1, v0, :cond_5d

    .line 5
    invoke-virtual {p1, v1}, Lg1/q;->j0(I)Lg1/m;

    move-result-object v2

    .line 6
    invoke-virtual {p0, v2, p2, p3}, Lg1/e;->q(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 7
    :cond_19
    invoke-static {p1}, Lg1/e;->C(Lg1/m;)Z

    move-result v0

    if-nez v0, :cond_5d

    .line 8
    invoke-virtual {p1}, Lg1/m;->D()Ljava/util/List;

    move-result-object v0

    .line 9
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ne v2, v3, :cond_5d

    .line 10
    invoke-interface {v0, p2}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_5d

    if-nez p3, :cond_37

    const/4 v0, 0x0

    goto :goto_3b

    .line 11
    :cond_37
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_3b
    if-ge v1, v0, :cond_49

    .line 12
    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {p1, v2}, Lg1/m;->b(Landroid/view/View;)Lg1/m;

    add-int/lit8 v1, v1, 0x1

    goto :goto_3b

    .line 13
    :cond_49
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p3

    add-int/lit8 p3, p3, -0x1

    :goto_4f
    if-ltz p3, :cond_5d

    .line 14
    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p1, v0}, Lg1/m;->S(Landroid/view/View;)Lg1/m;

    add-int/lit8 p3, p3, -0x1

    goto :goto_4f

    :cond_5d
    return-void
.end method

.method public r(Ljava/lang/Object;Landroid/view/View;Ljava/util/ArrayList;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Landroid/view/View;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 1
    check-cast p1, Lg1/m;

    .line 2
    new-instance v0, Lg1/e$b;

    invoke-direct {v0, p0, p2, p3}, Lg1/e$b;-><init>(Lg1/e;Landroid/view/View;Ljava/util/ArrayList;)V

    invoke-virtual {p1, v0}, Lg1/m;->a(Lg1/m$f;)Lg1/m;

    return-void
.end method

.method public t(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V
    .registers 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;",
            "Ljava/lang/Object;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;",
            "Ljava/lang/Object;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 1
    move-object v0, p1

    check-cast v0, Lg1/m;

    .line 2
    new-instance v9, Lg1/e$c;

    move-object v1, v9

    move-object v2, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v1 .. v8}, Lg1/e$c;-><init>(Lg1/e;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v9}, Lg1/m;->a(Lg1/m$f;)Lg1/m;

    return-void
.end method

.method public u(Ljava/lang/Object;Landroid/graphics/Rect;)V
    .registers 4

    if-eqz p1, :cond_c

    .line 1
    check-cast p1, Lg1/m;

    .line 2
    new-instance v0, Lg1/e$d;

    invoke-direct {v0, p0, p2}, Lg1/e$d;-><init>(Lg1/e;Landroid/graphics/Rect;)V

    invoke-virtual {p1, v0}, Lg1/m;->Y(Lg1/m$e;)V

    :cond_c
    return-void
.end method

.method public v(Ljava/lang/Object;Landroid/view/View;)V
    .registers 4

    if-eqz p2, :cond_14

    .line 1
    check-cast p1, Lg1/m;

    .line 2
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 3
    invoke-virtual {p0, p2, v0}, Landroidx/fragment/app/z;->k(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 4
    new-instance p2, Lg1/e$a;

    invoke-direct {p2, p0, v0}, Lg1/e$a;-><init>(Lg1/e;Landroid/graphics/Rect;)V

    invoke-virtual {p1, p2}, Lg1/m;->Y(Lg1/m$e;)V

    :cond_14
    return-void
.end method

.method public z(Ljava/lang/Object;Landroid/view/View;Ljava/util/ArrayList;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Landroid/view/View;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 1
    check-cast p1, Lg1/q;

    .line 2
    invoke-virtual {p1}, Lg1/m;->D()Ljava/util/List;

    move-result-object v0

    .line 3
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 4
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_e
    if-ge v2, v1, :cond_1c

    .line 5
    invoke-virtual {p3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 6
    invoke-static {v0, v3}, Landroidx/fragment/app/z;->d(Ljava/util/List;Landroid/view/View;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 7
    :cond_1c
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8
    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9
    invoke-virtual {p0, p1, p3}, Lg1/e;->b(Ljava/lang/Object;Ljava/util/ArrayList;)V

    return-void
.end method

###### Class g1.e.a (g1.e$a)
.class Lg1/e$a;
.super Lg1/m$e;
.source "FragmentTransitionSupport.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lg1/e;->v(Ljava/lang/Object;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/graphics/Rect;

.field final synthetic b:Lg1/e;


# direct methods
.method constructor <init>(Lg1/e;Landroid/graphics/Rect;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lg1/e$a;->b:Lg1/e;

    iput-object p2, p0, Lg1/e$a;->a:Landroid/graphics/Rect;

    invoke-direct {p0}, Lg1/m$e;-><init>()V

    return-void
.end method

###### Class g1.e.b (g1.e$b)
.class Lg1/e$b;
.super Ljava/lang/Object;
.source "FragmentTransitionSupport.java"

# interfaces
.implements Lg1/m$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lg1/e;->r(Ljava/lang/Object;Landroid/view/View;Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Ljava/util/ArrayList;

.field final synthetic c:Lg1/e;


# direct methods
.method constructor <init>(Lg1/e;Landroid/view/View;Ljava/util/ArrayList;)V
    .registers 4

    .line 1
    iput-object p1, p0, Lg1/e$b;->c:Lg1/e;

    iput-object p2, p0, Lg1/e$b;->a:Landroid/view/View;

    iput-object p3, p0, Lg1/e$b;->b:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lg1/m;)V
    .registers 2

    return-void
.end method

.method public b(Lg1/m;)V
    .registers 2

    return-void
.end method

.method public c(Lg1/m;)V
    .registers 2

    return-void
.end method

.method public d(Lg1/m;)V
    .registers 5

    .line 1
    invoke-virtual {p1, p0}, Lg1/m;->R(Lg1/m$f;)Lg1/m;

    .line 2
    iget-object p1, p0, Lg1/e$b;->a:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 3
    iget-object p1, p0, Lg1/e$b;->b:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_12
    if-ge v1, p1, :cond_22

    .line 4
    iget-object v2, p0, Lg1/e$b;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    :cond_22
    return-void
.end method

.method public e(Lg1/m;)V
    .registers 2

    return-void
.end method

###### Class g1.e.c (g1.e$c)
.class Lg1/e$c;
.super Lg1/n;
.source "FragmentTransitionSupport.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lg1/e;->t(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Object;

.field final synthetic b:Ljava/util/ArrayList;

.field final synthetic c:Ljava/lang/Object;

.field final synthetic d:Ljava/util/ArrayList;

.field final synthetic e:Ljava/lang/Object;

.field final synthetic f:Ljava/util/ArrayList;

.field final synthetic g:Lg1/e;


# direct methods
.method constructor <init>(Lg1/e;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V
    .registers 8

    .line 1
    iput-object p1, p0, Lg1/e$c;->g:Lg1/e;

    iput-object p2, p0, Lg1/e$c;->a:Ljava/lang/Object;

    iput-object p3, p0, Lg1/e$c;->b:Ljava/util/ArrayList;

    iput-object p4, p0, Lg1/e$c;->c:Ljava/lang/Object;

    iput-object p5, p0, Lg1/e$c;->d:Ljava/util/ArrayList;

    iput-object p6, p0, Lg1/e$c;->e:Ljava/lang/Object;

    iput-object p7, p0, Lg1/e$c;->f:Ljava/util/ArrayList;

    invoke-direct {p0}, Lg1/n;-><init>()V

    return-void
.end method


# virtual methods
.method public d(Lg1/m;)V
    .registers 2

    .line 1
    invoke-virtual {p1, p0}, Lg1/m;->R(Lg1/m$f;)Lg1/m;

    return-void
.end method

.method public e(Lg1/m;)V
    .registers 5

    .line 1
    iget-object p1, p0, Lg1/e$c;->a:Ljava/lang/Object;

    const/4 v0, 0x0

    if-eqz p1, :cond_c

    .line 2
    iget-object v1, p0, Lg1/e$c;->g:Lg1/e;

    iget-object v2, p0, Lg1/e$c;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, p1, v2, v0}, Lg1/e;->q(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 3
    :cond_c
    iget-object p1, p0, Lg1/e$c;->c:Ljava/lang/Object;

    if-eqz p1, :cond_17

    .line 4
    iget-object v1, p0, Lg1/e$c;->g:Lg1/e;

    iget-object v2, p0, Lg1/e$c;->d:Ljava/util/ArrayList;

    invoke-virtual {v1, p1, v2, v0}, Lg1/e;->q(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 5
    :cond_17
    iget-object p1, p0, Lg1/e$c;->e:Ljava/lang/Object;

    if-eqz p1, :cond_22

    .line 6
    iget-object v1, p0, Lg1/e$c;->g:Lg1/e;

    iget-object v2, p0, Lg1/e$c;->f:Ljava/util/ArrayList;

    invoke-virtual {v1, p1, v2, v0}, Lg1/e;->q(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    :cond_22
    return-void
.end method

###### Class g1.e.d (g1.e$d)
.class Lg1/e$d;
.super Lg1/m$e;
.source "FragmentTransitionSupport.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lg1/e;->u(Ljava/lang/Object;Landroid/graphics/Rect;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/graphics/Rect;

.field final synthetic b:Lg1/e;


# direct methods
.method constructor <init>(Lg1/e;Landroid/graphics/Rect;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lg1/e$d;->b:Lg1/e;

    iput-object p2, p0, Lg1/e$d;->a:Landroid/graphics/Rect;

    invoke-direct {p0}, Lg1/m$e;-><init>()V

    return-void
.end method
