###### Class g1.m (g1.m)
.class public abstract Lg1/m;
.super Ljava/lang/Object;
.source "Transition.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lg1/m$e;,
        Lg1/m$d;,
        Lg1/m$f;
    }
.end annotation


# static fields
.field private static final V:[I

.field private static final W:Lg1/g;

.field private static X:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lo/a<",
            "Landroid/animation/Animator;",
            "Lg1/m$d;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private A:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private B:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private C:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field

.field private D:Lg1/t;

.field private E:Lg1/t;

.field F:Lg1/q;

.field private G:[I

.field private H:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lg1/s;",
            ">;"
        }
    .end annotation
.end field

.field private I:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lg1/s;",
            ">;"
        }
    .end annotation
.end field

.field private J:Landroid/view/ViewGroup;

.field K:Z

.field L:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation
.end field

.field private M:I

.field private N:Z

.field private O:Z

.field private P:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lg1/m$f;",
            ">;"
        }
    .end annotation
.end field

.field private Q:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation
.end field

.field R:Lg1/p;

.field private S:Lg1/m$e;

.field private T:Lo/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/a<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private U:Lg1/g;

.field private o:Ljava/lang/String;

.field private p:J

.field q:J

.field private r:Landroid/animation/TimeInterpolator;

.field s:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field t:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private u:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private v:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field

.field private w:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private x:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private y:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field

