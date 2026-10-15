###### Class androidx.constraintlayout.widget.ConstraintLayout (androidx.constraintlayout.widget.ConstraintLayout)
.class public Landroidx/constraintlayout/widget/ConstraintLayout;
.super Landroid/view/ViewGroup;
.source "ConstraintLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/widget/ConstraintLayout$b;,
        Landroidx/constraintlayout/widget/ConstraintLayout$c;
    }
.end annotation


# static fields
.field private static L:Landroidx/constraintlayout/widget/j;


# instance fields
.field private A:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private B:I

.field private C:I

.field D:I

.field E:I

.field F:I

.field G:I

.field private H:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ls/e;",
            ">;"
        }
    .end annotation
.end field

.field I:Landroidx/constraintlayout/widget/ConstraintLayout$c;

.field private J:I

.field private K:I

.field o:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private p:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/constraintlayout/widget/b;",
            ">;"
        }
    .end annotation
.end field

.field protected q:Ls/f;

.field private r:I

.field private s:I

.field private t:I

.field private u:I

.field protected v:Z

.field private w:I

.field private x:Landroidx/constraintlayout/widget/d;

.field protected y:Landroidx/constraintlayout/widget/c;

.field private z:I


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->o:Landroid/util/SparseArray;

    .line 3
    new-instance p1, Ljava/util/ArrayList;

    const/4 v0, 0x4

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->p:Ljava/util/ArrayList;

    .line 4
    new-instance p1, Ls/f;

    invoke-direct {p1}, Ls/f;-><init>()V

    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->q:Ls/f;

    const/4 p1, 0x0

    .line 5
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->r:I

    .line 6
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->s:I

    const v0, 0x7fffffff

    .line 7
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->t:I

    .line 8
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->u:I

    const/4 v0, 0x1

    .line 9
    iput-boolean v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->v:Z

    const/16 v0, 0x101

    .line 10
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->w:I

    const/4 v0, 0x0

    .line 11
    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->x:Landroidx/constraintlayout/widget/d;

    .line 12
    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->y:Landroidx/constraintlayout/widget/c;

    const/4 v0, -0x1

    .line 13
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->z:I

    .line 14
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->A:Ljava/util/HashMap;

    .line 15
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->B:I

    .line 16
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->C:I

    .line 17
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->D:I

    .line 18
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->E:I

    .line 19
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->F:I

    .line 20
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->G:I

    .line 21
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->H:Landroid/util/SparseArray;

    .line 22
    new-instance v0, Landroidx/constraintlayout/widget/ConstraintLayout$c;

    invoke-direct {v0, p0, p0}, Landroidx/constraintlayout/widget/ConstraintLayout$c;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/constraintlayout/widget/ConstraintLayout;)V

    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->I:Landroidx/constraintlayout/widget/ConstraintLayout$c;

    .line 23
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->J:I

    .line 24
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->K:I

    .line 25
    invoke-direct {p0, p2, p1, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->q(Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 6

    .line 26
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 27
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->o:Landroid/util/SparseArray;

    .line 28
    new-instance p1, Ljava/util/ArrayList;

    const/4 v0, 0x4

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->p:Ljava/util/ArrayList;

    .line 29
    new-instance p1, Ls/f;

    invoke-direct {p1}, Ls/f;-><init>()V

    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->q:Ls/f;

    const/4 p1, 0x0

    .line 30
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->r:I

    .line 31
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->s:I

    const v0, 0x7fffffff

    .line 32
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->t:I

    .line 33
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->u:I

    const/4 v0, 0x1

    .line 34
    iput-boolean v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->v:Z

    const/16 v0, 0x101

    .line 35
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->w:I

    const/4 v0, 0x0

    .line 36
    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->x:Landroidx/constraintlayout/widget/d;

    .line 37
    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->y:Landroidx/constraintlayout/widget/c;

    const/4 v0, -0x1

    .line 38
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->z:I

    .line 39
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->A:Ljava/util/HashMap;

    .line 40
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->B:I

    .line 41
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->C:I

    .line 42
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->D:I

    .line 43
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->E:I

    .line 44
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->F:I

    .line 45
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->G:I

    .line 46
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->H:Landroid/util/SparseArray;

    .line 47
    new-instance v0, Landroidx/constraintlayout/widget/ConstraintLayout$c;

    invoke-direct {v0, p0, p0}, Landroidx/constraintlayout/widget/ConstraintLayout$c;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/constraintlayout/widget/ConstraintLayout;)V

    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->I:Landroidx/constraintlayout/widget/ConstraintLayout$c;

    .line 48
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->J:I

    .line 49
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->K:I

    .line 50
    invoke-direct {p0, p2, p3, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->q(Landroid/util/AttributeSet;II)V

    return-void
.end method

.method private A()Z
    .registers 5

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v0, :cond_17

    .line 2
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 3
    invoke-virtual {v3}, Landroid/view/View;->isLayoutRequested()Z

    move-result v3

    if-eqz v3, :cond_14

    const/4 v1, 0x1

    goto :goto_17

    :cond_14
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_17
    :goto_17
    if-eqz v1, :cond_1c

    .line 4
    invoke-direct {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->w()V

    :cond_1c
    return v1
.end method

.method static synthetic b(Landroidx/constraintlayout/widget/ConstraintLayout;)I
    .registers 1

    .line 1
    iget p0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->w:I

    return p0
.end method

.method static synthetic c(Landroidx/constraintlayout/widget/ConstraintLayout;)Ljava/util/ArrayList;
    .registers 1

    .line 1
    iget-object p0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->p:Ljava/util/ArrayList;

    return-object p0
.end method

.method private getPaddingWidth()I
    .registers 5

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 2
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x11

    if-lt v2, v3, :cond_29

    .line 3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingStart()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingEnd()I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/2addr v1, v2

    :cond_29
    if-lez v1, :cond_2c

    move v0, v1

    :cond_2c
    return v0
.end method

.method public static getSharedValues()Landroidx/constraintlayout/widget/j;
    .registers 1

    .line 1
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintLayout;->L:Landroidx/constraintlayout/widget/j;

    if-nez v0, :cond_b

    .line 2
    new-instance v0, Landroidx/constraintlayout/widget/j;

    invoke-direct {v0}, Landroidx/constraintlayout/widget/j;-><init>()V

    sput-object v0, Landroidx/constraintlayout/widget/ConstraintLayout;->L:Landroidx/constraintlayout/widget/j;

    .line 3
    :cond_b
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintLayout;->L:Landroidx/constraintlayout/widget/j;

    return-object v0
.end method

.method private final h(I)Ls/e;
    .registers 3

    if-nez p1, :cond_5

    .line 1
    iget-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->q:Ls/f;

    return-object p1

    .line 2
    :cond_5
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->o:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_20

    .line 3
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_20

    if-eq v0, p0, :cond_20

    .line 4
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-ne p1, p0, :cond_20

    .line 5
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->onViewAdded(Landroid/view/View;)V

    :cond_20
    if-ne v0, p0, :cond_25

    .line 6
    iget-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->q:Ls/f;

    return-object p1

    :cond_25
    if-nez v0, :cond_29

    const/4 p1, 0x0

    goto :goto_31

    .line 7
    :cond_29
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout$b;

    iget-object p1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$b;->v0:Ls/e;

    :goto_31
    return-object p1
.end method

.method private q(Landroid/util/AttributeSet;II)V
    .registers 9

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->q:Ls/f;

    invoke-virtual {v0, p0}, Ls/e;->y0(Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->q:Ls/f;

    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->I:Landroidx/constraintlayout/widget/ConstraintLayout$c;

    invoke-virtual {v0, v1}, Ls/f;->R1(Lt/b$b;)V

    .line 3
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->o:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getId()I

    move-result v1

    invoke-virtual {v0, v1, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->x:Landroidx/constraintlayout/widget/d;

    if-eqz p1, :cond_a3

    .line 5
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Landroidx/constraintlayout/widget/i;->n1:[I

    invoke-virtual {v1, p1, v2, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 6
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result p2

    const/4 p3, 0x0

    const/4 v1, 0x0

    :goto_2a
    if-ge v1, p2, :cond_a0

    .line 7
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v2

    .line 8
    sget v3, Landroidx/constraintlayout/widget/i;->s1:I

    if-ne v2, v3, :cond_3d

    .line 9
    iget v3, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->r:I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    iput v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->r:I

    goto :goto_9d

    .line 10
    :cond_3d
    sget v3, Landroidx/constraintlayout/widget/i;->t1:I

    if-ne v2, v3, :cond_4a

    .line 11
    iget v3, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->s:I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    iput v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->s:I

    goto :goto_9d

    .line 12
    :cond_4a
    sget v3, Landroidx/constraintlayout/widget/i;->q1:I

    if-ne v2, v3, :cond_57

    .line 13
    iget v3, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->t:I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    iput v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->t:I

    goto :goto_9d

    .line 14
    :cond_57
    sget v3, Landroidx/constraintlayout/widget/i;->r1:I

    if-ne v2, v3, :cond_64

    .line 15
    iget v3, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->u:I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    iput v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->u:I

    goto :goto_9d

    .line 16
    :cond_64
    sget v3, Landroidx/constraintlayout/widget/i;->H2:I

    if-ne v2, v3, :cond_71

    .line 17
    iget v3, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->w:I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->w:I

    goto :goto_9d

    .line 18
    :cond_71
    sget v3, Landroidx/constraintlayout/widget/i;->C1:I

    if-ne v2, v3, :cond_82

    .line 19
    invoke-virtual {p1, v2, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    if-eqz v2, :cond_9d

    .line 20
    :try_start_7b
    invoke-virtual {p0, v2}, Landroidx/constraintlayout/widget/ConstraintLayout;->t(I)V
    :try_end_7e
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_7b .. :try_end_7e} :catch_7f

    goto :goto_9d

    .line 21
    :catch_7f
    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->y:Landroidx/constraintlayout/widget/c;

    goto :goto_9d

    .line 22
    :cond_82
    sget v3, Landroidx/constraintlayout/widget/i;->y1:I

    if-ne v2, v3, :cond_9d

    .line 23
    invoke-virtual {p1, v2, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 24
    :try_start_8a
    new-instance v3, Landroidx/constraintlayout/widget/d;

    invoke-direct {v3}, Landroidx/constraintlayout/widget/d;-><init>()V

    iput-object v3, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->x:Landroidx/constraintlayout/widget/d;

    .line 25
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Landroidx/constraintlayout/widget/d;->m(Landroid/content/Context;I)V
    :try_end_98
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_8a .. :try_end_98} :catch_99

    goto :goto_9b

    .line 26
    :catch_99
    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->x:Landroidx/constraintlayout/widget/d;

    .line 27
    :goto_9b
    iput v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->z:I

    :cond_9d
    :goto_9d
    add-int/lit8 v1, v1, 0x1

    goto :goto_2a

    .line 28
    :cond_a0
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 29
    :cond_a3
    iget-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->q:Ls/f;

    iget p2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->w:I

    invoke-virtual {p1, p2}, Ls/f;->S1(I)V

    return-void
.end method

.method private s()V
    .registers 2

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->v:Z

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->B:I

    .line 3
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->C:I

    .line 4
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->D:I

    .line 5
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->E:I

    const/4 v0, 0x0

    .line 6
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->F:I

    .line 7
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->G:I

    return-void
.end method

.method private w()V
    .registers 10

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isInEditMode()Z

    move-result v6

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v7

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_a
    if-ge v1, v7, :cond_1d

    .line 3
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 4
    invoke-virtual {p0, v2}, Landroidx/constraintlayout/widget/ConstraintLayout;->p(Landroid/view/View;)Ls/e;

    move-result-object v2

    if-nez v2, :cond_17

    goto :goto_1a

    .line 5
    :cond_17
    invoke-virtual {v2}, Ls/e;->r0()V

    :goto_1a
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_1d
    const/4 v1, -0x1

    if-eqz v6, :cond_5a

    const/4 v2, 0x0

    :goto_21
    if-ge v2, v7, :cond_5a

    .line 6
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 7
    :try_start_27
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v3}, Landroid/view/View;->getId()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v4

    .line 8
    invoke-virtual {v3}, Landroid/view/View;->getId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p0, v0, v4, v5}, Landroidx/constraintlayout/widget/ConstraintLayout;->x(ILjava/lang/Object;Ljava/lang/Object;)V

    const/16 v5, 0x2f

    .line 9
    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-eq v5, v1, :cond_4c

    add-int/lit8 v5, v5, 0x1

    .line 10
    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 11
    :cond_4c
    invoke-virtual {v3}, Landroid/view/View;->getId()I

    move-result v3

    invoke-direct {p0, v3}, Landroidx/constraintlayout/widget/ConstraintLayout;->h(I)Ls/e;

    move-result-object v3

    invoke-virtual {v3, v4}, Ls/e;->z0(Ljava/lang/String;)V
    :try_end_57
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_27 .. :try_end_57} :catch_57

    :catch_57
    add-int/lit8 v2, v2, 0x1

    goto :goto_21

    .line 12
    :cond_5a
    iget v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->z:I

    if-eq v2, v1, :cond_7c

    const/4 v1, 0x0

    :goto_5f
    if-ge v1, v7, :cond_7c

    .line 13
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 14
    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v3

    iget v4, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->z:I

    if-ne v3, v4, :cond_79

    instance-of v3, v2, Landroidx/constraintlayout/widget/e;

    if-eqz v3, :cond_79

    .line 15
    check-cast v2, Landroidx/constraintlayout/widget/e;

    invoke-virtual {v2}, Landroidx/constraintlayout/widget/e;->getConstraintSet()Landroidx/constraintlayout/widget/d;

    move-result-object v2

    iput-object v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->x:Landroidx/constraintlayout/widget/d;

    :cond_79
    add-int/lit8 v1, v1, 0x1

    goto :goto_5f

    .line 16
    :cond_7c
    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->x:Landroidx/constraintlayout/widget/d;

    if-eqz v1, :cond_84

    const/4 v2, 0x1

    .line 17
    invoke-virtual {v1, p0, v2}, Landroidx/constraintlayout/widget/d;->d(Landroidx/constraintlayout/widget/ConstraintLayout;Z)V

    .line 18
    :cond_84
    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->q:Ls/f;

    invoke-virtual {v1}, Ls/l;->r1()V

    .line 19
    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->p:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_a2

    const/4 v2, 0x0

    :goto_92
    if-ge v2, v1, :cond_a2

    .line 20
    iget-object v3, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->p:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/constraintlayout/widget/b;

    .line 21
    invoke-virtual {v3, p0}, Landroidx/constraintlayout/widget/b;->r(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_92

    :cond_a2
    const/4 v1, 0x0

    :goto_a3
    if-ge v1, v7, :cond_b5

    .line 22
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 23
    instance-of v3, v2, Landroidx/constraintlayout/widget/g;

    if-eqz v3, :cond_b2

    .line 24
    check-cast v2, Landroidx/constraintlayout/widget/g;

    invoke-virtual {v2, p0}, Landroidx/constraintlayout/widget/g;->b(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    :cond_b2
    add-int/lit8 v1, v1, 0x1

    goto :goto_a3

    .line 25
    :cond_b5
    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->H:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 26
    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->H:Landroid/util/SparseArray;

    iget-object v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->q:Ls/f;

    invoke-virtual {v1, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 27
    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->H:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getId()I

    move-result v2

    iget-object v3, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->q:Ls/f;

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v1, 0x0

    :goto_cd
    if-ge v1, v7, :cond_e3

    .line 28
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 29
    invoke-virtual {p0, v2}, Landroidx/constraintlayout/widget/ConstraintLayout;->p(Landroid/view/View;)Ls/e;

    move-result-object v3

    .line 30
    iget-object v4, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->H:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {v4, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_cd

    :cond_e3
    const/4 v8, 0x0

    :goto_e4
    if-ge v8, v7, :cond_107

    .line 31
    invoke-virtual {p0, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 32
    invoke-virtual {p0, v2}, Landroidx/constraintlayout/widget/ConstraintLayout;->p(Landroid/view/View;)Ls/e;

    move-result-object v3

    if-nez v3, :cond_f1

    goto :goto_104

    .line 33
    :cond_f1
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroidx/constraintlayout/widget/ConstraintLayout$b;

    .line 34
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->q:Ls/f;

    invoke-virtual {v0, v3}, Ls/l;->a(Ls/e;)V

    .line 35
    iget-object v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->H:Landroid/util/SparseArray;

    move-object v0, p0

    move v1, v6

    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/widget/ConstraintLayout;->d(ZLandroid/view/View;Ls/e;Landroidx/constraintlayout/widget/ConstraintLayout$b;Landroid/util/SparseArray;)V

    :goto_104
    add-int/lit8 v8, v8, 0x1

    goto :goto_e4

    :cond_107
    return-void
.end method

.method private z(Ls/e;Landroidx/constraintlayout/widget/ConstraintLayout$b;Landroid/util/SparseArray;ILs/d$b;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls/e;",
            "Landroidx/constraintlayout/widget/ConstraintLayout$b;",
            "Landroid/util/SparseArray<",
            "Ls/e;",
            ">;I",
            "Ls/d$b;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->o:Landroid/util/SparseArray;

    invoke-virtual {v0, p4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 2
    invoke-virtual {p3, p4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ls/e;

    if-eqz p3, :cond_52

    if-eqz v0, :cond_52

    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p4

    instance-of p4, p4, Landroidx/constraintlayout/widget/ConstraintLayout$b;

    if-eqz p4, :cond_52

    const/4 p4, 0x1

    .line 4
    iput-boolean p4, p2, Landroidx/constraintlayout/widget/ConstraintLayout$b;->g0:Z

    .line 5
    sget-object v1, Ls/d$b;->t:Ls/d$b;

    if-ne p5, v1, :cond_2e

    .line 6
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$b;

    .line 7
    iput-boolean p4, v0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->g0:Z

    .line 8
    iget-object v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->v0:Ls/e;

    invoke-virtual {v0, p4}, Ls/e;->H0(Z)V

    .line 9
    :cond_2e
    invoke-virtual {p1, v1}, Ls/e;->m(Ls/d$b;)Ls/d;

    move-result-object v0

    .line 10
    invoke-virtual {p3, p5}, Ls/e;->m(Ls/d$b;)Ls/d;

    move-result-object p3

    .line 11
    iget p5, p2, Landroidx/constraintlayout/widget/ConstraintLayout$b;->D:I

    iget p2, p2, Landroidx/constraintlayout/widget/ConstraintLayout$b;->C:I

    invoke-virtual {v0, p3, p5, p2, p4}, Ls/d;->a(Ls/d;IIZ)Z

    .line 12
    invoke-virtual {p1, p4}, Ls/e;->H0(Z)V

    .line 13
    sget-object p2, Ls/d$b;->q:Ls/d$b;

    invoke-virtual {p1, p2}, Ls/e;->m(Ls/d$b;)Ls/d;

    move-result-object p2

    invoke-virtual {p2}, Ls/d;->p()V

    .line 14
    sget-object p2, Ls/d$b;->s:Ls/d$b;

    invoke-virtual {p1, p2}, Ls/e;->m(Ls/d$b;)Ls/d;

    move-result-object p1

    invoke-virtual {p1}, Ls/d;->p()V

    :cond_52
    return-void
.end method


# virtual methods
.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .registers 2

    .line 1
    instance-of p1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$b;

    return p1
.end method

.method protected d(ZLandroid/view/View;Ls/e;Landroidx/constraintlayout/widget/ConstraintLayout$b;Landroid/util/SparseArray;)V
    .registers 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Landroid/view/View;",
            "Ls/e;",
            "Landroidx/constraintlayout/widget/ConstraintLayout$b;",
            "Landroid/util/SparseArray<",
            "Ls/e;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    .line 1
    invoke-virtual/range {p4 .. p4}, Landroidx/constraintlayout/widget/ConstraintLayout$b;->a()V

    const/4 v9, 0x0

    .line 2
    iput-boolean v9, v7, Landroidx/constraintlayout/widget/ConstraintLayout$b;->w0:Z

    .line 3
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getVisibility()I

    move-result v1

    invoke-virtual {v6, v1}, Ls/e;->g1(I)V

    .line 4
    iget-boolean v1, v7, Landroidx/constraintlayout/widget/ConstraintLayout$b;->j0:Z

    if-eqz v1, :cond_22

    const/4 v1, 0x1

    .line 5
    invoke-virtual {v6, v1}, Ls/e;->Q0(Z)V

    const/16 v1, 0x8

    .line 6
    invoke-virtual {v6, v1}, Ls/e;->g1(I)V

    .line 7
    :cond_22
    invoke-virtual {v6, v0}, Ls/e;->y0(Ljava/lang/Object;)V

    .line 8
    instance-of v1, v0, Landroidx/constraintlayout/widget/b;

    if-eqz v1, :cond_37

    .line 9
    check-cast v0, Landroidx/constraintlayout/widget/b;

    move-object/from16 v10, p0

    .line 10
    iget-object v1, v10, Landroidx/constraintlayout/widget/ConstraintLayout;->q:Ls/f;

    invoke-virtual {v1}, Ls/f;->L1()Z

    move-result v1

    invoke-virtual {v0, v6, v1}, Landroidx/constraintlayout/widget/b;->n(Ls/e;Z)V

    goto :goto_39

    :cond_37
    move-object/from16 v10, p0

    .line 11
    :goto_39
    iget-boolean v0, v7, Landroidx/constraintlayout/widget/ConstraintLayout$b;->h0:Z

    const/16 v1, 0x11

    const/4 v11, -0x1

    if-eqz v0, :cond_6c

    .line 12
    move-object v0, v6

    check-cast v0, Ls/g;

    .line 13
    iget v2, v7, Landroidx/constraintlayout/widget/ConstraintLayout$b;->s0:I

    .line 14
    iget v3, v7, Landroidx/constraintlayout/widget/ConstraintLayout$b;->t0:I

    .line 15
    iget v4, v7, Landroidx/constraintlayout/widget/ConstraintLayout$b;->u0:F

    .line 16
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v5, v1, :cond_53

    .line 17
    iget v2, v7, Landroidx/constraintlayout/widget/ConstraintLayout$b;->a:I

    .line 18
    iget v3, v7, Landroidx/constraintlayout/widget/ConstraintLayout$b;->b:I

    .line 19
    iget v4, v7, Landroidx/constraintlayout/widget/ConstraintLayout$b;->c:F

    :cond_53
    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v1, v4, v1

    if-eqz v1, :cond_5e

    .line 20
    invoke-virtual {v0, v4}, Ls/g;->w1(F)V

    goto/16 :goto_2ab

    :cond_5e
    if-eq v2, v11, :cond_65

    .line 21
    invoke-virtual {v0, v2}, Ls/g;->u1(I)V

    goto/16 :goto_2ab

    :cond_65
    if-eq v3, v11, :cond_2ab

    .line 22
    invoke-virtual {v0, v3}, Ls/g;->v1(I)V

    goto/16 :goto_2ab

    .line 23
    :cond_6c
    iget v0, v7, Landroidx/constraintlayout/widget/ConstraintLayout$b;->l0:I

    .line 24
    iget v2, v7, Landroidx/constraintlayout/widget/ConstraintLayout$b;->m0:I

    .line 25
    iget v3, v7, Landroidx/constraintlayout/widget/ConstraintLayout$b;->n0:I

    .line 26
    iget v4, v7, Landroidx/constraintlayout/widget/ConstraintLayout$b;->o0:I

    .line 27
    iget v5, v7, Landroidx/constraintlayout/widget/ConstraintLayout$b;->p0:I

    .line 28
    iget v12, v7, Landroidx/constraintlayout/widget/ConstraintLayout$b;->q0:I

    .line 29
    iget v13, v7, Landroidx/constraintlayout/widget/ConstraintLayout$b;->r0:F

    .line 30
    sget v14, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v14, v1, :cond_b6

    .line 31
    iget v0, v7, Landroidx/constraintlayout/widget/ConstraintLayout$b;->e:I

    .line 32
    iget v1, v7, Landroidx/constraintlayout/widget/ConstraintLayout$b;->f:I

    .line 33
    iget v3, v7, Landroidx/constraintlayout/widget/ConstraintLayout$b;->g:I

    .line 34
    iget v4, v7, Landroidx/constraintlayout/widget/ConstraintLayout$b;->h:I

    .line 35
    iget v2, v7, Landroidx/constraintlayout/widget/ConstraintLayout$b;->w:I

    .line 36
    iget v5, v7, Landroidx/constraintlayout/widget/ConstraintLayout$b;->y:I

    .line 37
    iget v13, v7, Landroidx/constraintlayout/widget/ConstraintLayout$b;->G:F

    if-ne v0, v11, :cond_9b

    if-ne v1, v11, :cond_9b

    .line 38
    iget v12, v7, Landroidx/constraintlayout/widget/ConstraintLayout$b;->t:I

    if-eq v12, v11, :cond_96

    move v0, v12

    goto :goto_9b

    .line 39
    :cond_96
    iget v12, v7, Landroidx/constraintlayout/widget/ConstraintLayout$b;->s:I

    if-eq v12, v11, :cond_9b

    move v1, v12

    :cond_9b
    :goto_9b
    if-ne v3, v11, :cond_af

    if-ne v4, v11, :cond_af

    .line 40
    iget v12, v7, Landroidx/constraintlayout/widget/ConstraintLayout$b;->u:I

    if-eq v12, v11, :cond_a4

    goto :goto_b0

    .line 41
    :cond_a4
    iget v12, v7, Landroidx/constraintlayout/widget/ConstraintLayout$b;->v:I

    if-eq v12, v11, :cond_af

    move v14, v5

    move v15, v13

    move v5, v2

    move v13, v12

    move v2, v1

    move v12, v3

    goto :goto_ba

    :cond_af
    move v12, v3

    :goto_b0
    move v14, v5

    move v15, v13

    move v5, v2

    move v13, v4

    move v2, v1

    goto :goto_ba

    :cond_b6
    move v14, v12

    move v15, v13

    move v12, v3

    move v13, v4

    .line 42
    :goto_ba
    iget v1, v7, Landroidx/constraintlayout/widget/ConstraintLayout$b;->p:I

    if-eq v1, v11, :cond_cf

    .line 43
    invoke-virtual {v8, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ls/e;

    if-eqz v0, :cond_1d7

    .line 44
    iget v1, v7, Landroidx/constraintlayout/widget/ConstraintLayout$b;->r:F

    iget v2, v7, Landroidx/constraintlayout/widget/ConstraintLayout$b;->q:I

    invoke-virtual {v6, v0, v1, v2}, Ls/e;->j(Ls/e;FI)V

    goto/16 :goto_1d7

    :cond_cf
    if-eq v0, v11, :cond_e5

    .line 45
    invoke-virtual {v8, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ls/e;

    if-eqz v2, :cond_fb

    .line 46
    sget-object v3, Ls/d$b;->p:Ls/d$b;

    iget v4, v7, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    move-object/from16 v0, p3

    move-object v1, v3

    invoke-virtual/range {v0 .. v5}, Ls/e;->c0(Ls/d$b;Ls/e;Ls/d$b;II)V

    goto :goto_fb

    :cond_e5
    if-eq v2, v11, :cond_fb

    .line 47
    invoke-virtual {v8, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ls/e;

    if-eqz v2, :cond_fb

    .line 48
    sget-object v1, Ls/d$b;->p:Ls/d$b;

    sget-object v3, Ls/d$b;->r:Ls/d$b;

    iget v4, v7, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    move-object/from16 v0, p3

    invoke-virtual/range {v0 .. v5}, Ls/e;->c0(Ls/d$b;Ls/e;Ls/d$b;II)V

    :cond_fb
    :goto_fb
    if-eq v12, v11, :cond_113

    .line 49
    invoke-virtual {v8, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ls/e;

    if-eqz v2, :cond_129

    .line 50
    sget-object v1, Ls/d$b;->r:Ls/d$b;

    sget-object v3, Ls/d$b;->p:Ls/d$b;

    iget v4, v7, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    move-object/from16 v0, p3

    move v5, v14

    invoke-virtual/range {v0 .. v5}, Ls/e;->c0(Ls/d$b;Ls/e;Ls/d$b;II)V

    goto :goto_129

    :cond_113
    if-eq v13, v11, :cond_129

    .line 51
    invoke-virtual {v8, v13}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ls/e;

    if-eqz v2, :cond_129

    .line 52
    sget-object v3, Ls/d$b;->r:Ls/d$b;

    iget v4, v7, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    move-object/from16 v0, p3

    move-object v1, v3

    move v5, v14

    invoke-virtual/range {v0 .. v5}, Ls/e;->c0(Ls/d$b;Ls/e;Ls/d$b;II)V

    .line 53
    :cond_129
    :goto_129
    iget v0, v7, Landroidx/constraintlayout/widget/ConstraintLayout$b;->i:I

    if-eq v0, v11, :cond_143

    .line 54
    invoke-virtual {v8, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ls/e;

    if-eqz v2, :cond_15d

    .line 55
    sget-object v3, Ls/d$b;->q:Ls/d$b;

    iget v4, v7, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v5, v7, Landroidx/constraintlayout/widget/ConstraintLayout$b;->x:I

    move-object/from16 v0, p3

    move-object v1, v3

    invoke-virtual/range {v0 .. v5}, Ls/e;->c0(Ls/d$b;Ls/e;Ls/d$b;II)V

    goto :goto_15d

    .line 56
    :cond_143
    iget v0, v7, Landroidx/constraintlayout/widget/ConstraintLayout$b;->j:I

    if-eq v0, v11, :cond_15d

    .line 57
    invoke-virtual {v8, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ls/e;

    if-eqz v2, :cond_15d

    .line 58
    sget-object v1, Ls/d$b;->q:Ls/d$b;

    sget-object v3, Ls/d$b;->s:Ls/d$b;

    iget v4, v7, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v5, v7, Landroidx/constraintlayout/widget/ConstraintLayout$b;->x:I

    move-object/from16 v0, p3

    invoke-virtual/range {v0 .. v5}, Ls/e;->c0(Ls/d$b;Ls/e;Ls/d$b;II)V

    .line 59
    :cond_15d
    :goto_15d
    iget v0, v7, Landroidx/constraintlayout/widget/ConstraintLayout$b;->k:I

    if-eq v0, v11, :cond_178

    .line 60
    invoke-virtual {v8, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ls/e;

    if-eqz v2, :cond_191

    .line 61
    sget-object v1, Ls/d$b;->s:Ls/d$b;

    sget-object v3, Ls/d$b;->q:Ls/d$b;

    iget v4, v7, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iget v5, v7, Landroidx/constraintlayout/widget/ConstraintLayout$b;->z:I

    move-object/from16 v0, p3

    invoke-virtual/range {v0 .. v5}, Ls/e;->c0(Ls/d$b;Ls/e;Ls/d$b;II)V

    goto :goto_191

    .line 62
    :cond_178
    iget v0, v7, Landroidx/constraintlayout/widget/ConstraintLayout$b;->l:I

    if-eq v0, v11, :cond_191

    .line 63
    invoke-virtual {v8, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ls/e;

    if-eqz v2, :cond_191

    .line 64
    sget-object v3, Ls/d$b;->s:Ls/d$b;

    iget v4, v7, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iget v5, v7, Landroidx/constraintlayout/widget/ConstraintLayout$b;->z:I

    move-object/from16 v0, p3

    move-object v1, v3

    invoke-virtual/range {v0 .. v5}, Ls/e;->c0(Ls/d$b;Ls/e;Ls/d$b;II)V

    .line 65
    :cond_191
    :goto_191
    iget v4, v7, Landroidx/constraintlayout/widget/ConstraintLayout$b;->m:I

    if-eq v4, v11, :cond_1a3

    .line 66
    sget-object v5, Ls/d$b;->t:Ls/d$b;

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    invoke-direct/range {v0 .. v5}, Landroidx/constraintlayout/widget/ConstraintLayout;->z(Ls/e;Landroidx/constraintlayout/widget/ConstraintLayout$b;Landroid/util/SparseArray;ILs/d$b;)V

    goto :goto_1c6

    .line 67
    :cond_1a3
    iget v4, v7, Landroidx/constraintlayout/widget/ConstraintLayout$b;->n:I

    if-eq v4, v11, :cond_1b5

    .line 68
    sget-object v5, Ls/d$b;->q:Ls/d$b;

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    invoke-direct/range {v0 .. v5}, Landroidx/constraintlayout/widget/ConstraintLayout;->z(Ls/e;Landroidx/constraintlayout/widget/ConstraintLayout$b;Landroid/util/SparseArray;ILs/d$b;)V

    goto :goto_1c6

    .line 69
    :cond_1b5
    iget v4, v7, Landroidx/constraintlayout/widget/ConstraintLayout$b;->o:I

    if-eq v4, v11, :cond_1c6

    .line 70
    sget-object v5, Ls/d$b;->s:Ls/d$b;

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    invoke-direct/range {v0 .. v5}, Landroidx/constraintlayout/widget/ConstraintLayout;->z(Ls/e;Landroidx/constraintlayout/widget/ConstraintLayout$b;Landroid/util/SparseArray;ILs/d$b;)V

    :cond_1c6
    :goto_1c6
    const/4 v0, 0x0

    cmpl-float v1, v15, v0

    if-ltz v1, :cond_1ce

    .line 71
    invoke-virtual {v6, v15}, Ls/e;->J0(F)V

    .line 72
    :cond_1ce
    iget v1, v7, Landroidx/constraintlayout/widget/ConstraintLayout$b;->H:F

    cmpl-float v0, v1, v0

    if-ltz v0, :cond_1d7

    .line 73
    invoke-virtual {v6, v1}, Ls/e;->a1(F)V

    :cond_1d7
    :goto_1d7
    if-eqz p1, :cond_1e6

    .line 74
    iget v0, v7, Landroidx/constraintlayout/widget/ConstraintLayout$b;->X:I

    if-ne v0, v11, :cond_1e1

    iget v1, v7, Landroidx/constraintlayout/widget/ConstraintLayout$b;->Y:I

    if-eq v1, v11, :cond_1e6

    .line 75
    :cond_1e1
    iget v1, v7, Landroidx/constraintlayout/widget/ConstraintLayout$b;->Y:I

    invoke-virtual {v6, v0, v1}, Ls/e;->Y0(II)V

    .line 76
    :cond_1e6
    iget-boolean v0, v7, Landroidx/constraintlayout/widget/ConstraintLayout$b;->e0:Z

    const/4 v1, -0x2

    if-nez v0, :cond_21c

    .line 77
    iget v0, v7, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    if-ne v0, v11, :cond_213

    .line 78
    iget-boolean v0, v7, Landroidx/constraintlayout/widget/ConstraintLayout$b;->a0:Z

    if-eqz v0, :cond_1f9

    .line 79
    sget-object v0, Ls/e$b;->q:Ls/e$b;

    invoke-virtual {v6, v0}, Ls/e;->M0(Ls/e$b;)V

    goto :goto_1fe

    .line 80
    :cond_1f9
    sget-object v0, Ls/e$b;->r:Ls/e$b;

    invoke-virtual {v6, v0}, Ls/e;->M0(Ls/e$b;)V

    .line 81
    :goto_1fe
    sget-object v0, Ls/d$b;->p:Ls/d$b;

    invoke-virtual {v6, v0}, Ls/e;->m(Ls/d$b;)Ls/d;

    move-result-object v0

    iget v2, v7, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iput v2, v0, Ls/d;->g:I

    .line 82
    sget-object v0, Ls/d$b;->r:Ls/d$b;

    invoke-virtual {v6, v0}, Ls/e;->m(Ls/d$b;)Ls/d;

    move-result-object v0

    iget v2, v7, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iput v2, v0, Ls/d;->g:I

    goto :goto_22f

    .line 83
    :cond_213
    sget-object v0, Ls/e$b;->q:Ls/e$b;

    invoke-virtual {v6, v0}, Ls/e;->M0(Ls/e$b;)V

    .line 84
    invoke-virtual {v6, v9}, Ls/e;->h1(I)V

    goto :goto_22f

    .line 85
    :cond_21c
    sget-object v0, Ls/e$b;->o:Ls/e$b;

    invoke-virtual {v6, v0}, Ls/e;->M0(Ls/e$b;)V

    .line 86
    iget v0, v7, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-virtual {v6, v0}, Ls/e;->h1(I)V

    .line 87
    iget v0, v7, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    if-ne v0, v1, :cond_22f

    .line 88
    sget-object v0, Ls/e$b;->p:Ls/e$b;

    invoke-virtual {v6, v0}, Ls/e;->M0(Ls/e$b;)V

    .line 89
    :cond_22f
    :goto_22f
    iget-boolean v0, v7, Landroidx/constraintlayout/widget/ConstraintLayout$b;->f0:Z

    if-nez v0, :cond_264

    .line 90
    iget v0, v7, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    if-ne v0, v11, :cond_25b

    .line 91
    iget-boolean v0, v7, Landroidx/constraintlayout/widget/ConstraintLayout$b;->b0:Z

    if-eqz v0, :cond_241

    .line 92
    sget-object v0, Ls/e$b;->q:Ls/e$b;

    invoke-virtual {v6, v0}, Ls/e;->d1(Ls/e$b;)V

    goto :goto_246

    .line 93
    :cond_241
    sget-object v0, Ls/e$b;->r:Ls/e$b;

    invoke-virtual {v6, v0}, Ls/e;->d1(Ls/e$b;)V

    .line 94
    :goto_246
    sget-object v0, Ls/d$b;->q:Ls/d$b;

    invoke-virtual {v6, v0}, Ls/e;->m(Ls/d$b;)Ls/d;

    move-result-object v0

    iget v1, v7, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iput v1, v0, Ls/d;->g:I

    .line 95
    sget-object v0, Ls/d$b;->s:Ls/d$b;

    invoke-virtual {v6, v0}, Ls/e;->m(Ls/d$b;)Ls/d;

    move-result-object v0

    iget v1, v7, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iput v1, v0, Ls/d;->g:I

    goto :goto_277

    .line 96
    :cond_25b
    sget-object v0, Ls/e$b;->q:Ls/e$b;

    invoke-virtual {v6, v0}, Ls/e;->d1(Ls/e$b;)V

    .line 97
    invoke-virtual {v6, v9}, Ls/e;->I0(I)V

    goto :goto_277

    .line 98
    :cond_264
    sget-object v0, Ls/e$b;->o:Ls/e$b;

    invoke-virtual {v6, v0}, Ls/e;->d1(Ls/e$b;)V

    .line 99
    iget v0, v7, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-virtual {v6, v0}, Ls/e;->I0(I)V

    .line 100
    iget v0, v7, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    if-ne v0, v1, :cond_277

    .line 101
    sget-object v0, Ls/e$b;->p:Ls/e$b;

    invoke-virtual {v6, v0}, Ls/e;->d1(Ls/e$b;)V

    .line 102
    :cond_277
    :goto_277
    iget-object v0, v7, Landroidx/constraintlayout/widget/ConstraintLayout$b;->I:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ls/e;->A0(Ljava/lang/String;)V

    .line 103
    iget v0, v7, Landroidx/constraintlayout/widget/ConstraintLayout$b;->L:F

    invoke-virtual {v6, v0}, Ls/e;->O0(F)V

    .line 104
    iget v0, v7, Landroidx/constraintlayout/widget/ConstraintLayout$b;->M:F

    invoke-virtual {v6, v0}, Ls/e;->f1(F)V

    .line 105
    iget v0, v7, Landroidx/constraintlayout/widget/ConstraintLayout$b;->N:I

    invoke-virtual {v6, v0}, Ls/e;->K0(I)V

    .line 106
    iget v0, v7, Landroidx/constraintlayout/widget/ConstraintLayout$b;->O:I

    invoke-virtual {v6, v0}, Ls/e;->b1(I)V

    .line 107
    iget v0, v7, Landroidx/constraintlayout/widget/ConstraintLayout$b;->d0:I

    invoke-virtual {v6, v0}, Ls/e;->i1(I)V

    .line 108
    iget v0, v7, Landroidx/constraintlayout/widget/ConstraintLayout$b;->P:I

    iget v1, v7, Landroidx/constraintlayout/widget/ConstraintLayout$b;->R:I

    iget v2, v7, Landroidx/constraintlayout/widget/ConstraintLayout$b;->T:I

    iget v3, v7, Landroidx/constraintlayout/widget/ConstraintLayout$b;->V:F

    invoke-virtual {v6, v0, v1, v2, v3}, Ls/e;->N0(IIIF)V

    .line 109
    iget v0, v7, Landroidx/constraintlayout/widget/ConstraintLayout$b;->Q:I

    iget v1, v7, Landroidx/constraintlayout/widget/ConstraintLayout$b;->S:I

    iget v2, v7, Landroidx/constraintlayout/widget/ConstraintLayout$b;->U:I

    iget v3, v7, Landroidx/constraintlayout/widget/ConstraintLayout$b;->W:F

    invoke-virtual {v6, v0, v1, v2, v3}, Ls/e;->e1(IIIF)V

    :cond_2ab
    :goto_2ab
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 22

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->p:Ljava/util/ArrayList;

    const/4 v2, 0x0

    if-eqz v1, :cond_1e

    .line 2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1e

    const/4 v3, 0x0

    :goto_e
    if-ge v3, v1, :cond_1e

    .line 3
    iget-object v4, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->p:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/constraintlayout/widget/b;

    .line 4
    invoke-virtual {v4, v0}, Landroidx/constraintlayout/widget/b;->q(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    .line 5
    :cond_1e
    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 6
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->isInEditMode()Z

    move-result v1

    if-eqz v1, :cond_df

    .line 7
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v1

    int-to-float v1, v1

    .line 8
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x44870000    # 1080.0f

    const/high16 v5, 0x44f00000    # 1920.0f

    .line 9
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    const/4 v7, 0x0

    :goto_3a
    if-ge v7, v6, :cond_df

    .line 10
    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 11
    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v9

    const/16 v10, 0x8

    if-ne v9, v10, :cond_4a

    goto/16 :goto_db

    .line 12
    :cond_4a
    invoke-virtual {v8}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_db

    .line 13
    instance-of v9, v8, Ljava/lang/String;

    if-eqz v9, :cond_db

    .line 14
    check-cast v8, Ljava/lang/String;

    const-string v9, ","

    .line 15
    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 16
    array-length v9, v8

    const/4 v10, 0x4

    if-ne v9, v10, :cond_db

    .line 17
    aget-object v9, v8, v2

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    const/4 v10, 0x1

    .line 18
    aget-object v10, v8, v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    const/4 v11, 0x2

    .line 19
    aget-object v11, v8, v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    const/4 v12, 0x3

    .line 20
    aget-object v8, v8, v12

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    int-to-float v9, v9

    div-float/2addr v9, v4

    mul-float v9, v9, v1

    float-to-int v9, v9

    int-to-float v10, v10

    div-float/2addr v10, v5

    mul-float v10, v10, v3

    float-to-int v10, v10

    int-to-float v11, v11

    div-float/2addr v11, v4

    mul-float v11, v11, v1

    float-to-int v11, v11

    int-to-float v8, v8

    div-float/2addr v8, v5

    mul-float v8, v8, v3

    float-to-int v8, v8

    .line 21
    new-instance v15, Landroid/graphics/Paint;

    invoke-direct {v15}, Landroid/graphics/Paint;-><init>()V

    const/high16 v12, -0x10000

    .line 22
    invoke-virtual {v15, v12}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float v14, v9

    int-to-float v13, v10

    add-int/2addr v9, v11

    int-to-float v9, v9

    move-object/from16 v12, p1

    move v11, v13

    move v13, v14

    move/from16 v18, v14

    move v14, v11

    move-object/from16 v19, v15

    move v15, v9

    move/from16 v16, v11

    move-object/from16 v17, v19

    .line 23
    invoke-virtual/range {v12 .. v17}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    add-int/2addr v10, v8

    int-to-float v8, v10

    move v13, v9

    move/from16 v16, v8

    .line 24
    invoke-virtual/range {v12 .. v17}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    move v14, v8

    move/from16 v15, v18

    .line 25
    invoke-virtual/range {v12 .. v17}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    move/from16 v13, v18

    move/from16 v16, v11

    .line 26
    invoke-virtual/range {v12 .. v17}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    const v10, -0xff0100

    move-object/from16 v15, v19

    .line 27
    invoke-virtual {v15, v10}, Landroid/graphics/Paint;->setColor(I)V

    move v14, v11

    move-object v10, v15

    move v15, v9

    move/from16 v16, v8

    move-object/from16 v17, v10

    .line 28
    invoke-virtual/range {v12 .. v17}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    move v14, v8

    move/from16 v16, v11

    .line 29
    invoke-virtual/range {v12 .. v17}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_db
    :goto_db
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_3a

    :cond_df
    return-void
.end method

.method protected e()Landroidx/constraintlayout/widget/ConstraintLayout$b;
    .registers 3

    .line 1
    new-instance v0, Landroidx/constraintlayout/widget/ConstraintLayout$b;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroidx/constraintlayout/widget/ConstraintLayout$b;-><init>(II)V

    return-object v0
.end method

.method public f(Landroid/util/AttributeSet;)Landroidx/constraintlayout/widget/ConstraintLayout$b;
    .registers 4

    .line 1
    new-instance v0, Landroidx/constraintlayout/widget/ConstraintLayout$b;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroidx/constraintlayout/widget/ConstraintLayout$b;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public forceLayout()V
    .registers 1

    .line 1
    invoke-direct {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->s()V

    .line 2
    invoke-super {p0}, Landroid/view/ViewGroup;->forceLayout()V

    return-void
.end method

.method public g(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 3

    if-nez p1, :cond_19

    .line 1
    instance-of p1, p2, Ljava/lang/String;

    if-eqz p1, :cond_19

    .line 2
    check-cast p2, Ljava/lang/String;

    .line 3
    iget-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->A:Ljava/util/HashMap;

    if-eqz p1, :cond_19

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_19

    .line 4
    iget-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->A:Ljava/util/HashMap;

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_19
    const/4 p1, 0x0

    return-object p1
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .registers 2

    .line 1
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->e()Landroidx/constraintlayout/widget/ConstraintLayout$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->f(Landroid/util/AttributeSet;)Landroidx/constraintlayout/widget/ConstraintLayout$b;

    move-result-object p1

    return-object p1
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .registers 3

    .line 2
    new-instance v0, Landroidx/constraintlayout/widget/ConstraintLayout$b;

    invoke-direct {v0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout$b;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public getMaxHeight()I
    .registers 2

    .line 1
    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->u:I

    return v0
.end method

.method public getMaxWidth()I
    .registers 2

    .line 1
    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->t:I

    return v0
.end method

.method public getMinHeight()I
    .registers 2

    .line 1
    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->s:I

    return v0
.end method

.method public getMinWidth()I
    .registers 2

    .line 1
    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->r:I

    return v0
.end method

.method public getOptimizationLevel()I
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->q:Ls/f;

    invoke-virtual {v0}, Ls/f;->G1()I

    move-result v0

    return v0
.end method

.method public getSceneString()Ljava/lang/String;
    .registers 9

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->q:Ls/f;

    iget-object v1, v1, Ls/e;->o:Ljava/lang/String;

    const/4 v2, -0x1

    if-nez v1, :cond_29

    .line 3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getId()I

    move-result v1

    if-eq v1, v2, :cond_23

    .line 4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v1

    .line 5
    iget-object v3, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->q:Ls/f;

    iput-object v1, v3, Ls/e;->o:Ljava/lang/String;

    goto :goto_29

    .line 6
    :cond_23
    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->q:Ls/f;

    const-string v3, "parent"

    iput-object v3, v1, Ls/e;->o:Ljava/lang/String;

    .line 7
    :cond_29
    :goto_29
    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->q:Ls/f;

    invoke-virtual {v1}, Ls/e;->r()Ljava/lang/String;

    move-result-object v1

    const-string v3, " setDebugName "

    const-string v4, "ConstraintLayout"

    if-nez v1, :cond_54

    .line 8
    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->q:Ls/f;

    iget-object v5, v1, Ls/e;->o:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ls/e;->z0(Ljava/lang/String;)V

    .line 9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->q:Ls/f;

    invoke-virtual {v5}, Ls/e;->r()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    :cond_54
    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->q:Ls/f;

    invoke-virtual {v1}, Ls/l;->o1()Ljava/util/ArrayList;

    move-result-object v1

    .line 11
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5e
    :goto_5e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_ac

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ls/e;

    .line 12
    invoke-virtual {v5}, Ls/e;->q()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    if-eqz v6, :cond_5e

    .line 13
    iget-object v7, v5, Ls/e;->o:Ljava/lang/String;

    if-nez v7, :cond_8a

    .line 14
    invoke-virtual {v6}, Landroid/view/View;->getId()I

    move-result v6

    if-eq v6, v2, :cond_8a

    .line 15
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v6

    .line 16
    iput-object v6, v5, Ls/e;->o:Ljava/lang/String;

    .line 17
    :cond_8a
    invoke-virtual {v5}, Ls/e;->r()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_5e

    .line 18
    iget-object v6, v5, Ls/e;->o:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ls/e;->z0(Ljava/lang/String;)V

    .line 19
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ls/e;->r()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5e

    .line 20
    :cond_ac
    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->q:Ls/f;

    invoke-virtual {v1, v0}, Ls/f;->M(Ljava/lang/StringBuilder;)V

    .line 21
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public i(I)Landroid/view/View;
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->o:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    return-object p1
.end method

.method protected onLayout(ZIIII)V
    .registers 11

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isInEditMode()Z

    move-result p2

    const/4 p3, 0x0

    const/4 p4, 0x0

    :goto_a
    if-ge p4, p1, :cond_5e

    .line 3
    invoke-virtual {p0, p4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p5

    .line 4
    invoke-virtual {p5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$b;

    .line 5
    iget-object v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->v0:Ls/e;

    .line 6
    invoke-virtual {p5}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_2f

    iget-boolean v2, v0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->h0:Z

    if-nez v2, :cond_2f

    iget-boolean v2, v0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->i0:Z

    if-nez v2, :cond_2f

    iget-boolean v2, v0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->k0:Z

    if-nez v2, :cond_2f

    if-nez p2, :cond_2f

    goto :goto_5b

    .line 7
    :cond_2f
    iget-boolean v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->j0:Z

    if-eqz v0, :cond_34

    goto :goto_5b

    .line 8
    :cond_34
    invoke-virtual {v1}, Ls/e;->V()I

    move-result v0

    .line 9
    invoke-virtual {v1}, Ls/e;->W()I

    move-result v2

    .line 10
    invoke-virtual {v1}, Ls/e;->U()I

    move-result v3

    add-int/2addr v3, v0

    .line 11
    invoke-virtual {v1}, Ls/e;->v()I

    move-result v1

    add-int/2addr v1, v2

    .line 12
    invoke-virtual {p5, v0, v2, v3, v1}, Landroid/view/View;->layout(IIII)V

    .line 13
    instance-of v4, p5, Landroidx/constraintlayout/widget/g;

    if-eqz v4, :cond_5b

    .line 14
    check-cast p5, Landroidx/constraintlayout/widget/g;

    .line 15
    invoke-virtual {p5}, Landroidx/constraintlayout/widget/g;->getContent()Landroid/view/View;

    move-result-object p5

    if-eqz p5, :cond_5b

    .line 16
    invoke-virtual {p5, p3}, Landroid/view/View;->setVisibility(I)V

    .line 17
    invoke-virtual {p5, v0, v2, v3, v1}, Landroid/view/View;->layout(IIII)V

    :cond_5b
    :goto_5b
    add-int/lit8 p4, p4, 0x1

    goto :goto_a

    .line 18
    :cond_5e
    iget-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->p:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_76

    :goto_66
    if-ge p3, p1, :cond_76

    .line 19
    iget-object p2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->p:Ljava/util/ArrayList;

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/constraintlayout/widget/b;

    .line 20
    invoke-virtual {p2, p0}, Landroidx/constraintlayout/widget/b;->o(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_66

    :cond_76
    return-void
.end method

.method protected onMeasure(II)V
    .registers 11

    .line 1
    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->J:I

    if-ne v0, p1, :cond_6

    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->K:I

    .line 2
    :cond_6
    iget-boolean v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->v:Z

    const/4 v1, 0x0

    if-nez v0, :cond_23

    .line 3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v2, 0x0

    :goto_10
    if-ge v2, v0, :cond_23

    .line 4
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 5
    invoke-virtual {v3}, Landroid/view/View;->isLayoutRequested()Z

    move-result v3

    if-eqz v3, :cond_20

    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->v:Z

    goto :goto_23

    :cond_20
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    .line 7
    :cond_23
    :goto_23
    iget-boolean v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->v:Z

    .line 8
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->J:I

    .line 9
    iput p2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->K:I

    .line 10
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->q:Ls/f;

    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->r()Z

    move-result v2

    invoke-virtual {v0, v2}, Ls/f;->U1(Z)V

    .line 11
    iget-boolean v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->v:Z

    if-eqz v0, :cond_43

    .line 12
    iput-boolean v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->v:Z

    .line 13
    invoke-direct {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->A()Z

    move-result v0

    if-eqz v0, :cond_43

    .line 14
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->q:Ls/f;

    invoke-virtual {v0}, Ls/f;->W1()V

    .line 15
    :cond_43
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->q:Ls/f;

    iget v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->w:I

    invoke-virtual {p0, v0, v1, p1, p2}, Landroidx/constraintlayout/widget/ConstraintLayout;->v(Ls/f;III)V

    .line 16
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->q:Ls/f;

    invoke-virtual {v0}, Ls/e;->U()I

    move-result v4

    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->q:Ls/f;

    invoke-virtual {v0}, Ls/e;->v()I

    move-result v5

    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->q:Ls/f;

    .line 17
    invoke-virtual {v0}, Ls/f;->M1()Z

    move-result v6

    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->q:Ls/f;

    invoke-virtual {v0}, Ls/f;->K1()Z

    move-result v7

    move-object v1, p0

    move v2, p1

    move v3, p2

    .line 18
    invoke-virtual/range {v1 .. v7}, Landroidx/constraintlayout/widget/ConstraintLayout;->u(IIIIZZ)V

    return-void
.end method

.method public onViewAdded(Landroid/view/View;)V
    .registers 5

    .line 1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onViewAdded(Landroid/view/View;)V

    .line 2
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->p(Landroid/view/View;)Ls/e;

    move-result-object v0

    .line 3
    instance-of v1, p1, Landroidx/constraintlayout/widget/Guideline;

    const/4 v2, 0x1

    if-eqz v1, :cond_24

    .line 4
    instance-of v0, v0, Ls/g;

    if-nez v0, :cond_24

    .line 5
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$b;

    .line 6
    new-instance v1, Ls/g;

    invoke-direct {v1}, Ls/g;-><init>()V

    iput-object v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->v0:Ls/e;

    .line 7
    iput-boolean v2, v0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->h0:Z

    .line 8
    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->Z:I

    invoke-virtual {v1, v0}, Ls/g;->x1(I)V

    .line 9
    :cond_24
    instance-of v0, p1, Landroidx/constraintlayout/widget/b;

    if-eqz v0, :cond_43

    .line 10
    move-object v0, p1

    check-cast v0, Landroidx/constraintlayout/widget/b;

    .line 11
    invoke-virtual {v0}, Landroidx/constraintlayout/widget/b;->s()V

    .line 12
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayout$b;

    .line 13
    iput-boolean v2, v1, Landroidx/constraintlayout/widget/ConstraintLayout$b;->i0:Z

    .line 14
    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->p:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_43

    .line 15
    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->p:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 16
    :cond_43
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->o:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 17
    iput-boolean v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->v:Z

    return-void
.end method

.method public onViewRemoved(Landroid/view/View;)V
    .registers 4

    .line 1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onViewRemoved(Landroid/view/View;)V

    .line 2
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->o:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 3
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->p(Landroid/view/View;)Ls/e;

    move-result-object v0

    .line 4
    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->q:Ls/f;

    invoke-virtual {v1, v0}, Ls/l;->q1(Ls/e;)V

    .line 5
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->p:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    .line 6
    iput-boolean p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->v:Z

    return-void
.end method

.method public final p(Landroid/view/View;)Ls/e;
    .registers 3

    if-ne p1, p0, :cond_5

    .line 1
    iget-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->q:Ls/f;

    return-object p1

    :cond_5
    if-eqz p1, :cond_34

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout$b;

    if-eqz v0, :cond_18

    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout$b;

    iget-object p1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$b;->v0:Ls/e;

    return-object p1

    .line 4
    :cond_18
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 5
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout$b;

    if-eqz v0, :cond_34

    .line 6
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout$b;

    iget-object p1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$b;->v0:Ls/e;

    return-object p1

    :cond_34
    const/4 p1, 0x0

    return-object p1
.end method

.method protected r()Z
    .registers 4

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x11

    if-lt v0, v2, :cond_23

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v2, 0x400000

    and-int/2addr v0, v2

    const/4 v2, 0x1

    if-eqz v0, :cond_19

    const/4 v0, 0x1

    goto :goto_1a

    :cond_19
    const/4 v0, 0x0

    :goto_1a
    if-eqz v0, :cond_23

    .line 3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getLayoutDirection()I

    move-result v0

    if-ne v2, v0, :cond_23

    const/4 v1, 0x1

    :cond_23
    return v1
.end method

.method public requestLayout()V
    .registers 1

    .line 1
    invoke-direct {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->s()V

    .line 2
    invoke-super {p0}, Landroid/view/ViewGroup;->requestLayout()V

    return-void
.end method

.method public setConstraintSet(Landroidx/constraintlayout/widget/d;)V
    .registers 2

    .line 1
    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->x:Landroidx/constraintlayout/widget/d;

    return-void
.end method

.method public setId(I)V
    .registers 4

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->o:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 2
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setId(I)V

    .line 3
    iget-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->o:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getId()I

    move-result v0

    invoke-virtual {p1, v0, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public setMaxHeight(I)V
    .registers 3

    .line 1
    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->u:I

    if-ne p1, v0, :cond_5

    return-void

    .line 2
    :cond_5
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->u:I

    .line 3
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->requestLayout()V

    return-void
.end method

.method public setMaxWidth(I)V
    .registers 3

    .line 1
    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->t:I

    if-ne p1, v0, :cond_5

    return-void

    .line 2
    :cond_5
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->t:I

    .line 3
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->requestLayout()V

    return-void
.end method

.method public setMinHeight(I)V
    .registers 3

    .line 1
    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->s:I

    if-ne p1, v0, :cond_5

    return-void

    .line 2
    :cond_5
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->s:I

    .line 3
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->requestLayout()V

    return-void
.end method

.method public setMinWidth(I)V
    .registers 3

    .line 1
    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->r:I

    if-ne p1, v0, :cond_5

    return-void

    .line 2
    :cond_5
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->r:I

    .line 3
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->requestLayout()V

    return-void
.end method

.method public setOnConstraintsChanged(Landroidx/constraintlayout/widget/f;)V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->y:Landroidx/constraintlayout/widget/c;

    if-eqz v0, :cond_7

    .line 2
    invoke-virtual {v0, p1}, Landroidx/constraintlayout/widget/c;->c(Landroidx/constraintlayout/widget/f;)V

    :cond_7
    return-void
.end method

.method public setOptimizationLevel(I)V
    .registers 3

    .line 1
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->w:I

    .line 2
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->q:Ls/f;

    invoke-virtual {v0, p1}, Ls/f;->S1(I)V

    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method protected t(I)V
    .registers 4

    .line 1
    new-instance v0, Landroidx/constraintlayout/widget/c;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0, p1}, Landroidx/constraintlayout/widget/c;-><init>(Landroid/content/Context;Landroidx/constraintlayout/widget/ConstraintLayout;I)V

    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->y:Landroidx/constraintlayout/widget/c;

    return-void
.end method

.method protected u(IIIIZZ)V
    .registers 9

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->I:Landroidx/constraintlayout/widget/ConstraintLayout$c;

    iget v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$c;->e:I

    .line 2
    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout$c;->d:I

    add-int/2addr p3, v0

    add-int/2addr p4, v1

    const/4 v0, 0x0

    .line 3
    invoke-static {p3, p1, v0}, Landroid/view/ViewGroup;->resolveSizeAndState(III)I

    move-result p1

    .line 4
    invoke-static {p4, p2, v0}, Landroid/view/ViewGroup;->resolveSizeAndState(III)I

    move-result p2

    const p3, 0xffffff

    and-int/2addr p1, p3

    and-int/2addr p2, p3

    .line 5
    iget p3, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->t:I

    invoke-static {p3, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 6
    iget p3, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->u:I

    invoke-static {p3, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    const/high16 p3, 0x1000000

    if-eqz p5, :cond_27

    or-int/2addr p1, p3

    :cond_27
    if-eqz p6, :cond_2a

    or-int/2addr p2, p3

    .line 7
    :cond_2a
    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    .line 8
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->B:I

    .line 9
    iput p2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->C:I

    return-void
.end method

.method protected v(Ls/f;III)V
    .registers 25

    move-object/from16 v6, p0

    .line 1
    invoke-static/range {p3 .. p3}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v9

    .line 2
    invoke-static/range {p3 .. p3}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 3
    invoke-static/range {p4 .. p4}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v11

    .line 4
    invoke-static/range {p4 .. p4}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 5
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v19

    .line 6
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v2

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v16

    add-int v2, v19, v16

    .line 7
    invoke-direct/range {p0 .. p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getPaddingWidth()I

    move-result v4

    .line 8
    iget-object v12, v6, Landroidx/constraintlayout/widget/ConstraintLayout;->I:Landroidx/constraintlayout/widget/ConstraintLayout$c;

    move/from16 v13, p3

    move/from16 v14, p4

    move/from16 v15, v19

    move/from16 v17, v4

    move/from16 v18, v2

    invoke-virtual/range {v12 .. v18}, Landroidx/constraintlayout/widget/ConstraintLayout$c;->c(IIIIII)V

    .line 9
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x11

    if-lt v5, v7, :cond_65

    .line 10
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingStart()I

    move-result v5

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 11
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingEnd()I

    move-result v7

    invoke-static {v3, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    if-gtz v5, :cond_5c

    if-lez v7, :cond_53

    goto :goto_5c

    .line 12
    :cond_53
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v5

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    goto :goto_63

    .line 13
    :cond_5c
    :goto_5c
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->r()Z

    move-result v3

    if-eqz v3, :cond_63

    move v5, v7

    :cond_63
    :goto_63
    move v15, v5

    goto :goto_6e

    .line 14
    :cond_65
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v5

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    move v15, v3

    :goto_6e
    sub-int v10, v0, v4

    sub-int v12, v1, v2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v9

    move v3, v10

    move v4, v11

    move v5, v12

    .line 15
    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/widget/ConstraintLayout;->y(Ls/f;IIII)V

    .line 16
    iget v13, v6, Landroidx/constraintlayout/widget/ConstraintLayout;->B:I

    iget v14, v6, Landroidx/constraintlayout/widget/ConstraintLayout;->C:I

    move-object/from16 v7, p1

    move/from16 v8, p2

    move/from16 v16, v19

    invoke-virtual/range {v7 .. v16}, Ls/f;->N1(IIIIIIIII)J

    return-void
.end method

.method public x(ILjava/lang/Object;Ljava/lang/Object;)V
    .registers 5

    if-nez p1, :cond_35

    .line 1
    instance-of p1, p2, Ljava/lang/String;

    if-eqz p1, :cond_35

    instance-of p1, p3, Ljava/lang/Integer;

    if-eqz p1, :cond_35

    .line 2
    iget-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->A:Ljava/util/HashMap;

    if-nez p1, :cond_15

    .line 3
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->A:Ljava/util/HashMap;

    .line 4
    :cond_15
    check-cast p2, Ljava/lang/String;

    const-string p1, "/"

    .line 5
    invoke-virtual {p2, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_26

    add-int/lit8 p1, p1, 0x1

    .line 6
    invoke-virtual {p2, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    .line 7
    :cond_26
    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 8
    iget-object p3, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->A:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p3, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_35
    return-void
.end method

.method protected y(Ls/f;IIII)V
    .registers 13

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->I:Landroidx/constraintlayout/widget/ConstraintLayout$c;

    iget v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$c;->e:I

    .line 2
    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout$c;->d:I

    .line 3
    sget-object v2, Ls/e$b;->o:Ls/e$b;

    .line 4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    const/high16 v4, 0x40000000    # 2.0f

    const/high16 v5, -0x80000000

    const/4 v6, 0x0

    if-eq p2, v5, :cond_2e

    if-eqz p2, :cond_23

    if-eq p2, v4, :cond_1a

    move-object p2, v2

    :cond_18
    const/4 p3, 0x0

    goto :goto_38

    .line 5
    :cond_1a
    iget p2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->t:I

    sub-int/2addr p2, v0

    invoke-static {p2, p3}, Ljava/lang/Math;->min(II)I

    move-result p3

    move-object p2, v2

    goto :goto_38

    .line 6
    :cond_23
    sget-object p2, Ls/e$b;->p:Ls/e$b;

    if-nez v3, :cond_18

    .line 7
    iget p3, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->r:I

    invoke-static {v6, p3}, Ljava/lang/Math;->max(II)I

    move-result p3

    goto :goto_38

    .line 8
    :cond_2e
    sget-object p2, Ls/e$b;->p:Ls/e$b;

    if-nez v3, :cond_38

    .line 9
    iget p3, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->r:I

    invoke-static {v6, p3}, Ljava/lang/Math;->max(II)I

    move-result p3

    :cond_38
    :goto_38
    if-eq p4, v5, :cond_53

    if-eqz p4, :cond_48

    if-eq p4, v4, :cond_40

    :cond_3e
    const/4 p5, 0x0

    goto :goto_5d

    .line 10
    :cond_40
    iget p4, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->u:I

    sub-int/2addr p4, v1

    invoke-static {p4, p5}, Ljava/lang/Math;->min(II)I

    move-result p5

    goto :goto_5d

    .line 11
    :cond_48
    sget-object v2, Ls/e$b;->p:Ls/e$b;

    if-nez v3, :cond_3e

    .line 12
    iget p4, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->s:I

    invoke-static {v6, p4}, Ljava/lang/Math;->max(II)I

    move-result p5

    goto :goto_5d

    .line 13
    :cond_53
    sget-object v2, Ls/e$b;->p:Ls/e$b;

    if-nez v3, :cond_5d

    .line 14
    iget p4, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->s:I

    invoke-static {v6, p4}, Ljava/lang/Math;->max(II)I

    move-result p5

    .line 15
    :cond_5d
    :goto_5d
    invoke-virtual {p1}, Ls/e;->U()I

    move-result p4

    if-ne p3, p4, :cond_69

    invoke-virtual {p1}, Ls/e;->v()I

    move-result p4

    if-eq p5, p4, :cond_6c

    .line 16
    :cond_69
    invoke-virtual {p1}, Ls/f;->J1()V

    .line 17
    :cond_6c
    invoke-virtual {p1, v6}, Ls/e;->j1(I)V

    .line 18
    invoke-virtual {p1, v6}, Ls/e;->k1(I)V

    .line 19
    iget p4, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->t:I

    sub-int/2addr p4, v0

    invoke-virtual {p1, p4}, Ls/e;->U0(I)V

    .line 20
    iget p4, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->u:I

    sub-int/2addr p4, v1

    invoke-virtual {p1, p4}, Ls/e;->T0(I)V

    .line 21
    invoke-virtual {p1, v6}, Ls/e;->X0(I)V

    .line 22
    invoke-virtual {p1, v6}, Ls/e;->W0(I)V

    .line 23
    invoke-virtual {p1, p2}, Ls/e;->M0(Ls/e$b;)V

    .line 24
    invoke-virtual {p1, p3}, Ls/e;->h1(I)V

    .line 25
    invoke-virtual {p1, v2}, Ls/e;->d1(Ls/e$b;)V

    .line 26
    invoke-virtual {p1, p5}, Ls/e;->I0(I)V

    .line 27
    iget p2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->r:I

    sub-int/2addr p2, v0

    invoke-virtual {p1, p2}, Ls/e;->X0(I)V

    .line 28
    iget p2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->s:I

    sub-int/2addr p2, v1

    invoke-virtual {p1, p2}, Ls/e;->W0(I)V

    return-void
.end method

###### Class androidx.constraintlayout.widget.ConstraintLayout.a (androidx.constraintlayout.widget.ConstraintLayout$a)
.class synthetic Landroidx/constraintlayout/widget/ConstraintLayout$a;
.super Ljava/lang/Object;
.source "ConstraintLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/widget/ConstraintLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic a:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 1
    invoke-static {}, Ls/e$b;->values()[Ls/e$b;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Landroidx/constraintlayout/widget/ConstraintLayout$a;->a:[I

    :try_start_9
    sget-object v1, Ls/e$b;->o:Ls/e$b;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_12} :catch_12

    :catch_12
    :try_start_12
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintLayout$a;->a:[I

    sget-object v1, Ls/e$b;->p:Ls/e$b;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_1d} :catch_1d

    :catch_1d
    :try_start_1d
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintLayout$a;->a:[I

    sget-object v1, Ls/e$b;->r:Ls/e$b;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_28} :catch_28

    :catch_28
    :try_start_28
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintLayout$a;->a:[I

    sget-object v1, Ls/e$b;->q:Ls/e$b;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_33
    .catch Ljava/lang/NoSuchFieldError; {:try_start_28 .. :try_end_33} :catch_33

    :catch_33
    return-void
.end method

###### Class androidx.constraintlayout.widget.ConstraintLayout.b (androidx.constraintlayout.widget.ConstraintLayout$b)
.class public Landroidx/constraintlayout/widget/ConstraintLayout$b;
.super Landroid/view/ViewGroup$MarginLayoutParams;
.source "ConstraintLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/widget/ConstraintLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/widget/ConstraintLayout$b$a;
    }
.end annotation


# instance fields
.field public A:I

.field public B:I

.field public C:I

.field public D:I

.field E:Z

.field F:Z

.field public G:F

.field public H:F

.field public I:Ljava/lang/String;

.field J:F

.field K:I

.field public L:F

.field public M:F

.field public N:I

.field public O:I

.field public P:I

.field public Q:I

.field public R:I

.field public S:I

.field public T:I

.field public U:I

.field public V:F

.field public W:F

.field public X:I

.field public Y:I

.field public Z:I

.field public a:I

.field public a0:Z

.field public b:I

.field public b0:Z

.field public c:F

.field public c0:Ljava/lang/String;

.field public d:Z

.field public d0:I

.field public e:I

.field e0:Z

.field public f:I

.field f0:Z

.field public g:I

.field g0:Z

.field public h:I

.field h0:Z

.field public i:I

.field i0:Z

.field public j:I

.field j0:Z

.field public k:I

.field k0:Z

.field public l:I

.field l0:I

.field public m:I

.field m0:I

.field public n:I

.field n0:I

.field public o:I

.field o0:I

.field public p:I

.field p0:I

.field public q:I

.field q0:I

.field public r:F

.field r0:F

.field public s:I

.field s0:I

.field public t:I

.field t0:I

.field public u:I

.field u0:F

.field public v:I

.field v0:Ls/e;

.field public w:I

.field public w0:Z

.field public x:I

.field public y:I

.field public z:I


# direct methods
.method public constructor <init>(II)V
    .registers 9

    .line 165
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    const/4 p1, -0x1

    .line 166
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->a:I

    .line 167
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->b:I

    const/high16 p2, -0x40800000    # -1.0f

    .line 168
    iput p2, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->c:F

    const/4 v0, 0x1

    .line 169
    iput-boolean v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->d:Z

    .line 170
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->e:I

    .line 171
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->f:I

    .line 172
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->g:I

    .line 173
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->h:I

    .line 174
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->i:I

    .line 175
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->j:I

    .line 176
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->k:I

    .line 177
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->l:I

    .line 178
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->m:I

    .line 179
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->n:I

    .line 180
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->o:I

    .line 181
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->p:I

    const/4 v1, 0x0

    .line 182
    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->q:I

    const/4 v2, 0x0

    .line 183
    iput v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->r:F

    .line 184
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->s:I

    .line 185
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->t:I

    .line 186
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->u:I

    .line 187
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->v:I

    const/high16 v3, -0x80000000

    .line 188
    iput v3, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->w:I

    .line 189
    iput v3, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->x:I

    .line 190
    iput v3, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->y:I

    .line 191
    iput v3, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->z:I

    .line 192
    iput v3, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->A:I

    .line 193
    iput v3, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->B:I

    .line 194
    iput v3, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->C:I

    .line 195
    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->D:I

    .line 196
    iput-boolean v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->E:Z

    .line 197
    iput-boolean v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->F:Z

    const/high16 v4, 0x3f000000    # 0.5f

    .line 198
    iput v4, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->G:F

    .line 199
    iput v4, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->H:F

    const/4 v5, 0x0

    .line 200
    iput-object v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->I:Ljava/lang/String;

    .line 201
    iput v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->J:F

    .line 202
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->K:I

    .line 203
    iput p2, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->L:F

    .line 204
    iput p2, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->M:F

    .line 205
    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->N:I

    .line 206
    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->O:I

    .line 207
    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->P:I

    .line 208
    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->Q:I

    .line 209
    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->R:I

    .line 210
    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->S:I

    .line 211
    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->T:I

    .line 212
    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->U:I

    const/high16 p2, 0x3f800000    # 1.0f

    .line 213
    iput p2, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->V:F

    .line 214
    iput p2, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->W:F

    .line 215
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->X:I

    .line 216
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->Y:I

    .line 217
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->Z:I

    .line 218
    iput-boolean v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->a0:Z

    .line 219
    iput-boolean v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->b0:Z

    .line 220
    iput-object v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->c0:Ljava/lang/String;

    .line 221
    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->d0:I

    .line 222
    iput-boolean v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->e0:Z

    .line 223
    iput-boolean v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->f0:Z

    .line 224
    iput-boolean v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->g0:Z

    .line 225
    iput-boolean v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->h0:Z

    .line 226
    iput-boolean v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->i0:Z

    .line 227
    iput-boolean v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->j0:Z

    .line 228
    iput-boolean v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->k0:Z

    .line 229
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->l0:I

    .line 230
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->m0:I

    .line 231
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->n0:I

    .line 232
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->o0:I

    .line 233
    iput v3, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->p0:I

    .line 234
    iput v3, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->q0:I

    .line 235
    iput v4, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->r0:F

    .line 236
    new-instance p1, Ls/e;

    invoke-direct {p1}, Ls/e;-><init>()V

    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->v0:Ls/e;

    .line 237
    iput-boolean v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->w0:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 13

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->a:I

    .line 3
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->b:I

    const/high16 v1, -0x40800000    # -1.0f

    .line 4
    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->c:F

    const/4 v2, 0x1

    .line 5
    iput-boolean v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->d:Z

    .line 6
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->e:I

    .line 7
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->f:I

    .line 8
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->g:I

    .line 9
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->h:I

    .line 10
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->i:I

    .line 11
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->j:I

    .line 12
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->k:I

    .line 13
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->l:I

    .line 14
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->m:I

    .line 15
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->n:I

    .line 16
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->o:I

    .line 17
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->p:I

    const/4 v3, 0x0

    .line 18
    iput v3, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->q:I

    const/4 v4, 0x0

    .line 19
    iput v4, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->r:F

    .line 20
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->s:I

    .line 21
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->t:I

    .line 22
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->u:I

    .line 23
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->v:I

    const/high16 v5, -0x80000000

    .line 24
    iput v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->w:I

    .line 25
    iput v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->x:I

    .line 26
    iput v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->y:I

    .line 27
    iput v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->z:I

    .line 28
    iput v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->A:I

    .line 29
    iput v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->B:I

    .line 30
    iput v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->C:I

    .line 31
    iput v3, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->D:I

    .line 32
    iput-boolean v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->E:Z

    .line 33
    iput-boolean v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->F:Z

    const/high16 v6, 0x3f000000    # 0.5f

    .line 34
    iput v6, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->G:F

    .line 35
    iput v6, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->H:F

    const/4 v7, 0x0

    .line 36
    iput-object v7, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->I:Ljava/lang/String;

    .line 37
    iput v4, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->J:F

    .line 38
    iput v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->K:I

    .line 39
    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->L:F

    .line 40
    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->M:F

    .line 41
    iput v3, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->N:I

    .line 42
    iput v3, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->O:I

    .line 43
    iput v3, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->P:I

    .line 44
    iput v3, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->Q:I

    .line 45
    iput v3, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->R:I

    .line 46
    iput v3, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->S:I

    .line 47
    iput v3, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->T:I

    .line 48
    iput v3, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->U:I

    const/high16 v1, 0x3f800000    # 1.0f

    .line 49
    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->V:F

    .line 50
    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->W:F

    .line 51
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->X:I

    .line 52
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->Y:I

    .line 53
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->Z:I

    .line 54
    iput-boolean v3, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->a0:Z

    .line 55
    iput-boolean v3, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->b0:Z

    .line 56
    iput-object v7, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->c0:Ljava/lang/String;

    .line 57
    iput v3, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->d0:I

    .line 58
    iput-boolean v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->e0:Z

    .line 59
    iput-boolean v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->f0:Z

    .line 60
    iput-boolean v3, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->g0:Z

    .line 61
    iput-boolean v3, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->h0:Z

    .line 62
    iput-boolean v3, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->i0:Z

    .line 63
    iput-boolean v3, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->j0:Z

    .line 64
    iput-boolean v3, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->k0:Z

    .line 65
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->l0:I

    .line 66
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->m0:I

    .line 67
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->n0:I

    .line 68
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->o0:I

    .line 69
    iput v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->p0:I

    .line 70
    iput v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->q0:I

    .line 71
    iput v6, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->r0:F

    .line 72
    new-instance v1, Ls/e;

    invoke-direct {v1}, Ls/e;-><init>()V

    iput-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->v0:Ls/e;

    .line 73
    iput-boolean v3, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->w0:Z

    .line 74
    sget-object v1, Landroidx/constraintlayout/widget/i;->n1:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 75
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result p2

    const/4 v1, 0x0

    :goto_b0
    if-ge v1, p2, :cond_3aa

    .line 76
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v5

    .line 77
    sget-object v6, Landroidx/constraintlayout/widget/ConstraintLayout$b$a;->a:Landroid/util/SparseIntArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseIntArray;->get(I)I

    move-result v6

    const-string v7, "ConstraintLayout"

    const/4 v8, 0x2

    const/4 v9, -0x2

    packed-switch v6, :pswitch_data_3b2

    packed-switch v6, :pswitch_data_402

    packed-switch v6, :pswitch_data_41e

    goto/16 :goto_3a6

    .line 78
    :pswitch_cb
    iget-boolean v6, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->d:Z

    invoke-virtual {p1, v5, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    iput-boolean v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->d:Z

    goto/16 :goto_3a6

    .line 79
    :pswitch_d5
    iget v6, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->d0:I

    invoke-virtual {p1, v5, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->d0:I

    goto/16 :goto_3a6

    .line 80
    :pswitch_df
    invoke-static {p0, p1, v5, v2}, Landroidx/constraintlayout/widget/d;->p(Ljava/lang/Object;Landroid/content/res/TypedArray;II)V

    .line 81
    iput-boolean v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->F:Z

    goto/16 :goto_3a6

    .line 82
    :pswitch_e6
    invoke-static {p0, p1, v5, v3}, Landroidx/constraintlayout/widget/d;->p(Ljava/lang/Object;Landroid/content/res/TypedArray;II)V

    .line 83
    iput-boolean v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->E:Z

    goto/16 :goto_3a6

    .line 84
    :pswitch_ed
    iget v6, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->C:I

    invoke-virtual {p1, v5, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->C:I

    goto/16 :goto_3a6

    .line 85
    :pswitch_f7
    iget v6, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->D:I

    invoke-virtual {p1, v5, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->D:I

    goto/16 :goto_3a6

    .line 86
    :pswitch_101
    iget v6, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->o:I

    invoke-virtual {p1, v5, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    iput v6, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->o:I

    if-ne v6, v0, :cond_3a6

    .line 87
    invoke-virtual {p1, v5, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->o:I

    goto/16 :goto_3a6

    .line 88
    :pswitch_113
    iget v6, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->n:I

    invoke-virtual {p1, v5, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    iput v6, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->n:I

    if-ne v6, v0, :cond_3a6

    .line 89
    invoke-virtual {p1, v5, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->n:I

    goto/16 :goto_3a6

    .line 90
    :pswitch_125
    invoke-virtual {p1, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->c0:Ljava/lang/String;

    goto/16 :goto_3a6

    .line 91
    :pswitch_12d
    iget v6, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->Y:I

    invoke-virtual {p1, v5, v6}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v5

    iput v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->Y:I

    goto/16 :goto_3a6

    .line 92
    :pswitch_137
    iget v6, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->X:I

    invoke-virtual {p1, v5, v6}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v5

    iput v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->X:I

    goto/16 :goto_3a6

    .line 93
    :pswitch_141
    invoke-virtual {p1, v5, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->O:I

    goto/16 :goto_3a6

    .line 94
    :pswitch_149
    invoke-virtual {p1, v5, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->N:I

    goto/16 :goto_3a6

    .line 95
    :pswitch_151
    iget v6, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->M:F

    invoke-virtual {p1, v5, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v5

    iput v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->M:F

    goto/16 :goto_3a6

    .line 96
    :pswitch_15b
    iget v6, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->L:F

    invoke-virtual {p1, v5, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v5

    iput v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->L:F

    goto/16 :goto_3a6

    .line 97
    :pswitch_165
    invoke-virtual {p1, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Landroidx/constraintlayout/widget/d;->r(Landroidx/constraintlayout/widget/ConstraintLayout$b;Ljava/lang/String;)V

    goto/16 :goto_3a6

    .line 98
    :pswitch_16e
    iget v6, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->W:F

    invoke-virtual {p1, v5, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v5

    iput v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->W:F

    .line 99
    iput v8, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->Q:I

    goto/16 :goto_3a6

    .line 100
    :pswitch_17e
    :try_start_17e
    iget v6, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->U:I

    invoke-virtual {p1, v5, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    iput v6, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->U:I
    :try_end_186
    .catch Ljava/lang/Exception; {:try_start_17e .. :try_end_186} :catch_188

    goto/16 :goto_3a6

    :catch_188
    nop

    .line 101
    iget v6, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->U:I

    invoke-virtual {p1, v5, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    if-ne v5, v9, :cond_3a6

    .line 102
    iput v9, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->U:I

    goto/16 :goto_3a6

    .line 103
    :pswitch_195
    :try_start_195
    iget v6, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->S:I

    invoke-virtual {p1, v5, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    iput v6, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->S:I
    :try_end_19d
    .catch Ljava/lang/Exception; {:try_start_195 .. :try_end_19d} :catch_19f

    goto/16 :goto_3a6

    :catch_19f
    nop

    .line 104
    iget v6, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->S:I

    invoke-virtual {p1, v5, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    if-ne v5, v9, :cond_3a6

    .line 105
    iput v9, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->S:I

    goto/16 :goto_3a6

    .line 106
    :pswitch_1ac
    iget v6, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->V:F

    invoke-virtual {p1, v5, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v5

    iput v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->V:F

    .line 107
    iput v8, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->P:I

    goto/16 :goto_3a6

    .line 108
    :pswitch_1bc
    :try_start_1bc
    iget v6, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->T:I

    invoke-virtual {p1, v5, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    iput v6, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->T:I
    :try_end_1c4
    .catch Ljava/lang/Exception; {:try_start_1bc .. :try_end_1c4} :catch_1c6

    goto/16 :goto_3a6

    :catch_1c6
    nop

    .line 109
    iget v6, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->T:I

    invoke-virtual {p1, v5, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    if-ne v5, v9, :cond_3a6

    .line 110
    iput v9, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->T:I

    goto/16 :goto_3a6

    .line 111
    :pswitch_1d3
    :try_start_1d3
    iget v6, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->R:I

    invoke-virtual {p1, v5, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    iput v6, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->R:I
    :try_end_1db
    .catch Ljava/lang/Exception; {:try_start_1d3 .. :try_end_1db} :catch_1dd

    goto/16 :goto_3a6

    :catch_1dd
    nop

    .line 112
    iget v6, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->R:I

    invoke-virtual {p1, v5, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    if-ne v5, v9, :cond_3a6

    .line 113
    iput v9, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->R:I

    goto/16 :goto_3a6

    .line 114
    :pswitch_1ea
    invoke-virtual {p1, v5, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->Q:I

    if-ne v5, v2, :cond_3a6

    const-string v5, "layout_constraintHeight_default=\"wrap\" is deprecated.\nUse layout_height=\"WRAP_CONTENT\" and layout_constrainedHeight=\"true\" instead."

    .line 115
    invoke-static {v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3a6

    .line 116
    :pswitch_1f9
    invoke-virtual {p1, v5, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->P:I

    if-ne v5, v2, :cond_3a6

    const-string v5, "layout_constraintWidth_default=\"wrap\" is deprecated.\nUse layout_width=\"WRAP_CONTENT\" and layout_constrainedWidth=\"true\" instead."

    .line 117
    invoke-static {v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3a6

    .line 118
    :pswitch_208
    iget v6, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->H:F

    invoke-virtual {p1, v5, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v5

    iput v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->H:F

    goto/16 :goto_3a6

    .line 119
    :pswitch_212
    iget v6, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->G:F

    invoke-virtual {p1, v5, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v5

    iput v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->G:F

    goto/16 :goto_3a6

    .line 120
    :pswitch_21c
    iget-boolean v6, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->b0:Z

    invoke-virtual {p1, v5, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    iput-boolean v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->b0:Z

    goto/16 :goto_3a6

    .line 121
    :pswitch_226
    iget-boolean v6, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->a0:Z

    invoke-virtual {p1, v5, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    iput-boolean v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->a0:Z

    goto/16 :goto_3a6

    .line 122
    :pswitch_230
    iget v6, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->B:I

    invoke-virtual {p1, v5, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->B:I

    goto/16 :goto_3a6

    .line 123
    :pswitch_23a
    iget v6, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->A:I

    invoke-virtual {p1, v5, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->A:I

    goto/16 :goto_3a6

    .line 124
    :pswitch_244
    iget v6, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->z:I

    invoke-virtual {p1, v5, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->z:I

    goto/16 :goto_3a6

    .line 125
    :pswitch_24e
    iget v6, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->y:I

    invoke-virtual {p1, v5, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->y:I

    goto/16 :goto_3a6

    .line 126
    :pswitch_258
    iget v6, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->x:I

    invoke-virtual {p1, v5, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->x:I

    goto/16 :goto_3a6

    .line 127
    :pswitch_262
    iget v6, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->w:I

    invoke-virtual {p1, v5, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->w:I

    goto/16 :goto_3a6

    .line 128
    :pswitch_26c
    iget v6, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->v:I

    invoke-virtual {p1, v5, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    iput v6, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->v:I

    if-ne v6, v0, :cond_3a6

    .line 129
    invoke-virtual {p1, v5, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->v:I

    goto/16 :goto_3a6

    .line 130
    :pswitch_27e
    iget v6, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->u:I

    invoke-virtual {p1, v5, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    iput v6, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->u:I

    if-ne v6, v0, :cond_3a6

    .line 131
    invoke-virtual {p1, v5, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->u:I

    goto/16 :goto_3a6

    .line 132
    :pswitch_290
    iget v6, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->t:I

    invoke-virtual {p1, v5, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    iput v6, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->t:I

    if-ne v6, v0, :cond_3a6

    .line 133
    invoke-virtual {p1, v5, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->t:I

    goto/16 :goto_3a6

    .line 134
    :pswitch_2a2
    iget v6, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->s:I

    invoke-virtual {p1, v5, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    iput v6, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->s:I

    if-ne v6, v0, :cond_3a6

    .line 135
    invoke-virtual {p1, v5, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->s:I

    goto/16 :goto_3a6

    .line 136
    :pswitch_2b4
    iget v6, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->m:I

    invoke-virtual {p1, v5, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    iput v6, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->m:I

    if-ne v6, v0, :cond_3a6

    .line 137
    invoke-virtual {p1, v5, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->m:I

    goto/16 :goto_3a6

    .line 138
    :pswitch_2c6
    iget v6, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->l:I

    invoke-virtual {p1, v5, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    iput v6, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->l:I

    if-ne v6, v0, :cond_3a6

    .line 139
    invoke-virtual {p1, v5, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->l:I

    goto/16 :goto_3a6

    .line 140
    :pswitch_2d8
    iget v6, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->k:I

    invoke-virtual {p1, v5, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    iput v6, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->k:I

    if-ne v6, v0, :cond_3a6

    .line 141
    invoke-virtual {p1, v5, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->k:I

    goto/16 :goto_3a6

    .line 142
    :pswitch_2ea
    iget v6, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->j:I

    invoke-virtual {p1, v5, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    iput v6, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->j:I

    if-ne v6, v0, :cond_3a6

    .line 143
    invoke-virtual {p1, v5, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->j:I

    goto/16 :goto_3a6

    .line 144
    :pswitch_2fc
    iget v6, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->i:I

    invoke-virtual {p1, v5, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    iput v6, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->i:I

    if-ne v6, v0, :cond_3a6

    .line 145
    invoke-virtual {p1, v5, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->i:I

    goto/16 :goto_3a6

    .line 146
    :pswitch_30e
    iget v6, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->h:I

    invoke-virtual {p1, v5, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    iput v6, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->h:I

    if-ne v6, v0, :cond_3a6

    .line 147
    invoke-virtual {p1, v5, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->h:I

    goto/16 :goto_3a6

    .line 148
    :pswitch_320
    iget v6, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->g:I

    invoke-virtual {p1, v5, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    iput v6, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->g:I

    if-ne v6, v0, :cond_3a6

    .line 149
    invoke-virtual {p1, v5, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->g:I

    goto/16 :goto_3a6

    .line 150
    :pswitch_332
    iget v6, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->f:I

    invoke-virtual {p1, v5, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    iput v6, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->f:I

    if-ne v6, v0, :cond_3a6

    .line 151
    invoke-virtual {p1, v5, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->f:I

    goto :goto_3a6

    .line 152
    :pswitch_343
    iget v6, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->e:I

    invoke-virtual {p1, v5, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    iput v6, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->e:I

    if-ne v6, v0, :cond_3a6

    .line 153
    invoke-virtual {p1, v5, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->e:I

    goto :goto_3a6

    .line 154
    :pswitch_354
    iget v6, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->c:F

    invoke-virtual {p1, v5, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v5

    iput v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->c:F

    goto :goto_3a6

    .line 155
    :pswitch_35d
    iget v6, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->b:I

    invoke-virtual {p1, v5, v6}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v5

    iput v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->b:I

    goto :goto_3a6

    .line 156
    :pswitch_366
    iget v6, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->a:I

    invoke-virtual {p1, v5, v6}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v5

    iput v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->a:I

    goto :goto_3a6

    .line 157
    :pswitch_36f
    iget v6, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->r:F

    invoke-virtual {p1, v5, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v5

    const/high16 v6, 0x43b40000    # 360.0f

    rem-float/2addr v5, v6

    iput v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->r:F

    cmpg-float v7, v5, v4

    if-gez v7, :cond_3a6

    sub-float v5, v6, v5

    rem-float/2addr v5, v6

    .line 158
    iput v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->r:F

    goto :goto_3a6

    .line 159
    :pswitch_384
    iget v6, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->q:I

    invoke-virtual {p1, v5, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->q:I

    goto :goto_3a6

    .line 160
    :pswitch_38d
    iget v6, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->p:I

    invoke-virtual {p1, v5, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    iput v6, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->p:I

    if-ne v6, v0, :cond_3a6

    .line 161
    invoke-virtual {p1, v5, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->p:I

    goto :goto_3a6

    .line 162
    :pswitch_39e
    iget v6, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->Z:I

    invoke-virtual {p1, v5, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->Z:I

    :cond_3a6
    :goto_3a6
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_b0

    .line 163
    :cond_3aa
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 164
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout$b;->a()V

    return-void

    nop

    :pswitch_data_3b2
    .packed-switch 0x1
        :pswitch_39e
        :pswitch_38d
        :pswitch_384
        :pswitch_36f
        :pswitch_366
        :pswitch_35d
        :pswitch_354
        :pswitch_343
        :pswitch_332
        :pswitch_320
        :pswitch_30e
        :pswitch_2fc
        :pswitch_2ea
        :pswitch_2d8
        :pswitch_2c6
        :pswitch_2b4
        :pswitch_2a2
        :pswitch_290
        :pswitch_27e
        :pswitch_26c
        :pswitch_262
        :pswitch_258
        :pswitch_24e
        :pswitch_244
        :pswitch_23a
        :pswitch_230
        :pswitch_226
        :pswitch_21c
        :pswitch_212
        :pswitch_208
        :pswitch_1f9
        :pswitch_1ea
        :pswitch_1d3
        :pswitch_1bc
        :pswitch_1ac
        :pswitch_195
        :pswitch_17e
        :pswitch_16e
    .end packed-switch

    :pswitch_data_402
    .packed-switch 0x2c
        :pswitch_165
        :pswitch_15b
        :pswitch_151
        :pswitch_149
        :pswitch_141
        :pswitch_137
        :pswitch_12d
        :pswitch_125
        :pswitch_113
        :pswitch_101
        :pswitch_f7
        :pswitch_ed
    .end packed-switch

    :pswitch_data_41e
    .packed-switch 0x40
        :pswitch_e6
        :pswitch_df
        :pswitch_d5
        :pswitch_cb
    .end packed-switch
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .registers 9

    .line 238
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 p1, -0x1

    .line 239
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->a:I

    .line 240
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->b:I

    const/high16 v0, -0x40800000    # -1.0f

    .line 241
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->c:F

    const/4 v1, 0x1

    .line 242
    iput-boolean v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->d:Z

    .line 243
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->e:I

    .line 244
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->f:I

    .line 245
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->g:I

    .line 246
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->h:I

    .line 247
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->i:I

    .line 248
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->j:I

    .line 249
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->k:I

    .line 250
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->l:I

    .line 251
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->m:I

    .line 252
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->n:I

    .line 253
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->o:I

    .line 254
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->p:I

    const/4 v2, 0x0

    .line 255
    iput v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->q:I

    const/4 v3, 0x0

    .line 256
    iput v3, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->r:F

    .line 257
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->s:I

    .line 258
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->t:I

    .line 259
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->u:I

    .line 260
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->v:I

    const/high16 v4, -0x80000000

    .line 261
    iput v4, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->w:I

    .line 262
    iput v4, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->x:I

    .line 263
    iput v4, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->y:I

    .line 264
    iput v4, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->z:I

    .line 265
    iput v4, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->A:I

    .line 266
    iput v4, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->B:I

    .line 267
    iput v4, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->C:I

    .line 268
    iput v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->D:I

    .line 269
    iput-boolean v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->E:Z

    .line 270
    iput-boolean v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->F:Z

    const/high16 v5, 0x3f000000    # 0.5f

    .line 271
    iput v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->G:F

    .line 272
    iput v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->H:F

    const/4 v6, 0x0

    .line 273
    iput-object v6, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->I:Ljava/lang/String;

    .line 274
    iput v3, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->J:F

    .line 275
    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->K:I

    .line 276
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->L:F

    .line 277
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->M:F

    .line 278
    iput v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->N:I

    .line 279
    iput v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->O:I

    .line 280
    iput v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->P:I

    .line 281
    iput v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->Q:I

    .line 282
    iput v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->R:I

    .line 283
    iput v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->S:I

    .line 284
    iput v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->T:I

    .line 285
    iput v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->U:I

    const/high16 v0, 0x3f800000    # 1.0f

    .line 286
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->V:F

    .line 287
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->W:F

    .line 288
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->X:I

    .line 289
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->Y:I

    .line 290
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->Z:I

    .line 291
    iput-boolean v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->a0:Z

    .line 292
    iput-boolean v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->b0:Z

    .line 293
    iput-object v6, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->c0:Ljava/lang/String;

    .line 294
    iput v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->d0:I

    .line 295
    iput-boolean v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->e0:Z

    .line 296
    iput-boolean v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->f0:Z

    .line 297
    iput-boolean v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->g0:Z

    .line 298
    iput-boolean v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->h0:Z

    .line 299
    iput-boolean v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->i0:Z

    .line 300
    iput-boolean v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->j0:Z

    .line 301
    iput-boolean v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->k0:Z

    .line 302
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->l0:I

    .line 303
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->m0:I

    .line 304
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->n0:I

    .line 305
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->o0:I

    .line 306
    iput v4, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->p0:I

    .line 307
    iput v4, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->q0:I

    .line 308
    iput v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->r0:F

    .line 309
    new-instance p1, Ls/e;

    invoke-direct {p1}, Ls/e;-><init>()V

    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->v0:Ls/e;

    .line 310
    iput-boolean v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->w0:Z

    return-void
.end method


# virtual methods
.method public a()V
    .registers 7

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->h0:Z

    const/4 v1, 0x1

    .line 2
    iput-boolean v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->e0:Z

    .line 3
    iput-boolean v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->f0:Z

    .line 4
    iget v2, p0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    const/4 v3, -0x2

    if-ne v2, v3, :cond_19

    iget-boolean v4, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->a0:Z

    if-eqz v4, :cond_19

    .line 5
    iput-boolean v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->e0:Z

    .line 6
    iget v4, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->P:I

    if-nez v4, :cond_19

    .line 7
    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->P:I

    .line 8
    :cond_19
    iget v4, p0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    if-ne v4, v3, :cond_29

    iget-boolean v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->b0:Z

    if-eqz v5, :cond_29

    .line 9
    iput-boolean v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->f0:Z

    .line 10
    iget v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->Q:I

    if-nez v5, :cond_29

    .line 11
    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->Q:I

    :cond_29
    const/4 v5, -0x1

    if-eqz v2, :cond_2e

    if-ne v2, v5, :cond_3a

    .line 12
    :cond_2e
    iput-boolean v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->e0:Z

    if-nez v2, :cond_3a

    .line 13
    iget v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->P:I

    if-ne v2, v1, :cond_3a

    .line 14
    iput v3, p0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 15
    iput-boolean v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->a0:Z

    :cond_3a
    if-eqz v4, :cond_3e

    if-ne v4, v5, :cond_4a

    .line 16
    :cond_3e
    iput-boolean v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->f0:Z

    if-nez v4, :cond_4a

    .line 17
    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->Q:I

    if-ne v0, v1, :cond_4a

    .line 18
    iput v3, p0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 19
    iput-boolean v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->b0:Z

    .line 20
    :cond_4a
    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->c:F

    const/high16 v2, -0x40800000    # -1.0f

    cmpl-float v0, v0, v2

    if-nez v0, :cond_5a

    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->a:I

    if-ne v0, v5, :cond_5a

    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->b:I

    if-eq v0, v5, :cond_76

    .line 21
    :cond_5a
    iput-boolean v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->h0:Z

    .line 22
    iput-boolean v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->e0:Z

    .line 23
    iput-boolean v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->f0:Z

    .line 24
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->v0:Ls/e;

    instance-of v0, v0, Ls/g;

    if-nez v0, :cond_6d

    .line 25
    new-instance v0, Ls/g;

    invoke-direct {v0}, Ls/g;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->v0:Ls/e;

    .line 26
    :cond_6d
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->v0:Ls/e;

    check-cast v0, Ls/g;

    iget v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->Z:I

    invoke-virtual {v0, v1}, Ls/g;->x1(I)V

    :cond_76
    return-void
.end method

.method public resolveLayoutDirection(I)V
    .registers 12
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    .line 1
    iget v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 2
    iget v1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 3
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/16 v5, 0x11

    if-lt v2, v5, :cond_17

    .line 4
    invoke-super {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;->resolveLayoutDirection(I)V

    .line 5
    invoke-virtual {p0}, Landroid/view/ViewGroup$MarginLayoutParams;->getLayoutDirection()I

    move-result p1

    if-ne v4, p1, :cond_17

    const/4 p1, 0x1

    goto :goto_18

    :cond_17
    const/4 p1, 0x0

    :goto_18
    const/4 v2, -0x1

    .line 6
    iput v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->n0:I

    .line 7
    iput v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->o0:I

    .line 8
    iput v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->l0:I

    .line 9
    iput v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->m0:I

    .line 10
    iput v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->p0:I

    .line 11
    iput v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->q0:I

    .line 12
    iget v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->w:I

    iput v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->p0:I

    .line 13
    iget v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->y:I

    iput v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->q0:I

    .line 14
    iget v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->G:F

    iput v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->r0:F

    .line 15
    iget v6, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->a:I

    iput v6, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->s0:I

    .line 16
    iget v7, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->b:I

    iput v7, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->t0:I

    .line 17
    iget v8, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->c:F

    iput v8, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->u0:F

    const/high16 v9, -0x80000000

    if-eqz p1, :cond_9e

    .line 18
    iget p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->s:I

    if-eq p1, v2, :cond_49

    .line 19
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->n0:I

    :goto_47
    const/4 v3, 0x1

    goto :goto_50

    .line 20
    :cond_49
    iget p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->t:I

    if-eq p1, v2, :cond_50

    .line 21
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->o0:I

    goto :goto_47

    .line 22
    :cond_50
    :goto_50
    iget p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->u:I

    if-eq p1, v2, :cond_57

    .line 23
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->m0:I

    const/4 v3, 0x1

    .line 24
    :cond_57
    iget p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->v:I

    if-eq p1, v2, :cond_5e

    .line 25
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->l0:I

    const/4 v3, 0x1

    .line 26
    :cond_5e
    iget p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->A:I

    if-eq p1, v9, :cond_64

    .line 27
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->q0:I

    .line 28
    :cond_64
    iget p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->B:I

    if-eq p1, v9, :cond_6a

    .line 29
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->p0:I

    :cond_6a
    const/high16 p1, 0x3f800000    # 1.0f

    if-eqz v3, :cond_72

    sub-float v3, p1, v5

    .line 30
    iput v3, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->r0:F

    .line 31
    :cond_72
    iget-boolean v3, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->h0:Z

    if-eqz v3, :cond_c2

    iget v3, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->Z:I

    if-ne v3, v4, :cond_c2

    iget-boolean v3, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->d:Z

    if-eqz v3, :cond_c2

    const/high16 v3, -0x40800000    # -1.0f

    cmpl-float v4, v8, v3

    if-eqz v4, :cond_8c

    sub-float/2addr p1, v8

    .line 32
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->u0:F

    .line 33
    iput v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->s0:I

    .line 34
    iput v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->t0:I

    goto :goto_c2

    :cond_8c
    if-eq v6, v2, :cond_95

    .line 35
    iput v6, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->t0:I

    .line 36
    iput v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->s0:I

    .line 37
    iput v3, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->u0:F

    goto :goto_c2

    :cond_95
    if-eq v7, v2, :cond_c2

    .line 38
    iput v7, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->s0:I

    .line 39
    iput v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->t0:I

    .line 40
    iput v3, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->u0:F

    goto :goto_c2

    .line 41
    :cond_9e
    iget p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->s:I

    if-eq p1, v2, :cond_a4

    .line 42
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->m0:I

    .line 43
    :cond_a4
    iget p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->t:I

    if-eq p1, v2, :cond_aa

    .line 44
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->l0:I

    .line 45
    :cond_aa
    iget p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->u:I

    if-eq p1, v2, :cond_b0

    .line 46
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->n0:I

    .line 47
    :cond_b0
    iget p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->v:I

    if-eq p1, v2, :cond_b6

    .line 48
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->o0:I

    .line 49
    :cond_b6
    iget p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->A:I

    if-eq p1, v9, :cond_bc

    .line 50
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->p0:I

    .line 51
    :cond_bc
    iget p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->B:I

    if-eq p1, v9, :cond_c2

    .line 52
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->q0:I

    .line 53
    :cond_c2
    :goto_c2
    iget p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->u:I

    if-ne p1, v2, :cond_10c

    iget p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->v:I

    if-ne p1, v2, :cond_10c

    iget p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->t:I

    if-ne p1, v2, :cond_10c

    iget p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->s:I

    if-ne p1, v2, :cond_10c

    .line 54
    iget p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->g:I

    if-eq p1, v2, :cond_e1

    .line 55
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->n0:I

    .line 56
    iget p1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    if-gtz p1, :cond_ef

    if-lez v1, :cond_ef

    .line 57
    iput v1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    goto :goto_ef

    .line 58
    :cond_e1
    iget p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->h:I

    if-eq p1, v2, :cond_ef

    .line 59
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->o0:I

    .line 60
    iget p1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    if-gtz p1, :cond_ef

    if-lez v1, :cond_ef

    .line 61
    iput v1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 62
    :cond_ef
    :goto_ef
    iget p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->e:I

    if-eq p1, v2, :cond_fe

    .line 63
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->l0:I

    .line 64
    iget p1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    if-gtz p1, :cond_10c

    if-lez v0, :cond_10c

    .line 65
    iput v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto :goto_10c

    .line 66
    :cond_fe
    iget p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->f:I

    if-eq p1, v2, :cond_10c

    .line 67
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->m0:I

    .line 68
    iget p1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    if-gtz p1, :cond_10c

    if-lez v0, :cond_10c

    .line 69
    iput v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    :cond_10c
    :goto_10c
    return-void
.end method

###### Class androidx.constraintlayout.widget.ConstraintLayout.b.a (androidx.constraintlayout.widget.ConstraintLayout$b$a)
.class Landroidx/constraintlayout/widget/ConstraintLayout$b$a;
.super Ljava/lang/Object;
.source "ConstraintLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/widget/ConstraintLayout$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field public static final a:Landroid/util/SparseIntArray;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 1
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Landroidx/constraintlayout/widget/ConstraintLayout$b$a;->a:Landroid/util/SparseIntArray;

    .line 2
    sget v1, Landroidx/constraintlayout/widget/i;->s2:I

    const/16 v2, 0x40

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 3
    sget v1, Landroidx/constraintlayout/widget/i;->V1:I

    const/16 v2, 0x41

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 4
    sget v1, Landroidx/constraintlayout/widget/i;->e2:I

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 5
    sget v1, Landroidx/constraintlayout/widget/i;->f2:I

    const/16 v2, 0x9

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 6
    sget v1, Landroidx/constraintlayout/widget/i;->h2:I

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 7
    sget v1, Landroidx/constraintlayout/widget/i;->i2:I

    const/16 v2, 0xb

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 8
    sget v1, Landroidx/constraintlayout/widget/i;->o2:I

    const/16 v2, 0xc

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 9
    sget v1, Landroidx/constraintlayout/widget/i;->n2:I

    const/16 v2, 0xd

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 10
    sget v1, Landroidx/constraintlayout/widget/i;->L1:I

    const/16 v2, 0xe

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 11
    sget v1, Landroidx/constraintlayout/widget/i;->K1:I

    const/16 v2, 0xf

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 12
    sget v1, Landroidx/constraintlayout/widget/i;->G1:I

    const/16 v2, 0x10

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 13
    sget v1, Landroidx/constraintlayout/widget/i;->I1:I

    const/16 v2, 0x34

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 14
    sget v1, Landroidx/constraintlayout/widget/i;->H1:I

    const/16 v2, 0x35

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 15
    sget v1, Landroidx/constraintlayout/widget/i;->M1:I

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 16
    sget v1, Landroidx/constraintlayout/widget/i;->O1:I

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 17
    sget v1, Landroidx/constraintlayout/widget/i;->N1:I

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 18
    sget v1, Landroidx/constraintlayout/widget/i;->x2:I

    const/16 v2, 0x31

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 19
    sget v1, Landroidx/constraintlayout/widget/i;->y2:I

    const/16 v2, 0x32

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 20
    sget v1, Landroidx/constraintlayout/widget/i;->S1:I

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 21
    sget v1, Landroidx/constraintlayout/widget/i;->T1:I

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 22
    sget v1, Landroidx/constraintlayout/widget/i;->U1:I

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 23
    sget v1, Landroidx/constraintlayout/widget/i;->B1:I

    const/16 v2, 0x43

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 24
    sget v1, Landroidx/constraintlayout/widget/i;->o1:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 25
    sget v1, Landroidx/constraintlayout/widget/i;->j2:I

    const/16 v2, 0x11

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 26
    sget v1, Landroidx/constraintlayout/widget/i;->k2:I

    const/16 v2, 0x12

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 27
    sget v1, Landroidx/constraintlayout/widget/i;->R1:I

    const/16 v2, 0x13

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 28
    sget v1, Landroidx/constraintlayout/widget/i;->Q1:I

    const/16 v2, 0x14

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 29
    sget v1, Landroidx/constraintlayout/widget/i;->C2:I

    const/16 v2, 0x15

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 30
    sget v1, Landroidx/constraintlayout/widget/i;->F2:I

    const/16 v2, 0x16

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 31
    sget v1, Landroidx/constraintlayout/widget/i;->D2:I

    const/16 v2, 0x17

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 32
    sget v1, Landroidx/constraintlayout/widget/i;->A2:I

    const/16 v2, 0x18

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 33
    sget v1, Landroidx/constraintlayout/widget/i;->E2:I

    const/16 v2, 0x19

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 34
    sget v1, Landroidx/constraintlayout/widget/i;->B2:I

    const/16 v2, 0x1a

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 35
    sget v1, Landroidx/constraintlayout/widget/i;->z2:I

    const/16 v2, 0x37

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 36
    sget v1, Landroidx/constraintlayout/widget/i;->G2:I

    const/16 v2, 0x36

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 37
    sget v1, Landroidx/constraintlayout/widget/i;->a2:I

    const/16 v2, 0x1d

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 38
    sget v1, Landroidx/constraintlayout/widget/i;->p2:I

    const/16 v2, 0x1e

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 39
    sget v1, Landroidx/constraintlayout/widget/i;->P1:I

    const/16 v2, 0x2c

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 40
    sget v1, Landroidx/constraintlayout/widget/i;->c2:I

    const/16 v2, 0x2d

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 41
    sget v1, Landroidx/constraintlayout/widget/i;->r2:I

    const/16 v2, 0x2e

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 42
    sget v1, Landroidx/constraintlayout/widget/i;->b2:I

    const/16 v2, 0x2f

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 43
    sget v1, Landroidx/constraintlayout/widget/i;->q2:I

    const/16 v2, 0x30

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 44
    sget v1, Landroidx/constraintlayout/widget/i;->E1:I

    const/16 v2, 0x1b

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 45
    sget v1, Landroidx/constraintlayout/widget/i;->D1:I

    const/16 v2, 0x1c

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 46
    sget v1, Landroidx/constraintlayout/widget/i;->t2:I

    const/16 v2, 0x1f

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 47
    sget v1, Landroidx/constraintlayout/widget/i;->W1:I

    const/16 v2, 0x20

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 48
    sget v1, Landroidx/constraintlayout/widget/i;->v2:I

    const/16 v2, 0x21

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 49
    sget v1, Landroidx/constraintlayout/widget/i;->u2:I

    const/16 v2, 0x22

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 50
    sget v1, Landroidx/constraintlayout/widget/i;->w2:I

    const/16 v2, 0x23

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 51
    sget v1, Landroidx/constraintlayout/widget/i;->Y1:I

    const/16 v2, 0x24

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 52
    sget v1, Landroidx/constraintlayout/widget/i;->X1:I

    const/16 v2, 0x25

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 53
    sget v1, Landroidx/constraintlayout/widget/i;->Z1:I

    const/16 v2, 0x26

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 54
    sget v1, Landroidx/constraintlayout/widget/i;->d2:I

    const/16 v2, 0x27

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 55
    sget v1, Landroidx/constraintlayout/widget/i;->m2:I

    const/16 v2, 0x28

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 56
    sget v1, Landroidx/constraintlayout/widget/i;->g2:I

    const/16 v2, 0x29

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 57
    sget v1, Landroidx/constraintlayout/widget/i;->J1:I

    const/16 v2, 0x2a

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 58
    sget v1, Landroidx/constraintlayout/widget/i;->F1:I

    const/16 v2, 0x2b

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 59
    sget v1, Landroidx/constraintlayout/widget/i;->l2:I

    const/16 v2, 0x33

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 60
    sget v1, Landroidx/constraintlayout/widget/i;->I2:I

    const/16 v2, 0x42

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    return-void
.end method

###### Class androidx.constraintlayout.widget.ConstraintLayout.c (androidx.constraintlayout.widget.ConstraintLayout$c)
.class Landroidx/constraintlayout/widget/ConstraintLayout$c;
.super Ljava/lang/Object;
.source "ConstraintLayout.java"

# interfaces
.implements Lt/b$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/widget/ConstraintLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation


# instance fields
.field a:Landroidx/constraintlayout/widget/ConstraintLayout;

.field b:I

.field c:I

.field d:I

.field e:I

.field f:I

.field g:I

.field final synthetic h:Landroidx/constraintlayout/widget/ConstraintLayout;


# direct methods
.method public constructor <init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/constraintlayout/widget/ConstraintLayout;)V
    .registers 3

    .line 1
    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$c;->h:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Landroidx/constraintlayout/widget/ConstraintLayout$c;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-void
.end method

.method private d(III)Z
    .registers 7

    const/4 v0, 0x1

    if-ne p1, p2, :cond_4

    return v0

    .line 1
    :cond_4
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 2
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 3
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p1

    .line 4
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    const/high16 v2, 0x40000000    # 2.0f

    if-ne p1, v2, :cond_20

    const/high16 p1, -0x80000000

    if-eq v1, p1, :cond_1d

    if-nez v1, :cond_20

    :cond_1d
    if-ne p3, p2, :cond_20

    return v0

    :cond_20
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public final a()V
    .registers 6

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$c;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_8
    if-ge v2, v0, :cond_1e

    .line 2
    iget-object v3, p0, Landroidx/constraintlayout/widget/ConstraintLayout$c;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 3
    instance-of v4, v3, Landroidx/constraintlayout/widget/g;

    if-eqz v4, :cond_1b

    .line 4
    check-cast v3, Landroidx/constraintlayout/widget/g;

    iget-object v4, p0, Landroidx/constraintlayout/widget/ConstraintLayout$c;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v3, v4}, Landroidx/constraintlayout/widget/g;->a(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    :cond_1b
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 5
    :cond_1e
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$c;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-static {v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->c(Landroidx/constraintlayout/widget/ConstraintLayout;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_40

    :goto_2a
    if-ge v1, v0, :cond_40

    .line 6
    iget-object v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout$c;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-static {v2}, Landroidx/constraintlayout/widget/ConstraintLayout;->c(Landroidx/constraintlayout/widget/ConstraintLayout;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/widget/b;

    .line 7
    iget-object v3, p0, Landroidx/constraintlayout/widget/ConstraintLayout$c;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v2, v3}, Landroidx/constraintlayout/widget/b;->p(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2a

    :cond_40
    return-void
.end method

.method public final b(Ls/e;Lt/b$a;)V
    .registers 20
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongCall"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    if-nez v1, :cond_9

    return-void

    .line 1
    :cond_9
    invoke-virtual/range {p1 .. p1}, Ls/e;->T()I

    move-result v3

    const/16 v4, 0x8

    const/4 v5, 0x0

    if-ne v3, v4, :cond_1f

    invoke-virtual/range {p1 .. p1}, Ls/e;->h0()Z

    move-result v3

    if-nez v3, :cond_1f

    .line 2
    iput v5, v2, Lt/b$a;->e:I

    .line 3
    iput v5, v2, Lt/b$a;->f:I

    .line 4
    iput v5, v2, Lt/b$a;->g:I

    return-void

    .line 5
    :cond_1f
    invoke-virtual/range {p1 .. p1}, Ls/e;->I()Ls/e;

    move-result-object v3

    if-nez v3, :cond_26

    return-void

    .line 6
    :cond_26
    iget-object v3, v2, Lt/b$a;->a:Ls/e$b;

    .line 7
    iget-object v4, v2, Lt/b$a;->b:Ls/e$b;

    .line 8
    iget v6, v2, Lt/b$a;->c:I

    .line 9
    iget v7, v2, Lt/b$a;->d:I

    .line 10
    iget v8, v0, Landroidx/constraintlayout/widget/ConstraintLayout$c;->b:I

    iget v9, v0, Landroidx/constraintlayout/widget/ConstraintLayout$c;->c:I

    add-int/2addr v8, v9

    .line 11
    iget v9, v0, Landroidx/constraintlayout/widget/ConstraintLayout$c;->d:I

    .line 12
    invoke-virtual/range {p1 .. p1}, Ls/e;->q()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/View;

    .line 13
    sget-object v11, Landroidx/constraintlayout/widget/ConstraintLayout$a;->a:[I

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v12

    aget v12, v11, v12

    const/4 v13, 0x4

    const/4 v14, 0x3

    const/4 v15, 0x2

    const/4 v5, 0x1

    if-eq v12, v5, :cond_b3

    if-eq v12, v15, :cond_ab

    if-eq v12, v14, :cond_9e

    if-eq v12, v13, :cond_52

    const/4 v6, 0x0

    goto/16 :goto_b9

    .line 14
    :cond_52
    iget v6, v0, Landroidx/constraintlayout/widget/ConstraintLayout$c;->f:I

    const/4 v12, -0x2

    invoke-static {v6, v9, v12}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v6

    .line 15
    iget v9, v1, Ls/e;->w:I

    if-ne v9, v5, :cond_5f

    const/4 v9, 0x1

    goto :goto_60

    :cond_5f
    const/4 v9, 0x0

    .line 16
    :goto_60
    iget v12, v2, Lt/b$a;->j:I

    sget v13, Lt/b$a;->l:I

    if-eq v12, v13, :cond_6a

    sget v13, Lt/b$a;->m:I

    if-ne v12, v13, :cond_b9

    .line 17
    :cond_6a
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    invoke-virtual/range {p1 .. p1}, Ls/e;->v()I

    move-result v13

    if-ne v12, v13, :cond_76

    const/4 v12, 0x1

    goto :goto_77

    :cond_76
    const/4 v12, 0x0

    .line 18
    :goto_77
    iget v13, v2, Lt/b$a;->j:I

    sget v14, Lt/b$a;->m:I

    if-eq v13, v14, :cond_90

    if-eqz v9, :cond_90

    if-eqz v9, :cond_83

    if-nez v12, :cond_90

    :cond_83
    instance-of v9, v10, Landroidx/constraintlayout/widget/g;

    if-nez v9, :cond_90

    .line 19
    invoke-virtual/range {p1 .. p1}, Ls/e;->l0()Z

    move-result v9

    if-eqz v9, :cond_8e

    goto :goto_90

    :cond_8e
    const/4 v9, 0x0

    goto :goto_91

    :cond_90
    :goto_90
    const/4 v9, 0x1

    :goto_91
    if-eqz v9, :cond_b9

    .line 20
    invoke-virtual/range {p1 .. p1}, Ls/e;->U()I

    move-result v6

    const/high16 v9, 0x40000000    # 2.0f

    invoke-static {v6, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    goto :goto_b9

    .line 21
    :cond_9e
    iget v6, v0, Landroidx/constraintlayout/widget/ConstraintLayout$c;->f:I

    .line 22
    invoke-virtual/range {p1 .. p1}, Ls/e;->z()I

    move-result v12

    add-int/2addr v9, v12

    const/4 v12, -0x1

    .line 23
    invoke-static {v6, v9, v12}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v6

    goto :goto_b9

    .line 24
    :cond_ab
    iget v6, v0, Landroidx/constraintlayout/widget/ConstraintLayout$c;->f:I

    const/4 v12, -0x2

    invoke-static {v6, v9, v12}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v6

    goto :goto_b9

    :cond_b3
    const/high16 v9, 0x40000000    # 2.0f

    .line 25
    invoke-static {v6, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 26
    :cond_b9
    :goto_b9
    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    aget v9, v11, v9

    if-eq v9, v5, :cond_12d

    if-eq v9, v15, :cond_125

    const/4 v7, 0x3

    if-eq v9, v7, :cond_118

    const/4 v7, 0x4

    if-eq v9, v7, :cond_cc

    const/4 v7, 0x0

    goto/16 :goto_133

    .line 27
    :cond_cc
    iget v7, v0, Landroidx/constraintlayout/widget/ConstraintLayout$c;->g:I

    const/4 v9, -0x2

    invoke-static {v7, v8, v9}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v7

    .line 28
    iget v8, v1, Ls/e;->x:I

    if-ne v8, v5, :cond_d9

    const/4 v8, 0x1

    goto :goto_da

    :cond_d9
    const/4 v8, 0x0

    .line 29
    :goto_da
    iget v9, v2, Lt/b$a;->j:I

    sget v11, Lt/b$a;->l:I

    if-eq v9, v11, :cond_e4

    sget v11, Lt/b$a;->m:I

    if-ne v9, v11, :cond_133

    .line 30
    :cond_e4
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    invoke-virtual/range {p1 .. p1}, Ls/e;->U()I

    move-result v11

    if-ne v9, v11, :cond_f0

    const/4 v9, 0x1

    goto :goto_f1

    :cond_f0
    const/4 v9, 0x0

    .line 31
    :goto_f1
    iget v11, v2, Lt/b$a;->j:I

    sget v12, Lt/b$a;->m:I

    if-eq v11, v12, :cond_10a

    if-eqz v8, :cond_10a

    if-eqz v8, :cond_fd

    if-nez v9, :cond_10a

    :cond_fd
    instance-of v8, v10, Landroidx/constraintlayout/widget/g;

    if-nez v8, :cond_10a

    .line 32
    invoke-virtual/range {p1 .. p1}, Ls/e;->m0()Z

    move-result v8

    if-eqz v8, :cond_108

    goto :goto_10a

    :cond_108
    const/4 v8, 0x0

    goto :goto_10b

    :cond_10a
    :goto_10a
    const/4 v8, 0x1

    :goto_10b
    if-eqz v8, :cond_133

    .line 33
    invoke-virtual/range {p1 .. p1}, Ls/e;->v()I

    move-result v7

    const/high16 v8, 0x40000000    # 2.0f

    invoke-static {v7, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    goto :goto_133

    .line 34
    :cond_118
    iget v7, v0, Landroidx/constraintlayout/widget/ConstraintLayout$c;->g:I

    .line 35
    invoke-virtual/range {p1 .. p1}, Ls/e;->S()I

    move-result v9

    add-int/2addr v8, v9

    const/4 v9, -0x1

    .line 36
    invoke-static {v7, v8, v9}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v7

    goto :goto_133

    .line 37
    :cond_125
    iget v7, v0, Landroidx/constraintlayout/widget/ConstraintLayout$c;->g:I

    const/4 v9, -0x2

    invoke-static {v7, v8, v9}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v7

    goto :goto_133

    :cond_12d
    const/high16 v8, 0x40000000    # 2.0f

    .line 38
    invoke-static {v7, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .line 39
    :cond_133
    :goto_133
    invoke-virtual/range {p1 .. p1}, Ls/e;->I()Ls/e;

    move-result-object v8

    check-cast v8, Ls/f;

    if-eqz v8, :cond_1b5

    .line 40
    iget-object v9, v0, Landroidx/constraintlayout/widget/ConstraintLayout$c;->h:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-static {v9}, Landroidx/constraintlayout/widget/ConstraintLayout;->b(Landroidx/constraintlayout/widget/ConstraintLayout;)I

    move-result v9

    const/16 v11, 0x100

    invoke-static {v9, v11}, Ls/j;->b(II)Z

    move-result v9

    if-eqz v9, :cond_1b5

    .line 41
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    invoke-virtual/range {p1 .. p1}, Ls/e;->U()I

    move-result v11

    if-ne v9, v11, :cond_1b5

    .line 42
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    invoke-virtual {v8}, Ls/e;->U()I

    move-result v11

    if-ge v9, v11, :cond_1b5

    .line 43
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    invoke-virtual/range {p1 .. p1}, Ls/e;->v()I

    move-result v11

    if-ne v9, v11, :cond_1b5

    .line 44
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    invoke-virtual {v8}, Ls/e;->v()I

    move-result v8

    if-ge v9, v8, :cond_1b5

    .line 45
    invoke-virtual {v10}, Landroid/view/View;->getBaseline()I

    move-result v8

    invoke-virtual/range {p1 .. p1}, Ls/e;->n()I

    move-result v9

    if-ne v8, v9, :cond_1b5

    .line 46
    invoke-virtual/range {p1 .. p1}, Ls/e;->k0()Z

    move-result v8

    if-nez v8, :cond_1b5

    .line 47
    invoke-virtual/range {p1 .. p1}, Ls/e;->A()I

    move-result v8

    invoke-virtual/range {p1 .. p1}, Ls/e;->U()I

    move-result v9

    invoke-direct {v0, v8, v6, v9}, Landroidx/constraintlayout/widget/ConstraintLayout$c;->d(III)Z

    move-result v8

    if-eqz v8, :cond_19f

    .line 48
    invoke-virtual/range {p1 .. p1}, Ls/e;->B()I

    move-result v8

    invoke-virtual/range {p1 .. p1}, Ls/e;->v()I

    move-result v9

    invoke-direct {v0, v8, v7, v9}, Landroidx/constraintlayout/widget/ConstraintLayout$c;->d(III)Z

    move-result v8

    if-eqz v8, :cond_19f

    const/4 v8, 0x1

    goto :goto_1a0

    :cond_19f
    const/4 v8, 0x0

    :goto_1a0
    if-eqz v8, :cond_1b5

    .line 49
    invoke-virtual/range {p1 .. p1}, Ls/e;->U()I

    move-result v3

    iput v3, v2, Lt/b$a;->e:I

    .line 50
    invoke-virtual/range {p1 .. p1}, Ls/e;->v()I

    move-result v3

    iput v3, v2, Lt/b$a;->f:I

    .line 51
    invoke-virtual/range {p1 .. p1}, Ls/e;->n()I

    move-result v1

    iput v1, v2, Lt/b$a;->g:I

    return-void

    .line 52
    :cond_1b5
    sget-object v8, Ls/e$b;->q:Ls/e$b;

    if-ne v3, v8, :cond_1bb

    const/4 v9, 0x1

    goto :goto_1bc

    :cond_1bb
    const/4 v9, 0x0

    :goto_1bc
    if-ne v4, v8, :cond_1c0

    const/4 v8, 0x1

    goto :goto_1c1

    :cond_1c0
    const/4 v8, 0x0

    .line 53
    :goto_1c1
    sget-object v11, Ls/e$b;->r:Ls/e$b;

    if-eq v4, v11, :cond_1cc

    sget-object v12, Ls/e$b;->o:Ls/e$b;

    if-ne v4, v12, :cond_1ca

    goto :goto_1cc

    :cond_1ca
    const/4 v4, 0x0

    goto :goto_1cd

    :cond_1cc
    :goto_1cc
    const/4 v4, 0x1

    :goto_1cd
    if-eq v3, v11, :cond_1d6

    .line 54
    sget-object v11, Ls/e$b;->o:Ls/e$b;

    if-ne v3, v11, :cond_1d4

    goto :goto_1d6

    :cond_1d4
    const/4 v3, 0x0

    goto :goto_1d7

    :cond_1d6
    :goto_1d6
    const/4 v3, 0x1

    :goto_1d7
    const/4 v11, 0x0

    if-eqz v9, :cond_1e2

    .line 55
    iget v12, v1, Ls/e;->d0:F

    cmpl-float v12, v12, v11

    if-lez v12, :cond_1e2

    const/4 v12, 0x1

    goto :goto_1e3

    :cond_1e2
    const/4 v12, 0x0

    :goto_1e3
    if-eqz v8, :cond_1ed

    .line 56
    iget v13, v1, Ls/e;->d0:F

    cmpl-float v11, v13, v11

    if-lez v11, :cond_1ed

    const/4 v11, 0x1

    goto :goto_1ee

    :cond_1ed
    const/4 v11, 0x0

    :goto_1ee
    if-nez v10, :cond_1f1

    return-void

    .line 57
    :cond_1f1
    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Landroidx/constraintlayout/widget/ConstraintLayout$b;

    .line 58
    iget v14, v2, Lt/b$a;->j:I

    sget v15, Lt/b$a;->l:I

    if-eq v14, v15, :cond_214

    sget v15, Lt/b$a;->m:I

    if-eq v14, v15, :cond_214

    if-eqz v9, :cond_214

    iget v9, v1, Ls/e;->w:I

    if-nez v9, :cond_214

    if-eqz v8, :cond_214

    iget v8, v1, Ls/e;->x:I

    if-eqz v8, :cond_20e

    goto :goto_214

    :cond_20e
    const/4 v0, -0x1

    const/4 v5, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    goto/16 :goto_2b0

    .line 59
    :cond_214
    :goto_214
    instance-of v8, v10, Landroidx/constraintlayout/widget/k;

    if-eqz v8, :cond_226

    instance-of v8, v1, Ls/k;

    if-eqz v8, :cond_226

    .line 60
    move-object v8, v1

    check-cast v8, Ls/k;

    .line 61
    move-object v9, v10

    check-cast v9, Landroidx/constraintlayout/widget/k;

    invoke-virtual {v9, v8, v6, v7}, Landroidx/constraintlayout/widget/k;->t(Ls/k;II)V

    goto :goto_229

    .line 62
    :cond_226
    invoke-virtual {v10, v6, v7}, Landroid/view/View;->measure(II)V

    .line 63
    :goto_229
    invoke-virtual {v1, v6, v7}, Ls/e;->S0(II)V

    .line 64
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    .line 65
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    .line 66
    invoke-virtual {v10}, Landroid/view/View;->getBaseline()I

    move-result v14

    .line 67
    iget v15, v1, Ls/e;->z:I

    if-lez v15, :cond_241

    .line 68
    invoke-static {v15, v8}, Ljava/lang/Math;->max(II)I

    move-result v15

    goto :goto_242

    :cond_241
    move v15, v8

    .line 69
    :goto_242
    iget v5, v1, Ls/e;->A:I

    if-lez v5, :cond_24a

    .line 70
    invoke-static {v5, v15}, Ljava/lang/Math;->min(II)I

    move-result v15

    .line 71
    :cond_24a
    iget v5, v1, Ls/e;->C:I

    if-lez v5, :cond_255

    .line 72
    invoke-static {v5, v9}, Ljava/lang/Math;->max(II)I

    move-result v5

    move/from16 v16, v6

    goto :goto_258

    :cond_255
    move/from16 v16, v6

    move v5, v9

    .line 73
    :goto_258
    iget v6, v1, Ls/e;->D:I

    if-lez v6, :cond_260

    .line 74
    invoke-static {v6, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 75
    :cond_260
    iget-object v6, v0, Landroidx/constraintlayout/widget/ConstraintLayout$c;->h:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-static {v6}, Landroidx/constraintlayout/widget/ConstraintLayout;->b(Landroidx/constraintlayout/widget/ConstraintLayout;)I

    move-result v6

    const/4 v0, 0x1

    invoke-static {v6, v0}, Ls/j;->b(II)Z

    move-result v6

    if-nez v6, :cond_285

    const/high16 v0, 0x3f000000    # 0.5f

    if-eqz v12, :cond_27b

    if-eqz v4, :cond_27b

    .line 76
    iget v3, v1, Ls/e;->d0:F

    int-to-float v4, v5

    mul-float v4, v4, v3

    add-float/2addr v4, v0

    float-to-int v15, v4

    goto :goto_285

    :cond_27b
    if-eqz v11, :cond_285

    if-eqz v3, :cond_285

    .line 77
    iget v3, v1, Ls/e;->d0:F

    int-to-float v4, v15

    div-float/2addr v4, v3

    add-float/2addr v4, v0

    float-to-int v5, v4

    :cond_285
    :goto_285
    if-ne v8, v15, :cond_28c

    if-eq v9, v5, :cond_28a

    goto :goto_28c

    :cond_28a
    :goto_28a
    const/4 v0, -0x1

    goto :goto_2b0

    :cond_28c
    :goto_28c
    const/high16 v0, 0x40000000    # 2.0f

    if-eq v8, v15, :cond_295

    .line 78
    invoke-static {v15, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    goto :goto_297

    :cond_295
    move/from16 v6, v16

    :goto_297
    if-eq v9, v5, :cond_29d

    .line 79
    invoke-static {v5, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .line 80
    :cond_29d
    invoke-virtual {v10, v6, v7}, Landroid/view/View;->measure(II)V

    .line 81
    invoke-virtual {v1, v6, v7}, Ls/e;->S0(II)V

    .line 82
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    move-result v15

    .line 83
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    .line 84
    invoke-virtual {v10}, Landroid/view/View;->getBaseline()I

    move-result v14

    goto :goto_28a

    :goto_2b0
    if-eq v14, v0, :cond_2b4

    const/4 v0, 0x1

    goto :goto_2b5

    :cond_2b4
    const/4 v0, 0x0

    .line 85
    :goto_2b5
    iget v3, v2, Lt/b$a;->c:I

    if-ne v15, v3, :cond_2c0

    iget v3, v2, Lt/b$a;->d:I

    if-eq v5, v3, :cond_2be

    goto :goto_2c0

    :cond_2be
    const/4 v3, 0x0

    goto :goto_2c1

    :cond_2c0
    :goto_2c0
    const/4 v3, 0x1

    :goto_2c1
    iput-boolean v3, v2, Lt/b$a;->i:Z

    .line 86
    iget-boolean v3, v13, Landroidx/constraintlayout/widget/ConstraintLayout$b;->g0:Z

    if-eqz v3, :cond_2c8

    const/4 v0, 0x1

    :cond_2c8
    if-eqz v0, :cond_2d6

    const/4 v3, -0x1

    if-eq v14, v3, :cond_2d6

    .line 87
    invoke-virtual/range {p1 .. p1}, Ls/e;->n()I

    move-result v1

    if-eq v1, v14, :cond_2d6

    const/4 v1, 0x1

    .line 88
    iput-boolean v1, v2, Lt/b$a;->i:Z

    .line 89
    :cond_2d6
    iput v15, v2, Lt/b$a;->e:I

    .line 90
    iput v5, v2, Lt/b$a;->f:I

    .line 91
    iput-boolean v0, v2, Lt/b$a;->h:Z

    .line 92
    iput v14, v2, Lt/b$a;->g:I

    return-void
.end method

.method public c(IIIIII)V
    .registers 7

    .line 1
    iput p3, p0, Landroidx/constraintlayout/widget/ConstraintLayout$c;->b:I

    .line 2
    iput p4, p0, Landroidx/constraintlayout/widget/ConstraintLayout$c;->c:I

    .line 3
    iput p5, p0, Landroidx/constraintlayout/widget/ConstraintLayout$c;->d:I

    .line 4
    iput p6, p0, Landroidx/constraintlayout/widget/ConstraintLayout$c;->e:I

    .line 5
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$c;->f:I

    .line 6
    iput p2, p0, Landroidx/constraintlayout/widget/ConstraintLayout$c;->g:I

    return-void
.end method
