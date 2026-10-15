###### Class androidx.constraintlayout.widget.e (androidx.constraintlayout.widget.e)
.class public Landroidx/constraintlayout/widget/e;
.super Landroid/view/ViewGroup;
.source "Constraints.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/widget/e$a;
    }
.end annotation


# instance fields
.field o:Landroidx/constraintlayout/widget/d;


# virtual methods
.method protected a()Landroidx/constraintlayout/widget/e$a;
    .registers 3

    .line 1
    new-instance v0, Landroidx/constraintlayout/widget/e$a;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroidx/constraintlayout/widget/e$a;-><init>(II)V

    return-object v0
.end method

.method public b(Landroid/util/AttributeSet;)Landroidx/constraintlayout/widget/e$a;
    .registers 4

    .line 1
    new-instance v0, Landroidx/constraintlayout/widget/e$a;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroidx/constraintlayout/widget/e$a;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .registers 2

    .line 1
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/e;->a()Landroidx/constraintlayout/widget/e$a;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/widget/e;->b(Landroid/util/AttributeSet;)Landroidx/constraintlayout/widget/e$a;

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

.method public getConstraintSet()Landroidx/constraintlayout/widget/d;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/widget/e;->o:Landroidx/constraintlayout/widget/d;

    if-nez v0, :cond_b

    .line 2
    new-instance v0, Landroidx/constraintlayout/widget/d;

    invoke-direct {v0}, Landroidx/constraintlayout/widget/d;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/widget/e;->o:Landroidx/constraintlayout/widget/d;

    .line 3
    :cond_b
    iget-object v0, p0, Landroidx/constraintlayout/widget/e;->o:Landroidx/constraintlayout/widget/d;

    invoke-virtual {v0, p0}, Landroidx/constraintlayout/widget/d;->h(Landroidx/constraintlayout/widget/e;)V

    .line 4
    iget-object v0, p0, Landroidx/constraintlayout/widget/e;->o:Landroidx/constraintlayout/widget/d;

    return-object v0
.end method

.method protected onLayout(ZIIII)V
    .registers 6

    return-void
.end method

###### Class androidx.constraintlayout.widget.e.a (androidx.constraintlayout.widget.e$a)
.class public Landroidx/constraintlayout/widget/e$a;
.super Landroidx/constraintlayout/widget/ConstraintLayout$b;
.source "Constraints.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/widget/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public A0:F

.field public B0:F

.field public C0:F

.field public D0:F

.field public E0:F

.field public F0:F

.field public G0:F

.field public H0:F

.field public I0:F

.field public J0:F

.field public x0:F

.field public y0:Z

.field public z0:F


