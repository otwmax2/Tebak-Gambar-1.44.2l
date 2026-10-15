###### Class androidx.appcompat.widget.j0 (androidx.appcompat.widget.j0)
.class public Landroidx/appcompat/widget/j0;
.super Ljava/lang/Object;
.source "ListPopupWindow.java"

# interfaces
.implements Landroidx/appcompat/view/menu/p;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/widget/j0$c;,
        Landroidx/appcompat/widget/j0$d;,
        Landroidx/appcompat/widget/j0$g;,
        Landroidx/appcompat/widget/j0$h;,
        Landroidx/appcompat/widget/j0$i;,
        Landroidx/appcompat/widget/j0$e;,
        Landroidx/appcompat/widget/j0$f;
    }
.end annotation


# static fields
.field private static U:Ljava/lang/reflect/Method;

.field private static V:Ljava/lang/reflect/Method;

.field private static W:Ljava/lang/reflect/Method;


# instance fields
.field private A:Z

.field private B:Z

.field C:I

.field private D:Landroid/view/View;

.field private E:I

.field private F:Landroid/database/DataSetObserver;

.field private G:Landroid/view/View;

.field private H:Landroid/graphics/drawable/Drawable;

.field private I:Landroid/widget/AdapterView$OnItemClickListener;

.field private J:Landroid/widget/AdapterView$OnItemSelectedListener;

.field final K:Landroidx/appcompat/widget/j0$i;

.field private final L:Landroidx/appcompat/widget/j0$h;

.field private final M:Landroidx/appcompat/widget/j0$g;

.field private final N:Landroidx/appcompat/widget/j0$e;

.field private O:Ljava/lang/Runnable;

.field final P:Landroid/os/Handler;

.field private final Q:Landroid/graphics/Rect;

.field private R:Landroid/graphics/Rect;

.field private S:Z

.field T:Landroid/widget/PopupWindow;

.field private o:Landroid/content/Context;

.field private p:Landroid/widget/ListAdapter;

.field q:Landroidx/appcompat/widget/g0;

.field private r:I

.field private s:I

.field private t:I

.field private u:I

.field private v:I

.field private w:Z

.field private x:Z

.field private y:Z

