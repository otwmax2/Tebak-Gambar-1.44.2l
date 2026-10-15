###### Class androidx.recyclerview.widget.e (androidx.recyclerview.widget.e)
.class final Landroidx/recyclerview/widget/e;
.super Ljava/lang/Object;
.source "GapWorker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/recyclerview/widget/e$b;,
        Landroidx/recyclerview/widget/e$c;
    }
.end annotation


# static fields
.field static final s:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Landroidx/recyclerview/widget/e;",
            ">;"
        }
    .end annotation
.end field

.field static t:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Landroidx/recyclerview/widget/e$c;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field o:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/recyclerview/widget/RecyclerView;",
            ">;"
        }
    .end annotation
.end field

.field p:J

.field q:J

.field private r:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/recyclerview/widget/e$c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Landroidx/recyclerview/widget/e;->s:Ljava/lang/ThreadLocal;

    .line 2
    new-instance v0, Landroidx/recyclerview/widget/e$a;

    invoke-direct {v0}, Landroidx/recyclerview/widget/e$a;-><init>()V

    sput-object v0, Landroidx/recyclerview/widget/e;->t:Ljava/util/Comparator;

    return-void
.end method

.method constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/e;->o:Ljava/util/ArrayList;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/e;->r:Ljava/util/ArrayList;

    return-void
.end method

