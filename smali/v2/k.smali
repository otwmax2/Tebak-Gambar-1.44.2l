###### Class v2.k (v2.k)
.class public abstract Lv2/k;
.super Lv2/a;
.source "ViewTarget.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lv2/k$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/view/View;",
        "Z:",
        "Ljava/lang/Object;",
        ">",
        "Lv2/a<",
        "TZ;>;"
    }
.end annotation


# static fields
.field private static r:Z = false

.field private static s:Ljava/lang/Integer;


# instance fields
.field protected final p:Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final q:Lv2/k$a;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lv2/a;-><init>()V

    const-string v0, "View must not be null!"

    .line 2
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    iput-object p1, p0, Lv2/k;->p:Landroid/view/View;

    .line 4
    new-instance v0, Lv2/k$a;

    invoke-direct {v0, p1}, Lv2/k$a;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lv2/k;->q:Lv2/k$a;

    return-void
.end method

.method private f()Ljava/lang/Object;
    .registers 3

    .line 1
    sget-object v0, Lv2/k;->s:Ljava/lang/Integer;

    if-nez v0, :cond_b

    .line 2
    iget-object v0, p0, Lv2/k;->p:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 3
    :cond_b
    iget-object v1, p0, Lv2/k;->p:Landroid/view/View;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private n(Ljava/lang/Object;)V
    .registers 4

    .line 1
    sget-object v0, Lv2/k;->s:Ljava/lang/Integer;

    if-nez v0, :cond_d

    const/4 v0, 0x1

    .line 2
    sput-boolean v0, Lv2/k;->r:Z

    .line 3
    iget-object v0, p0, Lv2/k;->p:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_16

    .line 4
    :cond_d
    iget-object v1, p0, Lv2/k;->p:Landroid/view/View;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    :goto_16
    return-void
.end method


# virtual methods
.method public a()Landroid/view/View;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lv2/k;->p:Landroid/view/View;

    return-object v0
.end method