.field private z:I


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v3, "ListPopupWindow"

    const/16 v4, 0x1c

    if-gt v0, v4, :cond_36

    .line 2
    :try_start_a
    const-class v0, Landroid/widget/PopupWindow;

    const-string v4, "setClipToScreenEnabled"

    new-array v5, v2, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v1

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Landroidx/appcompat/widget/j0;->U:Ljava/lang/reflect/Method;
    :try_end_1a
    .catch Ljava/lang/NoSuchMethodException; {:try_start_a .. :try_end_1a} :catch_1b

    goto :goto_20

    :catch_1b
    const-string v0, "Could not find method setClipToScreenEnabled() on PopupWindow. Oh well."

    .line 3
    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    :goto_20
    :try_start_20
    const-class v0, Landroid/widget/PopupWindow;

    const-string v4, "setEpicenterBounds"

    new-array v5, v2, [Ljava/lang/Class;

    const-class v6, Landroid/graphics/Rect;

    aput-object v6, v5, v1

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Landroidx/appcompat/widget/j0;->W:Ljava/lang/reflect/Method;
    :try_end_30
    .catch Ljava/lang/NoSuchMethodException; {:try_start_20 .. :try_end_30} :catch_31

    goto :goto_36

    :catch_31
    const-string v0, "Could not find method setEpicenterBounds(Rect) on PopupWindow. Oh well."

    .line 5
    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    :cond_36
    :goto_36
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x17

    if-gt v0, v4, :cond_5c

    .line 7
    :try_start_3c
    const-class v0, Landroid/widget/PopupWindow;

    const-string v4, "getMaxAvailableHeight"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Class;

    const-class v6, Landroid/view/View;

    aput-object v6, v5, v1

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v1, v5, v2

    const/4 v1, 0x2

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v2, v5, v1

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Landroidx/appcompat/widget/j0;->V:Ljava/lang/reflect/Method;
    :try_end_56
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3c .. :try_end_56} :catch_57

    goto :goto_5c

    :catch_57
    const-string v0, "Could not find method getMaxAvailableHeight(View, int, boolean) on PopupWindow. Oh well."

    .line 8
    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5c
    :goto_5c
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 1
    sget v0, Lf/a;->E:I

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Landroidx/appcompat/widget/j0;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, p3, v0}, Landroidx/appcompat/widget/j0;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 8

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x2

    .line 4
    iput v0, p0, Landroidx/appcompat/widget/j0;->r:I

    .line 5
    iput v0, p0, Landroidx/appcompat/widget/j0;->s:I

    const/16 v0, 0x3ea

    .line 6
    iput v0, p0, Landroidx/appcompat/widget/j0;->v:I

    const/4 v0, 0x0

    .line 7
    iput v0, p0, Landroidx/appcompat/widget/j0;->z:I

    .line 8
    iput-boolean v0, p0, Landroidx/appcompat/widget/j0;->A:Z

    .line 9
    iput-boolean v0, p0, Landroidx/appcompat/widget/j0;->B:Z

    const v1, 0x7fffffff

    .line 10
    iput v1, p0, Landroidx/appcompat/widget/j0;->C:I

    .line 11
    iput v0, p0, Landroidx/appcompat/widget/j0;->E:I

    .line 12
    new-instance v1, Landroidx/appcompat/widget/j0$i;

    invoke-direct {v1, p0}, Landroidx/appcompat/widget/j0$i;-><init>(Landroidx/appcompat/widget/j0;)V

    iput-object v1, p0, Landroidx/appcompat/widget/j0;->K:Landroidx/appcompat/widget/j0$i;

    .line 13
    new-instance v1, Landroidx/appcompat/widget/j0$h;

    invoke-direct {v1, p0}, Landroidx/appcompat/widget/j0$h;-><init>(Landroidx/appcompat/widget/j0;)V

    iput-object v1, p0, Landroidx/appcompat/widget/j0;->L:Landroidx/appcompat/widget/j0$h;

    .line 14
    new-instance v1, Landroidx/appcompat/widget/j0$g;

    invoke-direct {v1, p0}, Landroidx/appcompat/widget/j0$g;-><init>(Landroidx/appcompat/widget/j0;)V

    iput-object v1, p0, Landroidx/appcompat/widget/j0;->M:Landroidx/appcompat/widget/j0$g;

    .line 15
    new-instance v1, Landroidx/appcompat/widget/j0$e;

    invoke-direct {v1, p0}, Landroidx/appcompat/widget/j0$e;-><init>(Landroidx/appcompat/widget/j0;)V

    iput-object v1, p0, Landroidx/appcompat/widget/j0;->N:Landroidx/appcompat/widget/j0$e;

    .line 16
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroidx/appcompat/widget/j0;->Q:Landroid/graphics/Rect;

    .line 17
    iput-object p1, p0, Landroidx/appcompat/widget/j0;->o:Landroid/content/Context;

    .line 18
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Landroidx/appcompat/widget/j0;->P:Landroid/os/Handler;

    .line 19
    sget-object v1, Lf/j;->l1:[I

    invoke-virtual {p1, p2, v1, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 20
    sget v2, Lf/j;->m1:I

    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    iput v2, p0, Landroidx/appcompat/widget/j0;->t:I

    .line 21
    sget v2, Lf/j;->n1:I

    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v0

    iput v0, p0, Landroidx/appcompat/widget/j0;->u:I

    const/4 v2, 0x1

    if-eqz v0, :cond_65

    .line 22
    iput-boolean v2, p0, Landroidx/appcompat/widget/j0;->w:Z

    .line 23
    :cond_65
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 24
    new-instance v0, Landroidx/appcompat/widget/r;

    invoke-direct {v0, p1, p2, p3, p4}, Landroidx/appcompat/widget/r;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-object v0, p0, Landroidx/appcompat/widget/j0;->T:Landroid/widget/PopupWindow;

    .line 25
    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    return-void
.end method

.method private C()V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/j0;->D:Landroid/view/View;

    if-eqz v0, :cond_13

    .line 2
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 3
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_13

    .line 4
    check-cast v0, Landroid/view/ViewGroup;

    .line 5
    iget-object v1, p0, Landroidx/appcompat/widget/j0;->D:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_13
    return-void
.end method

.method private N(Z)V
    .registers 6

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-gt v0, v1, :cond_22

    .line 2
    sget-object v0, Landroidx/appcompat/widget/j0;->U:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_27

    .line 3
    :try_start_a
    iget-object v1, p0, Landroidx/appcompat/widget/j0;->T:Landroid/widget/PopupWindow;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_19} :catch_1a

    goto :goto_27

    :catch_1a
    const-string p1, "ListPopupWindow"

    const-string v0, "Could not call setClipToScreenEnabled() on PopupWindow. Oh well."

    .line 4
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_27

    .line 5
    :cond_22
    iget-object v0, p0, Landroidx/appcompat/widget/j0;->T:Landroid/widget/PopupWindow;

    invoke-static {v0, p1}, Landroidx/appcompat/widget/j0$d;->b(Landroid/widget/PopupWindow;Z)V

    :cond_27
    :goto_27
    return-void
.end method

.method private q()I
    .registers 13

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/j0;->q:Landroidx/appcompat/widget/g0;

    const/high16 v1, -0x80000000

    const/4 v2, -0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v0, :cond_bf

    .line 2
    iget-object v0, p0, Landroidx/appcompat/widget/j0;->o:Landroid/content/Context;

    .line 3
    new-instance v5, Landroidx/appcompat/widget/j0$a;

    invoke-direct {v5, p0}, Landroidx/appcompat/widget/j0$a;-><init>(Landroidx/appcompat/widget/j0;)V

    iput-object v5, p0, Landroidx/appcompat/widget/j0;->O:Ljava/lang/Runnable;

    .line 4
    iget-boolean v5, p0, Landroidx/appcompat/widget/j0;->S:Z

    xor-int/2addr v5, v3

    invoke-virtual {p0, v0, v5}, Landroidx/appcompat/widget/j0;->s(Landroid/content/Context;Z)Landroidx/appcompat/widget/g0;

    move-result-object v5

    iput-object v5, p0, Landroidx/appcompat/widget/j0;->q:Landroidx/appcompat/widget/g0;

    .line 5
    iget-object v6, p0, Landroidx/appcompat/widget/j0;->H:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_22

    .line 6
    invoke-virtual {v5, v6}, Landroidx/appcompat/widget/g0;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 7
    :cond_22
    iget-object v5, p0, Landroidx/appcompat/widget/j0;->q:Landroidx/appcompat/widget/g0;

    iget-object v6, p0, Landroidx/appcompat/widget/j0;->p:Landroid/widget/ListAdapter;

    invoke-virtual {v5, v6}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 8
    iget-object v5, p0, Landroidx/appcompat/widget/j0;->q:Landroidx/appcompat/widget/g0;

    iget-object v6, p0, Landroidx/appcompat/widget/j0;->I:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v5, v6}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 9
    iget-object v5, p0, Landroidx/appcompat/widget/j0;->q:Landroidx/appcompat/widget/g0;

    invoke-virtual {v5, v3}, Landroid/widget/ListView;->setFocusable(Z)V

    .line 10
    iget-object v5, p0, Landroidx/appcompat/widget/j0;->q:Landroidx/appcompat/widget/g0;

    invoke-virtual {v5, v3}, Landroid/widget/ListView;->setFocusableInTouchMode(Z)V

    .line 11
    iget-object v5, p0, Landroidx/appcompat/widget/j0;->q:Landroidx/appcompat/widget/g0;

    new-instance v6, Landroidx/appcompat/widget/j0$b;

    invoke-direct {v6, p0}, Landroidx/appcompat/widget/j0$b;-><init>(Landroidx/appcompat/widget/j0;)V

    invoke-virtual {v5, v6}, Landroid/widget/ListView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 12
    iget-object v5, p0, Landroidx/appcompat/widget/j0;->q:Landroidx/appcompat/widget/g0;

    iget-object v6, p0, Landroidx/appcompat/widget/j0;->M:Landroidx/appcompat/widget/j0$g;

    invoke-virtual {v5, v6}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 13
    iget-object v5, p0, Landroidx/appcompat/widget/j0;->J:Landroid/widget/AdapterView$OnItemSelectedListener;

    if-eqz v5, :cond_54

    .line 14
    iget-object v6, p0, Landroidx/appcompat/widget/j0;->q:Landroidx/appcompat/widget/g0;

    invoke-virtual {v6, v5}, Landroid/widget/ListView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 15
    :cond_54
    iget-object v5, p0, Landroidx/appcompat/widget/j0;->q:Landroidx/appcompat/widget/g0;

    .line 16
    iget-object v6, p0, Landroidx/appcompat/widget/j0;->D:Landroid/view/View;

    if-eqz v6, :cond_b8

    .line 17
    new-instance v7, Landroid/widget/LinearLayout;

    invoke-direct {v7, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 18
    invoke-virtual {v7, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 19
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-direct {v0, v2, v4, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 20
    iget v8, p0, Landroidx/appcompat/widget/j0;->E:I

    if-eqz v8, :cond_8f

    if-eq v8, v3, :cond_88

    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid hint position "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Landroidx/appcompat/widget/j0;->E:I

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v5, "ListPopupWindow"

    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_95

    .line 22
    :cond_88
    invoke-virtual {v7, v5, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 23
    invoke-virtual {v7, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_95

    .line 24
    :cond_8f
    invoke-virtual {v7, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 25
    invoke-virtual {v7, v5, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 26
    :goto_95
    iget v0, p0, Landroidx/appcompat/widget/j0;->s:I

    if-ltz v0, :cond_9c

    const/high16 v5, -0x80000000

    goto :goto_9e

    :cond_9c
    const/4 v0, 0x0

    const/4 v5, 0x0

    .line 27
    :goto_9e
    invoke-static {v0, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 28
    invoke-virtual {v6, v0, v4}, Landroid/view/View;->measure(II)V

    .line 29
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 30
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    iget v6, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v5, v6

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v5, v0

    move v0, v5

    move-object v5, v7

    goto :goto_b9

    :cond_b8
    const/4 v0, 0x0

    .line 31
    :goto_b9
    iget-object v6, p0, Landroidx/appcompat/widget/j0;->T:Landroid/widget/PopupWindow;

    invoke-virtual {v6, v5}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    goto :goto_dd

    .line 32
    :cond_bf
    iget-object v0, p0, Landroidx/appcompat/widget/j0;->T:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 33
    iget-object v0, p0, Landroidx/appcompat/widget/j0;->D:Landroid/view/View;

    if-eqz v0, :cond_dc

    .line 34
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout$LayoutParams;

    .line 35
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iget v6, v5, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v0, v6

    iget v5, v5, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v0, v5

    goto :goto_dd

    :cond_dc
    const/4 v0, 0x0

    .line 36
    :goto_dd
    iget-object v5, p0, Landroidx/appcompat/widget/j0;->T:Landroid/widget/PopupWindow;

    invoke-virtual {v5}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    if-eqz v5, :cond_f9

    .line 37
    iget-object v6, p0, Landroidx/appcompat/widget/j0;->Q:Landroid/graphics/Rect;

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 38
    iget-object v5, p0, Landroidx/appcompat/widget/j0;->Q:Landroid/graphics/Rect;

    iget v6, v5, Landroid/graphics/Rect;->top:I

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v5, v6

    .line 39
    iget-boolean v7, p0, Landroidx/appcompat/widget/j0;->w:Z

    if-nez v7, :cond_ff

    neg-int v6, v6

    .line 40
    iput v6, p0, Landroidx/appcompat/widget/j0;->u:I

    goto :goto_ff

    .line 41
    :cond_f9
    iget-object v5, p0, Landroidx/appcompat/widget/j0;->Q:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->setEmpty()V

    const/4 v5, 0x0

    .line 42
    :cond_ff
    :goto_ff
    iget-object v6, p0, Landroidx/appcompat/widget/j0;->T:Landroid/widget/PopupWindow;

    .line 43
    invoke-virtual {v6}, Landroid/widget/PopupWindow;->getInputMethodMode()I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_109

    goto :goto_10a

    :cond_109
    const/4 v3, 0x0

    .line 44
    :goto_10a
    invoke-virtual {p0}, Landroidx/appcompat/widget/j0;->t()Landroid/view/View;

    move-result-object v4

    iget v6, p0, Landroidx/appcompat/widget/j0;->u:I

    invoke-direct {p0, v4, v6, v3}, Landroidx/appcompat/widget/j0;->u(Landroid/view/View;IZ)I

    move-result v3

    .line 45
    iget-boolean v4, p0, Landroidx/appcompat/widget/j0;->A:Z

    if-nez v4, :cond_17b

    iget v4, p0, Landroidx/appcompat/widget/j0;->r:I

    if-ne v4, v2, :cond_11d

    goto :goto_17b

    .line 46
    :cond_11d
    iget v4, p0, Landroidx/appcompat/widget/j0;->s:I

    const/4 v6, -0x2

    if-eq v4, v6, :cond_144

    const/high16 v1, 0x40000000    # 2.0f

    if-eq v4, v2, :cond_12b

    .line 47
    invoke-static {v4, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    goto :goto_15c

    .line 48
    :cond_12b
    iget-object v2, p0, Landroidx/appcompat/widget/j0;->o:Landroid/content/Context;

    .line 49
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v4, p0, Landroidx/appcompat/widget/j0;->Q:Landroid/graphics/Rect;

    iget v6, v4, Landroid/graphics/Rect;->left:I

    iget v4, v4, Landroid/graphics/Rect;->right:I

    add-int/2addr v6, v4

    sub-int/2addr v2, v6

    .line 50
    invoke-static {v2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    goto :goto_15c

    .line 51
    :cond_144
    iget-object v2, p0, Landroidx/appcompat/widget/j0;->o:Landroid/content/Context;

    .line 52
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v4, p0, Landroidx/appcompat/widget/j0;->Q:Landroid/graphics/Rect;

    iget v6, v4, Landroid/graphics/Rect;->left:I

    iget v4, v4, Landroid/graphics/Rect;->right:I

    add-int/2addr v6, v4

    sub-int/2addr v2, v6

    .line 53
    invoke-static {v2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    :goto_15c
    move v7, v1

    .line 54
    iget-object v6, p0, Landroidx/appcompat/widget/j0;->q:Landroidx/appcompat/widget/g0;

    const/4 v8, 0x0

    const/4 v9, -0x1

    sub-int v10, v3, v0

    const/4 v11, -0x1

    invoke-virtual/range {v6 .. v11}, Landroidx/appcompat/widget/g0;->d(IIIII)I

    move-result v1

    if-lez v1, :cond_179

    .line 55
    iget-object v2, p0, Landroidx/appcompat/widget/j0;->q:Landroidx/appcompat/widget/g0;

    invoke-virtual {v2}, Landroid/widget/ListView;->getPaddingTop()I

    move-result v2

    iget-object v3, p0, Landroidx/appcompat/widget/j0;->q:Landroidx/appcompat/widget/g0;

    .line 56
    invoke-virtual {v3}, Landroid/widget/ListView;->getPaddingBottom()I

    move-result v3

    add-int/2addr v2, v3

    add-int/2addr v5, v2

    add-int/2addr v0, v5

    :cond_179
    add-int/2addr v1, v0

    return v1

    :cond_17b
    :goto_17b
    add-int/2addr v3, v5

    return v3
.end method

.method private u(Landroid/view/View;IZ)I
    .registers 9

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-gt v0, v1, :cond_39

    .line 2
    sget-object v0, Landroidx/appcompat/widget/j0;->V:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_32

    .line 3
    :try_start_a
    iget-object v1, p0, Landroidx/appcompat/widget/j0;->T:Landroid/widget/PopupWindow;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    .line 4
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    aput-object p3, v2, v3

    .line 5
    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p1
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_2a} :catch_2b

    return p1

    :catch_2b
    const-string p3, "ListPopupWindow"

    const-string v0, "Could not call getMaxAvailableHeightMethod(View, int, boolean) on PopupWindow. Using the public version."

    .line 6
    invoke-static {p3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    :cond_32
    iget-object p3, p0, Landroidx/appcompat/widget/j0;->T:Landroid/widget/PopupWindow;

    invoke-virtual {p3, p1, p2}, Landroid/widget/PopupWindow;->getMaxAvailableHeight(Landroid/view/View;I)I

    move-result p1

    return p1

    .line 8
    :cond_39
    iget-object v0, p0, Landroidx/appcompat/widget/j0;->T:Landroid/widget/PopupWindow;

    invoke-static {v0, p1, p2, p3}, Landroidx/appcompat/widget/j0$c;->a(Landroid/widget/PopupWindow;Landroid/view/View;IZ)I

    move-result p1

    return p1
.end method


# virtual methods
.method public A()Z
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/j0;->T:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getInputMethodMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return v0
.end method

.method public B()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Landroidx/appcompat/widget/j0;->S:Z

    return v0
.end method

.method public D(Landroid/view/View;)V
    .registers 2

    .line 1
    iput-object p1, p0, Landroidx/appcompat/widget/j0;->G:Landroid/view/View;

    return-void
.end method

.method public E(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/j0;->T:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    return-void
.end method

.method public F(I)V
    .registers 4

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/j0;->T:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 2
    iget-object v1, p0, Landroidx/appcompat/widget/j0;->Q:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 3
    iget-object v0, p0, Landroidx/appcompat/widget/j0;->Q:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v0, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v0

    add-int/2addr v1, p1

    iput v1, p0, Landroidx/appcompat/widget/j0;->s:I

    goto :goto_1b

    .line 4
    :cond_18
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/j0;->Q(I)V

    :goto_1b
    return-void
.end method

.method public G(I)V
    .registers 2

    .line 1
    iput p1, p0, Landroidx/appcompat/widget/j0;->z:I

    return-void
.end method

.method public H(Landroid/graphics/Rect;)V
    .registers 3

    if-eqz p1, :cond_8

    .line 1
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    iput-object v0, p0, Landroidx/appcompat/widget/j0;->R:Landroid/graphics/Rect;

    return-void
.end method

.method public I(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/j0;->T:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    return-void
.end method

.method public J(Z)V
    .registers 3

    .line 1
    iput-boolean p1, p0, Landroidx/appcompat/widget/j0;->S:Z

    .line 2
    iget-object v0, p0, Landroidx/appcompat/widget/j0;->T:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    return-void
.end method

.method public K(Landroid/widget/PopupWindow$OnDismissListener;)V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/j0;->T:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    return-void
.end method

.method public L(Landroid/widget/AdapterView$OnItemClickListener;)V
    .registers 2

    .line 1
    iput-object p1, p0, Landroidx/appcompat/widget/j0;->I:Landroid/widget/AdapterView$OnItemClickListener;

    return-void
.end method

.method public M(Z)V
    .registers 3

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Landroidx/appcompat/widget/j0;->y:Z

    .line 2
    iput-boolean p1, p0, Landroidx/appcompat/widget/j0;->x:Z

    return-void
.end method

.method public O(I)V
    .registers 2

    .line 1
    iput p1, p0, Landroidx/appcompat/widget/j0;->E:I

    return-void
.end method

.method public P(I)V
    .registers 4

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/j0;->q:Landroidx/appcompat/widget/g0;

    .line 2
    invoke-virtual {p0}, Landroidx/appcompat/widget/j0;->a()Z

    move-result v1

    if-eqz v1, :cond_1b

    if-eqz v0, :cond_1b

    const/4 v1, 0x0

    .line 3
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/g0;->setListSelectionHidden(Z)V

    .line 4
    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setSelection(I)V

    .line 5
    invoke-virtual {v0}, Landroid/widget/ListView;->getChoiceMode()I

    move-result v1

    if-eqz v1, :cond_1b

    const/4 v1, 0x1

    .line 6
    invoke-virtual {v0, p1, v1}, Landroid/widget/ListView;->setItemChecked(IZ)V

    :cond_1b
    return-void
.end method

.method public Q(I)V
    .registers 2

    .line 1
    iput p1, p0, Landroidx/appcompat/widget/j0;->s:I

    return-void
.end method

.method public a()Z
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/j0;->T:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    return v0
.end method

.method public b(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/j0;->T:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public c()I
    .registers 2

    .line 1
    iget v0, p0, Landroidx/appcompat/widget/j0;->t:I

    return v0
.end method

.method public dismiss()V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/j0;->T:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 2
    invoke-direct {p0}, Landroidx/appcompat/widget/j0;->C()V

    .line 3
    iget-object v0, p0, Landroidx/appcompat/widget/j0;->T:Landroid/widget/PopupWindow;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 4
    iput-object v1, p0, Landroidx/appcompat/widget/j0;->q:Landroidx/appcompat/widget/g0;

    .line 5
    iget-object v0, p0, Landroidx/appcompat/widget/j0;->P:Landroid/os/Handler;

    iget-object v1, p0, Landroidx/appcompat/widget/j0;->K:Landroidx/appcompat/widget/j0$i;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public e(I)V
    .registers 2

    .line 1
    iput p1, p0, Landroidx/appcompat/widget/j0;->t:I

    return-void
.end method

.method public h()V
    .registers 14

    .line 1
    invoke-direct {p0}, Landroidx/appcompat/widget/j0;->q()I

    move-result v0

    .line 2
    invoke-virtual {p0}, Landroidx/appcompat/widget/j0;->A()Z

    move-result v1

    .line 3
    iget-object v2, p0, Landroidx/appcompat/widget/j0;->T:Landroid/widget/PopupWindow;

    iget v3, p0, Landroidx/appcompat/widget/j0;->v:I

    invoke-static {v2, v3}, Landroidx/core/widget/i;->b(Landroid/widget/PopupWindow;I)V

    .line 4
    iget-object v2, p0, Landroidx/appcompat/widget/j0;->T:Landroid/widget/PopupWindow;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, -0x2

    const/4 v5, 0x0

    const/4 v6, -0x1

    if-eqz v2, :cond_90

    .line 5
    invoke-virtual {p0}, Landroidx/appcompat/widget/j0;->t()Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, Landroidx/core/view/a0;->T(Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_26

    return-void

    .line 6
    :cond_26
    iget v2, p0, Landroidx/appcompat/widget/j0;->s:I

    if-ne v2, v6, :cond_2c

    const/4 v2, -0x1

    goto :goto_36

    :cond_2c
    if-ne v2, v4, :cond_36

    .line 7
    invoke-virtual {p0}, Landroidx/appcompat/widget/j0;->t()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    .line 8
    :cond_36
    :goto_36
    iget v7, p0, Landroidx/appcompat/widget/j0;->r:I

    if-ne v7, v6, :cond_64

    if-eqz v1, :cond_3d

    goto :goto_3e

    :cond_3d
    const/4 v0, -0x1

    :goto_3e
    if-eqz v1, :cond_52

    .line 9
    iget-object v1, p0, Landroidx/appcompat/widget/j0;->T:Landroid/widget/PopupWindow;

    iget v4, p0, Landroidx/appcompat/widget/j0;->s:I

    if-ne v4, v6, :cond_48

    const/4 v4, -0x1

    goto :goto_49

    :cond_48
    const/4 v4, 0x0

    :goto_49
    invoke-virtual {v1, v4}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 10
    iget-object v1, p0, Landroidx/appcompat/widget/j0;->T:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v5}, Landroid/widget/PopupWindow;->setHeight(I)V

    goto :goto_68

    .line 11
    :cond_52
    iget-object v1, p0, Landroidx/appcompat/widget/j0;->T:Landroid/widget/PopupWindow;

    iget v4, p0, Landroidx/appcompat/widget/j0;->s:I

    if-ne v4, v6, :cond_5a

    const/4 v4, -0x1

    goto :goto_5b

    :cond_5a
    const/4 v4, 0x0

    :goto_5b
    invoke-virtual {v1, v4}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 12
    iget-object v1, p0, Landroidx/appcompat/widget/j0;->T:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v6}, Landroid/widget/PopupWindow;->setHeight(I)V

    goto :goto_68

    :cond_64
    if-ne v7, v4, :cond_67

    goto :goto_68

    :cond_67
    move v0, v7

    .line 13
    :goto_68
    iget-object v1, p0, Landroidx/appcompat/widget/j0;->T:Landroid/widget/PopupWindow;

    iget-boolean v4, p0, Landroidx/appcompat/widget/j0;->B:Z

    if-nez v4, :cond_73

    iget-boolean v4, p0, Landroidx/appcompat/widget/j0;->A:Z

    if-nez v4, :cond_73

    goto :goto_74

    :cond_73
    const/4 v3, 0x0

    :goto_74
    invoke-virtual {v1, v3}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 14
    iget-object v7, p0, Landroidx/appcompat/widget/j0;->T:Landroid/widget/PopupWindow;

    invoke-virtual {p0}, Landroidx/appcompat/widget/j0;->t()Landroid/view/View;

    move-result-object v8

    iget v9, p0, Landroidx/appcompat/widget/j0;->t:I

    iget v10, p0, Landroidx/appcompat/widget/j0;->u:I

    if-gez v2, :cond_85

    const/4 v11, -0x1

    goto :goto_86

    :cond_85
    move v11, v2

    :goto_86
    if-gez v0, :cond_8a

    const/4 v12, -0x1

    goto :goto_8b

    :cond_8a
    move v12, v0

    :goto_8b
    invoke-virtual/range {v7 .. v12}, Landroid/widget/PopupWindow;->update(Landroid/view/View;IIII)V

    goto/16 :goto_12d

    .line 15
    :cond_90
    iget v1, p0, Landroidx/appcompat/widget/j0;->s:I

    if-ne v1, v6, :cond_96

    const/4 v1, -0x1

    goto :goto_a0

    :cond_96
    if-ne v1, v4, :cond_a0

    .line 16
    invoke-virtual {p0}, Landroidx/appcompat/widget/j0;->t()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 17
    :cond_a0
    :goto_a0
    iget v2, p0, Landroidx/appcompat/widget/j0;->r:I

    if-ne v2, v6, :cond_a6

    const/4 v0, -0x1

    goto :goto_aa

    :cond_a6
    if-ne v2, v4, :cond_a9

    goto :goto_aa

    :cond_a9
    move v0, v2

    .line 18
    :goto_aa
    iget-object v2, p0, Landroidx/appcompat/widget/j0;->T:Landroid/widget/PopupWindow;

    invoke-virtual {v2, v1}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 19
    iget-object v1, p0, Landroidx/appcompat/widget/j0;->T:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v0}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 20
    invoke-direct {p0, v3}, Landroidx/appcompat/widget/j0;->N(Z)V

    .line 21
    iget-object v0, p0, Landroidx/appcompat/widget/j0;->T:Landroid/widget/PopupWindow;

    iget-boolean v1, p0, Landroidx/appcompat/widget/j0;->B:Z

    if-nez v1, :cond_c3

    iget-boolean v1, p0, Landroidx/appcompat/widget/j0;->A:Z

    if-nez v1, :cond_c3

    const/4 v1, 0x1

    goto :goto_c4

    :cond_c3
    const/4 v1, 0x0

    :goto_c4
    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 22
    iget-object v0, p0, Landroidx/appcompat/widget/j0;->T:Landroid/widget/PopupWindow;

    iget-object v1, p0, Landroidx/appcompat/widget/j0;->L:Landroidx/appcompat/widget/j0$h;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setTouchInterceptor(Landroid/view/View$OnTouchListener;)V

    .line 23
    iget-boolean v0, p0, Landroidx/appcompat/widget/j0;->y:Z

    if-eqz v0, :cond_d9

    .line 24
    iget-object v0, p0, Landroidx/appcompat/widget/j0;->T:Landroid/widget/PopupWindow;

    iget-boolean v1, p0, Landroidx/appcompat/widget/j0;->x:Z

    invoke-static {v0, v1}, Landroidx/core/widget/i;->a(Landroid/widget/PopupWindow;Z)V

    .line 25
    :cond_d9
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-gt v0, v1, :cond_f8

    .line 26
    sget-object v0, Landroidx/appcompat/widget/j0;->W:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_ff

    .line 27
    :try_start_e3
    iget-object v1, p0, Landroidx/appcompat/widget/j0;->T:Landroid/widget/PopupWindow;

    new-array v2, v3, [Ljava/lang/Object;

    iget-object v3, p0, Landroidx/appcompat/widget/j0;->R:Landroid/graphics/Rect;

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_ee
    .catch Ljava/lang/Exception; {:try_start_e3 .. :try_end_ee} :catch_ef

    goto :goto_ff

    :catch_ef
    move-exception v0

    const-string v1, "ListPopupWindow"

    const-string v2, "Could not invoke setEpicenterBounds on PopupWindow"

    .line 28
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_ff

    .line 29
    :cond_f8
    iget-object v0, p0, Landroidx/appcompat/widget/j0;->T:Landroid/widget/PopupWindow;

    iget-object v1, p0, Landroidx/appcompat/widget/j0;->R:Landroid/graphics/Rect;

    invoke-static {v0, v1}, Landroidx/appcompat/widget/j0$d;->a(Landroid/widget/PopupWindow;Landroid/graphics/Rect;)V

    .line 30
    :cond_ff
    :goto_ff
    iget-object v0, p0, Landroidx/appcompat/widget/j0;->T:Landroid/widget/PopupWindow;

    invoke-virtual {p0}, Landroidx/appcompat/widget/j0;->t()Landroid/view/View;

    move-result-object v1

    iget v2, p0, Landroidx/appcompat/widget/j0;->t:I

    iget v3, p0, Landroidx/appcompat/widget/j0;->u:I

    iget v4, p0, Landroidx/appcompat/widget/j0;->z:I

    invoke-static {v0, v1, v2, v3, v4}, Landroidx/core/widget/i;->c(Landroid/widget/PopupWindow;Landroid/view/View;III)V

    .line 31
    iget-object v0, p0, Landroidx/appcompat/widget/j0;->q:Landroidx/appcompat/widget/g0;

    invoke-virtual {v0, v6}, Landroid/widget/ListView;->setSelection(I)V

    .line 32
    iget-boolean v0, p0, Landroidx/appcompat/widget/j0;->S:Z

    if-eqz v0, :cond_11f

    iget-object v0, p0, Landroidx/appcompat/widget/j0;->q:Landroidx/appcompat/widget/g0;

    invoke-virtual {v0}, Landroidx/appcompat/widget/g0;->isInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_122

    .line 33
    :cond_11f
    invoke-virtual {p0}, Landroidx/appcompat/widget/j0;->r()V

    .line 34
    :cond_122
    iget-boolean v0, p0, Landroidx/appcompat/widget/j0;->S:Z

    if-nez v0, :cond_12d

    .line 35
    iget-object v0, p0, Landroidx/appcompat/widget/j0;->P:Landroid/os/Handler;

    iget-object v1, p0, Landroidx/appcompat/widget/j0;->N:Landroidx/appcompat/widget/j0$e;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_12d
    :goto_12d
    return-void
.end method

.method public i()Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/j0;->T:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public j()Landroid/widget/ListView;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/j0;->q:Landroidx/appcompat/widget/g0;

    return-object v0
.end method

.method public l(I)V
    .registers 2

    .line 1
    iput p1, p0, Landroidx/appcompat/widget/j0;->u:I

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Landroidx/appcompat/widget/j0;->w:Z

    return-void
.end method

.method public o()I
    .registers 2

    .line 1
    iget-boolean v0, p0, Landroidx/appcompat/widget/j0;->w:Z

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_6
    iget v0, p0, Landroidx/appcompat/widget/j0;->u:I

    return v0
.end method

.method public p(Landroid/widget/ListAdapter;)V
    .registers 4

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/j0;->F:Landroid/database/DataSetObserver;

    if-nez v0, :cond_c

    .line 2
    new-instance v0, Landroidx/appcompat/widget/j0$f;

    invoke-direct {v0, p0}, Landroidx/appcompat/widget/j0$f;-><init>(Landroidx/appcompat/widget/j0;)V

    iput-object v0, p0, Landroidx/appcompat/widget/j0;->F:Landroid/database/DataSetObserver;

    goto :goto_13

    .line 3
    :cond_c
    iget-object v1, p0, Landroidx/appcompat/widget/j0;->p:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_13

    .line 4
    invoke-interface {v1, v0}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 5
    :cond_13
    :goto_13
    iput-object p1, p0, Landroidx/appcompat/widget/j0;->p:Landroid/widget/ListAdapter;

    if-eqz p1, :cond_1c

    .line 6
    iget-object v0, p0, Landroidx/appcompat/widget/j0;->F:Landroid/database/DataSetObserver;

    invoke-interface {p1, v0}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 7
    :cond_1c
    iget-object p1, p0, Landroidx/appcompat/widget/j0;->q:Landroidx/appcompat/widget/g0;

    if-eqz p1, :cond_25

    .line 8
    iget-object v0, p0, Landroidx/appcompat/widget/j0;->p:Landroid/widget/ListAdapter;

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    :cond_25
    return-void
.end method

.method public r()V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/j0;->q:Landroidx/appcompat/widget/g0;

    if-eqz v0, :cond_b

    const/4 v1, 0x1

    .line 2
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/g0;->setListSelectionHidden(Z)V

    .line 3
    invoke-virtual {v0}, Landroid/widget/ListView;->requestLayout()V

    :cond_b
    return-void
.end method

.method s(Landroid/content/Context;Z)Landroidx/appcompat/widget/g0;
    .registers 4

    .line 1
    new-instance v0, Landroidx/appcompat/widget/g0;

    invoke-direct {v0, p1, p2}, Landroidx/appcompat/widget/g0;-><init>(Landroid/content/Context;Z)V

    return-object v0
.end method

.method public t()Landroid/view/View;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/j0;->G:Landroid/view/View;

    return-object v0
.end method

.method public v()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/widget/j0;->a()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_8
    iget-object v0, p0, Landroidx/appcompat/widget/j0;->q:Landroidx/appcompat/widget/g0;

    invoke-virtual {v0}, Landroid/widget/ListView;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public w()J
    .registers 3

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/widget/j0;->a()Z

    move-result v0

    if-nez v0, :cond_9

    const-wide/high16 v0, -0x8000000000000000L

    return-wide v0

    .line 2
    :cond_9
    iget-object v0, p0, Landroidx/appcompat/widget/j0;->q:Landroidx/appcompat/widget/g0;

    invoke-virtual {v0}, Landroid/widget/ListView;->getSelectedItemId()J

    move-result-wide v0

    return-wide v0
.end method

.method public x()I
    .registers 2

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/widget/j0;->a()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, -0x1

    return v0

    .line 2
    :cond_8
    iget-object v0, p0, Landroidx/appcompat/widget/j0;->q:Landroidx/appcompat/widget/g0;

    invoke-virtual {v0}, Landroid/widget/ListView;->getSelectedItemPosition()I

    move-result v0

    return v0
.end method

.method public y()Landroid/view/View;
    .registers 2

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/widget/j0;->a()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_8
    iget-object v0, p0, Landroidx/appcompat/widget/j0;->q:Landroidx/appcompat/widget/g0;

    invoke-virtual {v0}, Landroid/widget/ListView;->getSelectedView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public z()I
    .registers 2

    .line 1
    iget v0, p0, Landroidx/appcompat/widget/j0;->s:I

    return v0
.end method

###### Class androidx.appcompat.widget.j0.a (androidx.appcompat.widget.j0$a)
.class Landroidx/appcompat/widget/j0$a;
.super Ljava/lang/Object;
.source "ListPopupWindow.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/appcompat/widget/j0;->q()I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic o:Landroidx/appcompat/widget/j0;


# direct methods
.method constructor <init>(Landroidx/appcompat/widget/j0;)V
    .registers 2

    .line 1
    iput-object p1, p0, Landroidx/appcompat/widget/j0$a;->o:Landroidx/appcompat/widget/j0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/j0$a;->o:Landroidx/appcompat/widget/j0;

    invoke-virtual {v0}, Landroidx/appcompat/widget/j0;->t()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 2
    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 3
    iget-object v0, p0, Landroidx/appcompat/widget/j0$a;->o:Landroidx/appcompat/widget/j0;

    invoke-virtual {v0}, Landroidx/appcompat/widget/j0;->h()V

    :cond_13
    return-void
.end method

###### Class androidx.appcompat.widget.j0.b (androidx.appcompat.widget.j0$b)
.class Landroidx/appcompat/widget/j0$b;
.super Ljava/lang/Object;
.source "ListPopupWindow.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/appcompat/widget/j0;->q()I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic o:Landroidx/appcompat/widget/j0;


# direct methods
.method constructor <init>(Landroidx/appcompat/widget/j0;)V
    .registers 2

    .line 1
    iput-object p1, p0, Landroidx/appcompat/widget/j0$b;->o:Landroidx/appcompat/widget/j0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    const/4 p1, -0x1

    if-eq p3, p1, :cond_d

    .line 1
    iget-object p1, p0, Landroidx/appcompat/widget/j0$b;->o:Landroidx/appcompat/widget/j0;

    iget-object p1, p1, Landroidx/appcompat/widget/j0;->q:Landroidx/appcompat/widget/g0;

    if-eqz p1, :cond_d

    const/4 p2, 0x0

    .line 2
    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/g0;->setListSelectionHidden(Z)V

    :cond_d
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    return-void
.end method

###### Class androidx.appcompat.widget.j0.c (androidx.appcompat.widget.j0$c)
.class Landroidx/appcompat/widget/j0$c;
.super Ljava/lang/Object;
.source "ListPopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/j0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "c"
.end annotation


# direct methods
.method static a(Landroid/widget/PopupWindow;Landroid/view/View;IZ)I
    .registers 4

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Landroid/widget/PopupWindow;->getMaxAvailableHeight(Landroid/view/View;IZ)I

    move-result p0

    return p0
.end method

###### Class androidx.appcompat.widget.j0.d (androidx.appcompat.widget.j0$d)
.class Landroidx/appcompat/widget/j0$d;
.super Ljava/lang/Object;
.source "ListPopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/j0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "d"
.end annotation


# direct methods
.method static a(Landroid/widget/PopupWindow;Landroid/graphics/Rect;)V
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Landroid/widget/PopupWindow;->setEpicenterBounds(Landroid/graphics/Rect;)V

    return-void
.end method

.method static b(Landroid/widget/PopupWindow;Z)V
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Landroid/widget/PopupWindow;->setIsClippedToScreen(Z)V

    return-void
.end method

###### Class androidx.appcompat.widget.j0.e (androidx.appcompat.widget.j0$e)
.class Landroidx/appcompat/widget/j0$e;
.super Ljava/lang/Object;
.source "ListPopupWindow.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/j0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "e"
.end annotation


# instance fields
.field final synthetic o:Landroidx/appcompat/widget/j0;


# direct methods
.method constructor <init>(Landroidx/appcompat/widget/j0;)V
    .registers 2

    .line 1
    iput-object p1, p0, Landroidx/appcompat/widget/j0$e;->o:Landroidx/appcompat/widget/j0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/j0$e;->o:Landroidx/appcompat/widget/j0;

    invoke-virtual {v0}, Landroidx/appcompat/widget/j0;->r()V

    return-void
.end method

###### Class androidx.appcompat.widget.j0.f (androidx.appcompat.widget.j0$f)
.class Landroidx/appcompat/widget/j0$f;
.super Landroid/database/DataSetObserver;
.source "ListPopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/j0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "f"
.end annotation


# instance fields
.field final synthetic a:Landroidx/appcompat/widget/j0;


# direct methods
.method constructor <init>(Landroidx/appcompat/widget/j0;)V
    .registers 2

    .line 1
    iput-object p1, p0, Landroidx/appcompat/widget/j0$f;->a:Landroidx/appcompat/widget/j0;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/j0$f;->a:Landroidx/appcompat/widget/j0;

    invoke-virtual {v0}, Landroidx/appcompat/widget/j0;->a()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 2
    iget-object v0, p0, Landroidx/appcompat/widget/j0$f;->a:Landroidx/appcompat/widget/j0;

    invoke-virtual {v0}, Landroidx/appcompat/widget/j0;->h()V

    :cond_d
    return-void
.end method

.method public onInvalidated()V
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/j0$f;->a:Landroidx/appcompat/widget/j0;

    invoke-virtual {v0}, Landroidx/appcompat/widget/j0;->dismiss()V

    return-void
.end method

###### Class androidx.appcompat.widget.j0.g (androidx.appcompat.widget.j0$g)
.class Landroidx/appcompat/widget/j0$g;
.super Ljava/lang/Object;
.source "ListPopupWindow.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/j0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "g"
.end annotation


# instance fields
.field final synthetic a:Landroidx/appcompat/widget/j0;


# direct methods
.method constructor <init>(Landroidx/appcompat/widget/j0;)V
    .registers 2

    .line 1
    iput-object p1, p0, Landroidx/appcompat/widget/j0$g;->a:Landroidx/appcompat/widget/j0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .registers 5

    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .registers 3

    const/4 p1, 0x1

    if-ne p2, p1, :cond_25

    .line 1
    iget-object p1, p0, Landroidx/appcompat/widget/j0$g;->a:Landroidx/appcompat/widget/j0;

    .line 2
    invoke-virtual {p1}, Landroidx/appcompat/widget/j0;->A()Z

    move-result p1

    if-nez p1, :cond_25

    iget-object p1, p0, Landroidx/appcompat/widget/j0$g;->a:Landroidx/appcompat/widget/j0;

    iget-object p1, p1, Landroidx/appcompat/widget/j0;->T:Landroid/widget/PopupWindow;

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_25

    .line 3
    iget-object p1, p0, Landroidx/appcompat/widget/j0$g;->a:Landroidx/appcompat/widget/j0;

    iget-object p2, p1, Landroidx/appcompat/widget/j0;->P:Landroid/os/Handler;

    iget-object p1, p1, Landroidx/appcompat/widget/j0;->K:Landroidx/appcompat/widget/j0$i;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 4
    iget-object p1, p0, Landroidx/appcompat/widget/j0$g;->a:Landroidx/appcompat/widget/j0;

    iget-object p1, p1, Landroidx/appcompat/widget/j0;->K:Landroidx/appcompat/widget/j0$i;

    invoke-virtual {p1}, Landroidx/appcompat/widget/j0$i;->run()V

    :cond_25
    return-void
.end method

###### Class androidx.appcompat.widget.j0.h (androidx.appcompat.widget.j0$h)
.class Landroidx/appcompat/widget/j0$h;
.super Ljava/lang/Object;
.source "ListPopupWindow.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/j0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "h"
.end annotation


# instance fields
.field final synthetic o:Landroidx/appcompat/widget/j0;


# direct methods
.method constructor <init>(Landroidx/appcompat/widget/j0;)V
    .registers 2

    .line 1
    iput-object p1, p0, Landroidx/appcompat/widget/j0$h;->o:Landroidx/appcompat/widget/j0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 5

    .line 1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    .line 2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 3
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    float-to-int p2, p2

    if-nez p1, :cond_40

    .line 4
    iget-object v1, p0, Landroidx/appcompat/widget/j0$h;->o:Landroidx/appcompat/widget/j0;

    iget-object v1, v1, Landroidx/appcompat/widget/j0;->T:Landroid/widget/PopupWindow;

    if-eqz v1, :cond_40

    .line 5
    invoke-virtual {v1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_40

    if-ltz v0, :cond_40

    iget-object v1, p0, Landroidx/appcompat/widget/j0$h;->o:Landroidx/appcompat/widget/j0;

    iget-object v1, v1, Landroidx/appcompat/widget/j0;->T:Landroid/widget/PopupWindow;

    .line 6
    invoke-virtual {v1}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v1

    if-ge v0, v1, :cond_40

    if-ltz p2, :cond_40

    iget-object v0, p0, Landroidx/appcompat/widget/j0$h;->o:Landroidx/appcompat/widget/j0;

    iget-object v0, v0, Landroidx/appcompat/widget/j0;->T:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getHeight()I

    move-result v0

    if-ge p2, v0, :cond_40

    .line 7
    iget-object p1, p0, Landroidx/appcompat/widget/j0$h;->o:Landroidx/appcompat/widget/j0;

    iget-object p2, p1, Landroidx/appcompat/widget/j0;->P:Landroid/os/Handler;

    iget-object p1, p1, Landroidx/appcompat/widget/j0;->K:Landroidx/appcompat/widget/j0$i;

    const-wide/16 v0, 0xfa

    invoke-virtual {p2, p1, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_4c

    :cond_40
    const/4 p2, 0x1

    if-ne p1, p2, :cond_4c

    .line 8
    iget-object p1, p0, Landroidx/appcompat/widget/j0$h;->o:Landroidx/appcompat/widget/j0;

    iget-object p2, p1, Landroidx/appcompat/widget/j0;->P:Landroid/os/Handler;

    iget-object p1, p1, Landroidx/appcompat/widget/j0;->K:Landroidx/appcompat/widget/j0$i;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_4c
    :goto_4c
    const/4 p1, 0x0

    return p1
.end method

###### Class androidx.appcompat.widget.j0.i (androidx.appcompat.widget.j0$i)
.class Landroidx/appcompat/widget/j0$i;
.super Ljava/lang/Object;
.source "ListPopupWindow.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/j0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "i"
.end annotation


# instance fields
.field final synthetic o:Landroidx/appcompat/widget/j0;


# direct methods
.method constructor <init>(Landroidx/appcompat/widget/j0;)V
    .registers 2

    .line 1
    iput-object p1, p0, Landroidx/appcompat/widget/j0$i;->o:Landroidx/appcompat/widget/j0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/j0$i;->o:Landroidx/appcompat/widget/j0;

    iget-object v0, v0, Landroidx/appcompat/widget/j0;->q:Landroidx/appcompat/widget/g0;

    if-eqz v0, :cond_37

    invoke-static {v0}, Landroidx/core/view/a0;->T(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_37

    iget-object v0, p0, Landroidx/appcompat/widget/j0$i;->o:Landroidx/appcompat/widget/j0;

    iget-object v0, v0, Landroidx/appcompat/widget/j0;->q:Landroidx/appcompat/widget/g0;

    .line 2
    invoke-virtual {v0}, Landroid/widget/ListView;->getCount()I

    move-result v0

    iget-object v1, p0, Landroidx/appcompat/widget/j0$i;->o:Landroidx/appcompat/widget/j0;

    iget-object v1, v1, Landroidx/appcompat/widget/j0;->q:Landroidx/appcompat/widget/g0;

    invoke-virtual {v1}, Landroid/widget/ListView;->getChildCount()I

    move-result v1

    if-le v0, v1, :cond_37

    iget-object v0, p0, Landroidx/appcompat/widget/j0$i;->o:Landroidx/appcompat/widget/j0;

    iget-object v0, v0, Landroidx/appcompat/widget/j0;->q:Landroidx/appcompat/widget/g0;

    .line 3
    invoke-virtual {v0}, Landroid/widget/ListView;->getChildCount()I

    move-result v0

    iget-object v1, p0, Landroidx/appcompat/widget/j0$i;->o:Landroidx/appcompat/widget/j0;

    iget v2, v1, Landroidx/appcompat/widget/j0;->C:I

    if-gt v0, v2, :cond_37

    .line 4
    iget-object v0, v1, Landroidx/appcompat/widget/j0;->T:Landroid/widget/PopupWindow;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 5
    iget-object v0, p0, Landroidx/appcompat/widget/j0$i;->o:Landroidx/appcompat/widget/j0;

    invoke-virtual {v0}, Landroidx/appcompat/widget/j0;->h()V

    :cond_37
    return-void
.end method