.field private z:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x4

    new-array v0, v0, [I

    .line 1
    fill-array-data v0, :array_18

    sput-object v0, Lg1/m;->V:[I

    .line 2
    new-instance v0, Lg1/m$a;

    invoke-direct {v0}, Lg1/m$a;-><init>()V

    sput-object v0, Lg1/m;->W:Lg1/g;

    .line 3
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lg1/m;->X:Ljava/lang/ThreadLocal;

    return-void

    nop

    :array_18
    .array-data 4
        0x2
        0x1
        0x3
        0x4
    .end array-data
.end method

.method public constructor <init>()V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lg1/m;->o:Ljava/lang/String;

    const-wide/16 v0, -0x1

    .line 3
    iput-wide v0, p0, Lg1/m;->p:J

    .line 4
    iput-wide v0, p0, Lg1/m;->q:J

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lg1/m;->r:Landroid/animation/TimeInterpolator;

    .line 6
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lg1/m;->s:Ljava/util/ArrayList;

    .line 7
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lg1/m;->t:Ljava/util/ArrayList;

    .line 8
    iput-object v0, p0, Lg1/m;->u:Ljava/util/ArrayList;

    .line 9
    iput-object v0, p0, Lg1/m;->v:Ljava/util/ArrayList;

    .line 10
    iput-object v0, p0, Lg1/m;->w:Ljava/util/ArrayList;

    .line 11
    iput-object v0, p0, Lg1/m;->x:Ljava/util/ArrayList;

    .line 12
    iput-object v0, p0, Lg1/m;->y:Ljava/util/ArrayList;

    .line 13
    iput-object v0, p0, Lg1/m;->z:Ljava/util/ArrayList;

    .line 14
    iput-object v0, p0, Lg1/m;->A:Ljava/util/ArrayList;

    .line 15
    iput-object v0, p0, Lg1/m;->B:Ljava/util/ArrayList;

    .line 16
    iput-object v0, p0, Lg1/m;->C:Ljava/util/ArrayList;

    .line 17
    new-instance v1, Lg1/t;

    invoke-direct {v1}, Lg1/t;-><init>()V

    iput-object v1, p0, Lg1/m;->D:Lg1/t;

    .line 18
    new-instance v1, Lg1/t;

    invoke-direct {v1}, Lg1/t;-><init>()V

    iput-object v1, p0, Lg1/m;->E:Lg1/t;

    .line 19
    iput-object v0, p0, Lg1/m;->F:Lg1/q;

    .line 20
    sget-object v1, Lg1/m;->V:[I

    iput-object v1, p0, Lg1/m;->G:[I

    .line 21
    iput-object v0, p0, Lg1/m;->J:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    .line 22
    iput-boolean v1, p0, Lg1/m;->K:Z

    .line 23
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lg1/m;->L:Ljava/util/ArrayList;

    .line 24
    iput v1, p0, Lg1/m;->M:I

    .line 25
    iput-boolean v1, p0, Lg1/m;->N:Z

    .line 26
    iput-boolean v1, p0, Lg1/m;->O:Z

    .line 27
    iput-object v0, p0, Lg1/m;->P:Ljava/util/ArrayList;

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lg1/m;->Q:Ljava/util/ArrayList;

    .line 29
    sget-object v0, Lg1/m;->W:Lg1/g;

    iput-object v0, p0, Lg1/m;->U:Lg1/g;

    return-void
.end method

.method private static I(Lg1/s;Lg1/s;Ljava/lang/String;)Z
    .registers 3

    .line 1
    iget-object p0, p0, Lg1/s;->a:Ljava/util/Map;

    invoke-interface {p0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 2
    iget-object p1, p1, Lg1/s;->a:Ljava/util/Map;

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const/4 p2, 0x1

    if-nez p0, :cond_13

    if-nez p1, :cond_13

    const/4 p2, 0x0

    goto :goto_1d

    :cond_13
    if-eqz p0, :cond_1d

    if-nez p1, :cond_18

    goto :goto_1d

    .line 3
    :cond_18
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    xor-int/2addr p2, p0

    :cond_1d
    :goto_1d
    return p2
.end method

.method private J(Lo/a;Lo/a;Landroid/util/SparseArray;Landroid/util/SparseArray;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/a<",
            "Landroid/view/View;",
            "Lg1/s;",
            ">;",
            "Lo/a<",
            "Landroid/view/View;",
            "Lg1/s;",
            ">;",
            "Landroid/util/SparseArray<",
            "Landroid/view/View;",
            ">;",
            "Landroid/util/SparseArray<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p3}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_4a

    .line 2
    invoke-virtual {p3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    if-eqz v2, :cond_47

    .line 3
    invoke-virtual {p0, v2}, Lg1/m;->H(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_47

    .line 4
    invoke-virtual {p3, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-virtual {p4, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    if-eqz v3, :cond_47

    .line 5
    invoke-virtual {p0, v3}, Lg1/m;->H(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_47

    .line 6
    invoke-virtual {p1, v2}, Lo/g;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lg1/s;

    .line 7
    invoke-virtual {p2, v3}, Lo/g;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lg1/s;

    if-eqz v4, :cond_47

    if-eqz v5, :cond_47

    .line 8
    iget-object v6, p0, Lg1/m;->H:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9
    iget-object v4, p0, Lg1/m;->I:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 10
    invoke-virtual {p1, v2}, Lo/g;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    invoke-virtual {p2, v3}, Lo/g;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_47
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_4a
    return-void
.end method

.method private K(Lo/a;Lo/a;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/a<",
            "Landroid/view/View;",
            "Lg1/s;",
            ">;",
            "Lo/a<",
            "Landroid/view/View;",
            "Lg1/s;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lo/g;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_6
    if-ltz v0, :cond_39

    .line 2
    invoke-virtual {p1, v0}, Lo/g;->k(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-eqz v1, :cond_36

    .line 3
    invoke-virtual {p0, v1}, Lg1/m;->H(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_36

    .line 4
    invoke-virtual {p2, v1}, Lo/g;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg1/s;

    if-eqz v1, :cond_36

    .line 5
    iget-object v2, v1, Lg1/s;->b:Landroid/view/View;

    invoke-virtual {p0, v2}, Lg1/m;->H(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_36

    .line 6
    invoke-virtual {p1, v0}, Lo/g;->m(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lg1/s;

    .line 7
    iget-object v3, p0, Lg1/m;->H:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8
    iget-object v2, p0, Lg1/m;->I:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_36
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    :cond_39
    return-void
.end method

.method private M(Lo/a;Lo/a;Lo/d;Lo/d;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/a<",
            "Landroid/view/View;",
            "Lg1/s;",
            ">;",
            "Lo/a<",
            "Landroid/view/View;",
            "Lg1/s;",
            ">;",
            "Lo/d<",
            "Landroid/view/View;",
            ">;",
            "Lo/d<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p3}, Lo/d;->n()I

    move-result v0

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_4a

    .line 2
    invoke-virtual {p3, v1}, Lo/d;->o(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    if-eqz v2, :cond_47

    .line 3
    invoke-virtual {p0, v2}, Lg1/m;->H(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_47

    .line 4
    invoke-virtual {p3, v1}, Lo/d;->j(I)J

    move-result-wide v3

    invoke-virtual {p4, v3, v4}, Lo/d;->g(J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    if-eqz v3, :cond_47

    .line 5
    invoke-virtual {p0, v3}, Lg1/m;->H(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_47

    .line 6
    invoke-virtual {p1, v2}, Lo/g;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lg1/s;

    .line 7
    invoke-virtual {p2, v3}, Lo/g;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lg1/s;

    if-eqz v4, :cond_47

    if-eqz v5, :cond_47

    .line 8
    iget-object v6, p0, Lg1/m;->H:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9
    iget-object v4, p0, Lg1/m;->I:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 10
    invoke-virtual {p1, v2}, Lo/g;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    invoke-virtual {p2, v3}, Lo/g;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_47
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_4a
    return-void
.end method

.method private N(Lo/a;Lo/a;Lo/a;Lo/a;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/a<",
            "Landroid/view/View;",
            "Lg1/s;",
            ">;",
            "Lo/a<",
            "Landroid/view/View;",
            "Lg1/s;",
            ">;",
            "Lo/a<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;",
            "Lo/a<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p3}, Lo/g;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_4a

    .line 2
    invoke-virtual {p3, v1}, Lo/g;->o(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    if-eqz v2, :cond_47

    .line 3
    invoke-virtual {p0, v2}, Lg1/m;->H(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_47

    .line 4
    invoke-virtual {p3, v1}, Lo/g;->k(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p4, v3}, Lo/g;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    if-eqz v3, :cond_47

    .line 5
    invoke-virtual {p0, v3}, Lg1/m;->H(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_47

    .line 6
    invoke-virtual {p1, v2}, Lo/g;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lg1/s;

    .line 7
    invoke-virtual {p2, v3}, Lo/g;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lg1/s;

    if-eqz v4, :cond_47

    if-eqz v5, :cond_47

    .line 8
    iget-object v6, p0, Lg1/m;->H:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9
    iget-object v4, p0, Lg1/m;->I:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 10
    invoke-virtual {p1, v2}, Lo/g;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    invoke-virtual {p2, v3}, Lo/g;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_47
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_4a
    return-void
.end method

.method private O(Lg1/t;Lg1/t;)V
    .registers 8

    .line 1
    new-instance v0, Lo/a;

    iget-object v1, p1, Lg1/t;->a:Lo/a;

    invoke-direct {v0, v1}, Lo/a;-><init>(Lo/g;)V

    .line 2
    new-instance v1, Lo/a;

    iget-object v2, p2, Lg1/t;->a:Lo/a;

    invoke-direct {v1, v2}, Lo/a;-><init>(Lo/g;)V

    const/4 v2, 0x0

    .line 3
    :goto_f
    iget-object v3, p0, Lg1/m;->G:[I

    array-length v4, v3

    if-ge v2, v4, :cond_41

    .line 4
    aget v3, v3, v2

    const/4 v4, 0x1

    if-eq v3, v4, :cond_3b

    const/4 v4, 0x2

    if-eq v3, v4, :cond_33

    const/4 v4, 0x3

    if-eq v3, v4, :cond_2b

    const/4 v4, 0x4

    if-eq v3, v4, :cond_23

    goto :goto_3e

    .line 5
    :cond_23
    iget-object v3, p1, Lg1/t;->c:Lo/d;

    iget-object v4, p2, Lg1/t;->c:Lo/d;

    invoke-direct {p0, v0, v1, v3, v4}, Lg1/m;->M(Lo/a;Lo/a;Lo/d;Lo/d;)V

    goto :goto_3e

    .line 6
    :cond_2b
    iget-object v3, p1, Lg1/t;->b:Landroid/util/SparseArray;

    iget-object v4, p2, Lg1/t;->b:Landroid/util/SparseArray;

    invoke-direct {p0, v0, v1, v3, v4}, Lg1/m;->J(Lo/a;Lo/a;Landroid/util/SparseArray;Landroid/util/SparseArray;)V

    goto :goto_3e

    .line 7
    :cond_33
    iget-object v3, p1, Lg1/t;->d:Lo/a;

    iget-object v4, p2, Lg1/t;->d:Lo/a;

    invoke-direct {p0, v0, v1, v3, v4}, Lg1/m;->N(Lo/a;Lo/a;Lo/a;Lo/a;)V

    goto :goto_3e

    .line 8
    :cond_3b
    invoke-direct {p0, v0, v1}, Lg1/m;->K(Lo/a;Lo/a;)V

    :goto_3e
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 9
    :cond_41
    invoke-direct {p0, v0, v1}, Lg1/m;->d(Lo/a;Lo/a;)V

    return-void
.end method

.method private U(Landroid/animation/Animator;Lo/a;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/animation/Animator;",
            "Lo/a<",
            "Landroid/animation/Animator;",
            "Lg1/m$d;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_d

    .line 1
    new-instance v0, Lg1/m$b;

    invoke-direct {v0, p0, p2}, Lg1/m$b;-><init>(Lg1/m;Lo/a;)V

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2
    invoke-virtual {p0, p1}, Lg1/m;->g(Landroid/animation/Animator;)V

    :cond_d
    return-void
.end method

.method private d(Lo/a;Lo/a;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/a<",
            "Landroid/view/View;",
            "Lg1/s;",
            ">;",
            "Lo/a<",
            "Landroid/view/View;",
            "Lg1/s;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    :goto_2
    invoke-virtual {p1}, Lo/g;->size()I

    move-result v2

    const/4 v3, 0x0

    if-ge v1, v2, :cond_24

    .line 2
    invoke-virtual {p1, v1}, Lo/g;->o(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lg1/s;

    .line 3
    iget-object v4, v2, Lg1/s;->b:Landroid/view/View;

    invoke-virtual {p0, v4}, Lg1/m;->H(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_21

    .line 4
    iget-object v4, p0, Lg1/m;->H:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5
    iget-object v2, p0, Lg1/m;->I:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_21
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 6
    :cond_24
    :goto_24
    invoke-virtual {p2}, Lo/g;->size()I

    move-result p1

    if-ge v0, p1, :cond_45

    .line 7
    invoke-virtual {p2, v0}, Lo/g;->o(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lg1/s;

    .line 8
    iget-object v1, p1, Lg1/s;->b:Landroid/view/View;

    invoke-virtual {p0, v1}, Lg1/m;->H(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_42

    .line 9
    iget-object v1, p0, Lg1/m;->I:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 10
    iget-object p1, p0, Lg1/m;->H:Ljava/util/ArrayList;

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_42
    add-int/lit8 v0, v0, 0x1

    goto :goto_24

    :cond_45
    return-void
.end method

.method private static f(Lg1/t;Landroid/view/View;Lg1/s;)V
    .registers 6

    .line 1
    iget-object v0, p0, Lg1/t;->a:Lo/a;

    invoke-virtual {v0, p1, p2}, Lo/g;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p2

    const/4 v0, 0x0

    if-ltz p2, :cond_1f

    .line 3
    iget-object v1, p0, Lg1/t;->b:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v1

    if-ltz v1, :cond_1a

    .line 4
    iget-object v1, p0, Lg1/t;->b:Landroid/util/SparseArray;

    invoke-virtual {v1, p2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_1f

    .line 5
    :cond_1a
    iget-object v1, p0, Lg1/t;->b:Landroid/util/SparseArray;

    invoke-virtual {v1, p2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 6
    :cond_1f
    :goto_1f
    invoke-static {p1}, Landroidx/core/view/a0;->M(Landroid/view/View;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_38

    .line 7
    iget-object v1, p0, Lg1/t;->d:Lo/a;

    invoke-virtual {v1, p2}, Lo/g;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_33

    .line 8
    iget-object v1, p0, Lg1/t;->d:Lo/a;

    invoke-virtual {v1, p2, v0}, Lo/g;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_38

    .line 9
    :cond_33
    iget-object v1, p0, Lg1/t;->d:Lo/a;

    invoke-virtual {v1, p2, p1}, Lo/g;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    :cond_38
    :goto_38
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    instance-of p2, p2, Landroid/widget/ListView;

    if-eqz p2, :cond_7d

    .line 11
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    check-cast p2, Landroid/widget/ListView;

    .line 12
    invoke-virtual {p2}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    invoke-interface {v1}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v1

    if-eqz v1, :cond_7d

    .line 13
    invoke-virtual {p2, p1}, Landroid/widget/ListView;->getPositionForView(Landroid/view/View;)I

    move-result v1

    .line 14
    invoke-virtual {p2, v1}, Landroid/widget/ListView;->getItemIdAtPosition(I)J

    move-result-wide v1

    .line 15
    iget-object p2, p0, Lg1/t;->c:Lo/d;

    invoke-virtual {p2, v1, v2}, Lo/d;->i(J)I

    move-result p2

    if-ltz p2, :cond_74

    .line 16
    iget-object p1, p0, Lg1/t;->c:Lo/d;

    invoke-virtual {p1, v1, v2}, Lo/d;->g(J)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    if-eqz p1, :cond_7d

    const/4 p2, 0x0

    .line 17
    invoke-static {p1, p2}, Landroidx/core/view/a0;->z0(Landroid/view/View;Z)V

    .line 18
    iget-object p0, p0, Lg1/t;->c:Lo/d;

    invoke-virtual {p0, v1, v2, v0}, Lo/d;->k(JLjava/lang/Object;)V

    goto :goto_7d

    :cond_74
    const/4 p2, 0x1

    .line 19
    invoke-static {p1, p2}, Landroidx/core/view/a0;->z0(Landroid/view/View;Z)V

    .line 20
    iget-object p0, p0, Lg1/t;->c:Lo/d;

    invoke-virtual {p0, v1, v2, p1}, Lo/d;->k(JLjava/lang/Object;)V

    :cond_7d
    :goto_7d
    return-void
.end method

.method private i(Landroid/view/View;Z)V
    .registers 8

    if-nez p1, :cond_3

    return-void

    .line 1
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 2
    iget-object v1, p0, Lg1/m;->w:Ljava/util/ArrayList;

    if-eqz v1, :cond_16

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    return-void

    .line 3
    :cond_16
    iget-object v1, p0, Lg1/m;->x:Ljava/util/ArrayList;

    if-eqz v1, :cond_21

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21

    return-void

    .line 4
    :cond_21
    iget-object v1, p0, Lg1/m;->y:Ljava/util/ArrayList;

    const/4 v2, 0x0

    if-eqz v1, :cond_3f

    .line 5
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v3, 0x0

    :goto_2b
    if-ge v3, v1, :cond_3f

    .line 6
    iget-object v4, p0, Lg1/m;->y:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Class;

    invoke-virtual {v4, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3c

    return-void

    :cond_3c
    add-int/lit8 v3, v3, 0x1

    goto :goto_2b

    .line 7
    :cond_3f
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_6a

    .line 8
    new-instance v1, Lg1/s;

    invoke-direct {v1, p1}, Lg1/s;-><init>(Landroid/view/View;)V

    if-eqz p2, :cond_52

    .line 9
    invoke-virtual {p0, v1}, Lg1/m;->k(Lg1/s;)V

    goto :goto_55

    .line 10
    :cond_52
    invoke-virtual {p0, v1}, Lg1/m;->h(Lg1/s;)V

    .line 11
    :goto_55
    iget-object v3, v1, Lg1/s;->c:Ljava/util/ArrayList;

    invoke-virtual {v3, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 12
    invoke-virtual {p0, v1}, Lg1/m;->j(Lg1/s;)V

    if-eqz p2, :cond_65

    .line 13
    iget-object v3, p0, Lg1/m;->D:Lg1/t;

    invoke-static {v3, p1, v1}, Lg1/m;->f(Lg1/t;Landroid/view/View;Lg1/s;)V

    goto :goto_6a

    .line 14
    :cond_65
    iget-object v3, p0, Lg1/m;->E:Lg1/t;

    invoke-static {v3, p1, v1}, Lg1/m;->f(Lg1/t;Landroid/view/View;Lg1/s;)V

    .line 15
    :cond_6a
    :goto_6a
    instance-of v1, p1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_b7

    .line 16
    iget-object v1, p0, Lg1/m;->A:Ljava/util/ArrayList;

    if-eqz v1, :cond_7d

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7d

    return-void

    .line 17
    :cond_7d
    iget-object v0, p0, Lg1/m;->B:Ljava/util/ArrayList;

    if-eqz v0, :cond_88

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_88

    return-void

    .line 18
    :cond_88
    iget-object v0, p0, Lg1/m;->C:Ljava/util/ArrayList;

    if-eqz v0, :cond_a5

    .line 19
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_91
    if-ge v1, v0, :cond_a5

    .line 20
    iget-object v3, p0, Lg1/m;->C:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Class;

    invoke-virtual {v3, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a2

    return-void

    :cond_a2
    add-int/lit8 v1, v1, 0x1

    goto :goto_91

    .line 21
    :cond_a5
    check-cast p1, Landroid/view/ViewGroup;

    .line 22
    :goto_a7
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge v2, v0, :cond_b7

    .line 23
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lg1/m;->i(Landroid/view/View;Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_a7

    :cond_b7
    return-void
.end method

.method private static y()Lo/a;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/a<",
            "Landroid/animation/Animator;",
            "Lg1/m$d;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lg1/m;->X:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/a;

    if-nez v0, :cond_14

    .line 2
    new-instance v0, Lo/a;

    invoke-direct {v0}, Lo/a;-><init>()V

    .line 3
    sget-object v1, Lg1/m;->X:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_14
    return-object v0
.end method


# virtual methods
.method public A()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lg1/m;->s:Ljava/util/ArrayList;

    return-object v0
.end method

.method public B()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lg1/m;->u:Ljava/util/ArrayList;

    return-object v0
.end method

.method public C()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lg1/m;->v:Ljava/util/ArrayList;

    return-object v0
.end method

.method public D()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lg1/m;->t:Ljava/util/ArrayList;

    return-object v0
.end method

.method public E()[Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public F(Landroid/view/View;Z)Lg1/s;
    .registers 4

    .line 1
    iget-object v0, p0, Lg1/m;->F:Lg1/q;

    if-eqz v0, :cond_9

    .line 2
    invoke-virtual {v0, p1, p2}, Lg1/m;->F(Landroid/view/View;Z)Lg1/s;

    move-result-object p1

    return-object p1

    :cond_9
    if-eqz p2, :cond_e

    .line 3
    iget-object p2, p0, Lg1/m;->D:Lg1/t;

    goto :goto_10

    :cond_e
    iget-object p2, p0, Lg1/m;->E:Lg1/t;

    .line 4
    :goto_10
    iget-object p2, p2, Lg1/t;->a:Lo/a;

    invoke-virtual {p2, p1}, Lo/g;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lg1/s;

    return-object p1
.end method

.method public G(Lg1/s;Lg1/s;)Z
    .registers 9

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_39

    if-eqz p2, :cond_39

    .line 1
    invoke-virtual {p0}, Lg1/m;->E()[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1c

    .line 2
    array-length v3, v2

    const/4 v4, 0x0

    :goto_e
    if-ge v4, v3, :cond_39

    aget-object v5, v2, v4

    .line 3
    invoke-static {p1, p2, v5}, Lg1/m;->I(Lg1/s;Lg1/s;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_19

    goto :goto_38

    :cond_19
    add-int/lit8 v4, v4, 0x1

    goto :goto_e

    .line 4
    :cond_1c
    iget-object v2, p1, Lg1/s;->a:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_26
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_39

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 5
    invoke-static {p1, p2, v3}, Lg1/m;->I(Lg1/s;Lg1/s;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_26

    :goto_38
    const/4 v0, 0x1

    :cond_39
    return v0
.end method

.method H(Landroid/view/View;)Z
    .registers 7

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 2
    iget-object v1, p0, Lg1/m;->w:Ljava/util/ArrayList;

    const/4 v2, 0x0

    if-eqz v1, :cond_14

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    return v2

    .line 3
    :cond_14
    iget-object v1, p0, Lg1/m;->x:Ljava/util/ArrayList;

    if-eqz v1, :cond_1f

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1f

    return v2

    .line 4
    :cond_1f
    iget-object v1, p0, Lg1/m;->y:Ljava/util/ArrayList;

    if-eqz v1, :cond_3c

    .line 5
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v3, 0x0

    :goto_28
    if-ge v3, v1, :cond_3c

    .line 6
    iget-object v4, p0, Lg1/m;->y:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Class;

    .line 7
    invoke-virtual {v4, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_39

    return v2

    :cond_39
    add-int/lit8 v3, v3, 0x1

    goto :goto_28

    .line 8
    :cond_3c
    iget-object v1, p0, Lg1/m;->z:Ljava/util/ArrayList;

    if-eqz v1, :cond_53

    invoke-static {p1}, Landroidx/core/view/a0;->M(Landroid/view/View;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_53

    .line 9
    iget-object v1, p0, Lg1/m;->z:Ljava/util/ArrayList;

    invoke-static {p1}, Landroidx/core/view/a0;->M(Landroid/view/View;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_53

    return v2

    .line 10
    :cond_53
    iget-object v1, p0, Lg1/m;->s:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v3, 0x1

    if-nez v1, :cond_79

    iget-object v1, p0, Lg1/m;->t:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_79

    iget-object v1, p0, Lg1/m;->v:Ljava/util/ArrayList;

    if-eqz v1, :cond_6e

    .line 11
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_79

    :cond_6e
    iget-object v1, p0, Lg1/m;->u:Ljava/util/ArrayList;

    if-eqz v1, :cond_78

    .line 12
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_79

    :cond_78
    return v3

    .line 13
    :cond_79
    iget-object v1, p0, Lg1/m;->s:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_bd

    iget-object v0, p0, Lg1/m;->t:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8e

    goto :goto_bd

    .line 14
    :cond_8e
    iget-object v0, p0, Lg1/m;->u:Ljava/util/ArrayList;

    if-eqz v0, :cond_9d

    invoke-static {p1}, Landroidx/core/view/a0;->M(Landroid/view/View;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9d

    return v3

    .line 15
    :cond_9d
    iget-object v0, p0, Lg1/m;->v:Ljava/util/ArrayList;

    if-eqz v0, :cond_bc

    const/4 v0, 0x0

    .line 16
    :goto_a2
    iget-object v1, p0, Lg1/m;->v:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_bc

    .line 17
    iget-object v1, p0, Lg1/m;->v:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    invoke-virtual {v1, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b9

    return v3

    :cond_b9
    add-int/lit8 v0, v0, 0x1

    goto :goto_a2

    :cond_bc
    return v2

    :cond_bd
    :goto_bd
    return v3
.end method

.method public P(Landroid/view/View;)V
    .registers 7

    .line 1
    iget-boolean v0, p0, Lg1/m;->O:Z

    if-nez v0, :cond_59

    .line 2
    invoke-static {}, Lg1/m;->y()Lo/a;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lo/g;->size()I

    move-result v1

    .line 4
    invoke-static {p1}, Lg1/c0;->d(Landroid/view/View;)Lg1/m0;

    move-result-object p1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_12
    if-ltz v1, :cond_32

    .line 5
    invoke-virtual {v0, v1}, Lo/g;->o(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lg1/m$d;

    .line 6
    iget-object v4, v3, Lg1/m$d;->a:Landroid/view/View;

    if-eqz v4, :cond_2f

    iget-object v3, v3, Lg1/m$d;->d:Lg1/m0;

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2f

    .line 7
    invoke-virtual {v0, v1}, Lo/g;->k(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/animation/Animator;

    .line 8
    invoke-static {v3}, Lg1/a;->b(Landroid/animation/Animator;)V

    :cond_2f
    add-int/lit8 v1, v1, -0x1

    goto :goto_12

    .line 9
    :cond_32
    iget-object p1, p0, Lg1/m;->P:Ljava/util/ArrayList;

    if-eqz p1, :cond_57

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_57

    .line 10
    iget-object p1, p0, Lg1/m;->P:Ljava/util/ArrayList;

    .line 11
    invoke-virtual {p1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    .line 12
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_49
    if-ge v1, v0, :cond_57

    .line 13
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lg1/m$f;

    invoke-interface {v3, p0}, Lg1/m$f;->c(Lg1/m;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_49

    .line 14
    :cond_57
    iput-boolean v2, p0, Lg1/m;->N:Z

    :cond_59
    return-void
.end method

.method Q(Landroid/view/ViewGroup;)V
    .registers 12

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lg1/m;->H:Ljava/util/ArrayList;

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lg1/m;->I:Ljava/util/ArrayList;

    .line 3
    iget-object v0, p0, Lg1/m;->D:Lg1/t;

    iget-object v1, p0, Lg1/m;->E:Lg1/t;

    invoke-direct {p0, v0, v1}, Lg1/m;->O(Lg1/t;Lg1/t;)V

    .line 4
    invoke-static {}, Lg1/m;->y()Lo/a;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lo/g;->size()I

    move-result v1

    .line 6
    invoke-static {p1}, Lg1/c0;->d(Landroid/view/View;)Lg1/m0;

    move-result-object v2

    const/4 v3, 0x1

    sub-int/2addr v1, v3

    :goto_23
    if-ltz v1, :cond_84

    .line 7
    invoke-virtual {v0, v1}, Lo/g;->k(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/animation/Animator;

    if-eqz v4, :cond_81

    .line 8
    invoke-virtual {v0, v4}, Lo/g;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lg1/m$d;

    if-eqz v5, :cond_81

    .line 9
    iget-object v6, v5, Lg1/m$d;->a:Landroid/view/View;

    if-eqz v6, :cond_81

    iget-object v6, v5, Lg1/m$d;->d:Lg1/m0;

    .line 10
    invoke-virtual {v2, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_81

    .line 11
    iget-object v6, v5, Lg1/m$d;->c:Lg1/s;

    .line 12
    iget-object v7, v5, Lg1/m$d;->a:Landroid/view/View;

    .line 13
    invoke-virtual {p0, v7, v3}, Lg1/m;->F(Landroid/view/View;Z)Lg1/s;

    move-result-object v8

    .line 14
    invoke-virtual {p0, v7, v3}, Lg1/m;->u(Landroid/view/View;Z)Lg1/s;

    move-result-object v9

    if-nez v8, :cond_5c

    if-nez v9, :cond_5c

    .line 15
    iget-object v9, p0, Lg1/m;->E:Lg1/t;

    iget-object v9, v9, Lg1/t;->a:Lo/a;

    invoke-virtual {v9, v7}, Lo/g;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v9, v7

    check-cast v9, Lg1/s;

    :cond_5c
    if-nez v8, :cond_60

    if-eqz v9, :cond_6a

    .line 16
    :cond_60
    iget-object v5, v5, Lg1/m$d;->e:Lg1/m;

    .line 17
    invoke-virtual {v5, v6, v9}, Lg1/m;->G(Lg1/s;Lg1/s;)Z

    move-result v5

    if-eqz v5, :cond_6a

    const/4 v5, 0x1

    goto :goto_6b

    :cond_6a
    const/4 v5, 0x0

    :goto_6b
    if-eqz v5, :cond_81

    .line 18
    invoke-virtual {v4}, Landroid/animation/Animator;->isRunning()Z

    move-result v5

    if-nez v5, :cond_7e

    invoke-virtual {v4}, Landroid/animation/Animator;->isStarted()Z

    move-result v5

    if-eqz v5, :cond_7a

    goto :goto_7e

    .line 19
    :cond_7a
    invoke-virtual {v0, v4}, Lo/g;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_81

    .line 20
    :cond_7e
    :goto_7e
    invoke-virtual {v4}, Landroid/animation/Animator;->cancel()V

    :cond_81
    :goto_81
    add-int/lit8 v1, v1, -0x1

    goto :goto_23

    .line 21
    :cond_84
    iget-object v6, p0, Lg1/m;->D:Lg1/t;

    iget-object v7, p0, Lg1/m;->E:Lg1/t;

    iget-object v8, p0, Lg1/m;->H:Ljava/util/ArrayList;

    iget-object v9, p0, Lg1/m;->I:Ljava/util/ArrayList;

    move-object v4, p0

    move-object v5, p1

    invoke-virtual/range {v4 .. v9}, Lg1/m;->p(Landroid/view/ViewGroup;Lg1/t;Lg1/t;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 22
    invoke-virtual {p0}, Lg1/m;->V()V

    return-void
.end method

.method public R(Lg1/m$f;)Lg1/m;
    .registers 3

    .line 1
    iget-object v0, p0, Lg1/m;->P:Ljava/util/ArrayList;

    if-nez v0, :cond_5

    return-object p0

    .line 2
    :cond_5
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3
    iget-object p1, p0, Lg1/m;->P:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-nez p1, :cond_13

    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Lg1/m;->P:Ljava/util/ArrayList;

    :cond_13
    return-object p0
.end method

.method public S(Landroid/view/View;)Lg1/m;
    .registers 3

    .line 1
    iget-object v0, p0, Lg1/m;->t:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public T(Landroid/view/View;)V
    .registers 7

    .line 1
    iget-boolean v0, p0, Lg1/m;->N:Z

    if-eqz v0, :cond_5e

    .line 2
    iget-boolean v0, p0, Lg1/m;->O:Z

    const/4 v1, 0x0

    if-nez v0, :cond_5c

    .line 3
    invoke-static {}, Lg1/m;->y()Lo/a;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lo/g;->size()I

    move-result v2

    .line 5
    invoke-static {p1}, Lg1/c0;->d(Landroid/view/View;)Lg1/m0;

    move-result-object p1

    add-int/lit8 v2, v2, -0x1

    :goto_17
    if-ltz v2, :cond_37

    .line 6
    invoke-virtual {v0, v2}, Lo/g;->o(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lg1/m$d;

    .line 7
    iget-object v4, v3, Lg1/m$d;->a:Landroid/view/View;

    if-eqz v4, :cond_34

    iget-object v3, v3, Lg1/m$d;->d:Lg1/m0;

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_34

    .line 8
    invoke-virtual {v0, v2}, Lo/g;->k(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/animation/Animator;

    .line 9
    invoke-static {v3}, Lg1/a;->c(Landroid/animation/Animator;)V

    :cond_34
    add-int/lit8 v2, v2, -0x1

    goto :goto_17

    .line 10
    :cond_37
    iget-object p1, p0, Lg1/m;->P:Ljava/util/ArrayList;

    if-eqz p1, :cond_5c

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_5c

    .line 11
    iget-object p1, p0, Lg1/m;->P:Ljava/util/ArrayList;

    .line 12
    invoke-virtual {p1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    .line 13
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_4e
    if-ge v2, v0, :cond_5c

    .line 14
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lg1/m$f;

    invoke-interface {v3, p0}, Lg1/m$f;->a(Lg1/m;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4e

    .line 15
    :cond_5c
    iput-boolean v1, p0, Lg1/m;->N:Z

    :cond_5e
    return-void
.end method

.method protected V()V
    .registers 5

    .line 1
    invoke-virtual {p0}, Lg1/m;->d0()V

    .line 2
    invoke-static {}, Lg1/m;->y()Lo/a;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lg1/m;->Q:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_d
    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_26

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/animation/Animator;

    .line 4
    invoke-virtual {v0, v2}, Lo/g;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 5
    invoke-virtual {p0}, Lg1/m;->d0()V

    .line 6
    invoke-direct {p0, v2, v0}, Lg1/m;->U(Landroid/animation/Animator;Lo/a;)V

    goto :goto_d

    .line 7
    :cond_26
    iget-object v0, p0, Lg1/m;->Q:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 8
    invoke-virtual {p0}, Lg1/m;->q()V

    return-void
.end method

.method public W(J)Lg1/m;
    .registers 3

    .line 1
    iput-wide p1, p0, Lg1/m;->q:J

    return-object p0
.end method

.method public Y(Lg1/m$e;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lg1/m;->S:Lg1/m$e;

    return-void
.end method

.method public Z(Landroid/animation/TimeInterpolator;)Lg1/m;
    .registers 2

    .line 1
    iput-object p1, p0, Lg1/m;->r:Landroid/animation/TimeInterpolator;

    return-object p0
.end method

.method public a(Lg1/m$f;)Lg1/m;
    .registers 3

    .line 1
    iget-object v0, p0, Lg1/m;->P:Ljava/util/ArrayList;

    if-nez v0, :cond_b

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lg1/m;->P:Ljava/util/ArrayList;

    .line 3
    :cond_b
    iget-object v0, p0, Lg1/m;->P:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public a0(Lg1/g;)V
    .registers 2

    if-nez p1, :cond_7

    .line 1
    sget-object p1, Lg1/m;->W:Lg1/g;

    iput-object p1, p0, Lg1/m;->U:Lg1/g;

    goto :goto_9

    .line 2
    :cond_7
    iput-object p1, p0, Lg1/m;->U:Lg1/g;

    :goto_9
    return-void
.end method

.method public b(Landroid/view/View;)Lg1/m;
    .registers 3

    .line 1
    iget-object v0, p0, Lg1/m;->t:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public b0(Lg1/p;)V
    .registers 2

    return-void
.end method

.method public c0(J)Lg1/m;
    .registers 3

    .line 1
    iput-wide p1, p0, Lg1/m;->p:J

    return-object p0
.end method

.method protected cancel()V
    .registers 5

    .line 1
    iget-object v0, p0, Lg1/m;->L:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_18

    .line 2
    iget-object v1, p0, Lg1/m;->L:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/Animator;

    .line 3
    invoke-virtual {v1}, Landroid/animation/Animator;->cancel()V

    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 4
    :cond_18
    iget-object v0, p0, Lg1/m;->P:Ljava/util/ArrayList;

    if-eqz v0, :cond_3d

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_3d

    .line 5
    iget-object v0, p0, Lg1/m;->P:Ljava/util/ArrayList;

    .line 6
    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 7
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_2f
    if-ge v2, v1, :cond_3d

    .line 8
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lg1/m$f;

    invoke-interface {v3, p0}, Lg1/m$f;->b(Lg1/m;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2f

    :cond_3d
    return-void
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lg1/m;->n()Lg1/m;

    move-result-object v0

    return-object v0
.end method

.method protected d0()V
    .registers 6

    .line 1
    iget v0, p0, Lg1/m;->M:I

    if-nez v0, :cond_2c

    .line 2
    iget-object v0, p0, Lg1/m;->P:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-eqz v0, :cond_2a

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2a

    .line 3
    iget-object v0, p0, Lg1/m;->P:Ljava/util/ArrayList;

    .line 4
    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_1c
    if-ge v3, v2, :cond_2a

    .line 6
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lg1/m$f;

    invoke-interface {v4, p0}, Lg1/m$f;->e(Lg1/m;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1c

    .line 7
    :cond_2a
    iput-boolean v1, p0, Lg1/m;->O:Z

    .line 8
    :cond_2c
    iget v0, p0, Lg1/m;->M:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lg1/m;->M:I

    return-void
.end method

.method e0(Ljava/lang/String;)Ljava/lang/String;
    .registers 9

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "@"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 3
    iget-wide v0, p0, Lg1/m;->q:J

    const-wide/16 v2, -0x1

    const-string v4, ") "

    cmp-long v5, v0, v2

    if-eqz v5, :cond_4f

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "dur("

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, p0, Lg1/m;->q:J

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 5
    :cond_4f
    iget-wide v0, p0, Lg1/m;->p:J

    cmp-long v5, v0, v2

    if-eqz v5, :cond_6e

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "dly("

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lg1/m;->p:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 7
    :cond_6e
    iget-object v0, p0, Lg1/m;->r:Landroid/animation/TimeInterpolator;

    if-eqz v0, :cond_8b

    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "interp("

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lg1/m;->r:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 9
    :cond_8b
    iget-object v0, p0, Lg1/m;->s:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_9b

    iget-object v0, p0, Lg1/m;->t:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_133

    .line 10
    :cond_9b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "tgts("

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 11
    iget-object v0, p0, Lg1/m;->s:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const-string v1, ", "

    const/4 v2, 0x0

    if-lez v0, :cond_e9

    const/4 v0, 0x0

    .line 12
    :goto_b8
    iget-object v3, p0, Lg1/m;->s:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_e9

    if-lez v0, :cond_d1

    .line 13
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 14
    :cond_d1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lg1/m;->s:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    add-int/lit8 v0, v0, 0x1

    goto :goto_b8

    .line 15
    :cond_e9
    iget-object v0, p0, Lg1/m;->t:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_122

    .line 16
    :goto_f1
    iget-object v0, p0, Lg1/m;->t:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_122

    if-lez v2, :cond_10a

    .line 17
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 18
    :cond_10a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lg1/m;->t:Ljava/util/ArrayList;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    add-int/lit8 v2, v2, 0x1

    goto :goto_f1

    .line 19
    :cond_122
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_133
    return-object p1
.end method

.method protected g(Landroid/animation/Animator;)V
    .registers 7

    if-nez p1, :cond_6

    .line 1
    invoke-virtual {p0}, Lg1/m;->q()V

    goto :goto_43

    .line 2
    :cond_6
    invoke-virtual {p0}, Lg1/m;->r()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_17

    .line 3
    invoke-virtual {p0}, Lg1/m;->r()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 4
    :cond_17
    invoke-virtual {p0}, Lg1/m;->z()J

    move-result-wide v0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_2b

    .line 5
    invoke-virtual {p0}, Lg1/m;->z()J

    move-result-wide v0

    invoke-virtual {p1}, Landroid/animation/Animator;->getStartDelay()J

    move-result-wide v2

    add-long/2addr v0, v2

    invoke-virtual {p1, v0, v1}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 6
    :cond_2b
    invoke-virtual {p0}, Lg1/m;->t()Landroid/animation/TimeInterpolator;

    move-result-object v0

    if-eqz v0, :cond_38

    .line 7
    invoke-virtual {p0}, Lg1/m;->t()Landroid/animation/TimeInterpolator;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 8
    :cond_38
    new-instance v0, Lg1/m$c;

    invoke-direct {v0, p0}, Lg1/m$c;-><init>(Lg1/m;)V

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 9
    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    :goto_43
    return-void
.end method

.method public abstract h(Lg1/s;)V
.end method

.method j(Lg1/s;)V
    .registers 2

    return-void
.end method

.method public abstract k(Lg1/s;)V
.end method

.method l(Landroid/view/ViewGroup;Z)V
    .registers 8

    .line 1
    invoke-virtual {p0, p2}, Lg1/m;->m(Z)V

    .line 2
    iget-object v0, p0, Lg1/m;->s:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    if-gtz v0, :cond_14

    iget-object v0, p0, Lg1/m;->t:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_29

    :cond_14
    iget-object v0, p0, Lg1/m;->u:Ljava/util/ArrayList;

    if-eqz v0, :cond_1e

    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_29

    :cond_1e
    iget-object v0, p0, Lg1/m;->v:Ljava/util/ArrayList;

    if-eqz v0, :cond_2e

    .line 4
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_29

    goto :goto_2e

    .line 5
    :cond_29
    invoke-direct {p0, p1, p2}, Lg1/m;->i(Landroid/view/View;Z)V

    goto/16 :goto_a6

    :cond_2e
    :goto_2e
    const/4 v0, 0x0

    .line 6
    :goto_2f
    iget-object v2, p0, Lg1/m;->s:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_6f

    .line 7
    iget-object v2, p0, Lg1/m;->s:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 8
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_6c

    .line 9
    new-instance v3, Lg1/s;

    invoke-direct {v3, v2}, Lg1/s;-><init>(Landroid/view/View;)V

    if-eqz p2, :cond_54

    .line 10
    invoke-virtual {p0, v3}, Lg1/m;->k(Lg1/s;)V

    goto :goto_57

    .line 11
    :cond_54
    invoke-virtual {p0, v3}, Lg1/m;->h(Lg1/s;)V

    .line 12
    :goto_57
    iget-object v4, v3, Lg1/s;->c:Ljava/util/ArrayList;

    invoke-virtual {v4, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 13
    invoke-virtual {p0, v3}, Lg1/m;->j(Lg1/s;)V

    if-eqz p2, :cond_67

    .line 14
    iget-object v4, p0, Lg1/m;->D:Lg1/t;

    invoke-static {v4, v2, v3}, Lg1/m;->f(Lg1/t;Landroid/view/View;Lg1/s;)V

    goto :goto_6c

    .line 15
    :cond_67
    iget-object v4, p0, Lg1/m;->E:Lg1/t;

    invoke-static {v4, v2, v3}, Lg1/m;->f(Lg1/t;Landroid/view/View;Lg1/s;)V

    :cond_6c
    :goto_6c
    add-int/lit8 v0, v0, 0x1

    goto :goto_2f

    :cond_6f
    const/4 p1, 0x0

    .line 16
    :goto_70
    iget-object v0, p0, Lg1/m;->t:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_a6

    .line 17
    iget-object v0, p0, Lg1/m;->t:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 18
    new-instance v2, Lg1/s;

    invoke-direct {v2, v0}, Lg1/s;-><init>(Landroid/view/View;)V

    if-eqz p2, :cond_8b

    .line 19
    invoke-virtual {p0, v2}, Lg1/m;->k(Lg1/s;)V

    goto :goto_8e

    .line 20
    :cond_8b
    invoke-virtual {p0, v2}, Lg1/m;->h(Lg1/s;)V

    .line 21
    :goto_8e
    iget-object v3, v2, Lg1/s;->c:Ljava/util/ArrayList;

    invoke-virtual {v3, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 22
    invoke-virtual {p0, v2}, Lg1/m;->j(Lg1/s;)V

    if-eqz p2, :cond_9e

    .line 23
    iget-object v3, p0, Lg1/m;->D:Lg1/t;

    invoke-static {v3, v0, v2}, Lg1/m;->f(Lg1/t;Landroid/view/View;Lg1/s;)V

    goto :goto_a3

    .line 24
    :cond_9e
    iget-object v3, p0, Lg1/m;->E:Lg1/t;

    invoke-static {v3, v0, v2}, Lg1/m;->f(Lg1/t;Landroid/view/View;Lg1/s;)V

    :goto_a3
    add-int/lit8 p1, p1, 0x1

    goto :goto_70

    :cond_a6
    :goto_a6
    if-nez p2, :cond_ea

    .line 25
    iget-object p1, p0, Lg1/m;->T:Lo/a;

    if-eqz p1, :cond_ea

    .line 26
    invoke-virtual {p1}, Lo/g;->size()I

    move-result p1

    .line 27
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2, p1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v0, 0x0

    :goto_b6
    if-ge v0, p1, :cond_ce

    .line 28
    iget-object v2, p0, Lg1/m;->T:Lo/a;

    invoke-virtual {v2, v0}, Lo/g;->k(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 29
    iget-object v3, p0, Lg1/m;->D:Lg1/t;

    iget-object v3, v3, Lg1/t;->d:Lo/a;

    invoke-virtual {v3, v2}, Lo/g;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_b6

    :cond_ce
    :goto_ce
    if-ge v1, p1, :cond_ea

    .line 30
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_e7

    .line 31
    iget-object v2, p0, Lg1/m;->T:Lo/a;

    invoke-virtual {v2, v1}, Lo/g;->o(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 32
    iget-object v3, p0, Lg1/m;->D:Lg1/t;

    iget-object v3, v3, Lg1/t;->d:Lo/a;

    invoke-virtual {v3, v2, v0}, Lo/g;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_e7
    add-int/lit8 v1, v1, 0x1

    goto :goto_ce

    :cond_ea
    return-void
.end method

.method m(Z)V
    .registers 2

    if-eqz p1, :cond_18

    .line 1
    iget-object p1, p0, Lg1/m;->D:Lg1/t;

    iget-object p1, p1, Lg1/t;->a:Lo/a;

    invoke-virtual {p1}, Lo/g;->clear()V

    .line 2
    iget-object p1, p0, Lg1/m;->D:Lg1/t;

    iget-object p1, p1, Lg1/t;->b:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->clear()V

    .line 3
    iget-object p1, p0, Lg1/m;->D:Lg1/t;

    iget-object p1, p1, Lg1/t;->c:Lo/d;

    invoke-virtual {p1}, Lo/d;->b()V

    goto :goto_2d

    .line 4
    :cond_18
    iget-object p1, p0, Lg1/m;->E:Lg1/t;

    iget-object p1, p1, Lg1/t;->a:Lo/a;

    invoke-virtual {p1}, Lo/g;->clear()V

    .line 5
    iget-object p1, p0, Lg1/m;->E:Lg1/t;

    iget-object p1, p1, Lg1/t;->b:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->clear()V

    .line 6
    iget-object p1, p0, Lg1/m;->E:Lg1/t;

    iget-object p1, p1, Lg1/t;->c:Lo/d;

    invoke-virtual {p1}, Lo/d;->b()V

    :goto_2d
    return-void
.end method

.method public n()Lg1/m;
    .registers 4

    const/4 v0, 0x0

    .line 1
    :try_start_1
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg1/m;

    .line 2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Lg1/m;->Q:Ljava/util/ArrayList;

    .line 3
    new-instance v2, Lg1/t;

    invoke-direct {v2}, Lg1/t;-><init>()V

    iput-object v2, v1, Lg1/m;->D:Lg1/t;

    .line 4
    new-instance v2, Lg1/t;

    invoke-direct {v2}, Lg1/t;-><init>()V

    iput-object v2, v1, Lg1/m;->E:Lg1/t;

    .line 5
    iput-object v0, v1, Lg1/m;->H:Ljava/util/ArrayList;

    .line 6
    iput-object v0, v1, Lg1/m;->I:Ljava/util/ArrayList;
    :try_end_20
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_1 .. :try_end_20} :catch_21

    return-object v1

    :catch_21
    return-object v0
.end method

.method public o(Landroid/view/ViewGroup;Lg1/s;Lg1/s;)Landroid/animation/Animator;
    .registers 4

    const/4 p1, 0x0

    return-object p1
.end method

.method protected p(Landroid/view/ViewGroup;Lg1/t;Lg1/t;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .registers 25
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

    move-object/from16 v6, p0

    .line 1
    invoke-static {}, Lg1/m;->y()Lo/a;

    move-result-object v7

    .line 2
    new-instance v8, Landroid/util/SparseIntArray;

    invoke-direct {v8}, Landroid/util/SparseIntArray;-><init>()V

    .line 3
    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->size()I

    move-result v9

    const/4 v11, 0x0

    :goto_10
    if-ge v11, v9, :cond_110

    move-object/from16 v12, p4

    .line 4
    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg1/s;

    move-object/from16 v13, p5

    .line 5
    invoke-virtual {v13, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg1/s;

    if-eqz v0, :cond_2d

    .line 6
    iget-object v3, v0, Lg1/s;->c:Ljava/util/ArrayList;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2d

    const/4 v0, 0x0

    :cond_2d
    if-eqz v1, :cond_38

    .line 7
    iget-object v3, v1, Lg1/s;->c:Ljava/util/ArrayList;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_38

    const/4 v1, 0x0

    :cond_38
    if-nez v0, :cond_44

    if-nez v1, :cond_44

    :cond_3c
    move-object/from16 v14, p1

    :cond_3e
    move-object/from16 v15, p3

    move/from16 v17, v9

    goto/16 :goto_10a

    :cond_44
    if-eqz v0, :cond_51

    if-eqz v1, :cond_51

    .line 8
    invoke-virtual {v6, v0, v1}, Lg1/m;->G(Lg1/s;Lg1/s;)Z

    move-result v3

    if-eqz v3, :cond_4f

    goto :goto_51

    :cond_4f
    const/4 v3, 0x0

    goto :goto_52

    :cond_51
    :goto_51
    const/4 v3, 0x1

    :goto_52
    if-eqz v3, :cond_3c

    move-object/from16 v14, p1

    .line 9
    invoke-virtual {v6, v14, v0, v1}, Lg1/m;->o(Landroid/view/ViewGroup;Lg1/s;Lg1/s;)Landroid/animation/Animator;

    move-result-object v3

    if-eqz v3, :cond_3e

    if-eqz v1, :cond_e4

    .line 10
    iget-object v0, v1, Lg1/s;->b:Landroid/view/View;

    .line 11
    invoke-virtual/range {p0 .. p0}, Lg1/m;->E()[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_d7

    .line 12
    array-length v4, v1

    if-lez v4, :cond_d7

    .line 13
    new-instance v4, Lg1/s;

    invoke-direct {v4, v0}, Lg1/s;-><init>(Landroid/view/View;)V

    move-object/from16 v15, p3

    .line 14
    iget-object v5, v15, Lg1/t;->a:Lo/a;

    invoke-virtual {v5, v0}, Lo/g;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lg1/s;

    if-eqz v5, :cond_9c

    const/4 v2, 0x0

    .line 15
    :goto_7b
    array-length v10, v1

    if-ge v2, v10, :cond_9c

    .line 16
    iget-object v10, v4, Lg1/s;->a:Ljava/util/Map;

    move-object/from16 v16, v3

    aget-object v3, v1, v2

    move/from16 v17, v9

    iget-object v9, v5, Lg1/s;->a:Ljava/util/Map;

    move-object/from16 v18, v5

    aget-object v5, v1, v2

    .line 17
    invoke-interface {v9, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 18
    invoke-interface {v10, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v3, v16

    move/from16 v9, v17

    move-object/from16 v5, v18

    goto :goto_7b

    :cond_9c
    move-object/from16 v16, v3

    move/from16 v17, v9

    .line 19
    invoke-virtual {v7}, Lo/g;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_a5
    if-ge v2, v1, :cond_d4

    .line 20
    invoke-virtual {v7, v2}, Lo/g;->k(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/animation/Animator;

    .line 21
    invoke-virtual {v7, v3}, Lo/g;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lg1/m$d;

    .line 22
    iget-object v5, v3, Lg1/m$d;->c:Lg1/s;

    if-eqz v5, :cond_d1

    iget-object v5, v3, Lg1/m$d;->a:Landroid/view/View;

    if-ne v5, v0, :cond_d1

    iget-object v5, v3, Lg1/m$d;->b:Ljava/lang/String;

    .line 23
    invoke-virtual/range {p0 .. p0}, Lg1/m;->v()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d1

    .line 24
    iget-object v3, v3, Lg1/m$d;->c:Lg1/s;

    invoke-virtual {v3, v4}, Lg1/s;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d1

    const/4 v2, 0x0

    goto :goto_e0

    :cond_d1
    add-int/lit8 v2, v2, 0x1

    goto :goto_a5

    :cond_d4
    move-object/from16 v2, v16

    goto :goto_e0

    :cond_d7
    move-object/from16 v15, p3

    move-object/from16 v16, v3

    move/from16 v17, v9

    move-object/from16 v2, v16

    const/4 v4, 0x0

    :goto_e0
    move-object v1, v0

    move-object v9, v2

    move-object v5, v4

    goto :goto_f0

    :cond_e4
    move-object/from16 v15, p3

    move-object/from16 v16, v3

    move/from16 v17, v9

    .line 25
    iget-object v0, v0, Lg1/s;->b:Landroid/view/View;

    move-object v1, v0

    move-object/from16 v9, v16

    const/4 v5, 0x0

    :goto_f0
    if-eqz v9, :cond_10a

    .line 26
    new-instance v10, Lg1/m$d;

    invoke-virtual/range {p0 .. p0}, Lg1/m;->v()Ljava/lang/String;

    move-result-object v2

    .line 27
    invoke-static/range {p1 .. p1}, Lg1/c0;->d(Landroid/view/View;)Lg1/m0;

    move-result-object v4

    move-object v0, v10

    move-object/from16 v3, p0

    invoke-direct/range {v0 .. v5}, Lg1/m$d;-><init>(Landroid/view/View;Ljava/lang/String;Lg1/m;Lg1/m0;Lg1/s;)V

    .line 28
    invoke-virtual {v7, v9, v10}, Lo/g;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    iget-object v0, v6, Lg1/m;->Q:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_10a
    :goto_10a
    add-int/lit8 v11, v11, 0x1

    move/from16 v9, v17

    goto/16 :goto_10

    .line 30
    :cond_110
    invoke-virtual {v8}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    if-eqz v0, :cond_13f

    const/4 v10, 0x0

    .line 31
    :goto_117
    invoke-virtual {v8}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    if-ge v10, v0, :cond_13f

    .line 32
    invoke-virtual {v8, v10}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v0

    .line 33
    iget-object v1, v6, Lg1/m;->Q:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    .line 34
    invoke-virtual {v8, v10}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v1

    int-to-long v1, v1

    const-wide v3, 0x7fffffffffffffffL

    sub-long/2addr v1, v3

    invoke-virtual {v0}, Landroid/animation/Animator;->getStartDelay()J

    move-result-wide v3

    add-long/2addr v1, v3

    .line 35
    invoke-virtual {v0, v1, v2}, Landroid/animation/Animator;->setStartDelay(J)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_117

    :cond_13f
    return-void
.end method

.method protected q()V
    .registers 7

    .line 1
    iget v0, p0, Lg1/m;->M:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lg1/m;->M:I

    if-nez v0, :cond_6a

    .line 2
    iget-object v0, p0, Lg1/m;->P:Ljava/util/ArrayList;

    const/4 v2, 0x0

    if-eqz v0, :cond_2e

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2e

    .line 3
    iget-object v0, p0, Lg1/m;->P:Ljava/util/ArrayList;

    .line 4
    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_20
    if-ge v4, v3, :cond_2e

    .line 6
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lg1/m$f;

    invoke-interface {v5, p0}, Lg1/m$f;->d(Lg1/m;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_20

    :cond_2e
    const/4 v0, 0x0

    .line 7
    :goto_2f
    iget-object v3, p0, Lg1/m;->D:Lg1/t;

    iget-object v3, v3, Lg1/t;->c:Lo/d;

    invoke-virtual {v3}, Lo/d;->n()I

    move-result v3

    if-ge v0, v3, :cond_4b

    .line 8
    iget-object v3, p0, Lg1/m;->D:Lg1/t;

    iget-object v3, v3, Lg1/t;->c:Lo/d;

    invoke-virtual {v3, v0}, Lo/d;->o(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    if-eqz v3, :cond_48

    .line 9
    invoke-static {v3, v2}, Landroidx/core/view/a0;->z0(Landroid/view/View;Z)V

    :cond_48
    add-int/lit8 v0, v0, 0x1

    goto :goto_2f

    :cond_4b
    const/4 v0, 0x0

    .line 10
    :goto_4c
    iget-object v3, p0, Lg1/m;->E:Lg1/t;

    iget-object v3, v3, Lg1/t;->c:Lo/d;

    invoke-virtual {v3}, Lo/d;->n()I

    move-result v3

    if-ge v0, v3, :cond_68

    .line 11
    iget-object v3, p0, Lg1/m;->E:Lg1/t;

    iget-object v3, v3, Lg1/t;->c:Lo/d;

    invoke-virtual {v3, v0}, Lo/d;->o(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    if-eqz v3, :cond_65

    .line 12
    invoke-static {v3, v2}, Landroidx/core/view/a0;->z0(Landroid/view/View;Z)V

    :cond_65
    add-int/lit8 v0, v0, 0x1

    goto :goto_4c

    .line 13
    :cond_68
    iput-boolean v1, p0, Lg1/m;->O:Z

    :cond_6a
    return-void
.end method

.method public r()J
    .registers 3

    .line 1
    iget-wide v0, p0, Lg1/m;->q:J

    return-wide v0
.end method

.method public s()Lg1/m$e;
    .registers 2

    .line 1
    iget-object v0, p0, Lg1/m;->S:Lg1/m$e;

    return-object v0
.end method

.method public t()Landroid/animation/TimeInterpolator;
    .registers 2

    .line 1
    iget-object v0, p0, Lg1/m;->r:Landroid/animation/TimeInterpolator;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    const-string v0, ""

    .line 1
    invoke-virtual {p0, v0}, Lg1/m;->e0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method u(Landroid/view/View;Z)Lg1/s;
    .registers 9

    .line 1
    iget-object v0, p0, Lg1/m;->F:Lg1/q;

    if-eqz v0, :cond_9

    .line 2
    invoke-virtual {v0, p1, p2}, Lg1/m;->u(Landroid/view/View;Z)Lg1/s;

    move-result-object p1

    return-object p1

    :cond_9
    if-eqz p2, :cond_e

    .line 3
    iget-object v0, p0, Lg1/m;->H:Ljava/util/ArrayList;

    goto :goto_10

    :cond_e
    iget-object v0, p0, Lg1/m;->I:Ljava/util/ArrayList;

    :goto_10
    const/4 v1, 0x0

    if-nez v0, :cond_14

    return-object v1

    .line 4
    :cond_14
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, -0x1

    const/4 v4, 0x0

    :goto_1a
    if-ge v4, v2, :cond_2e

    .line 5
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lg1/s;

    if-nez v5, :cond_25

    return-object v1

    .line 6
    :cond_25
    iget-object v5, v5, Lg1/s;->b:Landroid/view/View;

    if-ne v5, p1, :cond_2b

    move v3, v4

    goto :goto_2e

    :cond_2b
    add-int/lit8 v4, v4, 0x1

    goto :goto_1a

    :cond_2e
    :goto_2e
    if-ltz v3, :cond_3e

    if-eqz p2, :cond_35

    .line 7
    iget-object p1, p0, Lg1/m;->I:Ljava/util/ArrayList;

    goto :goto_37

    :cond_35
    iget-object p1, p0, Lg1/m;->H:Ljava/util/ArrayList;

    .line 8
    :goto_37
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Lg1/s;

    :cond_3e
    return-object v1
.end method

.method public v()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lg1/m;->o:Ljava/lang/String;

    return-object v0
.end method

.method public w()Lg1/g;
    .registers 2

    .line 1
    iget-object v0, p0, Lg1/m;->U:Lg1/g;

    return-object v0
.end method

.method public x()Lg1/p;
    .registers 2

    .line 1
    iget-object v0, p0, Lg1/m;->R:Lg1/p;

    return-object v0
.end method

.method public z()J
    .registers 3

    .line 1
    iget-wide v0, p0, Lg1/m;->p:J

    return-wide v0
.end method

###### Class g1.m.a (g1.m$a)
.class final Lg1/m$a;
.super Lg1/g;
.source "Transition.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lg1/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lg1/g;-><init>()V

    return-void
.end method


# virtual methods
.method public a(FFFF)Landroid/graphics/Path;
    .registers 6

    .line 1
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 2
    invoke-virtual {v0, p1, p2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 3
    invoke-virtual {v0, p3, p4}, Landroid/graphics/Path;->lineTo(FF)V

    return-object v0
.end method

###### Class g1.m.b (g1.m$b)
.class Lg1/m$b;
.super Landroid/animation/AnimatorListenerAdapter;
.source "Transition.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lg1/m;->U(Landroid/animation/Animator;Lo/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lo/a;

.field final synthetic b:Lg1/m;


# direct methods
.method constructor <init>(Lg1/m;Lo/a;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lg1/m$b;->b:Lg1/m;

    iput-object p2, p0, Lg1/m$b;->a:Lo/a;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lg1/m$b;->a:Lo/a;

    invoke-virtual {v0, p1}, Lo/g;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Lg1/m$b;->b:Lg1/m;

    iget-object v0, v0, Lg1/m;->L:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lg1/m$b;->b:Lg1/m;

    iget-object v0, v0, Lg1/m;->L:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

###### Class g1.m.c (g1.m$c)
.class Lg1/m$c;
.super Landroid/animation/AnimatorListenerAdapter;
.source "Transition.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lg1/m;->g(Landroid/animation/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lg1/m;


# direct methods
.method constructor <init>(Lg1/m;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lg1/m$c;->a:Lg1/m;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lg1/m$c;->a:Lg1/m;

    invoke-virtual {v0}, Lg1/m;->q()V

    .line 2
    invoke-virtual {p1, p0}, Landroid/animation/Animator;->removeListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

###### Class g1.m.d (g1.m$d)
.class Lg1/m$d;
.super Ljava/lang/Object;
.source "Transition.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lg1/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "d"
.end annotation


# instance fields
.field a:Landroid/view/View;

.field b:Ljava/lang/String;

.field c:Lg1/s;

.field d:Lg1/m0;

.field e:Lg1/m;


# direct methods
.method constructor <init>(Landroid/view/View;Ljava/lang/String;Lg1/m;Lg1/m0;Lg1/s;)V
    .registers 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lg1/m$d;->a:Landroid/view/View;

    .line 3
    iput-object p2, p0, Lg1/m$d;->b:Ljava/lang/String;

    .line 4
    iput-object p5, p0, Lg1/m$d;->c:Lg1/s;

    .line 5
    iput-object p4, p0, Lg1/m$d;->d:Lg1/m0;

    .line 6
    iput-object p3, p0, Lg1/m$d;->e:Lg1/m;

    return-void
.end method

###### Class g1.m.e (g1.m$e)
.class public abstract Lg1/m$e;
.super Ljava/lang/Object;
.source "Transition.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lg1/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "e"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

###### Class g1.m.f (g1.m$f)
.class public interface abstract Lg1/m$f;
.super Ljava/lang/Object;
.source "Transition.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lg1/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "f"
.end annotation


# virtual methods
.method public abstract a(Lg1/m;)V
.end method

.method public abstract b(Lg1/m;)V
.end method

.method public abstract c(Lg1/m;)V
.end method

.method public abstract d(Lg1/m;)V
.end method

.method public abstract e(Lg1/m;)V
.end method