# direct methods
.method public constructor <init>(II)V
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/widget/ConstraintLayout$b;-><init>(II)V

    const/high16 p1, 0x3f800000    # 1.0f

    .line 2
    iput p1, p0, Landroidx/constraintlayout/widget/e$a;->x0:F

    const/4 p2, 0x0

    .line 3
    iput-boolean p2, p0, Landroidx/constraintlayout/widget/e$a;->y0:Z

    const/4 p2, 0x0

    .line 4
    iput p2, p0, Landroidx/constraintlayout/widget/e$a;->z0:F

    .line 5
    iput p2, p0, Landroidx/constraintlayout/widget/e$a;->A0:F

    .line 6
    iput p2, p0, Landroidx/constraintlayout/widget/e$a;->B0:F

    .line 7
    iput p2, p0, Landroidx/constraintlayout/widget/e$a;->C0:F

    .line 8
    iput p1, p0, Landroidx/constraintlayout/widget/e$a;->D0:F

    .line 9
    iput p1, p0, Landroidx/constraintlayout/widget/e$a;->E0:F

    .line 10
    iput p2, p0, Landroidx/constraintlayout/widget/e$a;->F0:F

    .line 11
    iput p2, p0, Landroidx/constraintlayout/widget/e$a;->G0:F

    .line 12
    iput p2, p0, Landroidx/constraintlayout/widget/e$a;->H0:F

    .line 13
    iput p2, p0, Landroidx/constraintlayout/widget/e$a;->I0:F

    .line 14
    iput p2, p0, Landroidx/constraintlayout/widget/e$a;->J0:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 7

    .line 15
    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/widget/ConstraintLayout$b;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 16
    iput v0, p0, Landroidx/constraintlayout/widget/e$a;->x0:F

    const/4 v1, 0x0

    .line 17
    iput-boolean v1, p0, Landroidx/constraintlayout/widget/e$a;->y0:Z

    const/4 v2, 0x0

    .line 18
    iput v2, p0, Landroidx/constraintlayout/widget/e$a;->z0:F

    .line 19
    iput v2, p0, Landroidx/constraintlayout/widget/e$a;->A0:F

    .line 20
    iput v2, p0, Landroidx/constraintlayout/widget/e$a;->B0:F

    .line 21
    iput v2, p0, Landroidx/constraintlayout/widget/e$a;->C0:F

    .line 22
    iput v0, p0, Landroidx/constraintlayout/widget/e$a;->D0:F

    .line 23
    iput v0, p0, Landroidx/constraintlayout/widget/e$a;->E0:F

    .line 24
    iput v2, p0, Landroidx/constraintlayout/widget/e$a;->F0:F

    .line 25
    iput v2, p0, Landroidx/constraintlayout/widget/e$a;->G0:F

    .line 26
    iput v2, p0, Landroidx/constraintlayout/widget/e$a;->H0:F

    .line 27
    iput v2, p0, Landroidx/constraintlayout/widget/e$a;->I0:F

    .line 28
    iput v2, p0, Landroidx/constraintlayout/widget/e$a;->J0:F

    .line 29
    sget-object v0, Landroidx/constraintlayout/widget/i;->l4:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 30
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result p2

    :goto_2b
    if-ge v1, p2, :cond_e1

    .line 31
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v0

    .line 32
    sget v2, Landroidx/constraintlayout/widget/i;->m4:I

    if-ne v0, v2, :cond_3f

    .line 33
    iget v2, p0, Landroidx/constraintlayout/widget/e$a;->x0:F

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/widget/e$a;->x0:F

    goto/16 :goto_dd

    .line 34
    :cond_3f
    sget v2, Landroidx/constraintlayout/widget/i;->x4:I

    const/16 v3, 0x15

    if-ne v0, v2, :cond_56

    .line 35
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v3, :cond_dd

    .line 36
    iget v2, p0, Landroidx/constraintlayout/widget/e$a;->z0:F

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/widget/e$a;->z0:F

    const/4 v0, 0x1

    .line 37
    iput-boolean v0, p0, Landroidx/constraintlayout/widget/e$a;->y0:Z

    goto/16 :goto_dd

    .line 38
    :cond_56
    sget v2, Landroidx/constraintlayout/widget/i;->u4:I

    if-ne v0, v2, :cond_64

    .line 39
    iget v2, p0, Landroidx/constraintlayout/widget/e$a;->B0:F

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/widget/e$a;->B0:F

    goto/16 :goto_dd

    .line 40
    :cond_64
    sget v2, Landroidx/constraintlayout/widget/i;->v4:I

    if-ne v0, v2, :cond_72

    .line 41
    iget v2, p0, Landroidx/constraintlayout/widget/e$a;->C0:F

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/widget/e$a;->C0:F

    goto/16 :goto_dd

    .line 42
    :cond_72
    sget v2, Landroidx/constraintlayout/widget/i;->t4:I

    if-ne v0, v2, :cond_7f

    .line 43
    iget v2, p0, Landroidx/constraintlayout/widget/e$a;->A0:F

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/widget/e$a;->A0:F

    goto :goto_dd

    .line 44
    :cond_7f
    sget v2, Landroidx/constraintlayout/widget/i;->r4:I

    if-ne v0, v2, :cond_8c

    .line 45
    iget v2, p0, Landroidx/constraintlayout/widget/e$a;->D0:F

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/widget/e$a;->D0:F

    goto :goto_dd

    .line 46
    :cond_8c
    sget v2, Landroidx/constraintlayout/widget/i;->s4:I

    if-ne v0, v2, :cond_99

    .line 47
    iget v2, p0, Landroidx/constraintlayout/widget/e$a;->E0:F

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/widget/e$a;->E0:F

    goto :goto_dd

    .line 48
    :cond_99
    sget v2, Landroidx/constraintlayout/widget/i;->n4:I

    if-ne v0, v2, :cond_a6

    .line 49
    iget v2, p0, Landroidx/constraintlayout/widget/e$a;->F0:F

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/widget/e$a;->F0:F

    goto :goto_dd

    .line 50
    :cond_a6
    sget v2, Landroidx/constraintlayout/widget/i;->o4:I

    if-ne v0, v2, :cond_b3

    .line 51
    iget v2, p0, Landroidx/constraintlayout/widget/e$a;->G0:F

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/widget/e$a;->G0:F

    goto :goto_dd

    .line 52
    :cond_b3
    sget v2, Landroidx/constraintlayout/widget/i;->p4:I

    if-ne v0, v2, :cond_c0

    .line 53
    iget v2, p0, Landroidx/constraintlayout/widget/e$a;->H0:F

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/widget/e$a;->H0:F

    goto :goto_dd

    .line 54
    :cond_c0
    sget v2, Landroidx/constraintlayout/widget/i;->q4:I

    if-ne v0, v2, :cond_cd

    .line 55
    iget v2, p0, Landroidx/constraintlayout/widget/e$a;->I0:F

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/widget/e$a;->I0:F

    goto :goto_dd

    .line 56
    :cond_cd
    sget v2, Landroidx/constraintlayout/widget/i;->w4:I

    if-ne v0, v2, :cond_dd

    .line 57
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v3, :cond_dd

    .line 58
    iget v2, p0, Landroidx/constraintlayout/widget/e$a;->J0:F

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/widget/e$a;->J0:F

    :cond_dd
    :goto_dd
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_2b

    .line 59
    :cond_e1
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method