.method public i(Lv2/h;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lv2/k;->q:Lv2/k$a;

    invoke-virtual {v0, p1}, Lv2/k$a;->d(Lv2/h;)V

    return-void
.end method

.method public k()Lt2/c;
    .registers 3

    .line 1
    invoke-direct {p0}, Lv2/k;->f()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 2
    instance-of v1, v0, Lt2/c;

    if-eqz v1, :cond_d

    .line 3
    check-cast v0, Lt2/c;

    goto :goto_16

    .line 4
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "You must not call setTag() on a view Glide is targeting"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_15
    const/4 v0, 0x0

    :goto_16
    return-object v0
.end method

.method public m(Lt2/c;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lv2/k;->n(Ljava/lang/Object;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Target for: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lv2/k;->p:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class v2.k.a (v2.k$a)
.class Lv2/k$a;
.super Ljava/lang/Object;
.source "ViewTarget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lv2/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lv2/k$a$a;
    }
.end annotation


# instance fields
.field private final a:Landroid/view/View;

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lv2/h;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lv2/k$a$a;

.field private d:Landroid/graphics/Point;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lv2/k$a;->b:Ljava/util/List;

    .line 3
    iput-object p1, p0, Lv2/k$a;->a:Landroid/view/View;

    return-void
.end method

.method static synthetic a(Lv2/k$a;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Lv2/k$a;->b()V

    return-void
.end method

.method private b()V
    .registers 4

    .line 1
    iget-object v0, p0, Lv2/k$a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    .line 2
    :cond_9
    invoke-direct {p0}, Lv2/k$a;->g()I

    move-result v0

    .line 3
    invoke-direct {p0}, Lv2/k$a;->f()I

    move-result v1

    .line 4
    invoke-direct {p0, v0}, Lv2/k$a;->h(I)Z

    move-result v2

    if-eqz v2, :cond_35

    invoke-direct {p0, v1}, Lv2/k$a;->h(I)Z

    move-result v2

    if-nez v2, :cond_1e

    goto :goto_35

    .line 5
    :cond_1e
    invoke-direct {p0, v0, v1}, Lv2/k$a;->i(II)V

    .line 6
    iget-object v0, p0, Lv2/k$a;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_32

    .line 8
    iget-object v1, p0, Lv2/k$a;->c:Lv2/k$a$a;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :cond_32
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lv2/k$a;->c:Lv2/k$a$a;

    :cond_35
    :goto_35
    return-void
.end method

.method private c()Landroid/graphics/Point;
    .registers 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0xd
    .end annotation

    .line 1
    iget-object v0, p0, Lv2/k$a;->d:Landroid/graphics/Point;

    if-eqz v0, :cond_5

    return-object v0

    .line 2
    :cond_5
    iget-object v0, p0, Lv2/k$a;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 3
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 4
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xd

    if-lt v1, v2, :cond_28

    .line 5
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    iput-object v1, p0, Lv2/k$a;->d:Landroid/graphics/Point;

    .line 6
    invoke-virtual {v0, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    goto :goto_37

    .line 7
    :cond_28
    new-instance v1, Landroid/graphics/Point;

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    invoke-direct {v1, v2, v0}, Landroid/graphics/Point;-><init>(II)V

    iput-object v1, p0, Lv2/k$a;->d:Landroid/graphics/Point;

    .line 8
    :goto_37
    iget-object v0, p0, Lv2/k$a;->d:Landroid/graphics/Point;

    return-object v0
.end method

.method private e(IZ)I
    .registers 4

    const/4 v0, -0x2

    if-ne p1, v0, :cond_e

    .line 1
    invoke-direct {p0}, Lv2/k$a;->c()Landroid/graphics/Point;

    move-result-object p1

    if-eqz p2, :cond_c

    .line 2
    iget p1, p1, Landroid/graphics/Point;->y:I

    goto :goto_e

    :cond_c
    iget p1, p1, Landroid/graphics/Point;->x:I

    :cond_e
    :goto_e
    return p1
.end method

.method private f()I
    .registers 3

    .line 1
    iget-object v0, p0, Lv2/k$a;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lv2/k$a;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-direct {p0, v1}, Lv2/k$a;->h(I)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 3
    iget-object v0, p0, Lv2/k$a;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    return v0

    :cond_19
    if-eqz v0, :cond_23

    .line 4
    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lv2/k$a;->e(IZ)I

    move-result v0

    return v0

    :cond_23
    const/4 v0, 0x0

    return v0
.end method

.method private g()I
    .registers 3

    .line 1
    iget-object v0, p0, Lv2/k$a;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lv2/k$a;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-direct {p0, v1}, Lv2/k$a;->h(I)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 3
    iget-object v0, p0, Lv2/k$a;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    return v0

    :cond_19
    const/4 v1, 0x0

    if-eqz v0, :cond_23

    .line 4
    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-direct {p0, v0, v1}, Lv2/k$a;->e(IZ)I

    move-result v0

    return v0

    :cond_23
    return v1
.end method

.method private h(I)Z
    .registers 3

    if-gtz p1, :cond_8

    const/4 v0, -0x2

    if-ne p1, v0, :cond_6

    goto :goto_8

    :cond_6
    const/4 p1, 0x0

    goto :goto_9

    :cond_8
    :goto_8
    const/4 p1, 0x1

    :goto_9
    return p1
.end method

.method private i(II)V
    .registers 5

    .line 1
    iget-object v0, p0, Lv2/k$a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lv2/h;

    .line 2
    invoke-interface {v1, p1, p2}, Lv2/h;->g(II)V

    goto :goto_6

    .line 3
    :cond_16
    iget-object p1, p0, Lv2/k$a;->b:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    return-void
.end method


# virtual methods
.method public d(Lv2/h;)V
    .registers 5

    .line 1
    invoke-direct {p0}, Lv2/k$a;->g()I

    move-result v0

    .line 2
    invoke-direct {p0}, Lv2/k$a;->f()I

    move-result v1

    .line 3
    invoke-direct {p0, v0}, Lv2/k$a;->h(I)Z

    move-result v2

    if-eqz v2, :cond_18

    invoke-direct {p0, v1}, Lv2/k$a;->h(I)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 4
    invoke-interface {p1, v0, v1}, Lv2/h;->g(II)V

    goto :goto_39

    .line 5
    :cond_18
    iget-object v0, p0, Lv2/k$a;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_25

    .line 6
    iget-object v0, p0, Lv2/k$a;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7
    :cond_25
    iget-object p1, p0, Lv2/k$a;->c:Lv2/k$a$a;

    if-nez p1, :cond_39

    .line 8
    iget-object p1, p0, Lv2/k$a;->a:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    .line 9
    new-instance v0, Lv2/k$a$a;

    invoke-direct {v0, p0}, Lv2/k$a$a;-><init>(Lv2/k$a;)V

    iput-object v0, p0, Lv2/k$a;->c:Lv2/k$a$a;

    .line 10
    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :cond_39
    :goto_39
    return-void
.end method

###### Class v2.k.a.ViewTreeObserverOnPreDrawListenerC0285a (v2.k$a$a)
.class Lv2/k$a$a;
.super Ljava/lang/Object;
.source "ViewTarget.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lv2/k$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private final o:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lv2/k$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lv2/k$a;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lv2/k$a$a;->o:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .registers 4

    const-string v0, "ViewTarget"

    const/4 v1, 0x2

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OnGlobalLayoutListener called listener="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    :cond_1d
    iget-object v0, p0, Lv2/k$a$a;->o:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lv2/k$a;

    if-eqz v0, :cond_2a

    .line 4
    invoke-static {v0}, Lv2/k$a;->a(Lv2/k$a;)V

    :cond_2a
    const/4 v0, 0x1

    return v0
.end method
