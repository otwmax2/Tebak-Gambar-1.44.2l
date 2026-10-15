###### Class androidx.appcompat.view.h (androidx.appcompat.view.h)
.class public Landroidx/appcompat/view/h;
.super Ljava/lang/Object;
.source "ViewPropertyAnimatorCompatSet.java"


# instance fields
.field final a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/core/view/g0;",
            ">;"
        }
    .end annotation
.end field

.field private b:J

.field private c:Landroid/view/animation/Interpolator;

.field d:Landroidx/core/view/h0;

.field private e:Z

.field private final f:Landroidx/core/view/i0;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 2
    iput-wide v0, p0, Landroidx/appcompat/view/h;->b:J

    .line 3
    new-instance v0, Landroidx/appcompat/view/h$a;

    invoke-direct {v0, p0}, Landroidx/appcompat/view/h$a;-><init>(Landroidx/appcompat/view/h;)V

    iput-object v0, p0, Landroidx/appcompat/view/h;->f:Landroidx/core/view/i0;

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/view/h;->a:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    .line 1
    iget-boolean v0, p0, Landroidx/appcompat/view/h;->e:Z

    if-nez v0, :cond_5

    return-void

    .line 2
    :cond_5
    iget-object v0, p0, Landroidx/appcompat/view/h;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/core/view/g0;

    .line 3
    invoke-virtual {v1}, Landroidx/core/view/g0;->c()V

    goto :goto_b

    :cond_1b
    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Landroidx/appcompat/view/h;->e:Z

    return-void
.end method

.method b()V
    .registers 2

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Landroidx/appcompat/view/h;->e:Z

    return-void
.end method

.method public c(Landroidx/core/view/g0;)Landroidx/appcompat/view/h;
    .registers 3

    .line 1
    iget-boolean v0, p0, Landroidx/appcompat/view/h;->e:Z

    if-nez v0, :cond_9

    .line 2
    iget-object v0, p0, Landroidx/appcompat/view/h;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9
    return-object p0
.end method

.method public d(Landroidx/core/view/g0;Landroidx/core/view/g0;)Landroidx/appcompat/view/h;
    .registers 5

    .line 1
    iget-object v0, p0, Landroidx/appcompat/view/h;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2
    invoke-virtual {p1}, Landroidx/core/view/g0;->d()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Landroidx/core/view/g0;->j(J)Landroidx/core/view/g0;

    .line 3
    iget-object p1, p0, Landroidx/appcompat/view/h;->a:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public e(J)Landroidx/appcompat/view/h;
    .registers 4

    .line 1
    iget-boolean v0, p0, Landroidx/appcompat/view/h;->e:Z

    if-nez v0, :cond_6

    .line 2
    iput-wide p1, p0, Landroidx/appcompat/view/h;->b:J

    :cond_6
    return-object p0
.end method

.method public f(Landroid/view/animation/Interpolator;)Landroidx/appcompat/view/h;
    .registers 3

    .line 1
    iget-boolean v0, p0, Landroidx/appcompat/view/h;->e:Z

    if-nez v0, :cond_6

    .line 2
    iput-object p1, p0, Landroidx/appcompat/view/h;->c:Landroid/view/animation/Interpolator;

    :cond_6
    return-object p0
.end method

.method public g(Landroidx/core/view/h0;)Landroidx/appcompat/view/h;
    .registers 3

    .line 1
    iget-boolean v0, p0, Landroidx/appcompat/view/h;->e:Z

    if-nez v0, :cond_6

    .line 2
    iput-object p1, p0, Landroidx/appcompat/view/h;->d:Landroidx/core/view/h0;

    :cond_6
    return-object p0
.end method

