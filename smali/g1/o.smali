###### Class g1.o (g1.o)
.class public Lg1/o;
.super Ljava/lang/Object;
.source "TransitionManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lg1/o$a;
    }
.end annotation


# static fields
.field private static a:Lg1/m;

.field private static b:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/lang/ref/WeakReference<",
            "Lo/a<",
            "Landroid/view/ViewGroup;",
            "Ljava/util/ArrayList<",
            "Lg1/m;",
            ">;>;>;>;"
        }
    .end annotation
.end field

.field static c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/ViewGroup;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lg1/b;

    invoke-direct {v0}, Lg1/b;-><init>()V

    sput-object v0, Lg1/o;->a:Lg1/m;

    .line 2
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lg1/o;->b:Ljava/lang/ThreadLocal;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lg1/o;->c:Ljava/util/ArrayList;

    return-void
.end method

.method public static a(Landroid/view/ViewGroup;Lg1/m;)V
    .registers 3

    .line 1
    sget-object v0, Lg1/o;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_25

    invoke-static {p0}, Landroidx/core/view/a0;->U(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 2
    sget-object v0, Lg1/o;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-nez p1, :cond_17

    .line 3
    sget-object p1, Lg1/o;->a:Lg1/m;

    .line 4
    :cond_17
    invoke-virtual {p1}, Lg1/m;->n()Lg1/m;

    move-result-object p1

    .line 5
    invoke-static {p0, p1}, Lg1/o;->d(Landroid/view/ViewGroup;Lg1/m;)V

    const/4 v0, 0x0

    .line 6
    invoke-static {p0, v0}, Lg1/l;->c(Landroid/view/ViewGroup;Lg1/l;)V

    .line 7
    invoke-static {p0, p1}, Lg1/o;->c(Landroid/view/ViewGroup;Lg1/m;)V

    :cond_25
    return-void
.end method

.method static b()Lo/a;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/a<",
            "Landroid/view/ViewGroup;",
            "Ljava/util/ArrayList<",
            "Lg1/m;",
            ">;>;"
        }
    .end annotation

    .line 1
    sget-object v0, Lg1/o;->b:Ljava/lang/ThreadLocal;

    .line 2
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_13

    .line 3
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/a;

    if-eqz v0, :cond_13

    return-object v0

    .line 4
    :cond_13
    new-instance v0, Lo/a;

    invoke-direct {v0}, Lo/a;-><init>()V

    .line 5
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 6
    sget-object v2, Lg1/o;->b:Ljava/lang/ThreadLocal;

    invoke-virtual {v2, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    return-object v0
.end method

.method private static c(Landroid/view/ViewGroup;Lg1/m;)V
    .registers 3

    if-eqz p1, :cond_13

    if-eqz p0, :cond_13

    .line 1
    new-instance v0, Lg1/o$a;

    invoke-direct {v0, p1, p0}, Lg1/o$a;-><init>(Lg1/m;Landroid/view/ViewGroup;)V

    .line 2
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :cond_13
    return-void
.end method

.method private static d(Landroid/view/ViewGroup;Lg1/m;)V
    .registers 4

    .line 1
    invoke-static {}, Lg1/o;->b()Lo/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lo/g;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-eqz v0, :cond_26

    .line 2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_26

    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_16
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_26

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg1/m;

    .line 4
    invoke-virtual {v1, p0}, Lg1/m;->P(Landroid/view/View;)V

    goto :goto_16

    :cond_26
    if-eqz p1, :cond_2c

    const/4 v0, 0x1

    .line 5
    invoke-virtual {p1, p0, v0}, Lg1/m;->l(Landroid/view/ViewGroup;Z)V

    .line 6
    :cond_2c
    invoke-static {p0}, Lg1/l;->b(Landroid/view/ViewGroup;)Lg1/l;

    move-result-object p0

    if-eqz p0, :cond_35

    .line 7
    invoke-virtual {p0}, Lg1/l;->a()V

    :cond_35
    return-void
.end method

###### Class g1.o.a (g1.o$a)
.class Lg1/o$a;
.super Ljava/lang/Object;
.source "TransitionManager.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lg1/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field o:Lg1/m;

.field p:Landroid/view/ViewGroup;


# direct methods
.method constructor <init>(Lg1/m;Landroid/view/ViewGroup;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lg1/o$a;->o:Lg1/m;

    .line 3
    iput-object p2, p0, Lg1/o$a;->p:Landroid/view/ViewGroup;

    return-void
.end method

.method private a()V
    .registers 2

    .line 1
    iget-object v0, p0, Lg1/o$a;->p:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 2
    iget-object v0, p0, Lg1/o$a;->p:Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .registers 6

    .line 1
    invoke-direct {p0}, Lg1/o$a;->a()V

    .line 2
    sget-object v0, Lg1/o;->c:Ljava/util/ArrayList;

    iget-object v1, p0, Lg1/o$a;->p:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_f

    return v1

    .line 3
    :cond_f
    invoke-static {}, Lg1/o;->b()Lo/a;

    move-result-object v0

    .line 4
    iget-object v2, p0, Lg1/o$a;->p:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Lo/g;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    const/4 v3, 0x0

    if-nez v2, :cond_29

    .line 5
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 6
    iget-object v4, p0, Lg1/o$a;->p:Landroid/view/ViewGroup;

    invoke-virtual {v0, v4, v2}, Lo/g;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_34

    .line 7
    :cond_29
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_34

    .line 8
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 9
    :cond_34
    :goto_34
    iget-object v4, p0, Lg1/o$a;->o:Lg1/m;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 10
    iget-object v2, p0, Lg1/o$a;->o:Lg1/m;

    new-instance v4, Lg1/o$a$a;

    invoke-direct {v4, p0, v0}, Lg1/o$a$a;-><init>(Lg1/o$a;Lo/a;)V

    invoke-virtual {v2, v4}, Lg1/m;->a(Lg1/m$f;)Lg1/m;

    .line 11
    iget-object v0, p0, Lg1/o$a;->o:Lg1/m;

    iget-object v2, p0, Lg1/o$a;->p:Landroid/view/ViewGroup;

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v4}, Lg1/m;->l(Landroid/view/ViewGroup;Z)V

    if-eqz v3, :cond_63

    .line 12
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_51
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_63

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lg1/m;

    .line 13
    iget-object v3, p0, Lg1/o$a;->p:Landroid/view/ViewGroup;

    invoke-virtual {v2, v3}, Lg1/m;->T(Landroid/view/View;)V

    goto :goto_51

    .line 14
    :cond_63
    iget-object v0, p0, Lg1/o$a;->o:Lg1/m;

    iget-object v2, p0, Lg1/o$a;->p:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Lg1/m;->Q(Landroid/view/ViewGroup;)V

    return v1
.end method

.method public onViewAttachedToWindow(Landroid/view/View;)V
    .registers 2

    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Lg1/o$a;->a()V

    .line 2
    sget-object p1, Lg1/o;->c:Ljava/util/ArrayList;

    iget-object v0, p0, Lg1/o$a;->p:Landroid/view/ViewGroup;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3
    invoke-static {}, Lg1/o;->b()Lo/a;

    move-result-object p1

    iget-object v0, p0, Lg1/o$a;->p:Landroid/view/ViewGroup;

    invoke-virtual {p1, v0}, Lo/g;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    if-eqz p1, :cond_34

    .line 4
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_34

    .line 5
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_22
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_34

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg1/m;

    .line 6
    iget-object v1, p0, Lg1/o$a;->p:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Lg1/m;->T(Landroid/view/View;)V

    goto :goto_22

    .line 7
    :cond_34
    iget-object p1, p0, Lg1/o$a;->o:Lg1/m;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lg1/m;->m(Z)V

    return-void
.end method

###### Class g1.o.a.C0163a (g1.o$a$a)
.class Lg1/o$a$a;
.super Lg1/n;
.source "TransitionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lg1/o$a;->onPreDraw()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lo/a;

.field final synthetic b:Lg1/o$a;


# direct methods
.method constructor <init>(Lg1/o$a;Lo/a;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lg1/o$a$a;->b:Lg1/o$a;

    iput-object p2, p0, Lg1/o$a$a;->a:Lo/a;

    invoke-direct {p0}, Lg1/n;-><init>()V

    return-void
.end method


# virtual methods
.method public d(Lg1/m;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lg1/o$a$a;->a:Lo/a;

    iget-object v1, p0, Lg1/o$a$a;->b:Lg1/o$a;

    iget-object v1, v1, Lg1/o$a;->p:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Lo/g;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 2
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3
    invoke-virtual {p1, p0}, Lg1/m;->R(Lg1/m$f;)Lg1/m;

    return-void
.end method
