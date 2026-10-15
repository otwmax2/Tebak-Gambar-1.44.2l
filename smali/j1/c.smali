###### Class j1.c (j1.c)
.class public Lj1/c;
.super Ljava/lang/Object;
.source "OperationImpl.java"

# interfaces
.implements Li1/m;


# instance fields
.field private final c:Landroidx/lifecycle/t;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/t<",
            "Li1/m$b;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Landroidx/work/impl/utils/futures/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/work/impl/utils/futures/c<",
            "Li1/m$b$c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroidx/lifecycle/t;

    invoke-direct {v0}, Landroidx/lifecycle/t;-><init>()V

    iput-object v0, p0, Lj1/c;->c:Landroidx/lifecycle/t;

    .line 3
    invoke-static {}, Landroidx/work/impl/utils/futures/c;->u()Landroidx/work/impl/utils/futures/c;

    move-result-object v0

    iput-object v0, p0, Lj1/c;->d:Landroidx/work/impl/utils/futures/c;

    .line 4
    sget-object v0, Li1/m;->b:Li1/m$b$b;

    invoke-virtual {p0, v0}, Lj1/c;->a(Li1/m$b;)V

    return-void
.end method


# virtual methods
.method public a(Li1/m$b;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lj1/c;->c:Landroidx/lifecycle/t;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/t;->l(Ljava/lang/Object;)V

    .line 2
    instance-of v0, p1, Li1/m$b$c;

    if-eqz v0, :cond_11

    .line 3
    iget-object v0, p0, Lj1/c;->d:Landroidx/work/impl/utils/futures/c;

    check-cast p1, Li1/m$b$c;

    invoke-virtual {v0, p1}, Landroidx/work/impl/utils/futures/c;->q(Ljava/lang/Object;)Z

    goto :goto_20

    .line 4
    :cond_11
    instance-of v0, p1, Li1/m$b$a;

    if-eqz v0, :cond_20

    .line 5
    check-cast p1, Li1/m$b$a;

    .line 6
    iget-object v0, p0, Lj1/c;->d:Landroidx/work/impl/utils/futures/c;

    invoke-virtual {p1}, Li1/m$b$a;->a()Ljava/lang/Throwable;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/work/impl/utils/futures/c;->r(Ljava/lang/Throwable;)Z

    :cond_20
    :goto_20
    return-void
.end method