.method private b()V
    .registers 13

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/e;->o:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_9
    if-ge v2, v0, :cond_26

    .line 2
    iget-object v4, p0, Landroidx/recyclerview/widget/e;->o:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/recyclerview/widget/RecyclerView;

    .line 3
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getWindowVisibility()I

    move-result v5

    if-nez v5, :cond_23

    .line 4
    iget-object v5, v4, Landroidx/recyclerview/widget/RecyclerView;->v0:Landroidx/recyclerview/widget/e$b;

    invoke-virtual {v5, v4, v1}, Landroidx/recyclerview/widget/e$b;->c(Landroidx/recyclerview/widget/RecyclerView;Z)V

    .line 5
    iget-object v4, v4, Landroidx/recyclerview/widget/RecyclerView;->v0:Landroidx/recyclerview/widget/e$b;

    iget v4, v4, Landroidx/recyclerview/widget/e$b;->d:I

    add-int/2addr v3, v4

    :cond_23
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 6
    :cond_26
    iget-object v2, p0, Landroidx/recyclerview/widget/e;->r:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->ensureCapacity(I)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_2d
    if-ge v2, v0, :cond_8e

    .line 7
    iget-object v4, p0, Landroidx/recyclerview/widget/e;->o:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/recyclerview/widget/RecyclerView;

    .line 8
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getWindowVisibility()I

    move-result v5

    if-eqz v5, :cond_3e

    goto :goto_8b

    .line 9
    :cond_3e
    iget-object v5, v4, Landroidx/recyclerview/widget/RecyclerView;->v0:Landroidx/recyclerview/widget/e$b;

    .line 10
    iget v6, v5, Landroidx/recyclerview/widget/e$b;->a:I

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    iget v7, v5, Landroidx/recyclerview/widget/e$b;->b:I

    .line 11
    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    add-int/2addr v6, v7

    const/4 v7, 0x0

    .line 12
    :goto_4e
    iget v8, v5, Landroidx/recyclerview/widget/e$b;->d:I

    mul-int/lit8 v8, v8, 0x2

    if-ge v7, v8, :cond_8b

    .line 13
    iget-object v8, p0, Landroidx/recyclerview/widget/e;->r:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lt v3, v8, :cond_67

    .line 14
    new-instance v8, Landroidx/recyclerview/widget/e$c;

    invoke-direct {v8}, Landroidx/recyclerview/widget/e$c;-><init>()V

    .line 15
    iget-object v9, p0, Landroidx/recyclerview/widget/e;->r:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6f

    .line 16
    :cond_67
    iget-object v8, p0, Landroidx/recyclerview/widget/e;->r:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/recyclerview/widget/e$c;

    .line 17
    :goto_6f
    iget-object v9, v5, Landroidx/recyclerview/widget/e$b;->c:[I

    add-int/lit8 v10, v7, 0x1

    aget v10, v9, v10

    if-gt v10, v6, :cond_79

    const/4 v11, 0x1

    goto :goto_7a

    :cond_79
    const/4 v11, 0x0

    .line 18
    :goto_7a
    iput-boolean v11, v8, Landroidx/recyclerview/widget/e$c;->a:Z

    .line 19
    iput v6, v8, Landroidx/recyclerview/widget/e$c;->b:I

    .line 20
    iput v10, v8, Landroidx/recyclerview/widget/e$c;->c:I

    .line 21
    iput-object v4, v8, Landroidx/recyclerview/widget/e$c;->d:Landroidx/recyclerview/widget/RecyclerView;

    .line 22
    aget v9, v9, v7

    iput v9, v8, Landroidx/recyclerview/widget/e$c;->e:I

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v7, v7, 0x2

    goto :goto_4e

    :cond_8b
    :goto_8b
    add-int/lit8 v2, v2, 0x1

    goto :goto_2d

    .line 23
    :cond_8e
    iget-object v0, p0, Landroidx/recyclerview/widget/e;->r:Ljava/util/ArrayList;

    sget-object v1, Landroidx/recyclerview/widget/e;->t:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method

.method private c(Landroidx/recyclerview/widget/e$c;J)V
    .registers 7

    .line 1
    iget-boolean v0, p1, Landroidx/recyclerview/widget/e$c;->a:Z

    if-eqz v0, :cond_a

    const-wide v0, 0x7fffffffffffffffL

    goto :goto_b

    :cond_a
    move-wide v0, p2

    .line 2
    :goto_b
    iget-object v2, p1, Landroidx/recyclerview/widget/e$c;->d:Landroidx/recyclerview/widget/RecyclerView;

    iget p1, p1, Landroidx/recyclerview/widget/e$c;->e:I

    invoke-direct {p0, v2, p1, v0, v1}, Landroidx/recyclerview/widget/e;->i(Landroidx/recyclerview/widget/RecyclerView;IJ)Landroidx/recyclerview/widget/RecyclerView$e0;

    move-result-object p1

    if-eqz p1, :cond_30

    .line 3
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$e0;->p:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_30

    .line 4
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$e0;->C()Z

    move-result v0

    if-eqz v0, :cond_30

    .line 5
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$e0;->D()Z

    move-result v0

    if-nez v0, :cond_30

    .line 6
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$e0;->p:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    invoke-direct {p0, p1, p2, p3}, Landroidx/recyclerview/widget/e;->h(Landroidx/recyclerview/widget/RecyclerView;J)V

    :cond_30
    return-void
.end method

.method private d(J)V
    .registers 6

    const/4 v0, 0x0

    .line 1
    :goto_1
    iget-object v1, p0, Landroidx/recyclerview/widget/e;->r:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1f

    .line 2
    iget-object v1, p0, Landroidx/recyclerview/widget/e;->r:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/e$c;

    .line 3
    iget-object v2, v1, Landroidx/recyclerview/widget/e$c;->d:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v2, :cond_16

    goto :goto_1f

    .line 4
    :cond_16
    invoke-direct {p0, v1, p1, p2}, Landroidx/recyclerview/widget/e;->c(Landroidx/recyclerview/widget/e$c;J)V

    .line 5
    invoke-virtual {v1}, Landroidx/recyclerview/widget/e$c;->a()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1f
    :goto_1f
    return-void
.end method

.method static e(Landroidx/recyclerview/widget/RecyclerView;I)Z
    .registers 7

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->s:Landroidx/recyclerview/widget/b;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/b;->j()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_8
    if-ge v2, v0, :cond_23

    .line 2
    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView;->s:Landroidx/recyclerview/widget/b;

    invoke-virtual {v3, v2}, Landroidx/recyclerview/widget/b;->i(I)Landroid/view/View;

    move-result-object v3

    .line 3
    invoke-static {v3}, Landroidx/recyclerview/widget/RecyclerView;->f0(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$e0;

    move-result-object v3

    .line 4
    iget v4, v3, Landroidx/recyclerview/widget/RecyclerView$e0;->q:I

    if-ne v4, p1, :cond_20

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$e0;->D()Z

    move-result v3

    if-nez v3, :cond_20

    const/4 p0, 0x1

    return p0

    :cond_20
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_23
    return v1
.end method

.method private h(Landroidx/recyclerview/widget/RecyclerView;J)V
    .registers 7

    if-nez p1, :cond_3

    return-void

    .line 1
    :cond_3
    iget-boolean v0, p1, Landroidx/recyclerview/widget/RecyclerView;->S:Z

    if-eqz v0, :cond_12

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView;->s:Landroidx/recyclerview/widget/b;

    .line 2
    invoke-virtual {v0}, Landroidx/recyclerview/widget/b;->j()I

    move-result v0

    if-eqz v0, :cond_12

    .line 3
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->U0()V

    .line 4
    :cond_12
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView;->v0:Landroidx/recyclerview/widget/e$b;

    const/4 v1, 0x1

    .line 5
    invoke-virtual {v0, p1, v1}, Landroidx/recyclerview/widget/e$b;->c(Landroidx/recyclerview/widget/RecyclerView;Z)V

    .line 6
    iget v1, v0, Landroidx/recyclerview/widget/e$b;->d:I

    if-eqz v1, :cond_42

    :try_start_1c
    const-string v1, "RV Nested Prefetch"

    .line 7
    invoke-static {v1}, Landroidx/core/os/m;->a(Ljava/lang/String;)V

    .line 8
    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView;->w0:Landroidx/recyclerview/widget/RecyclerView$b0;

    iget-object v2, p1, Landroidx/recyclerview/widget/RecyclerView;->z:Landroidx/recyclerview/widget/RecyclerView$h;

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView$b0;->f(Landroidx/recyclerview/widget/RecyclerView$h;)V

    const/4 v1, 0x0

    .line 9
    :goto_29
    iget v2, v0, Landroidx/recyclerview/widget/e$b;->d:I

    mul-int/lit8 v2, v2, 0x2

    if-ge v1, v2, :cond_39

    .line 10
    iget-object v2, v0, Landroidx/recyclerview/widget/e$b;->c:[I

    aget v2, v2, v1

    .line 11
    invoke-direct {p0, p1, v2, p2, p3}, Landroidx/recyclerview/widget/e;->i(Landroidx/recyclerview/widget/RecyclerView;IJ)Landroidx/recyclerview/widget/RecyclerView$e0;
    :try_end_36
    .catchall {:try_start_1c .. :try_end_36} :catchall_3d

    add-int/lit8 v1, v1, 0x2

    goto :goto_29

    .line 12
    :cond_39
    invoke-static {}, Landroidx/core/os/m;->b()V

    goto :goto_42

    :catchall_3d
    move-exception p1

    invoke-static {}, Landroidx/core/os/m;->b()V

    .line 13
    throw p1

    :cond_42
    :goto_42
    return-void
.end method

.method private i(Landroidx/recyclerview/widget/RecyclerView;IJ)Landroidx/recyclerview/widget/RecyclerView$e0;
    .registers 7

    .line 1
    invoke-static {p1, p2}, Landroidx/recyclerview/widget/e;->e(Landroidx/recyclerview/widget/RecyclerView;I)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_8
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView;->p:Landroidx/recyclerview/widget/RecyclerView$w;

    const/4 v1, 0x0

    .line 3
    :try_start_b
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->G0()V

    .line 4
    invoke-virtual {v0, p2, v1, p3, p4}, Landroidx/recyclerview/widget/RecyclerView$w;->I(IZJ)Landroidx/recyclerview/widget/RecyclerView$e0;

    move-result-object p2

    if-eqz p2, :cond_29

    .line 5
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$e0;->C()Z

    move-result p3

    if-eqz p3, :cond_26

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$e0;->D()Z

    move-result p3

    if-nez p3, :cond_26

    .line 6
    iget-object p3, p2, Landroidx/recyclerview/widget/RecyclerView$e0;->o:Landroid/view/View;

    invoke-virtual {v0, p3}, Landroidx/recyclerview/widget/RecyclerView$w;->B(Landroid/view/View;)V

    goto :goto_29

    .line 7
    :cond_26
    invoke-virtual {v0, p2, v1}, Landroidx/recyclerview/widget/RecyclerView$w;->a(Landroidx/recyclerview/widget/RecyclerView$e0;Z)V
    :try_end_29
    .catchall {:try_start_b .. :try_end_29} :catchall_2d

    .line 8
    :cond_29
    :goto_29
    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->I0(Z)V

    return-object p2

    :catchall_2d
    move-exception p2

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->I0(Z)V

    .line 9
    throw p2
.end method


# virtual methods
.method public a(Landroidx/recyclerview/widget/RecyclerView;)V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/e;->o:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method f(Landroidx/recyclerview/widget/RecyclerView;II)V
    .registers 9

    .line 1
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 2
    iget-wide v0, p0, Landroidx/recyclerview/widget/e;->p:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_17

    .line 3
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getNanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/recyclerview/widget/e;->p:J

    .line 4
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    .line 5
    :cond_17
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView;->v0:Landroidx/recyclerview/widget/e$b;

    invoke-virtual {p1, p2, p3}, Landroidx/recyclerview/widget/e$b;->e(II)V

    return-void
.end method

.method g(J)V
    .registers 3

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/e;->b()V

    .line 2
    invoke-direct {p0, p1, p2}, Landroidx/recyclerview/widget/e;->d(J)V

    return-void
.end method

.method public j(Landroidx/recyclerview/widget/RecyclerView;)V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/e;->o:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public run()V
    .registers 9

    const-wide/16 v0, 0x0

    :try_start_2
    const-string v2, "RV Prefetch"

    .line 1
    invoke-static {v2}, Landroidx/core/os/m;->a(Ljava/lang/String;)V

    .line 2
    iget-object v2, p0, Landroidx/recyclerview/widget/e;->o:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2
    :try_end_d
    .catchall {:try_start_2 .. :try_end_d} :catchall_4f

    if-eqz v2, :cond_15

    .line 3
    :goto_f
    iput-wide v0, p0, Landroidx/recyclerview/widget/e;->p:J

    .line 4
    invoke-static {}, Landroidx/core/os/m;->b()V

    return-void

    .line 5
    :cond_15
    :try_start_15
    iget-object v2, p0, Landroidx/recyclerview/widget/e;->o:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    move-wide v4, v0

    :goto_1d
    if-ge v3, v2, :cond_38

    .line 6
    iget-object v6, p0, Landroidx/recyclerview/widget/e;->o:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/recyclerview/widget/RecyclerView;

    .line 7
    invoke-virtual {v6}, Landroid/view/ViewGroup;->getWindowVisibility()I

    move-result v7

    if-nez v7, :cond_35

    .line 8
    invoke-virtual {v6}, Landroid/view/ViewGroup;->getDrawingTime()J

    move-result-wide v6

    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    :cond_35
    add-int/lit8 v3, v3, 0x1

    goto :goto_1d

    :cond_38
    cmp-long v2, v4, v0

    if-nez v2, :cond_3d

    goto :goto_f

    .line 9
    :cond_3d
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v4, v5}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v2

    iget-wide v4, p0, Landroidx/recyclerview/widget/e;->q:J

    add-long/2addr v2, v4

    .line 10
    invoke-virtual {p0, v2, v3}, Landroidx/recyclerview/widget/e;->g(J)V
    :try_end_49
    .catchall {:try_start_15 .. :try_end_49} :catchall_4f

    .line 11
    iput-wide v0, p0, Landroidx/recyclerview/widget/e;->p:J

    .line 12
    invoke-static {}, Landroidx/core/os/m;->b()V

    return-void

    :catchall_4f
    move-exception v2

    .line 13
    iput-wide v0, p0, Landroidx/recyclerview/widget/e;->p:J

    .line 14
    invoke-static {}, Landroidx/core/os/m;->b()V

    .line 15
    goto :goto_57

    :goto_56
    throw v2

    :goto_57
    goto :goto_56
.end method

###### Class androidx.recyclerview.widget.e.a (androidx.recyclerview.widget.e$a)
.class Landroidx/recyclerview/widget/e$a;
.super Ljava/lang/Object;
.source "GapWorker.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Landroidx/recyclerview/widget/e$c;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroidx/recyclerview/widget/e$c;Landroidx/recyclerview/widget/e$c;)I
    .registers 9

    .line 1
    iget-object v0, p1, Landroidx/recyclerview/widget/e$c;->d:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_8

    const/4 v3, 0x1

    goto :goto_9

    :cond_8
    const/4 v3, 0x0

    :goto_9
    iget-object v4, p2, Landroidx/recyclerview/widget/e$c;->d:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v4, :cond_f

    const/4 v4, 0x1

    goto :goto_10

    :cond_f
    const/4 v4, 0x0

    :goto_10
    const/4 v5, -0x1

    if-eq v3, v4, :cond_18

    if-nez v0, :cond_16

    goto :goto_17

    :cond_16
    const/4 v2, -0x1

    :goto_17
    return v2

    .line 2
    :cond_18
    iget-boolean v0, p1, Landroidx/recyclerview/widget/e$c;->a:Z

    iget-boolean v3, p2, Landroidx/recyclerview/widget/e$c;->a:Z

    if-eq v0, v3, :cond_22

    if-eqz v0, :cond_21

    const/4 v2, -0x1

    :cond_21
    return v2

    .line 3
    :cond_22
    iget v0, p2, Landroidx/recyclerview/widget/e$c;->b:I

    iget v2, p1, Landroidx/recyclerview/widget/e$c;->b:I

    sub-int/2addr v0, v2

    if-eqz v0, :cond_2a

    return v0

    .line 4
    :cond_2a
    iget p1, p1, Landroidx/recyclerview/widget/e$c;->c:I

    iget p2, p2, Landroidx/recyclerview/widget/e$c;->c:I

    sub-int/2addr p1, p2

    if-eqz p1, :cond_32

    return p1

    :cond_32
    return v1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    .line 1
    check-cast p1, Landroidx/recyclerview/widget/e$c;

    check-cast p2, Landroidx/recyclerview/widget/e$c;

    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/e$a;->a(Landroidx/recyclerview/widget/e$c;Landroidx/recyclerview/widget/e$c;)I

    move-result p1

    return p1
.end method

###### Class androidx.recyclerview.widget.e.b (androidx.recyclerview.widget.e$b)
.class Landroidx/recyclerview/widget/e$b;
.super Ljava/lang/Object;
.source "GapWorker.java"

# interfaces
.implements Landroidx/recyclerview/widget/RecyclerView$p$c;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "VisibleForTests"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# instance fields
.field a:I

.field b:I

.field c:[I

.field d:I


# direct methods
.method constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(II)V
    .registers 8

    if-ltz p1, :cond_3b

    if-ltz p2, :cond_33

    .line 1
    iget v0, p0, Landroidx/recyclerview/widget/e$b;->d:I

    mul-int/lit8 v0, v0, 0x2

    .line 2
    iget-object v1, p0, Landroidx/recyclerview/widget/e$b;->c:[I

    if-nez v1, :cond_16

    const/4 v1, 0x4

    new-array v1, v1, [I

    .line 3
    iput-object v1, p0, Landroidx/recyclerview/widget/e$b;->c:[I

    const/4 v2, -0x1

    .line 4
    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([II)V

    goto :goto_24

    .line 5
    :cond_16
    array-length v2, v1

    if-lt v0, v2, :cond_24

    mul-int/lit8 v2, v0, 0x2

    .line 6
    new-array v2, v2, [I

    iput-object v2, p0, Landroidx/recyclerview/widget/e$b;->c:[I

    .line 7
    array-length v3, v1

    const/4 v4, 0x0

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 8
    :cond_24
    :goto_24
    iget-object v1, p0, Landroidx/recyclerview/widget/e$b;->c:[I

    aput p1, v1, v0

    add-int/lit8 v0, v0, 0x1

    .line 9
    aput p2, v1, v0

    .line 10
    iget p1, p0, Landroidx/recyclerview/widget/e$b;->d:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Landroidx/recyclerview/widget/e$b;->d:I

    return-void

    .line 11
    :cond_33
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Pixel distance must be non-negative"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 12
    :cond_3b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Layout positions must be non-negative"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method b()V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/e$b;->c:[I

    if-eqz v0, :cond_8

    const/4 v1, -0x1

    .line 2
    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    :cond_8
    const/4 v0, 0x0

    .line 3
    iput v0, p0, Landroidx/recyclerview/widget/e$b;->d:I

    return-void
.end method

.method c(Landroidx/recyclerview/widget/RecyclerView;Z)V
    .registers 7

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Landroidx/recyclerview/widget/e$b;->d:I

    .line 2
    iget-object v0, p0, Landroidx/recyclerview/widget/e$b;->c:[I

    if-eqz v0, :cond_b

    const/4 v1, -0x1

    .line 3
    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 4
    :cond_b
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView;->A:Landroidx/recyclerview/widget/RecyclerView$p;

    .line 5
    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView;->z:Landroidx/recyclerview/widget/RecyclerView$h;

    if-eqz v1, :cond_4b

    if-eqz v0, :cond_4b

    .line 6
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$p;->u0()Z

    move-result v1

    if-eqz v1, :cond_4b

    if-eqz p2, :cond_2d

    .line 7
    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView;->r:Landroidx/recyclerview/widget/a;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/a;->p()Z

    move-result v1

    if-nez v1, :cond_3c

    .line 8
    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView;->z:Landroidx/recyclerview/widget/RecyclerView$h;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$h;->d()I

    move-result v1

    invoke-virtual {v0, v1, p0}, Landroidx/recyclerview/widget/RecyclerView$p;->p(ILandroidx/recyclerview/widget/RecyclerView$p$c;)V

    goto :goto_3c

    .line 9
    :cond_2d
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->l0()Z

    move-result v1

    if-nez v1, :cond_3c

    .line 10
    iget v1, p0, Landroidx/recyclerview/widget/e$b;->a:I

    iget v2, p0, Landroidx/recyclerview/widget/e$b;->b:I

    iget-object v3, p1, Landroidx/recyclerview/widget/RecyclerView;->w0:Landroidx/recyclerview/widget/RecyclerView$b0;

    invoke-virtual {v0, v1, v2, v3, p0}, Landroidx/recyclerview/widget/RecyclerView$p;->o(IILandroidx/recyclerview/widget/RecyclerView$b0;Landroidx/recyclerview/widget/RecyclerView$p$c;)V

    .line 11
    :cond_3c
    :goto_3c
    iget v1, p0, Landroidx/recyclerview/widget/e$b;->d:I

    iget v2, v0, Landroidx/recyclerview/widget/RecyclerView$p;->m:I

    if-le v1, v2, :cond_4b

    .line 12
    iput v1, v0, Landroidx/recyclerview/widget/RecyclerView$p;->m:I

    .line 13
    iput-boolean p2, v0, Landroidx/recyclerview/widget/RecyclerView$p;->n:Z

    .line 14
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView;->p:Landroidx/recyclerview/widget/RecyclerView$w;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$w;->K()V

    :cond_4b
    return-void
.end method

.method d(I)Z
    .registers 6

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/e$b;->c:[I

    const/4 v1, 0x0

    if-eqz v0, :cond_17

    .line 2
    iget v0, p0, Landroidx/recyclerview/widget/e$b;->d:I

    mul-int/lit8 v0, v0, 0x2

    const/4 v2, 0x0

    :goto_a
    if-ge v2, v0, :cond_17

    .line 3
    iget-object v3, p0, Landroidx/recyclerview/widget/e$b;->c:[I

    aget v3, v3, v2

    if-ne v3, p1, :cond_14

    const/4 p1, 0x1

    return p1

    :cond_14
    add-int/lit8 v2, v2, 0x2

    goto :goto_a

    :cond_17
    return v1
.end method

.method e(II)V
    .registers 3

    .line 1
    iput p1, p0, Landroidx/recyclerview/widget/e$b;->a:I

    .line 2
    iput p2, p0, Landroidx/recyclerview/widget/e$b;->b:I

    return-void
.end method

###### Class androidx.recyclerview.widget.e.c (androidx.recyclerview.widget.e$c)
.class Landroidx/recyclerview/widget/e$c;
.super Ljava/lang/Object;
.source "GapWorker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "c"
.end annotation


# instance fields
.field public a:Z

.field public b:I

.field public c:I

.field public d:Landroidx/recyclerview/widget/RecyclerView;

.field public e:I


# direct methods
.method constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Landroidx/recyclerview/widget/e$c;->a:Z

    .line 2
    iput v0, p0, Landroidx/recyclerview/widget/e$c;->b:I

    .line 3
    iput v0, p0, Landroidx/recyclerview/widget/e$c;->c:I

    const/4 v1, 0x0

    .line 4
    iput-object v1, p0, Landroidx/recyclerview/widget/e$c;->d:Landroidx/recyclerview/widget/RecyclerView;

    .line 5
    iput v0, p0, Landroidx/recyclerview/widget/e$c;->e:I

    return-void
.end method
