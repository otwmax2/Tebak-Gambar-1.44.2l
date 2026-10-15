###### Class androidx.databinding.t (androidx.databinding.t)
.class Landroidx/databinding/t;
.super Ljava/lang/ref/WeakReference;
.source "WeakListener.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/ref/WeakReference<",
        "Landroidx/databinding/ViewDataBinding;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Landroidx/databinding/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/databinding/q<",
            "TT;>;"
        }
    .end annotation
.end field

.field protected final b:I

.field private c:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/databinding/ViewDataBinding;ILandroidx/databinding/q;Ljava/lang/ref/ReferenceQueue;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/databinding/ViewDataBinding;",
            "I",
            "Landroidx/databinding/q<",
            "TT;>;",
            "Ljava/lang/ref/ReferenceQueue<",
            "Landroidx/databinding/ViewDataBinding;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    .line 2
    iput p2, p0, Landroidx/databinding/t;->b:I

    .line 3
    iput-object p3, p0, Landroidx/databinding/t;->a:Landroidx/databinding/q;

    return-void
.end method


# virtual methods
.method protected a()Landroidx/databinding/ViewDataBinding;
    .registers 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/databinding/ViewDataBinding;

    if-nez v0, :cond_b

    .line 2
    invoke-virtual {p0}, Landroidx/databinding/t;->e()Z

    :cond_b
    return-object v0
.end method

.method public b()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/databinding/t;->c:Ljava/lang/Object;

    return-object v0
.end method

.method public c(Landroidx/lifecycle/n;)V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/databinding/t;->a:Landroidx/databinding/q;

    invoke-interface {v0, p1}, Landroidx/databinding/q;->a(Landroidx/lifecycle/n;)V

    return-void
.end method

.method public d(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/databinding/t;->e()Z

    .line 2
    iput-object p1, p0, Landroidx/databinding/t;->c:Ljava/lang/Object;

    if-eqz p1, :cond_c

    .line 3
    iget-object v0, p0, Landroidx/databinding/t;->a:Landroidx/databinding/q;

    invoke-interface {v0, p1}, Landroidx/databinding/q;->c(Ljava/lang/Object;)V

    :cond_c
    return-void
.end method

.method public e()Z
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/databinding/t;->c:Ljava/lang/Object;

    if-eqz v0, :cond_b

    .line 2
    iget-object v1, p0, Landroidx/databinding/t;->a:Landroidx/databinding/q;

    invoke-interface {v1, v0}, Landroidx/databinding/q;->b(Ljava/lang/Object;)V

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    const/4 v1, 0x0

    .line 3
    iput-object v1, p0, Landroidx/databinding/t;->c:Ljava/lang/Object;

    return v0
.end method
