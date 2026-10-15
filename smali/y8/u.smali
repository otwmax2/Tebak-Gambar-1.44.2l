###### Class y8.u (y8.u)
.class public Ly8/u;
.super Landroidx/lifecycle/t;
.source "SingleLiveEvent.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroidx/lifecycle/t<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final l:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Landroidx/lifecycle/t;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Ly8/u;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public static synthetic o(Ly8/u;Landroidx/lifecycle/u;Ljava/lang/Object;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ly8/u;->p(Landroidx/lifecycle/u;Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic p(Landroidx/lifecycle/u;Ljava/lang/Object;)V
    .registers 6

    .line 1
    iget-object v0, p0, Ly8/u;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 2
    invoke-interface {p1, p2}, Landroidx/lifecycle/u;->d(Ljava/lang/Object;)V

    :cond_d
    return-void
.end method


# virtual methods
.method public h(Landroidx/lifecycle/n;Landroidx/lifecycle/u;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/n;",
            "Landroidx/lifecycle/u<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/lifecycle/LiveData;->g()Z

    move-result v0

    if-eqz v0, :cond_d

    const-string v0, "SingleLiveEvent"

    const-string v1, "Multiple observers registered but only one will be notified of changes."

    .line 2
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    :cond_d
    new-instance v0, Ly8/t;

    invoke-direct {v0, p0, p2}, Ly8/t;-><init>(Ly8/u;Landroidx/lifecycle/u;)V

    invoke-super {p0, p1, v0}, Landroidx/lifecycle/LiveData;->h(Landroidx/lifecycle/n;Landroidx/lifecycle/u;)V

    return-void
.end method

.method public n(Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ly8/u;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 2
    invoke-super {p0, p1}, Landroidx/lifecycle/t;->n(Ljava/lang/Object;)V

    return-void
.end method

###### Class y8.t (y8.t)
.class public final synthetic Ly8/t;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroidx/lifecycle/u;


# instance fields
.field public final synthetic a:Ly8/u;

.field public final synthetic b:Landroidx/lifecycle/u;


# direct methods
.method public synthetic constructor <init>(Ly8/u;Landroidx/lifecycle/u;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ly8/t;->a:Ly8/u;

    iput-object p2, p0, Ly8/t;->b:Landroidx/lifecycle/u;

    return-void
.end method


# virtual methods
.method public final d(Ljava/lang/Object;)V
    .registers 4

    iget-object v0, p0, Ly8/t;->a:Ly8/u;

    iget-object v1, p0, Ly8/t;->b:Landroidx/lifecycle/u;

    invoke-static {v0, v1, p1}, Ly8/u;->o(Ly8/u;Landroidx/lifecycle/u;Ljava/lang/Object;)V

    return-void
.end method