.method public h()V
    .registers 8

    .line 1
    iget-boolean v0, p0, Landroidx/appcompat/view/h;->e:Z

    if-eqz v0, :cond_5

    return-void

    .line 2
    :cond_5
    iget-object v0, p0, Landroidx/appcompat/view/h;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_36

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/core/view/g0;

    .line 3
    iget-wide v2, p0, Landroidx/appcompat/view/h;->b:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-ltz v6, :cond_22

    .line 4
    invoke-virtual {v1, v2, v3}, Landroidx/core/view/g0;->f(J)Landroidx/core/view/g0;

    .line 5
    :cond_22
    iget-object v2, p0, Landroidx/appcompat/view/h;->c:Landroid/view/animation/Interpolator;

    if-eqz v2, :cond_29

    .line 6
    invoke-virtual {v1, v2}, Landroidx/core/view/g0;->g(Landroid/view/animation/Interpolator;)Landroidx/core/view/g0;

    .line 7
    :cond_29
    iget-object v2, p0, Landroidx/appcompat/view/h;->d:Landroidx/core/view/h0;

    if-eqz v2, :cond_32

    .line 8
    iget-object v2, p0, Landroidx/appcompat/view/h;->f:Landroidx/core/view/i0;

    invoke-virtual {v1, v2}, Landroidx/core/view/g0;->h(Landroidx/core/view/h0;)Landroidx/core/view/g0;

    .line 9
    :cond_32
    invoke-virtual {v1}, Landroidx/core/view/g0;->l()V

    goto :goto_b

    :cond_36
    const/4 v0, 0x1

    .line 10
    iput-boolean v0, p0, Landroidx/appcompat/view/h;->e:Z

    return-void
.end method

###### Class androidx.appcompat.view.h.a (androidx.appcompat.view.h$a)
.class Landroidx/appcompat/view/h$a;
.super Landroidx/core/view/i0;
.source "ViewPropertyAnimatorCompatSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/view/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private a:Z

.field private b:I

.field final synthetic c:Landroidx/appcompat/view/h;


# direct methods
.method constructor <init>(Landroidx/appcompat/view/h;)V
    .registers 2

    .line 1
    iput-object p1, p0, Landroidx/appcompat/view/h$a;->c:Landroidx/appcompat/view/h;

    invoke-direct {p0}, Landroidx/core/view/i0;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Landroidx/appcompat/view/h$a;->a:Z

    .line 3
    iput p1, p0, Landroidx/appcompat/view/h$a;->b:I

    return-void
.end method


# virtual methods
.method public b(Landroid/view/View;)V
    .registers 3

    .line 1
    iget p1, p0, Landroidx/appcompat/view/h$a;->b:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Landroidx/appcompat/view/h$a;->b:I

    iget-object v0, p0, Landroidx/appcompat/view/h$a;->c:Landroidx/appcompat/view/h;

    iget-object v0, v0, Landroidx/appcompat/view/h;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne p1, v0, :cond_1d

    .line 2
    iget-object p1, p0, Landroidx/appcompat/view/h$a;->c:Landroidx/appcompat/view/h;

    iget-object p1, p1, Landroidx/appcompat/view/h;->d:Landroidx/core/view/h0;

    if-eqz p1, :cond_1a

    const/4 v0, 0x0

    .line 3
    invoke-interface {p1, v0}, Landroidx/core/view/h0;->b(Landroid/view/View;)V

    .line 4
    :cond_1a
    invoke-virtual {p0}, Landroidx/appcompat/view/h$a;->d()V

    :cond_1d
    return-void
.end method

.method public c(Landroid/view/View;)V
    .registers 3

    .line 1
    iget-boolean p1, p0, Landroidx/appcompat/view/h$a;->a:Z

    if-eqz p1, :cond_5

    return-void

    :cond_5
    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Landroidx/appcompat/view/h$a;->a:Z

    .line 3
    iget-object p1, p0, Landroidx/appcompat/view/h$a;->c:Landroidx/appcompat/view/h;

    iget-object p1, p1, Landroidx/appcompat/view/h;->d:Landroidx/core/view/h0;

    if-eqz p1, :cond_12

    const/4 v0, 0x0

    .line 4
    invoke-interface {p1, v0}, Landroidx/core/view/h0;->c(Landroid/view/View;)V

    :cond_12
    return-void
.end method

.method d()V
    .registers 2

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Landroidx/appcompat/view/h$a;->b:I

    .line 2
    iput-boolean v0, p0, Landroidx/appcompat/view/h$a;->a:Z

    .line 3
    iget-object v0, p0, Landroidx/appcompat/view/h$a;->c:Landroidx/appcompat/view/h;

    invoke-virtual {v0}, Landroidx/appcompat/view/h;->b()V

    return-void
.end method
