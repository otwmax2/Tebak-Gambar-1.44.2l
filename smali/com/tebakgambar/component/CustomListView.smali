###### Class com.tebakgambar.component.CustomListView (com.tebakgambar.component.CustomListView)
.class public Lcom/tebakgambar/component/CustomListView;
.super Landroid/widget/ListView;
.source "CustomListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tebakgambar/component/CustomListView$a;
    }
.end annotation


# instance fields
.field o:Z

.field private p:Landroid/view/GestureDetector;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 2
    iput-boolean p2, p0, Lcom/tebakgambar/component/CustomListView;->o:Z

    .line 3
    :try_start_6
    new-instance v0, Landroid/view/GestureDetector;

    new-instance v1, Lcom/tebakgambar/component/CustomListView$a;

    invoke-direct {v1, p0}, Lcom/tebakgambar/component/CustomListView$a;-><init>(Lcom/tebakgambar/component/CustomListView;)V

    invoke-direct {v0, p1, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/tebakgambar/component/CustomListView;->p:Landroid/view/GestureDetector;

    .line 4
    invoke-virtual {p0, p2}, Landroid/widget/ListView;->setFadingEdgeLength(I)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_15} :catch_16

    goto :goto_1a

    :catch_16
    move-exception p1

    .line 5
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1a
    return-void
.end method


# virtual methods
.method public a()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/tebakgambar/component/CustomListView;->o:Z

    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    .line 1
    invoke-super {p0, p1}, Landroid/widget/ListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/tebakgambar/component/CustomListView;->p:Landroid/view/GestureDetector;

    .line 2
    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_10

    const/4 p1, 0x1

    goto :goto_11

    :cond_10
    const/4 p1, 0x0

    :goto_11
    return p1
.end method

.method public onMeasure(II)V
    .registers 4

    .line 1
    invoke-virtual {p0}, Lcom/tebakgambar/component/CustomListView;->a()Z

    move-result v0

    if-eqz v0, :cond_1d

    const p2, 0xffffff

    const/high16 v0, -0x80000000

    .line 2
    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 3
    invoke-super {p0, p1, p2}, Landroid/widget/ListView;->onMeasure(II)V

    .line 4
    invoke-virtual {p0}, Landroid/widget/ListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    .line 5
    invoke-virtual {p0}, Landroid/widget/ListView;->getMeasuredHeight()I

    move-result p2

    iput p2, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_20

    .line 6
    :cond_1d
    invoke-super {p0, p1, p2}, Landroid/widget/ListView;->onMeasure(II)V

    :goto_20
    return-void
.end method

.method public setExpanded(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lcom/tebakgambar/component/CustomListView;->o:Z

    return-void
.end method

###### Class com.tebakgambar.component.CustomListView.a (com.tebakgambar.component.CustomListView$a)
.class Lcom/tebakgambar/component/CustomListView$a;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "CustomListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tebakgambar/component/CustomListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/tebakgambar/component/CustomListView;


# direct methods
.method constructor <init>(Lcom/tebakgambar/component/CustomListView;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/tebakgambar/component/CustomListView$a;->a:Lcom/tebakgambar/component/CustomListView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 5

    const/4 p1, 0x0

    .line 1
    :try_start_1
    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result p2

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result p3
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_9} :catch_e

    cmpl-float p2, p2, p3

    if-lez p2, :cond_e

    const/4 p1, 0x1

    :catch_e
    :cond_e
    return p1
.end method
