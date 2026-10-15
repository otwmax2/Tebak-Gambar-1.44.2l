###### Class androidx.fragment.app.n (androidx.fragment.app.n)
.class public abstract Landroidx/fragment/app/n;
.super Ljava/lang/Object;
.source "FragmentManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/fragment/app/n$k;,
        Landroidx/fragment/app/n$m;,
        Landroidx/fragment/app/n$q;,
        Landroidx/fragment/app/n$p;,
        Landroidx/fragment/app/n$o;,
        Landroidx/fragment/app/n$l;,
        Landroidx/fragment/app/n$n;
    }
.end annotation


# static fields
.field private static O:Z = false

.field static P:Z = true


# instance fields
.field private A:Landroidx/activity/result/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/activity/result/c<",
            "Landroidx/activity/result/e;",
            ">;"
        }
    .end annotation
.end field

.field private B:Landroidx/activity/result/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/activity/result/c<",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field C:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Landroidx/fragment/app/n$m;",
            ">;"
        }
    .end annotation
.end field

.field private D:Z

.field private E:Z

.field private F:Z

.field private G:Z

.field private H:Z

.field private I:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/a;",
            ">;"
        }
    .end annotation
.end field

.field private J:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private K:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field private L:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/n$q;",
            ">;"
        }
    .end annotation
.end field

.field private M:Landroidx/fragment/app/q;

.field private N:Ljava/lang/Runnable;

.field private final a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/n$o;",
            ">;"
        }
    .end annotation
.end field

.field private b:Z

.field private final c:Landroidx/fragment/app/v;

.field d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/a;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Landroidx/fragment/app/l;

.field private g:Landroidx/activity/OnBackPressedDispatcher;

.field private final h:Landroidx/activity/g;

.field private final i:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final j:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field private final k:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private l:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/n$n;",
            ">;"
        }
    .end annotation
.end field

.field private m:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroidx/fragment/app/Fragment;",
            "Ljava/util/HashSet<",
            "Landroidx/core/os/e;",
            ">;>;"
        }
    .end annotation
.end field

.field private final n:Landroidx/fragment/app/x$g;

.field private final o:Landroidx/fragment/app/m;

.field private final p:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Landroidx/fragment/app/r;",
            ">;"
        }
    .end annotation
.end field

.field q:I

.field private r:Landroidx/fragment/app/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/fragment/app/k<",
            "*>;"
        }
    .end annotation
.end field

.field private s:Landroidx/fragment/app/g;

.field private t:Landroidx/fragment/app/Fragment;

.field u:Landroidx/fragment/app/Fragment;

.field private v:Landroidx/fragment/app/j;

.field private w:Landroidx/fragment/app/j;

.field private x:Landroidx/fragment/app/d0;

.field private y:Landroidx/fragment/app/d0;

.field private z:Landroidx/activity/result/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/activity/result/c<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/n;->a:Ljava/util/ArrayList;

    .line 3
    new-instance v0, Landroidx/fragment/app/v;

    invoke-direct {v0}, Landroidx/fragment/app/v;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/n;->c:Landroidx/fragment/app/v;

    .line 4
    new-instance v0, Landroidx/fragment/app/l;

    invoke-direct {v0, p0}, Landroidx/fragment/app/l;-><init>(Landroidx/fragment/app/n;)V

    iput-object v0, p0, Landroidx/fragment/app/n;->f:Landroidx/fragment/app/l;

    .line 5
    new-instance v0, Landroidx/fragment/app/n$c;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroidx/fragment/app/n$c;-><init>(Landroidx/fragment/app/n;Z)V

    iput-object v0, p0, Landroidx/fragment/app/n;->h:Landroidx/activity/g;

    .line 6
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/n;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 7
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 8
    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Landroidx/fragment/app/n;->j:Ljava/util/Map;

    .line 9
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 10
    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Landroidx/fragment/app/n;->k:Ljava/util/Map;

    .line 11
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 12
    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Landroidx/fragment/app/n;->m:Ljava/util/Map;

    .line 13
    new-instance v0, Landroidx/fragment/app/n$d;

    invoke-direct {v0, p0}, Landroidx/fragment/app/n$d;-><init>(Landroidx/fragment/app/n;)V

    iput-object v0, p0, Landroidx/fragment/app/n;->n:Landroidx/fragment/app/x$g;

    .line 14
    new-instance v0, Landroidx/fragment/app/m;

    invoke-direct {v0, p0}, Landroidx/fragment/app/m;-><init>(Landroidx/fragment/app/n;)V

    iput-object v0, p0, Landroidx/fragment/app/n;->o:Landroidx/fragment/app/m;

    .line 15
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/n;->p:Ljava/util/concurrent/CopyOnWriteArrayList;

    const/4 v0, -0x1

    .line 16
    iput v0, p0, Landroidx/fragment/app/n;->q:I

    const/4 v0, 0x0

    .line 17
    iput-object v0, p0, Landroidx/fragment/app/n;->v:Landroidx/fragment/app/j;

    .line 18
    new-instance v1, Landroidx/fragment/app/n$e;

    invoke-direct {v1, p0}, Landroidx/fragment/app/n$e;-><init>(Landroidx/fragment/app/n;)V

    iput-object v1, p0, Landroidx/fragment/app/n;->w:Landroidx/fragment/app/j;

    .line 19
    iput-object v0, p0, Landroidx/fragment/app/n;->x:Landroidx/fragment/app/d0;

    .line 20
    new-instance v0, Landroidx/fragment/app/n$f;

    invoke-direct {v0, p0}, Landroidx/fragment/app/n$f;-><init>(Landroidx/fragment/app/n;)V

    iput-object v0, p0, Landroidx/fragment/app/n;->y:Landroidx/fragment/app/d0;

    .line 21
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/n;->C:Ljava/util/ArrayDeque;

    .line 22
    new-instance v0, Landroidx/fragment/app/n$g;

    invoke-direct {v0, p0}, Landroidx/fragment/app/n$g;-><init>(Landroidx/fragment/app/n;)V

    iput-object v0, p0, Landroidx/fragment/app/n;->N:Ljava/lang/Runnable;

    return-void
.end method

.method static F0(I)Z
    .registers 2

    .line 1
    sget-boolean v0, Landroidx/fragment/app/n;->O:Z

    if-nez v0, :cond_f

    const-string v0, "FragmentManager"

    invoke-static {v0, p0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_d

    goto :goto_f

    :cond_d
    const/4 p0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 p0, 0x1

    :goto_10
    return p0
.end method

.method private G0(Landroidx/fragment/app/Fragment;)Z
    .registers 3

    .line 1
    iget-boolean v0, p1, Landroidx/fragment/app/Fragment;->mHasMenu:Z

    if-eqz v0, :cond_8

    iget-boolean v0, p1, Landroidx/fragment/app/Fragment;->mMenuVisible:Z

    if-nez v0, :cond_10

    :cond_8
    iget-object p1, p1, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/n;

    invoke-virtual {p1}, Landroidx/fragment/app/n;->o()Z

    move-result p1

    if-eqz p1, :cond_12

    :cond_10
    const/4 p1, 0x1

    goto :goto_13

    :cond_12
    const/4 p1, 0x0

    :goto_13
    return p1
.end method

.method private M(Landroidx/fragment/app/Fragment;)V
    .registers 3

    if-eqz p1, :cond_11

    .line 1
    iget-object v0, p1, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroidx/fragment/app/n;->g0(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 2
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->performPrimaryNavigationFragmentChanged()V

    :cond_11
    return-void
.end method

.method private O0(Lo/b;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/b<",
            "Landroidx/fragment/app/Fragment;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lo/b;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_22

    .line 2
    invoke-virtual {p1, v1}, Lo/b;->n(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/Fragment;

    .line 3
    iget-boolean v3, v2, Landroidx/fragment/app/Fragment;->mAdded:Z

    if-nez v3, :cond_1f

    .line 4
    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->requireView()Landroid/view/View;

    move-result-object v3

    .line 5
    invoke-virtual {v3}, Landroid/view/View;->getAlpha()F

    move-result v4

    iput v4, v2, Landroidx/fragment/app/Fragment;->mPostponedAlpha:F

    const/4 v2, 0x0

    .line 6
    invoke-virtual {v3, v2}, Landroid/view/View;->setAlpha(F)V

    :cond_1f
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_22
    return-void
.end method

.method private T(I)V
    .registers 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1
    :try_start_2
    iput-boolean v0, p0, Landroidx/fragment/app/n;->b:Z

    .line 2
    iget-object v2, p0, Landroidx/fragment/app/n;->c:Landroidx/fragment/app/v;

    invoke-virtual {v2, p1}, Landroidx/fragment/app/v;->d(I)V

    .line 3
    invoke-virtual {p0, p1, v1}, Landroidx/fragment/app/n;->Q0(IZ)V

    .line 4
    sget-boolean p1, Landroidx/fragment/app/n;->P:Z

    if-eqz p1, :cond_28

    .line 5
    invoke-direct {p0}, Landroidx/fragment/app/n;->s()Ljava/util/Set;

    move-result-object p1

    .line 6
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_18
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_28

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/c0;

    .line 7
    invoke-virtual {v2}, Landroidx/fragment/app/c0;->j()V
    :try_end_27
    .catchall {:try_start_2 .. :try_end_27} :catchall_2e

    goto :goto_18

    .line 8
    :cond_28
    iput-boolean v1, p0, Landroidx/fragment/app/n;->b:Z

    .line 9
    invoke-virtual {p0, v0}, Landroidx/fragment/app/n;->b0(Z)Z

    return-void

    :catchall_2e
    move-exception p1

    .line 10
    iput-boolean v1, p0, Landroidx/fragment/app/n;->b:Z

    .line 11
    goto :goto_33

    :goto_32
    throw p1

    :goto_33
    goto :goto_32
.end method

.method private W()V
    .registers 2

    .line 1
    iget-boolean v0, p0, Landroidx/fragment/app/n;->H:Z

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Landroidx/fragment/app/n;->H:Z

    .line 3
    invoke-direct {p0}, Landroidx/fragment/app/n;->p1()V

    :cond_a
    return-void
.end method

.method private Y()V
    .registers 3

    .line 1
    sget-boolean v0, Landroidx/fragment/app/n;->P:Z

    if-eqz v0, :cond_1c

    .line 2
    invoke-direct {p0}, Landroidx/fragment/app/n;->s()Ljava/util/Set;

    move-result-object v0

    .line 3
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_41

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/c0;

    .line 4
    invoke-virtual {v1}, Landroidx/fragment/app/c0;->j()V

    goto :goto_c

    .line 5
    :cond_1c
    iget-object v0, p0, Landroidx/fragment/app/n;->m:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_41

    .line 6
    iget-object v0, p0, Landroidx/fragment/app/n;->m:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_41

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/Fragment;

    .line 7
    invoke-direct {p0, v1}, Landroidx/fragment/app/n;->n(Landroidx/fragment/app/Fragment;)V

    .line 8
    invoke-virtual {p0, v1}, Landroidx/fragment/app/n;->R0(Landroidx/fragment/app/Fragment;)V

    goto :goto_2e

    :cond_41
    return-void
.end method

.method private Y0(Ljava/lang/String;II)Z
    .registers 12

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Landroidx/fragment/app/n;->b0(Z)Z

    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, v0}, Landroidx/fragment/app/n;->a0(Z)V

    .line 3
    iget-object v1, p0, Landroidx/fragment/app/n;->u:Landroidx/fragment/app/Fragment;

    if-eqz v1, :cond_1b

    if-gez p2, :cond_1b

    if-nez p1, :cond_1b

    .line 4
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/n;

    move-result-object v1

    .line 5
    invoke-virtual {v1}, Landroidx/fragment/app/n;->X0()Z

    move-result v1

    if-eqz v1, :cond_1b

    return v0

    .line 6
    :cond_1b
    iget-object v3, p0, Landroidx/fragment/app/n;->I:Ljava/util/ArrayList;

    iget-object v4, p0, Landroidx/fragment/app/n;->J:Ljava/util/ArrayList;

    move-object v2, p0

    move-object v5, p1

    move v6, p2

    move v7, p3

    invoke-virtual/range {v2 .. v7}, Landroidx/fragment/app/n;->Z0(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;II)Z

    move-result p1

    if-eqz p1, :cond_3b

    .line 7
    iput-boolean v0, p0, Landroidx/fragment/app/n;->b:Z

    .line 8
    :try_start_2b
    iget-object p2, p0, Landroidx/fragment/app/n;->I:Ljava/util/ArrayList;

    iget-object p3, p0, Landroidx/fragment/app/n;->J:Ljava/util/ArrayList;

    invoke-direct {p0, p2, p3}, Landroidx/fragment/app/n;->d1(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    :try_end_32
    .catchall {:try_start_2b .. :try_end_32} :catchall_36

    .line 9
    invoke-direct {p0}, Landroidx/fragment/app/n;->q()V

    goto :goto_3b

    :catchall_36
    move-exception p1

    invoke-direct {p0}, Landroidx/fragment/app/n;->q()V

    .line 10
    throw p1

    .line 11
    :cond_3b
    :goto_3b
    invoke-direct {p0}, Landroidx/fragment/app/n;->q1()V

    .line 12
    invoke-direct {p0}, Landroidx/fragment/app/n;->W()V

    .line 13
    iget-object p2, p0, Landroidx/fragment/app/n;->c:Landroidx/fragment/app/v;

    invoke-virtual {p2}, Landroidx/fragment/app/v;->b()V

    return p1
.end method

.method static synthetic a(Landroidx/fragment/app/n;)Ljava/util/Map;
    .registers 1

    .line 1
    iget-object p0, p0, Landroidx/fragment/app/n;->j:Ljava/util/Map;

    return-object p0
.end method

.method private a0(Z)V
    .registers 4

    .line 1
    iget-boolean v0, p0, Landroidx/fragment/app/n;->b:Z

    if-nez v0, :cond_5a

    .line 2
    iget-object v0, p0, Landroidx/fragment/app/n;->r:Landroidx/fragment/app/k;

    if-nez v0, :cond_1c

    .line 3
    iget-boolean p1, p0, Landroidx/fragment/app/n;->G:Z

    if-eqz p1, :cond_14

    .line 4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "FragmentManager has been destroyed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 5
    :cond_14
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "FragmentManager has not been attached to a host."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 6
    :cond_1c
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Landroidx/fragment/app/n;->r:Landroidx/fragment/app/k;

    invoke-virtual {v1}, Landroidx/fragment/app/k;->g()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_52

    if-nez p1, :cond_31

    .line 7
    invoke-direct {p0}, Landroidx/fragment/app/n;->p()V

    .line 8
    :cond_31
    iget-object p1, p0, Landroidx/fragment/app/n;->I:Ljava/util/ArrayList;

    if-nez p1, :cond_43

    .line 9
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/fragment/app/n;->I:Ljava/util/ArrayList;

    .line 10
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/fragment/app/n;->J:Ljava/util/ArrayList;

    :cond_43
    const/4 p1, 0x1

    .line 11
    iput-boolean p1, p0, Landroidx/fragment/app/n;->b:Z

    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 12
    :try_start_48
    invoke-direct {p0, v0, v0}, Landroidx/fragment/app/n;->f0(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    :try_end_4b
    .catchall {:try_start_48 .. :try_end_4b} :catchall_4e

    .line 13
    iput-boolean p1, p0, Landroidx/fragment/app/n;->b:Z

    return-void

    :catchall_4e
    move-exception v0

    iput-boolean p1, p0, Landroidx/fragment/app/n;->b:Z

    .line 14
    throw v0

    .line 15
    :cond_52
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Must be called from main thread of fragment host"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 16
    :cond_5a
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "FragmentManager is already executing transactions"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private a1(Ljava/util/ArrayList;Ljava/util/ArrayList;IILo/b;)I
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/a;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;II",
            "Lo/b<",
            "Landroidx/fragment/app/Fragment;",
            ">;)I"
        }
    .end annotation

    add-int/lit8 v0, p4, -0x1

    move v1, p4

    :goto_3
    if-lt v0, p3, :cond_5a

    .line 1
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/a;

    .line 2
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 3
    invoke-virtual {v2}, Landroidx/fragment/app/a;->A()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_26

    add-int/lit8 v4, v0, 0x1

    .line 4
    invoke-virtual {v2, p1, v4, p4}, Landroidx/fragment/app/a;->y(Ljava/util/ArrayList;II)Z

    move-result v4

    if-nez v4, :cond_26

    const/4 v4, 0x1

    goto :goto_27

    :cond_26
    const/4 v4, 0x0

    :goto_27
    if-eqz v4, :cond_57

    .line 5
    iget-object v4, p0, Landroidx/fragment/app/n;->L:Ljava/util/ArrayList;

    if-nez v4, :cond_34

    .line 6
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Landroidx/fragment/app/n;->L:Ljava/util/ArrayList;

    .line 7
    :cond_34
    new-instance v4, Landroidx/fragment/app/n$q;

    invoke-direct {v4, v2, v3}, Landroidx/fragment/app/n$q;-><init>(Landroidx/fragment/app/a;Z)V

    .line 8
    iget-object v6, p0, Landroidx/fragment/app/n;->L:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9
    invoke-virtual {v2, v4}, Landroidx/fragment/app/a;->C(Landroidx/fragment/app/Fragment$l;)V

    if-eqz v3, :cond_47

    .line 10
    invoke-virtual {v2}, Landroidx/fragment/app/a;->t()V

    goto :goto_4a

    .line 11
    :cond_47
    invoke-virtual {v2, v5}, Landroidx/fragment/app/a;->u(Z)V

    :goto_4a
    add-int/lit8 v1, v1, -0x1

    if-eq v0, v1, :cond_54

    .line 12
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 13
    invoke-virtual {p1, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 14
    :cond_54
    invoke-direct {p0, p5}, Landroidx/fragment/app/n;->d(Lo/b;)V

    :cond_57
    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    :cond_5a
    return v1
.end method

.method static synthetic b(Landroidx/fragment/app/n;)Ljava/util/Map;
    .registers 1

    .line 1
    iget-object p0, p0, Landroidx/fragment/app/n;->k:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic c(Landroidx/fragment/app/n;)Landroidx/fragment/app/v;
    .registers 1

    .line 1
    iget-object p0, p0, Landroidx/fragment/app/n;->c:Landroidx/fragment/app/v;

    return-object p0
.end method

.method private d(Lo/b;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/b<",
            "Landroidx/fragment/app/Fragment;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget v0, p0, Landroidx/fragment/app/n;->q:I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_6

    return-void

    :cond_6
    const/4 v1, 0x5

    .line 2
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 3
    iget-object v1, p0, Landroidx/fragment/app/n;->c:Landroidx/fragment/app/v;

    invoke-virtual {v1}, Landroidx/fragment/app/v;->n()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_15
    :goto_15
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_38

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/Fragment;

    .line 4
    iget v3, v2, Landroidx/fragment/app/Fragment;->mState:I

    if-ge v3, v0, :cond_15

    .line 5
    invoke-virtual {p0, v2, v0}, Landroidx/fragment/app/n;->S0(Landroidx/fragment/app/Fragment;I)V

    .line 6
    iget-object v3, v2, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    if-eqz v3, :cond_15

    iget-boolean v3, v2, Landroidx/fragment/app/Fragment;->mHidden:Z

    if-nez v3, :cond_15

    iget-boolean v3, v2, Landroidx/fragment/app/Fragment;->mIsNewlyAdded:Z

    if-eqz v3, :cond_15

    .line 7
    invoke-virtual {p1, v2}, Lo/b;->add(Ljava/lang/Object;)Z

    goto :goto_15

    :cond_38
    return-void
.end method

.method private static d0(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/a;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;II)V"
        }
    .end annotation

    :goto_0
    if-ge p2, p3, :cond_2c

    .line 1
    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/a;

    .line 2
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_23

    const/4 v1, -0x1

    .line 3
    invoke-virtual {v0, v1}, Landroidx/fragment/app/a;->p(I)V

    add-int/lit8 v1, p3, -0x1

    if-ne p2, v1, :cond_1e

    goto :goto_1f

    :cond_1e
    const/4 v2, 0x0

    .line 4
    :goto_1f
    invoke-virtual {v0, v2}, Landroidx/fragment/app/a;->u(Z)V

    goto :goto_29

    .line 5
    :cond_23
    invoke-virtual {v0, v2}, Landroidx/fragment/app/a;->p(I)V

    .line 6
    invoke-virtual {v0}, Landroidx/fragment/app/a;->t()V

    :goto_29
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_2c
    return-void
.end method

.method private d1(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/a;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 2
    :cond_7
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v0, v1, :cond_62

    .line 3
    invoke-direct {p0, p1, p2}, Landroidx/fragment/app/n;->f0(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 4
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_1a
    if-ge v1, v0, :cond_5c

    .line 5
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/a;

    iget-boolean v3, v3, Landroidx/fragment/app/w;->r:Z

    if-nez v3, :cond_59

    if-eq v2, v1, :cond_2b

    .line 6
    invoke-direct {p0, p1, p2, v2, v1}, Landroidx/fragment/app/n;->e0(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V

    :cond_2b
    add-int/lit8 v2, v1, 0x1

    .line 7
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_54

    :goto_39
    if-ge v2, v0, :cond_54

    .line 8
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_54

    .line 9
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/a;

    iget-boolean v3, v3, Landroidx/fragment/app/w;->r:Z

    if-nez v3, :cond_54

    add-int/lit8 v2, v2, 0x1

    goto :goto_39

    .line 10
    :cond_54
    invoke-direct {p0, p1, p2, v1, v2}, Landroidx/fragment/app/n;->e0(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V

    add-int/lit8 v1, v2, -0x1

    :cond_59
    add-int/lit8 v1, v1, 0x1

    goto :goto_1a

    :cond_5c
    if-eq v2, v0, :cond_61

    .line 11
    invoke-direct {p0, p1, p2, v2, v0}, Landroidx/fragment/app/n;->e0(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V

    :cond_61
    return-void

    .line 12
    :cond_62
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Internal error with the back stack records"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_6b

    :goto_6a
    throw p1

    :goto_6b
    goto :goto_6a
.end method

.method private e0(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V
    .registers 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/a;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;II)V"
        }
    .end annotation

    move-object/from16 v6, p0

    move-object/from16 v15, p1

    move-object/from16 v5, p2

    move/from16 v4, p3

    move/from16 v3, p4

    .line 1
    invoke-virtual {v15, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/a;

    iget-boolean v2, v0, Landroidx/fragment/app/w;->r:Z

    .line 2
    iget-object v0, v6, Landroidx/fragment/app/n;->K:Ljava/util/ArrayList;

    if-nez v0, :cond_1e

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v6, Landroidx/fragment/app/n;->K:Ljava/util/ArrayList;

    goto :goto_21

    .line 4
    :cond_1e
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 5
    :goto_21
    iget-object v0, v6, Landroidx/fragment/app/n;->K:Ljava/util/ArrayList;

    iget-object v1, v6, Landroidx/fragment/app/n;->c:Landroidx/fragment/app/v;

    invoke-virtual {v1}, Landroidx/fragment/app/v;->n()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 6
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/n;->x0()Landroidx/fragment/app/Fragment;

    move-result-object v0

    const/4 v1, 0x0

    move v7, v4

    const/16 v16, 0x0

    :goto_34
    const/4 v14, 0x1

    if-ge v7, v3, :cond_65

    .line 7
    invoke-virtual {v15, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/fragment/app/a;

    .line 8
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-nez v9, :cond_50

    .line 9
    iget-object v9, v6, Landroidx/fragment/app/n;->K:Ljava/util/ArrayList;

    invoke-virtual {v8, v9, v0}, Landroidx/fragment/app/a;->v(Ljava/util/ArrayList;Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    goto :goto_56

    .line 10
    :cond_50
    iget-object v9, v6, Landroidx/fragment/app/n;->K:Ljava/util/ArrayList;

    invoke-virtual {v8, v9, v0}, Landroidx/fragment/app/a;->D(Ljava/util/ArrayList;Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    :goto_56
    if-nez v16, :cond_60

    .line 11
    iget-boolean v8, v8, Landroidx/fragment/app/w;->i:Z

    if-eqz v8, :cond_5d

    goto :goto_60

    :cond_5d
    const/16 v16, 0x0

    goto :goto_62

    :cond_60
    :goto_60
    const/16 v16, 0x1

    :goto_62
    add-int/lit8 v7, v7, 0x1

    goto :goto_34

    .line 12
    :cond_65
    iget-object v0, v6, Landroidx/fragment/app/n;->K:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    if-nez v2, :cond_bd

    .line 13
    iget v0, v6, Landroidx/fragment/app/n;->q:I

    if-lt v0, v14, :cond_bd

    .line 14
    sget-boolean v0, Landroidx/fragment/app/n;->P:Z

    if-eqz v0, :cond_a4

    move v0, v4

    :goto_75
    if-ge v0, v3, :cond_bd

    .line 15
    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/a;

    .line 16
    iget-object v1, v1, Landroidx/fragment/app/w;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_83
    :goto_83
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_a1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/fragment/app/w$a;

    .line 17
    iget-object v7, v7, Landroidx/fragment/app/w$a;->b:Landroidx/fragment/app/Fragment;

    if-eqz v7, :cond_83

    .line 18
    iget-object v8, v7, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/n;

    if-eqz v8, :cond_83

    .line 19
    invoke-virtual {v6, v7}, Landroidx/fragment/app/n;->w(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/u;

    move-result-object v7

    .line 20
    iget-object v8, v6, Landroidx/fragment/app/n;->c:Landroidx/fragment/app/v;

    invoke-virtual {v8, v7}, Landroidx/fragment/app/v;->p(Landroidx/fragment/app/u;)V

    goto :goto_83

    :cond_a1
    add-int/lit8 v0, v0, 0x1

    goto :goto_75

    .line 21
    :cond_a4
    iget-object v0, v6, Landroidx/fragment/app/n;->r:Landroidx/fragment/app/k;

    invoke-virtual {v0}, Landroidx/fragment/app/k;->f()Landroid/content/Context;

    move-result-object v7

    iget-object v8, v6, Landroidx/fragment/app/n;->s:Landroidx/fragment/app/g;

    const/4 v13, 0x0

    iget-object v0, v6, Landroidx/fragment/app/n;->n:Landroidx/fragment/app/x$g;

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    move/from16 v11, p3

    move/from16 v12, p4

    const/4 v1, 0x1

    move-object v14, v0

    invoke-static/range {v7 .. v14}, Landroidx/fragment/app/x;->B(Landroid/content/Context;Landroidx/fragment/app/g;Ljava/util/ArrayList;Ljava/util/ArrayList;IIZLandroidx/fragment/app/x$g;)V

    goto :goto_be

    :cond_bd
    const/4 v1, 0x1

    .line 22
    :goto_be
    invoke-static/range {p1 .. p4}, Landroidx/fragment/app/n;->d0(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V

    .line 23
    sget-boolean v0, Landroidx/fragment/app/n;->P:Z

    if-eqz v0, :cond_143

    add-int/lit8 v0, v3, -0x1

    .line 24
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    move v2, v4

    :goto_d2
    if-ge v2, v3, :cond_11c

    .line 25
    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/fragment/app/a;

    if-eqz v0, :cond_fb

    .line 26
    iget-object v8, v7, Landroidx/fragment/app/w;->c:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    sub-int/2addr v8, v1

    :goto_e3
    if-ltz v8, :cond_119

    .line 27
    iget-object v9, v7, Landroidx/fragment/app/w;->c:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/fragment/app/w$a;

    .line 28
    iget-object v9, v9, Landroidx/fragment/app/w$a;->b:Landroidx/fragment/app/Fragment;

    if-eqz v9, :cond_f8

    .line 29
    invoke-virtual {v6, v9}, Landroidx/fragment/app/n;->w(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/u;

    move-result-object v9

    .line 30
    invoke-virtual {v9}, Landroidx/fragment/app/u;->m()V

    :cond_f8
    add-int/lit8 v8, v8, -0x1

    goto :goto_e3

    .line 31
    :cond_fb
    iget-object v7, v7, Landroidx/fragment/app/w;->c:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_101
    :goto_101
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_119

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/fragment/app/w$a;

    .line 32
    iget-object v8, v8, Landroidx/fragment/app/w$a;->b:Landroidx/fragment/app/Fragment;

    if-eqz v8, :cond_101

    .line 33
    invoke-virtual {v6, v8}, Landroidx/fragment/app/n;->w(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/u;

    move-result-object v8

    .line 34
    invoke-virtual {v8}, Landroidx/fragment/app/u;->m()V

    goto :goto_101

    :cond_119
    add-int/lit8 v2, v2, 0x1

    goto :goto_d2

    .line 35
    :cond_11c
    iget v2, v6, Landroidx/fragment/app/n;->q:I

    invoke-virtual {v6, v2, v1}, Landroidx/fragment/app/n;->Q0(IZ)V

    .line 36
    invoke-direct {v6, v15, v4, v3}, Landroidx/fragment/app/n;->t(Ljava/util/ArrayList;II)Ljava/util/Set;

    move-result-object v1

    .line 37
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_129
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_13f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/c0;

    .line 38
    invoke-virtual {v2, v0}, Landroidx/fragment/app/c0;->r(Z)V

    .line 39
    invoke-virtual {v2}, Landroidx/fragment/app/c0;->p()V

    .line 40
    invoke-virtual {v2}, Landroidx/fragment/app/c0;->g()V

    goto :goto_129

    :cond_13f
    move v0, v3

    move-object v3, v5

    goto/16 :goto_199

    :cond_143
    if-eqz v2, :cond_165

    .line 41
    new-instance v7, Lo/b;

    invoke-direct {v7}, Lo/b;-><init>()V

    .line 42
    invoke-direct {v6, v7}, Landroidx/fragment/app/n;->d(Lo/b;)V

    move-object/from16 v0, p0

    const/4 v14, 0x1

    move-object/from16 v1, p1

    move v8, v2

    move-object/from16 v2, p2

    move v13, v3

    move/from16 v3, p3

    move v12, v4

    move/from16 v4, p4

    move-object v11, v5

    move-object v5, v7

    .line 43
    invoke-direct/range {v0 .. v5}, Landroidx/fragment/app/n;->a1(Ljava/util/ArrayList;Ljava/util/ArrayList;IILo/b;)I

    move-result v0

    .line 44
    invoke-direct {v6, v7}, Landroidx/fragment/app/n;->O0(Lo/b;)V

    goto :goto_16b

    :cond_165
    move v8, v2

    move v13, v3

    move v12, v4

    move-object v11, v5

    const/4 v14, 0x1

    move v0, v13

    :goto_16b
    if-eq v0, v12, :cond_197

    if-eqz v8, :cond_197

    .line 45
    iget v1, v6, Landroidx/fragment/app/n;->q:I

    if-lt v1, v14, :cond_18e

    .line 46
    iget-object v1, v6, Landroidx/fragment/app/n;->r:Landroidx/fragment/app/k;

    invoke-virtual {v1}, Landroidx/fragment/app/k;->f()Landroid/content/Context;

    move-result-object v7

    iget-object v8, v6, Landroidx/fragment/app/n;->s:Landroidx/fragment/app/g;

    const/4 v1, 0x1

    iget-object v2, v6, Landroidx/fragment/app/n;->n:Landroidx/fragment/app/x$g;

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    move-object v3, v11

    move/from16 v11, p3

    move v12, v0

    move v0, v13

    move v13, v1

    const/4 v1, 0x1

    move-object v14, v2

    invoke-static/range {v7 .. v14}, Landroidx/fragment/app/x;->B(Landroid/content/Context;Landroidx/fragment/app/g;Ljava/util/ArrayList;Ljava/util/ArrayList;IIZLandroidx/fragment/app/x$g;)V

    goto :goto_191

    :cond_18e
    move-object v3, v11

    move v0, v13

    const/4 v1, 0x1

    .line 47
    :goto_191
    iget v2, v6, Landroidx/fragment/app/n;->q:I

    invoke-virtual {v6, v2, v1}, Landroidx/fragment/app/n;->Q0(IZ)V

    goto :goto_199

    :cond_197
    move-object v3, v11

    move v0, v13

    :goto_199
    move/from16 v1, p3

    :goto_19b
    if-ge v1, v0, :cond_1bc

    .line 48
    invoke-virtual {v15, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/a;

    .line 49
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_1b6

    .line 50
    iget v4, v2, Landroidx/fragment/app/a;->v:I

    if-ltz v4, :cond_1b6

    const/4 v4, -0x1

    .line 51
    iput v4, v2, Landroidx/fragment/app/a;->v:I

    .line 52
    :cond_1b6
    invoke-virtual {v2}, Landroidx/fragment/app/a;->B()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_19b

    :cond_1bc
    if-eqz v16, :cond_1c1

    .line 53
    invoke-direct/range {p0 .. p0}, Landroidx/fragment/app/n;->f1()V

    :cond_1c1
    return-void
.end method

.method private f0(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/a;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/n;->L:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-nez v0, :cond_7

    const/4 v0, 0x0

    goto :goto_b

    :cond_7
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_b
    const/4 v2, 0x0

    :goto_c
    if-ge v2, v0, :cond_83

    .line 2
    iget-object v3, p0, Landroidx/fragment/app/n;->L:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/n$q;

    const/4 v4, -0x1

    if-eqz p1, :cond_40

    .line 3
    iget-boolean v5, v3, Landroidx/fragment/app/n$q;->a:Z

    if-nez v5, :cond_40

    .line 4
    iget-object v5, v3, Landroidx/fragment/app/n$q;->b:Landroidx/fragment/app/a;

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    if-eq v5, v4, :cond_40

    if-eqz p2, :cond_40

    .line 5
    invoke-virtual {p2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_40

    .line 6
    iget-object v4, p0, Landroidx/fragment/app/n;->L:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v2, v2, -0x1

    add-int/lit8 v0, v0, -0x1

    .line 7
    invoke-virtual {v3}, Landroidx/fragment/app/n$q;->c()V

    goto :goto_80

    .line 8
    :cond_40
    invoke-virtual {v3}, Landroidx/fragment/app/n$q;->e()Z

    move-result v5

    if-nez v5, :cond_54

    if-eqz p1, :cond_80

    iget-object v5, v3, Landroidx/fragment/app/n$q;->b:Landroidx/fragment/app/a;

    .line 9
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v5, p1, v1, v6}, Landroidx/fragment/app/a;->y(Ljava/util/ArrayList;II)Z

    move-result v5

    if-eqz v5, :cond_80

    .line 10
    :cond_54
    iget-object v5, p0, Landroidx/fragment/app/n;->L:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v2, v2, -0x1

    add-int/lit8 v0, v0, -0x1

    if-eqz p1, :cond_7d

    .line 11
    iget-boolean v5, v3, Landroidx/fragment/app/n$q;->a:Z

    if-nez v5, :cond_7d

    iget-object v5, v3, Landroidx/fragment/app/n$q;->b:Landroidx/fragment/app/a;

    .line 12
    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    if-eq v5, v4, :cond_7d

    if-eqz p2, :cond_7d

    .line 13
    invoke-virtual {p2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_7d

    .line 14
    invoke-virtual {v3}, Landroidx/fragment/app/n$q;->c()V

    goto :goto_80

    .line 15
    :cond_7d
    invoke-virtual {v3}, Landroidx/fragment/app/n$q;->d()V

    :cond_80
    :goto_80
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    :cond_83
    return-void
.end method

.method private f1()V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/n;->l:Ljava/util/ArrayList;

    if-eqz v0, :cond_1b

    const/4 v0, 0x0

    .line 2
    :goto_5
    iget-object v1, p0, Landroidx/fragment/app/n;->l:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1b

    .line 3
    iget-object v1, p0, Landroidx/fragment/app/n;->l:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/n$n;

    invoke-interface {v1}, Landroidx/fragment/app/n$n;->a()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_1b
    return-void
.end method

.method static h1(I)I
    .registers 4

    const/16 v0, 0x2002

    const/16 v1, 0x1003

    const/16 v2, 0x1001

    if-eq p0, v2, :cond_13

    if-eq p0, v1, :cond_11

    if-eq p0, v0, :cond_e

    const/4 v0, 0x0

    goto :goto_13

    :cond_e
    const/16 v0, 0x1001

    goto :goto_13

    :cond_11
    const/16 v0, 0x1003

    :cond_13
    :goto_13
    return v0
.end method

.method private k0()V
    .registers 3

    .line 1
    sget-boolean v0, Landroidx/fragment/app/n;->P:Z

    if-eqz v0, :cond_1c

    .line 2
    invoke-direct {p0}, Landroidx/fragment/app/n;->s()Ljava/util/Set;

    move-result-object v0

    .line 3
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_35

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/c0;

    .line 4
    invoke-virtual {v1}, Landroidx/fragment/app/c0;->k()V

    goto :goto_c

    .line 5
    :cond_1c
    iget-object v0, p0, Landroidx/fragment/app/n;->L:Ljava/util/ArrayList;

    if-eqz v0, :cond_35

    .line 6
    :goto_20
    iget-object v0, p0, Landroidx/fragment/app/n;->L:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_35

    .line 7
    iget-object v0, p0, Landroidx/fragment/app/n;->L:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/n$q;

    invoke-virtual {v0}, Landroidx/fragment/app/n$q;->d()V

    goto :goto_20

    :cond_35
    return-void
.end method

.method private l0(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/a;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/n;->a:Ljava/util/ArrayList;

    monitor-enter v0

    .line 2
    :try_start_3
    iget-object v1, p0, Landroidx/fragment/app/n;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_e

    .line 3
    monitor-exit v0

    return v2

    .line 4
    :cond_e
    iget-object v1, p0, Landroidx/fragment/app/n;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v3, 0x0

    :goto_15
    if-ge v2, v1, :cond_27

    .line 5
    iget-object v4, p0, Landroidx/fragment/app/n;->a:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/fragment/app/n$o;

    invoke-interface {v4, p1, p2}, Landroidx/fragment/app/n$o;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    move-result v4

    or-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    .line 6
    :cond_27
    iget-object p1, p0, Landroidx/fragment/app/n;->a:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 7
    iget-object p1, p0, Landroidx/fragment/app/n;->r:Landroidx/fragment/app/k;

    invoke-virtual {p1}, Landroidx/fragment/app/k;->g()Landroid/os/Handler;

    move-result-object p1

    iget-object p2, p0, Landroidx/fragment/app/n;->N:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 8
    monitor-exit v0

    return v3

    :catchall_39
    move-exception p1

    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_3 .. :try_end_3b} :catchall_39

    goto :goto_3d

    :goto_3c
    throw p1

    :goto_3d
    goto :goto_3c
.end method

.method private n(Landroidx/fragment/app/Fragment;)V
    .registers 5

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/n;->m:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    if-eqz v0, :cond_29

    .line 2
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/core/os/e;

    .line 3
    invoke-virtual {v2}, Landroidx/core/os/e;->a()V

    goto :goto_e

    .line 4
    :cond_1e
    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 5
    invoke-direct {p0, p1}, Landroidx/fragment/app/n;->x(Landroidx/fragment/app/Fragment;)V

    .line 6
    iget-object v0, p0, Landroidx/fragment/app/n;->m:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_29
    return-void
.end method

.method private n0(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/q;
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/n;->M:Landroidx/fragment/app/q;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/q;->m(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/q;

    move-result-object p1

    return-object p1
.end method

.method private n1(Landroidx/fragment/app/Fragment;)V
    .registers 5

    .line 1
    invoke-direct {p0, p1}, Landroidx/fragment/app/n;->p0(Landroidx/fragment/app/Fragment;)Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_33

    .line 2
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getEnterAnim()I

    move-result v1

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getExitAnim()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getPopEnterAnim()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getPopExitAnim()I

    move-result v2

    add-int/2addr v1, v2

    if-lez v1, :cond_33

    .line 3
    sget v1, Lo0/b;->c:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_26

    .line 4
    invoke-virtual {v0, v1, p1}, Landroid/view/ViewGroup;->setTag(ILjava/lang/Object;)V

    .line 5
    :cond_26
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Fragment;

    .line 6
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getPopDirection()Z

    move-result p1

    invoke-virtual {v0, p1}, Landroidx/fragment/app/Fragment;->setPopDirection(Z)V

    :cond_33
    return-void
.end method

.method private p()V
    .registers 3

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/n;->K0()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 2
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can not perform this action after onSaveInstanceState"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private p0(Landroidx/fragment/app/Fragment;)Landroid/view/ViewGroup;
    .registers 4

    .line 1
    iget-object v0, p1, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_5

    return-object v0

    .line 2
    :cond_5
    iget v0, p1, Landroidx/fragment/app/Fragment;->mContainerId:I

    const/4 v1, 0x0

    if-gtz v0, :cond_b

    return-object v1

    .line 3
    :cond_b
    iget-object v0, p0, Landroidx/fragment/app/n;->s:Landroidx/fragment/app/g;

    invoke-virtual {v0}, Landroidx/fragment/app/g;->d()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 4
    iget-object v0, p0, Landroidx/fragment/app/n;->s:Landroidx/fragment/app/g;

    iget p1, p1, Landroidx/fragment/app/Fragment;->mContainerId:I

    invoke-virtual {v0, p1}, Landroidx/fragment/app/g;->c(I)Landroid/view/View;

    move-result-object p1

    .line 5
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_22

    .line 6
    check-cast p1, Landroid/view/ViewGroup;

    return-object p1

    :cond_22
    return-object v1
.end method

.method private p1()V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/n;->c:Landroidx/fragment/app/v;

    invoke-virtual {v0}, Landroidx/fragment/app/v;->k()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/u;

    .line 2
    invoke-virtual {p0, v1}, Landroidx/fragment/app/n;->V0(Landroidx/fragment/app/u;)V

    goto :goto_a

    :cond_1a
    return-void
.end method

.method private q()V
    .registers 2

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Landroidx/fragment/app/n;->b:Z

    .line 2
    iget-object v0, p0, Landroidx/fragment/app/n;->J:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 3
    iget-object v0, p0, Landroidx/fragment/app/n;->I:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method private q1()V
    .registers 4

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/n;->a:Ljava/util/ArrayList;

    monitor-enter v0

    .line 2
    :try_start_3
    iget-object v1, p0, Landroidx/fragment/app/n;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_13

    .line 3
    iget-object v1, p0, Landroidx/fragment/app/n;->h:Landroidx/activity/g;

    invoke-virtual {v1, v2}, Landroidx/activity/g;->f(Z)V

    .line 4
    monitor-exit v0

    return-void

    .line 5
    :cond_13
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_2a

    .line 6
    iget-object v0, p0, Landroidx/fragment/app/n;->h:Landroidx/activity/g;

    invoke-virtual {p0}, Landroidx/fragment/app/n;->m0()I

    move-result v1

    if-lez v1, :cond_25

    iget-object v1, p0, Landroidx/fragment/app/n;->t:Landroidx/fragment/app/Fragment;

    .line 7
    invoke-virtual {p0, v1}, Landroidx/fragment/app/n;->I0(Landroidx/fragment/app/Fragment;)Z

    move-result v1

    if-eqz v1, :cond_25

    goto :goto_26

    :cond_25
    const/4 v2, 0x0

    .line 8
    :goto_26
    invoke-virtual {v0, v2}, Landroidx/activity/g;->f(Z)V

    return-void

    :catchall_2a
    move-exception v1

    .line 9
    :try_start_2b
    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_2b .. :try_end_2c} :catchall_2a

    throw v1
.end method

.method private s()Ljava/util/Set;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Landroidx/fragment/app/c0;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 2
    iget-object v1, p0, Landroidx/fragment/app/n;->c:Landroidx/fragment/app/v;

    invoke-virtual {v1}, Landroidx/fragment/app/v;->k()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_f
    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/u;

    .line 3
    invoke-virtual {v2}, Landroidx/fragment/app/u;->k()Landroidx/fragment/app/Fragment;

    move-result-object v2

    iget-object v2, v2, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    if-eqz v2, :cond_f

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/n;->y0()Landroidx/fragment/app/d0;

    move-result-object v3

    .line 5
    invoke-static {v2, v3}, Landroidx/fragment/app/c0;->o(Landroid/view/ViewGroup;Landroidx/fragment/app/d0;)Landroidx/fragment/app/c0;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_f

    :cond_2f
    return-object v0
.end method

.method private t(Ljava/util/ArrayList;II)Ljava/util/Set;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/a;",
            ">;II)",
            "Ljava/util/Set<",
            "Landroidx/fragment/app/c0;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    :goto_5
    if-ge p2, p3, :cond_32

    .line 2
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/a;

    .line 3
    iget-object v1, v1, Landroidx/fragment/app/w;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_13
    :goto_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/w$a;

    .line 4
    iget-object v2, v2, Landroidx/fragment/app/w$a;->b:Landroidx/fragment/app/Fragment;

    if-eqz v2, :cond_13

    .line 5
    iget-object v2, v2, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    if-eqz v2, :cond_13

    .line 6
    invoke-static {v2, p0}, Landroidx/fragment/app/c0;->n(Landroid/view/ViewGroup;Landroidx/fragment/app/n;)Landroidx/fragment/app/c0;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_13

    :cond_2f
    add-int/lit8 p2, p2, 0x1

    goto :goto_5

    :cond_32
    return-object v0
.end method

.method private v(Landroidx/fragment/app/Fragment;)V
    .registers 8

    .line 1
    iget-object v0, p1, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_77

    .line 2
    iget-object v0, p0, Landroidx/fragment/app/n;->r:Landroidx/fragment/app/k;

    .line 3
    invoke-virtual {v0}, Landroidx/fragment/app/k;->f()Landroid/content/Context;

    move-result-object v0

    iget-boolean v2, p1, Landroidx/fragment/app/Fragment;->mHidden:Z

    xor-int/lit8 v2, v2, 0x1

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getPopDirection()Z

    move-result v3

    .line 4
    invoke-static {v0, p1, v2, v3}, Landroidx/fragment/app/f;->c(Landroid/content/Context;Landroidx/fragment/app/Fragment;ZZ)Landroidx/fragment/app/f$d;

    move-result-object v0

    if-eqz v0, :cond_4d

    .line 5
    iget-object v2, v0, Landroidx/fragment/app/f$d;->b:Landroid/animation/Animator;

    if-eqz v2, :cond_4d

    .line 6
    iget-object v3, p1, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 7
    iget-boolean v2, p1, Landroidx/fragment/app/Fragment;->mHidden:Z

    if-eqz v2, :cond_42

    .line 8
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isHideReplaced()Z

    move-result v2

    if-eqz v2, :cond_30

    .line 9
    invoke-virtual {p1, v1}, Landroidx/fragment/app/Fragment;->setHideReplaced(Z)V

    goto :goto_47

    .line 10
    :cond_30
    iget-object v2, p1, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    .line 11
    iget-object v3, p1, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    .line 12
    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->startViewTransition(Landroid/view/View;)V

    .line 13
    iget-object v4, v0, Landroidx/fragment/app/f$d;->b:Landroid/animation/Animator;

    new-instance v5, Landroidx/fragment/app/n$h;

    invoke-direct {v5, p0, v2, v3, p1}, Landroidx/fragment/app/n$h;-><init>(Landroidx/fragment/app/n;Landroid/view/ViewGroup;Landroid/view/View;Landroidx/fragment/app/Fragment;)V

    invoke-virtual {v4, v5}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_47

    .line 14
    :cond_42
    iget-object v2, p1, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 15
    :goto_47
    iget-object v0, v0, Landroidx/fragment/app/f$d;->b:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    goto :goto_77

    :cond_4d
    if-eqz v0, :cond_5b

    .line 16
    iget-object v2, p1, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    iget-object v3, v0, Landroidx/fragment/app/f$d;->a:Landroid/view/animation/Animation;

    invoke-virtual {v2, v3}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 17
    iget-object v0, v0, Landroidx/fragment/app/f$d;->a:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->start()V

    .line 18
    :cond_5b
    iget-boolean v0, p1, Landroidx/fragment/app/Fragment;->mHidden:Z

    if-eqz v0, :cond_68

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isHideReplaced()Z

    move-result v0

    if-nez v0, :cond_68

    const/16 v0, 0x8

    goto :goto_69

    :cond_68
    const/4 v0, 0x0

    .line 19
    :goto_69
    iget-object v2, p1, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 20
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isHideReplaced()Z

    move-result v0

    if-eqz v0, :cond_77

    .line 21
    invoke-virtual {p1, v1}, Landroidx/fragment/app/Fragment;->setHideReplaced(Z)V

    .line 22
    :cond_77
    :goto_77
    invoke-virtual {p0, p1}, Landroidx/fragment/app/n;->D0(Landroidx/fragment/app/Fragment;)V

    .line 23
    iput-boolean v1, p1, Landroidx/fragment/app/Fragment;->mHiddenChanged:Z

    .line 24
    iget-boolean v0, p1, Landroidx/fragment/app/Fragment;->mHidden:Z

    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->onHiddenChanged(Z)V

    return-void
.end method

.method private x(Landroidx/fragment/app/Fragment;)V
    .registers 5

    .line 1
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->performDestroyView()V

    .line 2
    iget-object v0, p0, Landroidx/fragment/app/n;->o:Landroidx/fragment/app/m;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroidx/fragment/app/m;->n(Landroidx/fragment/app/Fragment;Z)V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p1, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    .line 4
    iput-object v0, p1, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    .line 5
    iput-object v0, p1, Landroidx/fragment/app/Fragment;->mViewLifecycleOwner:Landroidx/fragment/app/a0;

    .line 6
    iget-object v2, p1, Landroidx/fragment/app/Fragment;->mViewLifecycleOwnerLiveData:Landroidx/lifecycle/t;

    invoke-virtual {v2, v0}, Landroidx/lifecycle/t;->n(Ljava/lang/Object;)V

    .line 7
    iput-boolean v1, p1, Landroidx/fragment/app/Fragment;->mInLayout:Z

    return-void
.end method

.method static z0(Landroid/view/View;)Landroidx/fragment/app/Fragment;
    .registers 2

    .line 1
    sget v0, Lo0/b;->a:I

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p0

    .line 2
    instance-of v0, p0, Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_d

    .line 3
    check-cast p0, Landroidx/fragment/app/Fragment;

    return-object p0

    :cond_d
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method A()V
    .registers 3

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Landroidx/fragment/app/n;->E:Z

    .line 2
    iput-boolean v0, p0, Landroidx/fragment/app/n;->F:Z

    .line 3
    iget-object v1, p0, Landroidx/fragment/app/n;->M:Landroidx/fragment/app/q;

    invoke-virtual {v1, v0}, Landroidx/fragment/app/q;->s(Z)V

    .line 4
    invoke-direct {p0, v0}, Landroidx/fragment/app/n;->T(I)V

    return-void
.end method

.method A0(Landroidx/fragment/app/Fragment;)Landroidx/lifecycle/l0;
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/n;->M:Landroidx/fragment/app/q;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/q;->p(Landroidx/fragment/app/Fragment;)Landroidx/lifecycle/l0;

    move-result-object p1

    return-object p1
.end method

.method B(Landroid/content/res/Configuration;)V
    .registers 4

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/n;->c:Landroidx/fragment/app/v;

    invoke-virtual {v0}, Landroidx/fragment/app/v;->n()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_a
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/Fragment;

    if-eqz v1, :cond_a

    .line 2
    invoke-virtual {v1, p1}, Landroidx/fragment/app/Fragment;->performConfigurationChanged(Landroid/content/res/Configuration;)V

    goto :goto_a

    :cond_1c
    return-void
.end method

.method B0()V
    .registers 2

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Landroidx/fragment/app/n;->b0(Z)Z

    .line 2
    iget-object v0, p0, Landroidx/fragment/app/n;->h:Landroidx/activity/g;

    invoke-virtual {v0}, Landroidx/activity/g;->c()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/n;->X0()Z

    goto :goto_15

    .line 4
    :cond_10
    iget-object v0, p0, Landroidx/fragment/app/n;->g:Landroidx/activity/OnBackPressedDispatcher;

    invoke-virtual {v0}, Landroidx/activity/OnBackPressedDispatcher;->g()V

    :goto_15
    return-void
.end method

.method C(Landroid/view/MenuItem;)Z
    .registers 6

    .line 1
    iget v0, p0, Landroidx/fragment/app/n;->q:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ge v0, v2, :cond_7

    return v1

    .line 2
    :cond_7
    iget-object v0, p0, Landroidx/fragment/app/n;->c:Landroidx/fragment/app/v;

    invoke-virtual {v0}, Landroidx/fragment/app/v;->n()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_26

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/Fragment;

    if-eqz v3, :cond_11

    .line 3
    invoke-virtual {v3, p1}, Landroidx/fragment/app/Fragment;->performContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v3

    if-eqz v3, :cond_11

    return v2

    :cond_26
    return v1
.end method

.method C0(Landroidx/fragment/app/Fragment;)V
    .registers 4

    const/4 v0, 0x2

    .line 1
    invoke-static {v0}, Landroidx/fragment/app/n;->F0(I)Z

    move-result v0

    if-eqz v0, :cond_1d

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "hide: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FragmentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    :cond_1d
    iget-boolean v0, p1, Landroidx/fragment/app/Fragment;->mHidden:Z

    if-nez v0, :cond_2c

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p1, Landroidx/fragment/app/Fragment;->mHidden:Z

    .line 4
    iget-boolean v1, p1, Landroidx/fragment/app/Fragment;->mHiddenChanged:Z

    xor-int/2addr v0, v1

    iput-boolean v0, p1, Landroidx/fragment/app/Fragment;->mHiddenChanged:Z

    .line 5
    invoke-direct {p0, p1}, Landroidx/fragment/app/n;->n1(Landroidx/fragment/app/Fragment;)V

    :cond_2c
    return-void
.end method

.method D()V
    .registers 3

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Landroidx/fragment/app/n;->E:Z

    .line 2
    iput-boolean v0, p0, Landroidx/fragment/app/n;->F:Z

    .line 3
    iget-object v1, p0, Landroidx/fragment/app/n;->M:Landroidx/fragment/app/q;

    invoke-virtual {v1, v0}, Landroidx/fragment/app/q;->s(Z)V

    const/4 v0, 0x1

    .line 4
    invoke-direct {p0, v0}, Landroidx/fragment/app/n;->T(I)V

    return-void
.end method

.method D0(Landroidx/fragment/app/Fragment;)V
    .registers 3

    .line 1
    iget-boolean v0, p1, Landroidx/fragment/app/Fragment;->mAdded:Z

    if-eqz v0, :cond_d

    invoke-direct {p0, p1}, Landroidx/fragment/app/n;->G0(Landroidx/fragment/app/Fragment;)Z

    move-result p1

    if-eqz p1, :cond_d

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Landroidx/fragment/app/n;->D:Z

    :cond_d
    return-void
.end method

.method E(Landroid/view/Menu;Landroid/view/MenuInflater;)Z
    .registers 10

    .line 1
    iget v0, p0, Landroidx/fragment/app/n;->q:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ge v0, v2, :cond_7

    return v1

    :cond_7
    const/4 v0, 0x0

    .line 2
    iget-object v3, p0, Landroidx/fragment/app/n;->c:Landroidx/fragment/app/v;

    invoke-virtual {v3}, Landroidx/fragment/app/v;->n()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, 0x0

    :cond_13
    :goto_13
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_39

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/fragment/app/Fragment;

    if-eqz v5, :cond_13

    .line 3
    invoke-virtual {p0, v5}, Landroidx/fragment/app/n;->H0(Landroidx/fragment/app/Fragment;)Z

    move-result v6

    if-eqz v6, :cond_13

    invoke-virtual {v5, p1, p2}, Landroidx/fragment/app/Fragment;->performCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)Z

    move-result v6

    if-eqz v6, :cond_13

    if-nez v0, :cond_34

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 5
    :cond_34
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v4, 0x1

    goto :goto_13

    .line 6
    :cond_39
    iget-object p1, p0, Landroidx/fragment/app/n;->e:Ljava/util/ArrayList;

    if-eqz p1, :cond_5b

    .line 7
    :goto_3d
    iget-object p1, p0, Landroidx/fragment/app/n;->e:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge v1, p1, :cond_5b

    .line 8
    iget-object p1, p0, Landroidx/fragment/app/n;->e:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_55

    .line 9
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_58

    .line 10
    :cond_55
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->onDestroyOptionsMenu()V

    :cond_58
    add-int/lit8 v1, v1, 0x1

    goto :goto_3d

    .line 11
    :cond_5b
    iput-object v0, p0, Landroidx/fragment/app/n;->e:Ljava/util/ArrayList;

    return v4
.end method

.method public E0()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Landroidx/fragment/app/n;->G:Z

    return v0
.end method

.method F()V
    .registers 3

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Landroidx/fragment/app/n;->G:Z

    .line 2
    invoke-virtual {p0, v0}, Landroidx/fragment/app/n;->b0(Z)Z

    .line 3
    invoke-direct {p0}, Landroidx/fragment/app/n;->Y()V

    const/4 v0, -0x1

    .line 4
    invoke-direct {p0, v0}, Landroidx/fragment/app/n;->T(I)V

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Landroidx/fragment/app/n;->r:Landroidx/fragment/app/k;

    .line 6
    iput-object v0, p0, Landroidx/fragment/app/n;->s:Landroidx/fragment/app/g;

    .line 7
    iput-object v0, p0, Landroidx/fragment/app/n;->t:Landroidx/fragment/app/Fragment;

    .line 8
    iget-object v1, p0, Landroidx/fragment/app/n;->g:Landroidx/activity/OnBackPressedDispatcher;

    if-eqz v1, :cond_1f

    .line 9
    iget-object v1, p0, Landroidx/fragment/app/n;->h:Landroidx/activity/g;

    invoke-virtual {v1}, Landroidx/activity/g;->d()V

    .line 10
    iput-object v0, p0, Landroidx/fragment/app/n;->g:Landroidx/activity/OnBackPressedDispatcher;

    .line 11
    :cond_1f
    iget-object v0, p0, Landroidx/fragment/app/n;->z:Landroidx/activity/result/c;

    if-eqz v0, :cond_30

    .line 12
    invoke-virtual {v0}, Landroidx/activity/result/c;->d()V

    .line 13
    iget-object v0, p0, Landroidx/fragment/app/n;->A:Landroidx/activity/result/c;

    invoke-virtual {v0}, Landroidx/activity/result/c;->d()V

    .line 14
    iget-object v0, p0, Landroidx/fragment/app/n;->B:Landroidx/activity/result/c;

    invoke-virtual {v0}, Landroidx/activity/result/c;->d()V

    :cond_30
    return-void
.end method

.method G()V
    .registers 2

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, v0}, Landroidx/fragment/app/n;->T(I)V

    return-void
.end method

.method H()V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/n;->c:Landroidx/fragment/app/v;

    invoke-virtual {v0}, Landroidx/fragment/app/v;->n()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_a
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/Fragment;

    if-eqz v1, :cond_a

    .line 2
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->performLowMemory()V

    goto :goto_a

    :cond_1c
    return-void
.end method

.method H0(Landroidx/fragment/app/Fragment;)Z
    .registers 2

    if-nez p1, :cond_4

    const/4 p1, 0x1

    return p1

    .line 1
    :cond_4
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isMenuVisible()Z

    move-result p1

    return p1
.end method

.method I(Z)V
    .registers 4

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/n;->c:Landroidx/fragment/app/v;

    invoke-virtual {v0}, Landroidx/fragment/app/v;->n()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_a
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/Fragment;

    if-eqz v1, :cond_a

    .line 2
    invoke-virtual {v1, p1}, Landroidx/fragment/app/Fragment;->performMultiWindowModeChanged(Z)V

    goto :goto_a

    :cond_1c
    return-void
.end method

.method I0(Landroidx/fragment/app/Fragment;)Z
    .registers 5

    const/4 v0, 0x1

    if-nez p1, :cond_4

    return v0

    .line 1
    :cond_4
    iget-object v1, p1, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/n;

    .line 2
    invoke-virtual {v1}, Landroidx/fragment/app/n;->x0()Landroidx/fragment/app/Fragment;

    move-result-object v2

    .line 3
    invoke-virtual {p1, v2}, Landroidx/fragment/app/Fragment;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_19

    iget-object p1, v1, Landroidx/fragment/app/n;->t:Landroidx/fragment/app/Fragment;

    .line 4
    invoke-virtual {p0, p1}, Landroidx/fragment/app/n;->I0(Landroidx/fragment/app/Fragment;)Z

    move-result p1

    if-eqz p1, :cond_19

    goto :goto_1a

    :cond_19
    const/4 v0, 0x0

    :goto_1a
    return v0
.end method

.method J(Landroidx/fragment/app/Fragment;)V
    .registers 4

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/n;->p:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/r;

    .line 2
    invoke-interface {v1, p0, p1}, Landroidx/fragment/app/r;->a(Landroidx/fragment/app/n;Landroidx/fragment/app/Fragment;)V

    goto :goto_6

    :cond_16
    return-void
.end method

.method J0(I)Z
    .registers 3

    .line 1
    iget v0, p0, Landroidx/fragment/app/n;->q:I

    if-lt v0, p1, :cond_6

    const/4 p1, 0x1

    goto :goto_7

    :cond_6
    const/4 p1, 0x0

    :goto_7
    return p1
.end method

.method K(Landroid/view/MenuItem;)Z
    .registers 6

    .line 1
    iget v0, p0, Landroidx/fragment/app/n;->q:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ge v0, v2, :cond_7

    return v1

    .line 2
    :cond_7
    iget-object v0, p0, Landroidx/fragment/app/n;->c:Landroidx/fragment/app/v;

    invoke-virtual {v0}, Landroidx/fragment/app/v;->n()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_26

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/Fragment;

    if-eqz v3, :cond_11

    .line 3
    invoke-virtual {v3, p1}, Landroidx/fragment/app/Fragment;->performOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v3

    if-eqz v3, :cond_11

    return v2

    :cond_26
    return v1
.end method

.method public K0()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Landroidx/fragment/app/n;->E:Z

    if-nez v0, :cond_b

    iget-boolean v0, p0, Landroidx/fragment/app/n;->F:Z

    if-eqz v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 v0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 v0, 0x1

    :goto_c
    return v0
.end method

.method L(Landroid/view/Menu;)V
    .registers 4

    .line 1
    iget v0, p0, Landroidx/fragment/app/n;->q:I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_6

    return-void

    .line 2
    :cond_6
    iget-object v0, p0, Landroidx/fragment/app/n;->c:Landroidx/fragment/app/v;

    invoke-virtual {v0}, Landroidx/fragment/app/v;->n()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_10
    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_22

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/Fragment;

    if-eqz v1, :cond_10

    .line 3
    invoke-virtual {v1, p1}, Landroidx/fragment/app/Fragment;->performOptionsMenuClosed(Landroid/view/Menu;)V

    goto :goto_10

    :cond_22
    return-void
.end method

.method L0(Landroidx/fragment/app/Fragment;[Ljava/lang/String;I)V
    .registers 5

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/n;->B:Landroidx/activity/result/c;

    if-eqz v0, :cond_16

    .line 2
    new-instance v0, Landroidx/fragment/app/n$m;

    iget-object p1, p1, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    invoke-direct {v0, p1, p3}, Landroidx/fragment/app/n$m;-><init>(Ljava/lang/String;I)V

    .line 3
    iget-object p1, p0, Landroidx/fragment/app/n;->C:Ljava/util/ArrayDeque;

    invoke-virtual {p1, v0}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Landroidx/fragment/app/n;->B:Landroidx/activity/result/c;

    invoke-virtual {p1, p2}, Landroidx/activity/result/c;->b(Ljava/lang/Object;)V

    goto :goto_1b

    .line 5
    :cond_16
    iget-object v0, p0, Landroidx/fragment/app/n;->r:Landroidx/fragment/app/k;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/fragment/app/k;->j(Landroidx/fragment/app/Fragment;[Ljava/lang/String;I)V

    :goto_1b
    return-void
.end method

.method M0(Landroidx/fragment/app/Fragment;Landroid/content/Intent;ILandroid/os/Bundle;)V
    .registers 6
    .param p2    # Landroid/content/Intent;
        .annotation build Landroid/annotation/SuppressLint;
            value = {
                "UnknownNullness"
            }
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/n;->z:Landroidx/activity/result/c;

    if-eqz v0, :cond_1f

    .line 2
    new-instance v0, Landroidx/fragment/app/n$m;

    iget-object p1, p1, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    invoke-direct {v0, p1, p3}, Landroidx/fragment/app/n$m;-><init>(Ljava/lang/String;I)V

    .line 3
    iget-object p1, p0, Landroidx/fragment/app/n;->C:Ljava/util/ArrayDeque;

    invoke-virtual {p1, v0}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    if-eqz p2, :cond_19

    if-eqz p4, :cond_19

    const-string p1, "androidx.activity.result.contract.extra.ACTIVITY_OPTIONS_BUNDLE"

    .line 4
    invoke-virtual {p2, p1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 5
    :cond_19
    iget-object p1, p0, Landroidx/fragment/app/n;->z:Landroidx/activity/result/c;

    invoke-virtual {p1, p2}, Landroidx/activity/result/c;->b(Ljava/lang/Object;)V

    goto :goto_24

    .line 6
    :cond_1f
    iget-object v0, p0, Landroidx/fragment/app/n;->r:Landroidx/fragment/app/k;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroidx/fragment/app/k;->m(Landroidx/fragment/app/Fragment;Landroid/content/Intent;ILandroid/os/Bundle;)V

    :goto_24
    return-void
.end method

.method N()V
    .registers 2

    const/4 v0, 0x5

    .line 1
    invoke-direct {p0, v0}, Landroidx/fragment/app/n;->T(I)V

    return-void
.end method

.method N0(Landroidx/fragment/app/Fragment;Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V
    .registers 20
    .param p2    # Landroid/content/IntentSender;
        .annotation build Landroid/annotation/SuppressLint;
            value = {
                "UnknownNullness"
            }
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/IntentSender$SendIntentException;
        }
    .end annotation

    move-object v0, p0

    move-object v2, p1

    move-object/from16 v9, p8

    .line 1
    iget-object v1, v0, Landroidx/fragment/app/n;->A:Landroidx/activity/result/c;

    if-eqz v1, :cond_95

    const-string v1, "FragmentManager"

    const/4 v3, 0x2

    if-eqz v9, :cond_4c

    if-nez p4, :cond_1b

    .line 2
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    const/4 v5, 0x1

    const-string v6, "androidx.fragment.extra.ACTIVITY_OPTIONS_BUNDLE"

    .line 3
    invoke-virtual {v4, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_1c

    :cond_1b
    move-object v4, p4

    .line 4
    :goto_1c
    invoke-static {v3}, Landroidx/fragment/app/n;->F0(I)Z

    move-result v5

    if-eqz v5, :cond_46

    .line 5
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ActivityOptions "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " were added to fillInIntent "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " for fragment "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_46
    const-string v5, "androidx.activity.result.contract.extra.ACTIVITY_OPTIONS_BUNDLE"

    .line 6
    invoke-virtual {v4, v5, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    goto :goto_4d

    :cond_4c
    move-object v4, p4

    .line 7
    :goto_4d
    new-instance v5, Landroidx/activity/result/e$b;

    move-object v6, p2

    invoke-direct {v5, p2}, Landroidx/activity/result/e$b;-><init>(Landroid/content/IntentSender;)V

    .line 8
    invoke-virtual {v5, v4}, Landroidx/activity/result/e$b;->b(Landroid/content/Intent;)Landroidx/activity/result/e$b;

    move-result-object v4

    move/from16 v7, p5

    move/from16 v8, p6

    .line 9
    invoke-virtual {v4, v8, v7}, Landroidx/activity/result/e$b;->c(II)Landroidx/activity/result/e$b;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/activity/result/e$b;->a()Landroidx/activity/result/e;

    move-result-object v4

    .line 10
    new-instance v5, Landroidx/fragment/app/n$m;

    iget-object v6, v2, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    move v10, p3

    invoke-direct {v5, v6, p3}, Landroidx/fragment/app/n$m;-><init>(Ljava/lang/String;I)V

    .line 11
    iget-object v6, v0, Landroidx/fragment/app/n;->C:Ljava/util/ArrayDeque;

    invoke-virtual {v6, v5}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 12
    invoke-static {v3}, Landroidx/fragment/app/n;->F0(I)Z

    move-result v3

    if-eqz v3, :cond_8f

    .line 13
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Fragment "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "is launching an IntentSender for result "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    :cond_8f
    iget-object v1, v0, Landroidx/fragment/app/n;->A:Landroidx/activity/result/c;

    invoke-virtual {v1, v4}, Landroidx/activity/result/c;->b(Ljava/lang/Object;)V

    goto :goto_ac

    :cond_95
    move-object v6, p2

    move v10, p3

    move/from16 v7, p5

    move/from16 v8, p6

    .line 15
    iget-object v1, v0, Landroidx/fragment/app/n;->r:Landroidx/fragment/app/k;

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    invoke-virtual/range {v1 .. v9}, Landroidx/fragment/app/k;->n(Landroidx/fragment/app/Fragment;Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V

    :goto_ac
    return-void
.end method

.method O(Z)V
    .registers 4

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/n;->c:Landroidx/fragment/app/v;

    invoke-virtual {v0}, Landroidx/fragment/app/v;->n()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_a
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/Fragment;

    if-eqz v1, :cond_a

    .line 2
    invoke-virtual {v1, p1}, Landroidx/fragment/app/Fragment;->performPictureInPictureModeChanged(Z)V

    goto :goto_a

    :cond_1c
    return-void
.end method

.method P(Landroid/view/Menu;)Z
    .registers 7

    .line 1
    iget v0, p0, Landroidx/fragment/app/n;->q:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ge v0, v2, :cond_7

    return v1

    .line 2
    :cond_7
    iget-object v0, p0, Landroidx/fragment/app/n;->c:Landroidx/fragment/app/v;

    invoke-virtual {v0}, Landroidx/fragment/app/v;->n()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_11
    :goto_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/Fragment;

    if-eqz v3, :cond_11

    .line 3
    invoke-virtual {p0, v3}, Landroidx/fragment/app/n;->H0(Landroidx/fragment/app/Fragment;)Z

    move-result v4

    if-eqz v4, :cond_11

    invoke-virtual {v3, p1}, Landroidx/fragment/app/Fragment;->performPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v3

    if-eqz v3, :cond_11

    const/4 v1, 0x1

    goto :goto_11

    :cond_2d
    return v1
.end method

.method P0(Landroidx/fragment/app/Fragment;)V
    .registers 6

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/n;->c:Landroidx/fragment/app/v;

    iget-object v1, p1, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/v;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3a

    const/4 v0, 0x3

    .line 2
    invoke-static {v0}, Landroidx/fragment/app/n;->F0(I)Z

    move-result v0

    if-eqz v0, :cond_39

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ignoring moving "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " to state "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Landroidx/fragment/app/n;->q:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "since it is not added to "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "FragmentManager"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_39
    return-void

    .line 4
    :cond_3a
    invoke-virtual {p0, p1}, Landroidx/fragment/app/n;->R0(Landroidx/fragment/app/Fragment;)V

    .line 5
    iget-object v0, p1, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    if-eqz v0, :cond_7f

    .line 6
    iget-boolean v1, p1, Landroidx/fragment/app/Fragment;->mIsNewlyAdded:Z

    if-eqz v1, :cond_7f

    iget-object v1, p1, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    if-eqz v1, :cond_7f

    .line 7
    iget v1, p1, Landroidx/fragment/app/Fragment;->mPostponedAlpha:F

    const/4 v2, 0x0

    cmpl-float v3, v1, v2

    if-lez v3, :cond_53

    .line 8
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 9
    :cond_53
    iput v2, p1, Landroidx/fragment/app/Fragment;->mPostponedAlpha:F

    const/4 v0, 0x0

    .line 10
    iput-boolean v0, p1, Landroidx/fragment/app/Fragment;->mIsNewlyAdded:Z

    .line 11
    iget-object v0, p0, Landroidx/fragment/app/n;->r:Landroidx/fragment/app/k;

    .line 12
    invoke-virtual {v0}, Landroidx/fragment/app/k;->f()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getPopDirection()Z

    move-result v2

    .line 13
    invoke-static {v0, p1, v1, v2}, Landroidx/fragment/app/f;->c(Landroid/content/Context;Landroidx/fragment/app/Fragment;ZZ)Landroidx/fragment/app/f$d;

    move-result-object v0

    if-eqz v0, :cond_7f

    .line 14
    iget-object v1, v0, Landroidx/fragment/app/f$d;->a:Landroid/view/animation/Animation;

    if-eqz v1, :cond_73

    .line 15
    iget-object v0, p1, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_7f

    .line 16
    :cond_73
    iget-object v1, v0, Landroidx/fragment/app/f$d;->b:Landroid/animation/Animator;

    iget-object v2, p1, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 17
    iget-object v0, v0, Landroidx/fragment/app/f$d;->b:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 18
    :cond_7f
    :goto_7f
    iget-boolean v0, p1, Landroidx/fragment/app/Fragment;->mHiddenChanged:Z

    if-eqz v0, :cond_86

    .line 19
    invoke-direct {p0, p1}, Landroidx/fragment/app/n;->v(Landroidx/fragment/app/Fragment;)V

    :cond_86
    return-void
.end method

.method Q()V
    .registers 2

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/n;->q1()V

    .line 2
    iget-object v0, p0, Landroidx/fragment/app/n;->u:Landroidx/fragment/app/Fragment;

    invoke-direct {p0, v0}, Landroidx/fragment/app/n;->M(Landroidx/fragment/app/Fragment;)V

    return-void
.end method

.method Q0(IZ)V
    .registers 6

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/n;->r:Landroidx/fragment/app/k;

    if-nez v0, :cond_10

    const/4 v0, -0x1

    if-ne p1, v0, :cond_8

    goto :goto_10

    .line 2
    :cond_8
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "No activity"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_10
    :goto_10
    if-nez p2, :cond_17

    .line 3
    iget p2, p0, Landroidx/fragment/app/n;->q:I

    if-ne p1, p2, :cond_17

    return-void

    .line 4
    :cond_17
    iput p1, p0, Landroidx/fragment/app/n;->q:I

    .line 5
    sget-boolean p1, Landroidx/fragment/app/n;->P:Z

    const/4 p2, 0x0

    if-eqz p1, :cond_24

    .line 6
    iget-object p1, p0, Landroidx/fragment/app/n;->c:Landroidx/fragment/app/v;

    invoke-virtual {p1}, Landroidx/fragment/app/v;->r()V

    goto :goto_74

    .line 7
    :cond_24
    iget-object p1, p0, Landroidx/fragment/app/n;->c:Landroidx/fragment/app/v;

    invoke-virtual {p1}, Landroidx/fragment/app/v;->n()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2e
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Fragment;

    .line 8
    invoke-virtual {p0, v0}, Landroidx/fragment/app/n;->P0(Landroidx/fragment/app/Fragment;)V

    goto :goto_2e

    .line 9
    :cond_3e
    iget-object p1, p0, Landroidx/fragment/app/n;->c:Landroidx/fragment/app/v;

    invoke-virtual {p1}, Landroidx/fragment/app/v;->k()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_48
    :goto_48
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_74

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/u;

    .line 10
    invoke-virtual {v0}, Landroidx/fragment/app/u;->k()Landroidx/fragment/app/Fragment;

    move-result-object v1

    .line 11
    iget-boolean v2, v1, Landroidx/fragment/app/Fragment;->mIsNewlyAdded:Z

    if-nez v2, :cond_5f

    .line 12
    invoke-virtual {p0, v1}, Landroidx/fragment/app/n;->P0(Landroidx/fragment/app/Fragment;)V

    .line 13
    :cond_5f
    iget-boolean v2, v1, Landroidx/fragment/app/Fragment;->mRemoving:Z

    if-eqz v2, :cond_6b

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->isInBackStack()Z

    move-result v1

    if-nez v1, :cond_6b

    const/4 v1, 0x1

    goto :goto_6c

    :cond_6b
    const/4 v1, 0x0

    :goto_6c
    if-eqz v1, :cond_48

    .line 14
    iget-object v1, p0, Landroidx/fragment/app/n;->c:Landroidx/fragment/app/v;

    invoke-virtual {v1, v0}, Landroidx/fragment/app/v;->q(Landroidx/fragment/app/u;)V

    goto :goto_48

    .line 15
    :cond_74
    :goto_74
    invoke-direct {p0}, Landroidx/fragment/app/n;->p1()V

    .line 16
    iget-boolean p1, p0, Landroidx/fragment/app/n;->D:Z

    if-eqz p1, :cond_89

    iget-object p1, p0, Landroidx/fragment/app/n;->r:Landroidx/fragment/app/k;

    if-eqz p1, :cond_89

    iget v0, p0, Landroidx/fragment/app/n;->q:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_89

    .line 17
    invoke-virtual {p1}, Landroidx/fragment/app/k;->o()V

    .line 18
    iput-boolean p2, p0, Landroidx/fragment/app/n;->D:Z

    :cond_89
    return-void
.end method

.method R()V
    .registers 3

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Landroidx/fragment/app/n;->E:Z

    .line 2
    iput-boolean v0, p0, Landroidx/fragment/app/n;->F:Z

    .line 3
    iget-object v1, p0, Landroidx/fragment/app/n;->M:Landroidx/fragment/app/q;

    invoke-virtual {v1, v0}, Landroidx/fragment/app/q;->s(Z)V

    const/4 v0, 0x7

    .line 4
    invoke-direct {p0, v0}, Landroidx/fragment/app/n;->T(I)V

    return-void
.end method

.method R0(Landroidx/fragment/app/Fragment;)V
    .registers 3

    .line 1
    iget v0, p0, Landroidx/fragment/app/n;->q:I

    invoke-virtual {p0, p1, v0}, Landroidx/fragment/app/n;->S0(Landroidx/fragment/app/Fragment;I)V

    return-void
.end method

.method S()V
    .registers 3

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Landroidx/fragment/app/n;->E:Z

    .line 2
    iput-boolean v0, p0, Landroidx/fragment/app/n;->F:Z

    .line 3
    iget-object v1, p0, Landroidx/fragment/app/n;->M:Landroidx/fragment/app/q;

    invoke-virtual {v1, v0}, Landroidx/fragment/app/q;->s(Z)V

    const/4 v0, 0x5

    .line 4
    invoke-direct {p0, v0}, Landroidx/fragment/app/n;->T(I)V

    return-void
.end method

.method S0(Landroidx/fragment/app/Fragment;I)V
    .registers 13

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/n;->c:Landroidx/fragment/app/v;

    iget-object v1, p1, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/v;->m(Ljava/lang/String;)Landroidx/fragment/app/u;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_17

    .line 2
    new-instance v0, Landroidx/fragment/app/u;

    iget-object v2, p0, Landroidx/fragment/app/n;->o:Landroidx/fragment/app/m;

    iget-object v3, p0, Landroidx/fragment/app/n;->c:Landroidx/fragment/app/v;

    invoke-direct {v0, v2, v3, p1}, Landroidx/fragment/app/u;-><init>(Landroidx/fragment/app/m;Landroidx/fragment/app/v;Landroidx/fragment/app/Fragment;)V

    .line 3
    invoke-virtual {v0, v1}, Landroidx/fragment/app/u;->t(I)V

    .line 4
    :cond_17
    iget-boolean v2, p1, Landroidx/fragment/app/Fragment;->mFromLayout:Z

    const/4 v3, 0x2

    if-eqz v2, :cond_28

    iget-boolean v2, p1, Landroidx/fragment/app/Fragment;->mInLayout:Z

    if-eqz v2, :cond_28

    iget v2, p1, Landroidx/fragment/app/Fragment;->mState:I

    if-ne v2, v3, :cond_28

    .line 5
    invoke-static {p2, v3}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 6
    :cond_28
    invoke-virtual {v0}, Landroidx/fragment/app/u;->d()I

    move-result v2

    invoke-static {p2, v2}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 7
    iget v2, p1, Landroidx/fragment/app/Fragment;->mState:I

    const/4 v4, 0x3

    const-string v5, "FragmentManager"

    const/4 v6, -0x1

    const/4 v7, 0x5

    const/4 v8, 0x4

    if-gt v2, p2, :cond_7c

    if-ge v2, p2, :cond_47

    .line 8
    iget-object v2, p0, Landroidx/fragment/app/n;->m:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_47

    .line 9
    invoke-direct {p0, p1}, Landroidx/fragment/app/n;->n(Landroidx/fragment/app/Fragment;)V

    .line 10
    :cond_47
    iget v2, p1, Landroidx/fragment/app/Fragment;->mState:I

    if-eq v2, v6, :cond_57

    if-eqz v2, :cond_5c

    if-eq v2, v1, :cond_61

    if-eq v2, v3, :cond_6b

    if-eq v2, v8, :cond_70

    if-eq v2, v7, :cond_75

    goto/16 :goto_164

    :cond_57
    if-le p2, v6, :cond_5c

    .line 11
    invoke-virtual {v0}, Landroidx/fragment/app/u;->c()V

    :cond_5c
    if-lez p2, :cond_61

    .line 12
    invoke-virtual {v0}, Landroidx/fragment/app/u;->e()V

    :cond_61
    if-le p2, v6, :cond_66

    .line 13
    invoke-virtual {v0}, Landroidx/fragment/app/u;->j()V

    :cond_66
    if-le p2, v1, :cond_6b

    .line 14
    invoke-virtual {v0}, Landroidx/fragment/app/u;->f()V

    :cond_6b
    if-le p2, v3, :cond_70

    .line 15
    invoke-virtual {v0}, Landroidx/fragment/app/u;->a()V

    :cond_70
    if-le p2, v8, :cond_75

    .line 16
    invoke-virtual {v0}, Landroidx/fragment/app/u;->u()V

    :cond_75
    if-le p2, v7, :cond_164

    .line 17
    invoke-virtual {v0}, Landroidx/fragment/app/u;->p()V

    goto/16 :goto_164

    :cond_7c
    if-le v2, p2, :cond_164

    if-eqz v2, :cond_15d

    if-eq v2, v1, :cond_14f

    if-eq v2, v3, :cond_c6

    if-eq v2, v8, :cond_97

    if-eq v2, v7, :cond_92

    const/4 v9, 0x7

    if-eq v2, v9, :cond_8d

    goto/16 :goto_164

    :cond_8d
    if-ge p2, v9, :cond_92

    .line 18
    invoke-virtual {v0}, Landroidx/fragment/app/u;->n()V

    :cond_92
    if-ge p2, v7, :cond_97

    .line 19
    invoke-virtual {v0}, Landroidx/fragment/app/u;->v()V

    :cond_97
    if-ge p2, v8, :cond_c6

    .line 20
    invoke-static {v4}, Landroidx/fragment/app/n;->F0(I)Z

    move-result v2

    if-eqz v2, :cond_b3

    .line 21
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "movefrom ACTIVITY_CREATED: "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    :cond_b3
    iget-object v2, p1, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    if-eqz v2, :cond_c6

    .line 23
    iget-object v2, p0, Landroidx/fragment/app/n;->r:Landroidx/fragment/app/k;

    invoke-virtual {v2, p1}, Landroidx/fragment/app/k;->k(Landroidx/fragment/app/Fragment;)Z

    move-result v2

    if-eqz v2, :cond_c6

    iget-object v2, p1, Landroidx/fragment/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    if-nez v2, :cond_c6

    .line 24
    invoke-virtual {v0}, Landroidx/fragment/app/u;->s()V

    :cond_c6
    if-ge p2, v3, :cond_14f

    const/4 v2, 0x0

    .line 25
    iget-object v7, p1, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    if-eqz v7, :cond_144

    iget-object v8, p1, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    if-eqz v8, :cond_144

    .line 26
    invoke-virtual {v8, v7}, Landroid/view/ViewGroup;->endViewTransition(Landroid/view/View;)V

    .line 27
    iget-object v7, p1, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->clearAnimation()V

    .line 28
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isRemovingParent()Z

    move-result v7

    if-nez v7, :cond_144

    .line 29
    iget v7, p0, Landroidx/fragment/app/n;->q:I

    const/4 v8, 0x0

    if-le v7, v6, :cond_105

    iget-boolean v6, p0, Landroidx/fragment/app/n;->G:Z

    if-nez v6, :cond_105

    iget-object v6, p1, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    .line 30
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-nez v6, :cond_105

    iget v6, p1, Landroidx/fragment/app/Fragment;->mPostponedAlpha:F

    cmpl-float v6, v6, v8

    if-ltz v6, :cond_105

    .line 31
    iget-object v2, p0, Landroidx/fragment/app/n;->r:Landroidx/fragment/app/k;

    invoke-virtual {v2}, Landroidx/fragment/app/k;->f()Landroid/content/Context;

    move-result-object v2

    const/4 v6, 0x0

    .line 32
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getPopDirection()Z

    move-result v7

    .line 33
    invoke-static {v2, p1, v6, v7}, Landroidx/fragment/app/f;->c(Landroid/content/Context;Landroidx/fragment/app/Fragment;ZZ)Landroidx/fragment/app/f$d;

    move-result-object v2

    .line 34
    :cond_105
    iput v8, p1, Landroidx/fragment/app/Fragment;->mPostponedAlpha:F

    .line 35
    iget-object v6, p1, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    .line 36
    iget-object v7, p1, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    if-eqz v2, :cond_112

    .line 37
    iget-object v8, p0, Landroidx/fragment/app/n;->n:Landroidx/fragment/app/x$g;

    invoke-static {p1, v2, v8}, Landroidx/fragment/app/f;->a(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/f$d;Landroidx/fragment/app/x$g;)V

    .line 38
    :cond_112
    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 39
    invoke-static {v3}, Landroidx/fragment/app/n;->F0(I)Z

    move-result v2

    if-eqz v2, :cond_13f

    .line 40
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Removing view "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " for fragment "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " from container "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    :cond_13f
    iget-object v2, p1, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    if-eq v6, v2, :cond_144

    return-void

    .line 42
    :cond_144
    iget-object v2, p0, Landroidx/fragment/app/n;->m:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_14f

    .line 43
    invoke-virtual {v0}, Landroidx/fragment/app/u;->h()V

    :cond_14f
    if-ge p2, v1, :cond_15d

    .line 44
    iget-object v2, p0, Landroidx/fragment/app/n;->m:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_15a

    goto :goto_15e

    .line 45
    :cond_15a
    invoke-virtual {v0}, Landroidx/fragment/app/u;->g()V

    :cond_15d
    move v1, p2

    :goto_15e
    if-gez v1, :cond_163

    .line 46
    invoke-virtual {v0}, Landroidx/fragment/app/u;->i()V

    :cond_163
    move p2, v1

    .line 47
    :cond_164
    :goto_164
    iget v0, p1, Landroidx/fragment/app/Fragment;->mState:I

    if-eq v0, p2, :cond_196

    .line 48
    invoke-static {v4}, Landroidx/fragment/app/n;->F0(I)Z

    move-result v0

    if-eqz v0, :cond_194

    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "moveToState: Fragment state for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " not updated inline; expected state "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " found "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroidx/fragment/app/Fragment;->mState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    :cond_194
    iput p2, p1, Landroidx/fragment/app/Fragment;->mState:I

    :cond_196
    return-void
.end method

.method T0()V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/n;->r:Landroidx/fragment/app/k;

    if-nez v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Landroidx/fragment/app/n;->E:Z

    .line 3
    iput-boolean v0, p0, Landroidx/fragment/app/n;->F:Z

    .line 4
    iget-object v1, p0, Landroidx/fragment/app/n;->M:Landroidx/fragment/app/q;

    invoke-virtual {v1, v0}, Landroidx/fragment/app/q;->s(Z)V

    .line 5
    iget-object v0, p0, Landroidx/fragment/app/n;->c:Landroidx/fragment/app/v;

    invoke-virtual {v0}, Landroidx/fragment/app/v;->n()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_19
    :goto_19
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/Fragment;

    if-eqz v1, :cond_19

    .line 6
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->noteStateNotSaved()V

    goto :goto_19

    :cond_2b
    return-void
.end method

.method U()V
    .registers 3

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Landroidx/fragment/app/n;->F:Z

    .line 2
    iget-object v1, p0, Landroidx/fragment/app/n;->M:Landroidx/fragment/app/q;

    invoke-virtual {v1, v0}, Landroidx/fragment/app/q;->s(Z)V

    const/4 v0, 0x4

    .line 3
    invoke-direct {p0, v0}, Landroidx/fragment/app/n;->T(I)V

    return-void
.end method

.method U0(Landroidx/fragment/app/h;)V
    .registers 7

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/n;->c:Landroidx/fragment/app/v;

    invoke-virtual {v0}, Landroidx/fragment/app/v;->k()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_a
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_32

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/u;

    .line 2
    invoke-virtual {v1}, Landroidx/fragment/app/u;->k()Landroidx/fragment/app/Fragment;

    move-result-object v2

    .line 3
    iget v3, v2, Landroidx/fragment/app/Fragment;->mContainerId:I

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getId()I

    move-result v4

    if-ne v3, v4, :cond_a

    iget-object v3, v2, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    if-eqz v3, :cond_a

    .line 4
    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-nez v3, :cond_a

    .line 5
    iput-object p1, v2, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    .line 6
    invoke-virtual {v1}, Landroidx/fragment/app/u;->b()V

    goto :goto_a

    :cond_32
    return-void
.end method

.method V()V
    .registers 2

    const/4 v0, 0x2

    .line 1
    invoke-direct {p0, v0}, Landroidx/fragment/app/n;->T(I)V

    return-void
.end method

.method V0(Landroidx/fragment/app/u;)V
    .registers 4

    .line 1
    invoke-virtual {p1}, Landroidx/fragment/app/u;->k()Landroidx/fragment/app/Fragment;

    move-result-object v0

    .line 2
    iget-boolean v1, v0, Landroidx/fragment/app/Fragment;->mDeferStart:Z

    if-eqz v1, :cond_1e

    .line 3
    iget-boolean v1, p0, Landroidx/fragment/app/n;->b:Z

    if-eqz v1, :cond_10

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Landroidx/fragment/app/n;->H:Z

    return-void

    :cond_10
    const/4 v1, 0x0

    .line 5
    iput-boolean v1, v0, Landroidx/fragment/app/Fragment;->mDeferStart:Z

    .line 6
    sget-boolean v1, Landroidx/fragment/app/n;->P:Z

    if-eqz v1, :cond_1b

    .line 7
    invoke-virtual {p1}, Landroidx/fragment/app/u;->m()V

    goto :goto_1e

    .line 8
    :cond_1b
    invoke-virtual {p0, v0}, Landroidx/fragment/app/n;->R0(Landroidx/fragment/app/Fragment;)V

    :cond_1e
    :goto_1e
    return-void
.end method

.method public W0(II)V
    .registers 5

    if-ltz p1, :cond_d

    .line 1
    new-instance v0, Landroidx/fragment/app/n$p;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, p1, p2}, Landroidx/fragment/app/n$p;-><init>(Landroidx/fragment/app/n;Ljava/lang/String;II)V

    const/4 p1, 0x0

    invoke-virtual {p0, v0, p1}, Landroidx/fragment/app/n;->Z(Landroidx/fragment/app/n$o;Z)V

    return-void

    .line 2
    :cond_d
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Bad id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public X(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 9

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "    "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p0, Landroidx/fragment/app/n;->c:Landroidx/fragment/app/v;

    invoke-virtual {v1, p1, p2, p3, p4}, Landroidx/fragment/app/v;->e(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 3
    iget-object p2, p0, Landroidx/fragment/app/n;->e:Ljava/util/ArrayList;

    const/4 p4, 0x0

    if-eqz p2, :cond_4e

    .line 4
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-lez p2, :cond_4e

    .line 5
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "Fragments Created Menus:"

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_2a
    if-ge v1, p2, :cond_4e

    .line 6
    iget-object v2, p0, Landroidx/fragment/app/n;->e:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/Fragment;

    .line 7
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "  #"

    .line 8
    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(I)V

    const-string v3, ": "

    .line 10
    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 11
    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2a

    .line 12
    :cond_4e
    iget-object p2, p0, Landroidx/fragment/app/n;->d:Ljava/util/ArrayList;

    if-eqz p2, :cond_88

    .line 13
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-lez p2, :cond_88

    .line 14
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "Back Stack:"

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_61
    if-ge v1, p2, :cond_88

    .line 15
    iget-object v2, p0, Landroidx/fragment/app/n;->d:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/a;

    .line 16
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "  #"

    .line 17
    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 18
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(I)V

    const-string v3, ": "

    .line 19
    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 20
    invoke-virtual {v2}, Landroidx/fragment/app/a;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 21
    invoke-virtual {v2, v0, p3}, Landroidx/fragment/app/a;->r(Ljava/lang/String;Ljava/io/PrintWriter;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_61

    .line 22
    :cond_88
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 23
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Back Stack Index: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Landroidx/fragment/app/n;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 24
    iget-object p2, p0, Landroidx/fragment/app/n;->a:Ljava/util/ArrayList;

    monitor-enter p2

    .line 25
    :try_start_a8
    iget-object v0, p0, Landroidx/fragment/app/n;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_d8

    .line 26
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "Pending Actions:"

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_b8
    if-ge p4, v0, :cond_d8

    .line 27
    iget-object v1, p0, Landroidx/fragment/app/n;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/n$o;

    .line 28
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "  #"

    .line 29
    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 30
    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->print(I)V

    const-string v2, ": "

    .line 31
    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 32
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    add-int/lit8 p4, p4, 0x1

    goto :goto_b8

    .line 33
    :cond_d8
    monitor-exit p2
    :try_end_d9
    .catchall {:try_start_a8 .. :try_end_d9} :catchall_149

    .line 34
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "FragmentManager misc state:"

    .line 35
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 36
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "  mHost="

    .line 37
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 38
    iget-object p2, p0, Landroidx/fragment/app/n;->r:Landroidx/fragment/app/k;

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 39
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "  mContainer="

    .line 40
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 41
    iget-object p2, p0, Landroidx/fragment/app/n;->s:Landroidx/fragment/app/g;

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 42
    iget-object p2, p0, Landroidx/fragment/app/n;->t:Landroidx/fragment/app/Fragment;

    if-eqz p2, :cond_10c

    .line 43
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "  mParent="

    .line 44
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 45
    iget-object p2, p0, Landroidx/fragment/app/n;->t:Landroidx/fragment/app/Fragment;

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 46
    :cond_10c
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "  mCurState="

    .line 47
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 48
    iget p2, p0, Landroidx/fragment/app/n;->q:I

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(I)V

    const-string p2, " mStateSaved="

    .line 49
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 50
    iget-boolean p2, p0, Landroidx/fragment/app/n;->E:Z

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Z)V

    const-string p2, " mStopped="

    .line 51
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 52
    iget-boolean p2, p0, Landroidx/fragment/app/n;->F:Z

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Z)V

    const-string p2, " mDestroyed="

    .line 53
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 54
    iget-boolean p2, p0, Landroidx/fragment/app/n;->G:Z

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Z)V

    .line 55
    iget-boolean p2, p0, Landroidx/fragment/app/n;->D:Z

    if-eqz p2, :cond_148

    .line 56
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p1, "  mNeedMenuInvalidate="

    .line 57
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 58
    iget-boolean p1, p0, Landroidx/fragment/app/n;->D:Z

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->println(Z)V

    :cond_148
    return-void

    :catchall_149
    move-exception p1

    .line 59
    :try_start_14a
    monitor-exit p2
    :try_end_14b
    .catchall {:try_start_14a .. :try_end_14b} :catchall_149

    goto :goto_14d

    :goto_14c
    throw p1

    :goto_14d
    goto :goto_14c
.end method

.method public X0()Z
    .registers 4

    const/4 v0, 0x0

    const/4 v1, -0x1

    const/4 v2, 0x0

    .line 1
    invoke-direct {p0, v0, v1, v2}, Landroidx/fragment/app/n;->Y0(Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method Z(Landroidx/fragment/app/n$o;Z)V
    .registers 5

    if-nez p2, :cond_1d

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/n;->r:Landroidx/fragment/app/k;

    if-nez v0, :cond_1a

    .line 2
    iget-boolean p1, p0, Landroidx/fragment/app/n;->G:Z

    if-eqz p1, :cond_12

    .line 3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "FragmentManager has been destroyed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 4
    :cond_12
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "FragmentManager has not been attached to a host."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 5
    :cond_1a
    invoke-direct {p0}, Landroidx/fragment/app/n;->p()V

    .line 6
    :cond_1d
    iget-object v0, p0, Landroidx/fragment/app/n;->a:Ljava/util/ArrayList;

    monitor-enter v0

    .line 7
    :try_start_20
    iget-object v1, p0, Landroidx/fragment/app/n;->r:Landroidx/fragment/app/k;

    if-nez v1, :cond_30

    if-eqz p2, :cond_28

    .line 8
    monitor-exit v0

    return-void

    .line 9
    :cond_28
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Activity has been destroyed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 10
    :cond_30
    iget-object p2, p0, Landroidx/fragment/app/n;->a:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 11
    invoke-virtual {p0}, Landroidx/fragment/app/n;->j1()V

    .line 12
    monitor-exit v0

    return-void

    :catchall_3a
    move-exception p1

    monitor-exit v0
    :try_end_3c
    .catchall {:try_start_20 .. :try_end_3c} :catchall_3a

    throw p1
.end method

.method Z0(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;II)Z
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/a;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljava/lang/String;",
            "II)Z"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/n;->d:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    const/4 v2, 0x1

    if-nez p3, :cond_27

    if-gez p4, :cond_27

    and-int/lit8 v3, p5, 0x1

    if-nez v3, :cond_27

    .line 2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p3

    sub-int/2addr p3, v2

    if-gez p3, :cond_17

    return v1

    .line 3
    :cond_17
    iget-object p4, p0, Landroidx/fragment/app/n;->d:Ljava/util/ArrayList;

    invoke-virtual {p4, p3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_9e

    :cond_27
    if-nez p3, :cond_2e

    if-ltz p4, :cond_2c

    goto :goto_2e

    :cond_2c
    const/4 p3, -0x1

    goto :goto_7a

    .line 5
    :cond_2e
    :goto_2e
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v2

    :goto_33
    if-ltz v0, :cond_54

    .line 6
    iget-object v3, p0, Landroidx/fragment/app/n;->d:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/a;

    if-eqz p3, :cond_4a

    .line 7
    invoke-virtual {v3}, Landroidx/fragment/app/a;->w()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4a

    goto :goto_54

    :cond_4a
    if-ltz p4, :cond_51

    .line 8
    iget v3, v3, Landroidx/fragment/app/a;->v:I

    if-ne p4, v3, :cond_51

    goto :goto_54

    :cond_51
    add-int/lit8 v0, v0, -0x1

    goto :goto_33

    :cond_54
    :goto_54
    if-gez v0, :cond_57

    return v1

    :cond_57
    and-int/2addr p5, v2

    if-eqz p5, :cond_79

    :cond_5a
    :goto_5a
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_79

    .line 9
    iget-object p5, p0, Landroidx/fragment/app/n;->d:Ljava/util/ArrayList;

    invoke-virtual {p5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Landroidx/fragment/app/a;

    if-eqz p3, :cond_72

    .line 10
    invoke-virtual {p5}, Landroidx/fragment/app/a;->w()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5a

    :cond_72
    if-ltz p4, :cond_79

    iget p5, p5, Landroidx/fragment/app/a;->v:I

    if-ne p4, p5, :cond_79

    goto :goto_5a

    :cond_79
    move p3, v0

    .line 11
    :goto_7a
    iget-object p4, p0, Landroidx/fragment/app/n;->d:Ljava/util/ArrayList;

    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result p4

    sub-int/2addr p4, v2

    if-ne p3, p4, :cond_84

    return v1

    .line 12
    :cond_84
    iget-object p4, p0, Landroidx/fragment/app/n;->d:Ljava/util/ArrayList;

    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result p4

    sub-int/2addr p4, v2

    :goto_8b
    if-le p4, p3, :cond_9e

    .line 13
    iget-object p5, p0, Landroidx/fragment/app/n;->d:Ljava/util/ArrayList;

    invoke-virtual {p5, p4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object p5

    invoke-virtual {p1, p5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 14
    sget-object p5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p2, p5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p4, p4, -0x1

    goto :goto_8b

    :cond_9e
    :goto_9e
    return v2
.end method

.method b0(Z)Z
    .registers 5

    .line 1
    invoke-direct {p0, p1}, Landroidx/fragment/app/n;->a0(Z)V

    const/4 p1, 0x1

    const/4 v0, 0x0

    .line 2
    :goto_5
    iget-object v1, p0, Landroidx/fragment/app/n;->I:Ljava/util/ArrayList;

    iget-object v2, p0, Landroidx/fragment/app/n;->J:Ljava/util/ArrayList;

    invoke-direct {p0, v1, v2}, Landroidx/fragment/app/n;->l0(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 3
    iput-boolean p1, p0, Landroidx/fragment/app/n;->b:Z

    .line 4
    :try_start_11
    iget-object v0, p0, Landroidx/fragment/app/n;->I:Ljava/util/ArrayList;

    iget-object v1, p0, Landroidx/fragment/app/n;->J:Ljava/util/ArrayList;

    invoke-direct {p0, v0, v1}, Landroidx/fragment/app/n;->d1(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    :try_end_18
    .catchall {:try_start_11 .. :try_end_18} :catchall_1d

    .line 5
    invoke-direct {p0}, Landroidx/fragment/app/n;->q()V

    const/4 v0, 0x1

    goto :goto_5

    :catchall_1d
    move-exception p1

    invoke-direct {p0}, Landroidx/fragment/app/n;->q()V

    .line 6
    throw p1

    .line 7
    :cond_22
    invoke-direct {p0}, Landroidx/fragment/app/n;->q1()V

    .line 8
    invoke-direct {p0}, Landroidx/fragment/app/n;->W()V

    .line 9
    iget-object p1, p0, Landroidx/fragment/app/n;->c:Landroidx/fragment/app/v;

    invoke-virtual {p1}, Landroidx/fragment/app/v;->b()V

    return v0
.end method

.method b1(Landroidx/fragment/app/Fragment;Landroidx/core/os/e;)V
    .registers 4

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/n;->m:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    if-eqz v0, :cond_26

    .line 2
    invoke-virtual {v0, p2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_26

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_26

    .line 3
    iget-object p2, p0, Landroidx/fragment/app/n;->m:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget p2, p1, Landroidx/fragment/app/Fragment;->mState:I

    const/4 v0, 0x5

    if-ge p2, v0, :cond_26

    .line 5
    invoke-direct {p0, p1}, Landroidx/fragment/app/n;->x(Landroidx/fragment/app/Fragment;)V

    .line 6
    invoke-virtual {p0, p1}, Landroidx/fragment/app/n;->R0(Landroidx/fragment/app/Fragment;)V

    :cond_26
    return-void
.end method

.method c0(Landroidx/fragment/app/n$o;Z)V
    .registers 4

    if-eqz p2, :cond_b

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/n;->r:Landroidx/fragment/app/k;

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Landroidx/fragment/app/n;->G:Z

    if-eqz v0, :cond_b

    :cond_a
    return-void

    .line 2
    :cond_b
    invoke-direct {p0, p2}, Landroidx/fragment/app/n;->a0(Z)V

    .line 3
    iget-object p2, p0, Landroidx/fragment/app/n;->I:Ljava/util/ArrayList;

    iget-object v0, p0, Landroidx/fragment/app/n;->J:Ljava/util/ArrayList;

    invoke-interface {p1, p2, v0}, Landroidx/fragment/app/n$o;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    move-result p1

    if-eqz p1, :cond_2b

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Landroidx/fragment/app/n;->b:Z

    .line 5
    :try_start_1b
    iget-object p1, p0, Landroidx/fragment/app/n;->I:Ljava/util/ArrayList;

    iget-object p2, p0, Landroidx/fragment/app/n;->J:Ljava/util/ArrayList;

    invoke-direct {p0, p1, p2}, Landroidx/fragment/app/n;->d1(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    :try_end_22
    .catchall {:try_start_1b .. :try_end_22} :catchall_26

    .line 6
    invoke-direct {p0}, Landroidx/fragment/app/n;->q()V

    goto :goto_2b

    :catchall_26
    move-exception p1

    invoke-direct {p0}, Landroidx/fragment/app/n;->q()V

    .line 7
    throw p1

    .line 8
    :cond_2b
    :goto_2b
    invoke-direct {p0}, Landroidx/fragment/app/n;->q1()V

    .line 9
    invoke-direct {p0}, Landroidx/fragment/app/n;->W()V

    .line 10
    iget-object p1, p0, Landroidx/fragment/app/n;->c:Landroidx/fragment/app/v;

    invoke-virtual {p1}, Landroidx/fragment/app/v;->b()V

    return-void
.end method

.method c1(Landroidx/fragment/app/Fragment;)V
    .registers 5

    const/4 v0, 0x2

    .line 1
    invoke-static {v0}, Landroidx/fragment/app/n;->F0(I)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "remove: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " nesting="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroidx/fragment/app/Fragment;->mBackStackNesting:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FragmentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    :cond_27
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isInBackStack()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    .line 4
    iget-boolean v2, p1, Landroidx/fragment/app/Fragment;->mDetached:Z

    if-eqz v2, :cond_33

    if-eqz v0, :cond_45

    .line 5
    :cond_33
    iget-object v0, p0, Landroidx/fragment/app/n;->c:Landroidx/fragment/app/v;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/v;->s(Landroidx/fragment/app/Fragment;)V

    .line 6
    invoke-direct {p0, p1}, Landroidx/fragment/app/n;->G0(Landroidx/fragment/app/Fragment;)Z

    move-result v0

    if-eqz v0, :cond_40

    .line 7
    iput-boolean v1, p0, Landroidx/fragment/app/n;->D:Z

    .line 8
    :cond_40
    iput-boolean v1, p1, Landroidx/fragment/app/Fragment;->mRemoving:Z

    .line 9
    invoke-direct {p0, p1}, Landroidx/fragment/app/n;->n1(Landroidx/fragment/app/Fragment;)V

    :cond_45
    return-void
.end method

.method e(Landroidx/fragment/app/a;)V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/n;->d:Ljava/util/ArrayList;

    if-nez v0, :cond_b

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/n;->d:Ljava/util/ArrayList;

    .line 3
    :cond_b
    iget-object v0, p0, Landroidx/fragment/app/n;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method e1(Landroidx/fragment/app/Fragment;)V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/n;->M:Landroidx/fragment/app/q;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/q;->r(Landroidx/fragment/app/Fragment;)V

    return-void
.end method

.method f(Landroidx/fragment/app/Fragment;Landroidx/core/os/e;)V
    .registers 5

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/n;->m:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_12

    .line 2
    iget-object v0, p0, Landroidx/fragment/app/n;->m:Ljava/util/Map;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    :cond_12
    iget-object v0, p0, Landroidx/fragment/app/n;->m:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/HashSet;

    invoke-virtual {p1, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method g(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/u;
    .registers 5

    const/4 v0, 0x2

    .line 1
    invoke-static {v0}, Landroidx/fragment/app/n;->F0(I)Z

    move-result v0

    if-eqz v0, :cond_1d

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "add: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FragmentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    :cond_1d
    invoke-virtual {p0, p1}, Landroidx/fragment/app/n;->w(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/u;

    move-result-object v0

    .line 3
    iput-object p0, p1, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/n;

    .line 4
    iget-object v1, p0, Landroidx/fragment/app/n;->c:Landroidx/fragment/app/v;

    invoke-virtual {v1, v0}, Landroidx/fragment/app/v;->p(Landroidx/fragment/app/u;)V

    .line 5
    iget-boolean v1, p1, Landroidx/fragment/app/Fragment;->mDetached:Z

    if-nez v1, :cond_43

    .line 6
    iget-object v1, p0, Landroidx/fragment/app/n;->c:Landroidx/fragment/app/v;

    invoke-virtual {v1, p1}, Landroidx/fragment/app/v;->a(Landroidx/fragment/app/Fragment;)V

    const/4 v1, 0x0

    .line 7
    iput-boolean v1, p1, Landroidx/fragment/app/Fragment;->mRemoving:Z

    .line 8
    iget-object v2, p1, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    if-nez v2, :cond_3a

    .line 9
    iput-boolean v1, p1, Landroidx/fragment/app/Fragment;->mHiddenChanged:Z

    .line 10
    :cond_3a
    invoke-direct {p0, p1}, Landroidx/fragment/app/n;->G0(Landroidx/fragment/app/Fragment;)Z

    move-result p1

    if-eqz p1, :cond_43

    const/4 p1, 0x1

    .line 11
    iput-boolean p1, p0, Landroidx/fragment/app/n;->D:Z

    :cond_43
    return-object v0
.end method

.method g0(Ljava/lang/String;)Landroidx/fragment/app/Fragment;
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/n;->c:Landroidx/fragment/app/v;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/v;->f(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    return-object p1
.end method

.method g1(Landroid/os/Parcelable;)V
    .registers 13

    if-nez p1, :cond_3

    return-void

    .line 1
    :cond_3
    check-cast p1, Landroidx/fragment/app/p;

    .line 2
    iget-object v0, p1, Landroidx/fragment/app/p;->o:Ljava/util/ArrayList;

    if-nez v0, :cond_a

    return-void

    .line 3
    :cond_a
    iget-object v0, p0, Landroidx/fragment/app/n;->c:Landroidx/fragment/app/v;

    invoke-virtual {v0}, Landroidx/fragment/app/v;->t()V

    .line 4
    iget-object v0, p1, Landroidx/fragment/app/p;->o:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_15
    :goto_15
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-string v2, "): "

    const/4 v3, 0x2

    const-string v4, "FragmentManager"

    if-eqz v1, :cond_b0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Landroidx/fragment/app/t;

    if-eqz v10, :cond_15

    .line 5
    iget-object v1, p0, Landroidx/fragment/app/n;->M:Landroidx/fragment/app/q;

    iget-object v5, v10, Landroidx/fragment/app/t;->p:Ljava/lang/String;

    invoke-virtual {v1, v5}, Landroidx/fragment/app/q;->l(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v1

    if-eqz v1, :cond_57

    .line 6
    invoke-static {v3}, Landroidx/fragment/app/n;->F0(I)Z

    move-result v5

    if-eqz v5, :cond_4d

    .line 7
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "restoreSaveState: re-attaching retained "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    :cond_4d
    new-instance v5, Landroidx/fragment/app/u;

    iget-object v6, p0, Landroidx/fragment/app/n;->o:Landroidx/fragment/app/m;

    iget-object v7, p0, Landroidx/fragment/app/n;->c:Landroidx/fragment/app/v;

    invoke-direct {v5, v6, v7, v1, v10}, Landroidx/fragment/app/u;-><init>(Landroidx/fragment/app/m;Landroidx/fragment/app/v;Landroidx/fragment/app/Fragment;Landroidx/fragment/app/t;)V

    goto :goto_6f

    .line 9
    :cond_57
    new-instance v1, Landroidx/fragment/app/u;

    iget-object v6, p0, Landroidx/fragment/app/n;->o:Landroidx/fragment/app/m;

    iget-object v7, p0, Landroidx/fragment/app/n;->c:Landroidx/fragment/app/v;

    iget-object v5, p0, Landroidx/fragment/app/n;->r:Landroidx/fragment/app/k;

    .line 10
    invoke-virtual {v5}, Landroidx/fragment/app/k;->f()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v8

    .line 11
    invoke-virtual {p0}, Landroidx/fragment/app/n;->q0()Landroidx/fragment/app/j;

    move-result-object v9

    move-object v5, v1

    invoke-direct/range {v5 .. v10}, Landroidx/fragment/app/u;-><init>(Landroidx/fragment/app/m;Landroidx/fragment/app/v;Ljava/lang/ClassLoader;Landroidx/fragment/app/j;Landroidx/fragment/app/t;)V

    .line 12
    :goto_6f
    invoke-virtual {v5}, Landroidx/fragment/app/u;->k()Landroidx/fragment/app/Fragment;

    move-result-object v1

    .line 13
    iput-object p0, v1, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/n;

    .line 14
    invoke-static {v3}, Landroidx/fragment/app/n;->F0(I)Z

    move-result v3

    if-eqz v3, :cond_97

    .line 15
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "restoreSaveState: active ("

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    :cond_97
    iget-object v1, p0, Landroidx/fragment/app/n;->r:Landroidx/fragment/app/k;

    invoke-virtual {v1}, Landroidx/fragment/app/k;->f()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v5, v1}, Landroidx/fragment/app/u;->o(Ljava/lang/ClassLoader;)V

    .line 17
    iget-object v1, p0, Landroidx/fragment/app/n;->c:Landroidx/fragment/app/v;

    invoke-virtual {v1, v5}, Landroidx/fragment/app/v;->p(Landroidx/fragment/app/u;)V

    .line 18
    iget v1, p0, Landroidx/fragment/app/n;->q:I

    invoke-virtual {v5, v1}, Landroidx/fragment/app/u;->t(I)V

    goto/16 :goto_15

    .line 19
    :cond_b0
    iget-object v0, p0, Landroidx/fragment/app/n;->M:Landroidx/fragment/app/q;

    invoke-virtual {v0}, Landroidx/fragment/app/q;->o()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_ba
    :goto_ba
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_111

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/Fragment;

    .line 20
    iget-object v5, p0, Landroidx/fragment/app/n;->c:Landroidx/fragment/app/v;

    iget-object v6, v1, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroidx/fragment/app/v;->c(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_ba

    .line 21
    invoke-static {v3}, Landroidx/fragment/app/n;->F0(I)Z

    move-result v5

    if-eqz v5, :cond_f4

    .line 22
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Discarding retained Fragment "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " that was not found in the set of active Fragments "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p1, Landroidx/fragment/app/p;->o:Ljava/util/ArrayList;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    :cond_f4
    iget-object v5, p0, Landroidx/fragment/app/n;->M:Landroidx/fragment/app/q;

    invoke-virtual {v5, v1}, Landroidx/fragment/app/q;->r(Landroidx/fragment/app/Fragment;)V

    .line 24
    iput-object p0, v1, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/n;

    .line 25
    new-instance v5, Landroidx/fragment/app/u;

    iget-object v6, p0, Landroidx/fragment/app/n;->o:Landroidx/fragment/app/m;

    iget-object v7, p0, Landroidx/fragment/app/n;->c:Landroidx/fragment/app/v;

    invoke-direct {v5, v6, v7, v1}, Landroidx/fragment/app/u;-><init>(Landroidx/fragment/app/m;Landroidx/fragment/app/v;Landroidx/fragment/app/Fragment;)V

    const/4 v6, 0x1

    .line 26
    invoke-virtual {v5, v6}, Landroidx/fragment/app/u;->t(I)V

    .line 27
    invoke-virtual {v5}, Landroidx/fragment/app/u;->m()V

    .line 28
    iput-boolean v6, v1, Landroidx/fragment/app/Fragment;->mRemoving:Z

    .line 29
    invoke-virtual {v5}, Landroidx/fragment/app/u;->m()V

    goto :goto_ba

    .line 30
    :cond_111
    iget-object v0, p0, Landroidx/fragment/app/n;->c:Landroidx/fragment/app/v;

    iget-object v1, p1, Landroidx/fragment/app/p;->p:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/v;->u(Ljava/util/List;)V

    .line 31
    iget-object v0, p1, Landroidx/fragment/app/p;->q:[Landroidx/fragment/app/b;

    const/4 v1, 0x0

    if-eqz v0, :cond_177

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    iget-object v5, p1, Landroidx/fragment/app/p;->q:[Landroidx/fragment/app/b;

    array-length v5, v5

    invoke-direct {v0, v5}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroidx/fragment/app/n;->d:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 33
    :goto_128
    iget-object v5, p1, Landroidx/fragment/app/p;->q:[Landroidx/fragment/app/b;

    array-length v6, v5

    if-ge v0, v6, :cond_17a

    .line 34
    aget-object v5, v5, v0

    invoke-virtual {v5, p0}, Landroidx/fragment/app/b;->h(Landroidx/fragment/app/n;)Landroidx/fragment/app/a;

    move-result-object v5

    .line 35
    invoke-static {v3}, Landroidx/fragment/app/n;->F0(I)Z

    move-result v6

    if-eqz v6, :cond_16f

    .line 36
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "restoreAllState: back stack #"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " (index "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v5, Landroidx/fragment/app/a;->v:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    new-instance v6, Landroidx/fragment/app/b0;

    invoke-direct {v6, v4}, Landroidx/fragment/app/b0;-><init>(Ljava/lang/String;)V

    .line 38
    new-instance v7, Ljava/io/PrintWriter;

    invoke-direct {v7, v6}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    const-string v6, "  "

    .line 39
    invoke-virtual {v5, v6, v7, v1}, Landroidx/fragment/app/a;->s(Ljava/lang/String;Ljava/io/PrintWriter;Z)V

    .line 40
    invoke-virtual {v7}, Ljava/io/PrintWriter;->close()V

    .line 41
    :cond_16f
    iget-object v6, p0, Landroidx/fragment/app/n;->d:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_128

    :cond_177
    const/4 v0, 0x0

    .line 42
    iput-object v0, p0, Landroidx/fragment/app/n;->d:Ljava/util/ArrayList;

    .line 43
    :cond_17a
    iget-object v0, p0, Landroidx/fragment/app/n;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    iget v2, p1, Landroidx/fragment/app/p;->r:I

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 44
    iget-object v0, p1, Landroidx/fragment/app/p;->s:Ljava/lang/String;

    if-eqz v0, :cond_18e

    .line 45
    invoke-virtual {p0, v0}, Landroidx/fragment/app/n;->g0(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    iput-object v0, p0, Landroidx/fragment/app/n;->u:Landroidx/fragment/app/Fragment;

    .line 46
    invoke-direct {p0, v0}, Landroidx/fragment/app/n;->M(Landroidx/fragment/app/Fragment;)V

    .line 47
    :cond_18e
    iget-object v0, p1, Landroidx/fragment/app/p;->t:Ljava/util/ArrayList;

    if-eqz v0, :cond_1b9

    .line 48
    :goto_192
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1b9

    .line 49
    iget-object v2, p1, Landroidx/fragment/app/p;->u:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 50
    iget-object v3, p0, Landroidx/fragment/app/n;->r:Landroidx/fragment/app/k;

    invoke-virtual {v3}, Landroidx/fragment/app/k;->f()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 51
    iget-object v3, p0, Landroidx/fragment/app/n;->j:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_192

    .line 52
    :cond_1b9
    new-instance v0, Ljava/util/ArrayDeque;

    iget-object p1, p1, Landroidx/fragment/app/p;->v:Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayDeque;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroidx/fragment/app/n;->C:Ljava/util/ArrayDeque;

    return-void
.end method

.method public h(Landroidx/fragment/app/r;)V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/n;->p:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public h0(I)Landroidx/fragment/app/Fragment;
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/n;->c:Landroidx/fragment/app/v;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/v;->g(I)Landroidx/fragment/app/Fragment;

    move-result-object p1

    return-object p1
.end method

.method i(Landroidx/fragment/app/Fragment;)V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/n;->M:Landroidx/fragment/app/q;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/q;->j(Landroidx/fragment/app/Fragment;)V

    return-void
.end method

.method public i0(Ljava/lang/String;)Landroidx/fragment/app/Fragment;
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/n;->c:Landroidx/fragment/app/v;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/v;->h(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    return-object p1
.end method

.method i1()Landroid/os/Parcelable;
    .registers 10

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/n;->k0()V

    .line 2
    invoke-direct {p0}, Landroidx/fragment/app/n;->Y()V

    const/4 v0, 0x1

    .line 3
    invoke-virtual {p0, v0}, Landroidx/fragment/app/n;->b0(Z)Z

    .line 4
    iput-boolean v0, p0, Landroidx/fragment/app/n;->E:Z

    .line 5
    iget-object v1, p0, Landroidx/fragment/app/n;->M:Landroidx/fragment/app/q;

    invoke-virtual {v1, v0}, Landroidx/fragment/app/q;->s(Z)V

    .line 6
    iget-object v0, p0, Landroidx/fragment/app/n;->c:Landroidx/fragment/app/v;

    invoke-virtual {v0}, Landroidx/fragment/app/v;->v()Ljava/util/ArrayList;

    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    const-string v2, "FragmentManager"

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-eqz v1, :cond_2d

    .line 8
    invoke-static {v3}, Landroidx/fragment/app/n;->F0(I)Z

    move-result v0

    if-eqz v0, :cond_2c

    const-string v0, "saveAllState: no fragments!"

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2c
    return-object v4

    .line 9
    :cond_2d
    iget-object v1, p0, Landroidx/fragment/app/n;->c:Landroidx/fragment/app/v;

    invoke-virtual {v1}, Landroidx/fragment/app/v;->w()Ljava/util/ArrayList;

    move-result-object v1

    .line 10
    iget-object v5, p0, Landroidx/fragment/app/n;->d:Ljava/util/ArrayList;

    if-eqz v5, :cond_7c

    .line 11
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_7c

    .line 12
    new-array v4, v5, [Landroidx/fragment/app/b;

    const/4 v6, 0x0

    :goto_40
    if-ge v6, v5, :cond_7c

    .line 13
    new-instance v7, Landroidx/fragment/app/b;

    iget-object v8, p0, Landroidx/fragment/app/n;->d:Ljava/util/ArrayList;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/fragment/app/a;

    invoke-direct {v7, v8}, Landroidx/fragment/app/b;-><init>(Landroidx/fragment/app/a;)V

    aput-object v7, v4, v6

    .line 14
    invoke-static {v3}, Landroidx/fragment/app/n;->F0(I)Z

    move-result v7

    if-eqz v7, :cond_79

    .line 15
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "saveAllState: adding back stack #"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ": "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Landroidx/fragment/app/n;->d:Ljava/util/ArrayList;

    .line 16
    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 17
    invoke-static {v2, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_79
    add-int/lit8 v6, v6, 0x1

    goto :goto_40

    .line 18
    :cond_7c
    new-instance v2, Landroidx/fragment/app/p;

    invoke-direct {v2}, Landroidx/fragment/app/p;-><init>()V

    .line 19
    iput-object v0, v2, Landroidx/fragment/app/p;->o:Ljava/util/ArrayList;

    .line 20
    iput-object v1, v2, Landroidx/fragment/app/p;->p:Ljava/util/ArrayList;

    .line 21
    iput-object v4, v2, Landroidx/fragment/app/p;->q:[Landroidx/fragment/app/b;

    .line 22
    iget-object v0, p0, Landroidx/fragment/app/n;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    iput v0, v2, Landroidx/fragment/app/p;->r:I

    .line 23
    iget-object v0, p0, Landroidx/fragment/app/n;->u:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_97

    .line 24
    iget-object v0, v0, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    iput-object v0, v2, Landroidx/fragment/app/p;->s:Ljava/lang/String;

    .line 25
    :cond_97
    iget-object v0, v2, Landroidx/fragment/app/p;->t:Ljava/util/ArrayList;

    iget-object v1, p0, Landroidx/fragment/app/n;->j:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 26
    iget-object v0, v2, Landroidx/fragment/app/p;->u:Ljava/util/ArrayList;

    iget-object v1, p0, Landroidx/fragment/app/n;->j:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Landroidx/fragment/app/n;->C:Ljava/util/ArrayDeque;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, v2, Landroidx/fragment/app/p;->v:Ljava/util/ArrayList;

    return-object v2
.end method

.method j()I
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/n;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    return v0
.end method

.method j0(Ljava/lang/String;)Landroidx/fragment/app/Fragment;
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/n;->c:Landroidx/fragment/app/v;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/v;->i(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    return-object p1
.end method

.method j1()V
    .registers 6

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/n;->a:Ljava/util/ArrayList;

    monitor-enter v0

    .line 2
    :try_start_3
    iget-object v1, p0, Landroidx/fragment/app/n;->L:Ljava/util/ArrayList;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_11

    .line 3
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_11

    const/4 v1, 0x1

    goto :goto_12

    :cond_11
    const/4 v1, 0x0

    .line 4
    :goto_12
    iget-object v4, p0, Landroidx/fragment/app/n;->a:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ne v4, v3, :cond_1b

    const/4 v2, 0x1

    :cond_1b
    if-nez v1, :cond_1f

    if-eqz v2, :cond_38

    .line 5
    :cond_1f
    iget-object v1, p0, Landroidx/fragment/app/n;->r:Landroidx/fragment/app/k;

    invoke-virtual {v1}, Landroidx/fragment/app/k;->g()Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Landroidx/fragment/app/n;->N:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 6
    iget-object v1, p0, Landroidx/fragment/app/n;->r:Landroidx/fragment/app/k;

    invoke-virtual {v1}, Landroidx/fragment/app/k;->g()Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Landroidx/fragment/app/n;->N:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 7
    invoke-direct {p0}, Landroidx/fragment/app/n;->q1()V

    .line 8
    :cond_38
    monitor-exit v0

    return-void

    :catchall_3a
    move-exception v1

    monitor-exit v0
    :try_end_3c
    .catchall {:try_start_3 .. :try_end_3c} :catchall_3a

    throw v1
.end method

.method k(Landroidx/fragment/app/k;Landroidx/fragment/app/g;Landroidx/fragment/app/Fragment;)V
    .registers 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SyntheticAccessor"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/k<",
            "*>;",
            "Landroidx/fragment/app/g;",
            "Landroidx/fragment/app/Fragment;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/n;->r:Landroidx/fragment/app/k;

    if-nez v0, :cond_108

    .line 2
    iput-object p1, p0, Landroidx/fragment/app/n;->r:Landroidx/fragment/app/k;

    .line 3
    iput-object p2, p0, Landroidx/fragment/app/n;->s:Landroidx/fragment/app/g;

    .line 4
    iput-object p3, p0, Landroidx/fragment/app/n;->t:Landroidx/fragment/app/Fragment;

    if-eqz p3, :cond_15

    .line 5
    new-instance p2, Landroidx/fragment/app/n$i;

    invoke-direct {p2, p0, p3}, Landroidx/fragment/app/n$i;-><init>(Landroidx/fragment/app/n;Landroidx/fragment/app/Fragment;)V

    invoke-virtual {p0, p2}, Landroidx/fragment/app/n;->h(Landroidx/fragment/app/r;)V

    goto :goto_1f

    .line 6
    :cond_15
    instance-of p2, p1, Landroidx/fragment/app/r;

    if-eqz p2, :cond_1f

    .line 7
    move-object p2, p1

    check-cast p2, Landroidx/fragment/app/r;

    invoke-virtual {p0, p2}, Landroidx/fragment/app/n;->h(Landroidx/fragment/app/r;)V

    .line 8
    :cond_1f
    :goto_1f
    iget-object p2, p0, Landroidx/fragment/app/n;->t:Landroidx/fragment/app/Fragment;

    if-eqz p2, :cond_26

    .line 9
    invoke-direct {p0}, Landroidx/fragment/app/n;->q1()V

    .line 10
    :cond_26
    instance-of p2, p1, Landroidx/activity/i;

    if-eqz p2, :cond_3b

    .line 11
    move-object p2, p1

    check-cast p2, Landroidx/activity/i;

    .line 12
    invoke-interface {p2}, Landroidx/activity/i;->getOnBackPressedDispatcher()Landroidx/activity/OnBackPressedDispatcher;

    move-result-object v0

    iput-object v0, p0, Landroidx/fragment/app/n;->g:Landroidx/activity/OnBackPressedDispatcher;

    if-eqz p3, :cond_36

    move-object p2, p3

    .line 13
    :cond_36
    iget-object v1, p0, Landroidx/fragment/app/n;->h:Landroidx/activity/g;

    invoke-virtual {v0, p2, v1}, Landroidx/activity/OnBackPressedDispatcher;->c(Landroidx/lifecycle/n;Landroidx/activity/g;)V

    :cond_3b
    if-eqz p3, :cond_46

    .line 14
    iget-object p1, p3, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/n;

    invoke-direct {p1, p3}, Landroidx/fragment/app/n;->n0(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/q;

    move-result-object p1

    iput-object p1, p0, Landroidx/fragment/app/n;->M:Landroidx/fragment/app/q;

    goto :goto_5f

    .line 15
    :cond_46
    instance-of p2, p1, Landroidx/lifecycle/m0;

    if-eqz p2, :cond_57

    .line 16
    check-cast p1, Landroidx/lifecycle/m0;

    invoke-interface {p1}, Landroidx/lifecycle/m0;->getViewModelStore()Landroidx/lifecycle/l0;

    move-result-object p1

    .line 17
    invoke-static {p1}, Landroidx/fragment/app/q;->n(Landroidx/lifecycle/l0;)Landroidx/fragment/app/q;

    move-result-object p1

    iput-object p1, p0, Landroidx/fragment/app/n;->M:Landroidx/fragment/app/q;

    goto :goto_5f

    .line 18
    :cond_57
    new-instance p1, Landroidx/fragment/app/q;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Landroidx/fragment/app/q;-><init>(Z)V

    iput-object p1, p0, Landroidx/fragment/app/n;->M:Landroidx/fragment/app/q;

    .line 19
    :goto_5f
    iget-object p1, p0, Landroidx/fragment/app/n;->M:Landroidx/fragment/app/q;

    invoke-virtual {p0}, Landroidx/fragment/app/n;->K0()Z

    move-result p2

    invoke-virtual {p1, p2}, Landroidx/fragment/app/q;->s(Z)V

    .line 20
    iget-object p1, p0, Landroidx/fragment/app/n;->c:Landroidx/fragment/app/v;

    iget-object p2, p0, Landroidx/fragment/app/n;->M:Landroidx/fragment/app/q;

    invoke-virtual {p1, p2}, Landroidx/fragment/app/v;->x(Landroidx/fragment/app/q;)V

    .line 21
    iget-object p1, p0, Landroidx/fragment/app/n;->r:Landroidx/fragment/app/k;

    instance-of p2, p1, Landroidx/activity/result/d;

    if-eqz p2, :cond_107

    .line 22
    check-cast p1, Landroidx/activity/result/d;

    .line 23
    invoke-interface {p1}, Landroidx/activity/result/d;->getActivityResultRegistry()Landroidx/activity/result/ActivityResultRegistry;

    move-result-object p1

    if-eqz p3, :cond_91

    .line 24
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p3, p3, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ":"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_93

    :cond_91
    const-string p2, ""

    .line 25
    :goto_93
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "FragmentManager:"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 26
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "StartActivityForResult"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    new-instance v0, Le/c;

    invoke-direct {v0}, Le/c;-><init>()V

    new-instance v1, Landroidx/fragment/app/n$j;

    invoke-direct {v1, p0}, Landroidx/fragment/app/n$j;-><init>(Landroidx/fragment/app/n;)V

    invoke-virtual {p1, p3, v0, v1}, Landroidx/activity/result/ActivityResultRegistry;->j(Ljava/lang/String;Le/a;Landroidx/activity/result/b;)Landroidx/activity/result/c;

    move-result-object p3

    iput-object p3, p0, Landroidx/fragment/app/n;->z:Landroidx/activity/result/c;

    .line 27
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "StartIntentSenderForResult"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    new-instance v0, Landroidx/fragment/app/n$k;

    invoke-direct {v0}, Landroidx/fragment/app/n$k;-><init>()V

    new-instance v1, Landroidx/fragment/app/n$a;

    invoke-direct {v1, p0}, Landroidx/fragment/app/n$a;-><init>(Landroidx/fragment/app/n;)V

    invoke-virtual {p1, p3, v0, v1}, Landroidx/activity/result/ActivityResultRegistry;->j(Ljava/lang/String;Le/a;Landroidx/activity/result/b;)Landroidx/activity/result/c;

    move-result-object p3

    iput-object p3, p0, Landroidx/fragment/app/n;->A:Landroidx/activity/result/c;

    .line 28
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "RequestPermissions"

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-instance p3, Le/b;

    invoke-direct {p3}, Le/b;-><init>()V

    new-instance v0, Landroidx/fragment/app/n$b;

    invoke-direct {v0, p0}, Landroidx/fragment/app/n$b;-><init>(Landroidx/fragment/app/n;)V

    invoke-virtual {p1, p2, p3, v0}, Landroidx/activity/result/ActivityResultRegistry;->j(Ljava/lang/String;Le/a;Landroidx/activity/result/b;)Landroidx/activity/result/c;

    move-result-object p1

    iput-object p1, p0, Landroidx/fragment/app/n;->B:Landroidx/activity/result/c;

    :cond_107
    return-void

    .line 29
    :cond_108
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Already attached"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method k1(Landroidx/fragment/app/Fragment;Z)V
    .registers 4

    .line 1
    invoke-direct {p0, p1}, Landroidx/fragment/app/n;->p0(Landroidx/fragment/app/Fragment;)Landroid/view/ViewGroup;

    move-result-object p1

    if-eqz p1, :cond_11

    .line 2
    instance-of v0, p1, Landroidx/fragment/app/h;

    if-eqz v0, :cond_11

    .line 3
    check-cast p1, Landroidx/fragment/app/h;

    xor-int/lit8 p2, p2, 0x1

    invoke-virtual {p1, p2}, Landroidx/fragment/app/h;->setDrawDisappearingViewsLast(Z)V

    :cond_11
    return-void
.end method

.method l(Landroidx/fragment/app/Fragment;)V
    .registers 6

    const/4 v0, 0x2

    .line 1
    invoke-static {v0}, Landroidx/fragment/app/n;->F0(I)Z

    move-result v1

    const-string v2, "FragmentManager"

    if-eqz v1, :cond_1d

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "attach: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    :cond_1d
    iget-boolean v1, p1, Landroidx/fragment/app/Fragment;->mDetached:Z

    if-eqz v1, :cond_50

    const/4 v1, 0x0

    .line 3
    iput-boolean v1, p1, Landroidx/fragment/app/Fragment;->mDetached:Z

    .line 4
    iget-boolean v1, p1, Landroidx/fragment/app/Fragment;->mAdded:Z

    if-nez v1, :cond_50

    .line 5
    iget-object v1, p0, Landroidx/fragment/app/n;->c:Landroidx/fragment/app/v;

    invoke-virtual {v1, p1}, Landroidx/fragment/app/v;->a(Landroidx/fragment/app/Fragment;)V

    .line 6
    invoke-static {v0}, Landroidx/fragment/app/n;->F0(I)Z

    move-result v0

    if-eqz v0, :cond_47

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "add from attach: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    :cond_47
    invoke-direct {p0, p1}, Landroidx/fragment/app/n;->G0(Landroidx/fragment/app/Fragment;)Z

    move-result p1

    if-eqz p1, :cond_50

    const/4 p1, 0x1

    .line 8
    iput-boolean p1, p0, Landroidx/fragment/app/n;->D:Z

    :cond_50
    return-void
.end method

.method l1(Landroidx/fragment/app/Fragment;Landroidx/lifecycle/j$c;)V
    .registers 5

    .line 1
    iget-object v0, p1, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroidx/fragment/app/n;->g0(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object v0, p1, Landroidx/fragment/app/Fragment;->mHost:Landroidx/fragment/app/k;

    if-eqz v0, :cond_14

    iget-object v0, p1, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/n;

    if-ne v0, p0, :cond_17

    .line 2
    :cond_14
    iput-object p2, p1, Landroidx/fragment/app/Fragment;->mMaxState:Landroidx/lifecycle/j$c;

    return-void

    .line 3
    :cond_17
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Fragment "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is not an active fragment of FragmentManager "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public m()Landroidx/fragment/app/w;
    .registers 2

    .line 1
    new-instance v0, Landroidx/fragment/app/a;

    invoke-direct {v0, p0}, Landroidx/fragment/app/a;-><init>(Landroidx/fragment/app/n;)V

    return-object v0
.end method

.method public m0()I
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/n;->d:Ljava/util/ArrayList;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method m1(Landroidx/fragment/app/Fragment;)V
    .registers 5

    if-eqz p1, :cond_36

    .line 1
    iget-object v0, p1, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroidx/fragment/app/n;->g0(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object v0, p1, Landroidx/fragment/app/Fragment;->mHost:Landroidx/fragment/app/k;

    if-eqz v0, :cond_36

    iget-object v0, p1, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/n;

    if-ne v0, p0, :cond_17

    goto :goto_36

    .line 2
    :cond_17
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is not an active fragment of FragmentManager "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3
    :cond_36
    :goto_36
    iget-object v0, p0, Landroidx/fragment/app/n;->u:Landroidx/fragment/app/Fragment;

    .line 4
    iput-object p1, p0, Landroidx/fragment/app/n;->u:Landroidx/fragment/app/Fragment;

    .line 5
    invoke-direct {p0, v0}, Landroidx/fragment/app/n;->M(Landroidx/fragment/app/Fragment;)V

    .line 6
    iget-object p1, p0, Landroidx/fragment/app/n;->u:Landroidx/fragment/app/Fragment;

    invoke-direct {p0, p1}, Landroidx/fragment/app/n;->M(Landroidx/fragment/app/Fragment;)V

    return-void
.end method

.method o()Z
    .registers 5

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/n;->c:Landroidx/fragment/app/v;

    invoke-virtual {v0}, Landroidx/fragment/app/v;->l()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :cond_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_22

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/Fragment;

    if-eqz v3, :cond_1e

    .line 2
    invoke-direct {p0, v3}, Landroidx/fragment/app/n;->G0(Landroidx/fragment/app/Fragment;)Z

    move-result v2

    :cond_1e
    if-eqz v2, :cond_c

    const/4 v0, 0x1

    return v0

    :cond_22
    return v1
.end method

.method o0()Landroidx/fragment/app/g;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/n;->s:Landroidx/fragment/app/g;

    return-object v0
.end method

.method o1(Landroidx/fragment/app/Fragment;)V
    .registers 4

    const/4 v0, 0x2

    .line 1
    invoke-static {v0}, Landroidx/fragment/app/n;->F0(I)Z

    move-result v0

    if-eqz v0, :cond_1d

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "show: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FragmentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    :cond_1d
    iget-boolean v0, p1, Landroidx/fragment/app/Fragment;->mHidden:Z

    if-eqz v0, :cond_2a

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p1, Landroidx/fragment/app/Fragment;->mHidden:Z

    .line 4
    iget-boolean v0, p1, Landroidx/fragment/app/Fragment;->mHiddenChanged:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p1, Landroidx/fragment/app/Fragment;->mHiddenChanged:Z

    :cond_2a
    return-void
.end method

.method public q0()Landroidx/fragment/app/j;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/n;->v:Landroidx/fragment/app/j;

    if-eqz v0, :cond_5

    return-object v0

    .line 2
    :cond_5
    iget-object v0, p0, Landroidx/fragment/app/n;->t:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_10

    .line 3
    iget-object v0, v0, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/n;

    invoke-virtual {v0}, Landroidx/fragment/app/n;->q0()Landroidx/fragment/app/j;

    move-result-object v0

    return-object v0

    .line 4
    :cond_10
    iget-object v0, p0, Landroidx/fragment/app/n;->w:Landroidx/fragment/app/j;

    return-object v0
.end method

.method public final r(Ljava/lang/String;)V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/n;->j:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method r0()Landroidx/fragment/app/v;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/n;->c:Landroidx/fragment/app/v;

    return-object v0
.end method

.method public s0()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/fragment/app/Fragment;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/n;->c:Landroidx/fragment/app/v;

    invoke-virtual {v0}, Landroidx/fragment/app/v;->n()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method t0()Landroidx/fragment/app/k;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/fragment/app/k<",
            "*>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/n;->r:Landroidx/fragment/app/k;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "FragmentManager{"

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " in "

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    iget-object v1, p0, Landroidx/fragment/app/n;->t:Landroidx/fragment/app/Fragment;

    const-string v2, "}"

    const-string v3, "{"

    if-eqz v1, :cond_43

    .line 6
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 7
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    iget-object v1, p0, Landroidx/fragment/app/n;->t:Landroidx/fragment/app/Fragment;

    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6b

    .line 11
    :cond_43
    iget-object v1, p0, Landroidx/fragment/app/n;->r:Landroidx/fragment/app/k;

    if-eqz v1, :cond_66

    .line 12
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 13
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    iget-object v1, p0, Landroidx/fragment/app/n;->r:Landroidx/fragment/app/k;

    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6b

    :cond_66
    const-string v1, "null"

    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_6b
    const-string v1, "}}"

    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method u(Landroidx/fragment/app/a;ZZZ)V
    .registers 14

    if-eqz p2, :cond_6

    .line 1
    invoke-virtual {p1, p4}, Landroidx/fragment/app/a;->u(Z)V

    goto :goto_9

    .line 2
    :cond_6
    invoke-virtual {p1}, Landroidx/fragment/app/a;->t()V

    .line 3
    :goto_9
    new-instance v2, Ljava/util/ArrayList;

    const/4 v8, 0x1

    invoke-direct {v2, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 4
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 5
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz p3, :cond_34

    .line 7
    iget p2, p0, Landroidx/fragment/app/n;->q:I

    if-lt p2, v8, :cond_34

    .line 8
    iget-object p2, p0, Landroidx/fragment/app/n;->r:Landroidx/fragment/app/k;

    invoke-virtual {p2}, Landroidx/fragment/app/k;->f()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Landroidx/fragment/app/n;->s:Landroidx/fragment/app/g;

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x1

    iget-object v7, p0, Landroidx/fragment/app/n;->n:Landroidx/fragment/app/x$g;

    invoke-static/range {v0 .. v7}, Landroidx/fragment/app/x;->B(Landroid/content/Context;Landroidx/fragment/app/g;Ljava/util/ArrayList;Ljava/util/ArrayList;IIZLandroidx/fragment/app/x$g;)V

    :cond_34
    if-eqz p4, :cond_3b

    .line 9
    iget p2, p0, Landroidx/fragment/app/n;->q:I

    invoke-virtual {p0, p2, v8}, Landroidx/fragment/app/n;->Q0(IZ)V

    .line 10
    :cond_3b
    iget-object p2, p0, Landroidx/fragment/app/n;->c:Landroidx/fragment/app/v;

    invoke-virtual {p2}, Landroidx/fragment/app/v;->l()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_45
    :goto_45
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_7c

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroidx/fragment/app/Fragment;

    if-eqz p3, :cond_45

    .line 11
    iget-object v0, p3, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    if-eqz v0, :cond_45

    iget-boolean v0, p3, Landroidx/fragment/app/Fragment;->mIsNewlyAdded:Z

    if-eqz v0, :cond_45

    iget v0, p3, Landroidx/fragment/app/Fragment;->mContainerId:I

    .line 12
    invoke-virtual {p1, v0}, Landroidx/fragment/app/a;->x(I)Z

    move-result v0

    if-eqz v0, :cond_45

    .line 13
    iget v0, p3, Landroidx/fragment/app/Fragment;->mPostponedAlpha:F

    const/4 v1, 0x0

    cmpl-float v2, v0, v1

    if-lez v2, :cond_6f

    .line 14
    iget-object v2, p3, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setAlpha(F)V

    :cond_6f
    if-eqz p4, :cond_74

    .line 15
    iput v1, p3, Landroidx/fragment/app/Fragment;->mPostponedAlpha:F

    goto :goto_45

    :cond_74
    const/high16 v0, -0x40800000    # -1.0f

    .line 16
    iput v0, p3, Landroidx/fragment/app/Fragment;->mPostponedAlpha:F

    const/4 v0, 0x0

    .line 17
    iput-boolean v0, p3, Landroidx/fragment/app/Fragment;->mIsNewlyAdded:Z

    goto :goto_45

    :cond_7c
    return-void
.end method

.method u0()Landroid/view/LayoutInflater$Factory2;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/n;->f:Landroidx/fragment/app/l;

    return-object v0
.end method

.method v0()Landroidx/fragment/app/m;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/n;->o:Landroidx/fragment/app/m;

    return-object v0
.end method

.method w(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/u;
    .registers 5

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/n;->c:Landroidx/fragment/app/v;

    iget-object v1, p1, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/v;->m(Ljava/lang/String;)Landroidx/fragment/app/u;

    move-result-object v0

    if-eqz v0, :cond_b

    return-object v0

    .line 2
    :cond_b
    new-instance v0, Landroidx/fragment/app/u;

    iget-object v1, p0, Landroidx/fragment/app/n;->o:Landroidx/fragment/app/m;

    iget-object v2, p0, Landroidx/fragment/app/n;->c:Landroidx/fragment/app/v;

    invoke-direct {v0, v1, v2, p1}, Landroidx/fragment/app/u;-><init>(Landroidx/fragment/app/m;Landroidx/fragment/app/v;Landroidx/fragment/app/Fragment;)V

    .line 3
    iget-object p1, p0, Landroidx/fragment/app/n;->r:Landroidx/fragment/app/k;

    invoke-virtual {p1}, Landroidx/fragment/app/k;->f()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/fragment/app/u;->o(Ljava/lang/ClassLoader;)V

    .line 4
    iget p1, p0, Landroidx/fragment/app/n;->q:I

    invoke-virtual {v0, p1}, Landroidx/fragment/app/u;->t(I)V

    return-object v0
.end method

.method w0()Landroidx/fragment/app/Fragment;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/n;->t:Landroidx/fragment/app/Fragment;

    return-object v0
.end method

.method public x0()Landroidx/fragment/app/Fragment;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/n;->u:Landroidx/fragment/app/Fragment;

    return-object v0
.end method

.method y(Landroidx/fragment/app/Fragment;)V
    .registers 6

    const/4 v0, 0x2

    .line 1
    invoke-static {v0}, Landroidx/fragment/app/n;->F0(I)Z

    move-result v1

    const-string v2, "FragmentManager"

    if-eqz v1, :cond_1d

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "detach: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    :cond_1d
    iget-boolean v1, p1, Landroidx/fragment/app/Fragment;->mDetached:Z

    if-nez v1, :cond_52

    const/4 v1, 0x1

    .line 3
    iput-boolean v1, p1, Landroidx/fragment/app/Fragment;->mDetached:Z

    .line 4
    iget-boolean v3, p1, Landroidx/fragment/app/Fragment;->mAdded:Z

    if-eqz v3, :cond_52

    .line 5
    invoke-static {v0}, Landroidx/fragment/app/n;->F0(I)Z

    move-result v0

    if-eqz v0, :cond_42

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "remove from detach: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    :cond_42
    iget-object v0, p0, Landroidx/fragment/app/n;->c:Landroidx/fragment/app/v;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/v;->s(Landroidx/fragment/app/Fragment;)V

    .line 7
    invoke-direct {p0, p1}, Landroidx/fragment/app/n;->G0(Landroidx/fragment/app/Fragment;)Z

    move-result v0

    if-eqz v0, :cond_4f

    .line 8
    iput-boolean v1, p0, Landroidx/fragment/app/n;->D:Z

    .line 9
    :cond_4f
    invoke-direct {p0, p1}, Landroidx/fragment/app/n;->n1(Landroidx/fragment/app/Fragment;)V

    :cond_52
    return-void
.end method

.method y0()Landroidx/fragment/app/d0;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/n;->x:Landroidx/fragment/app/d0;

    if-eqz v0, :cond_5

    return-object v0

    .line 2
    :cond_5
    iget-object v0, p0, Landroidx/fragment/app/n;->t:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_10

    .line 3
    iget-object v0, v0, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/n;

    invoke-virtual {v0}, Landroidx/fragment/app/n;->y0()Landroidx/fragment/app/d0;

    move-result-object v0

    return-object v0

    .line 4
    :cond_10
    iget-object v0, p0, Landroidx/fragment/app/n;->y:Landroidx/fragment/app/d0;

    return-object v0
.end method

.method z()V
    .registers 3

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Landroidx/fragment/app/n;->E:Z

    .line 2
    iput-boolean v0, p0, Landroidx/fragment/app/n;->F:Z

    .line 3
    iget-object v1, p0, Landroidx/fragment/app/n;->M:Landroidx/fragment/app/q;

    invoke-virtual {v1, v0}, Landroidx/fragment/app/q;->s(Z)V

    const/4 v0, 0x4

    .line 4
    invoke-direct {p0, v0}, Landroidx/fragment/app/n;->T(I)V

    return-void
.end method

###### Class androidx.fragment.app.n.a (androidx.fragment.app.n$a)
.class Landroidx/fragment/app/n$a;
.super Ljava/lang/Object;
.source "FragmentManager.java"

# interfaces
.implements Landroidx/activity/result/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/fragment/app/n;->k(Landroidx/fragment/app/k;Landroidx/fragment/app/g;Landroidx/fragment/app/Fragment;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/activity/result/b<",
        "Landroidx/activity/result/a;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroidx/fragment/app/n;


# direct methods
.method constructor <init>(Landroidx/fragment/app/n;)V
    .registers 2

    .line 1
    iput-object p1, p0, Landroidx/fragment/app/n$a;->a:Landroidx/fragment/app/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)V
    .registers 2

    .line 1
    check-cast p1, Landroidx/activity/result/a;

    invoke-virtual {p0, p1}, Landroidx/fragment/app/n$a;->b(Landroidx/activity/result/a;)V

    return-void
.end method

.method public b(Landroidx/activity/result/a;)V
    .registers 6

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/n$a;->a:Landroidx/fragment/app/n;

    iget-object v0, v0, Landroidx/fragment/app/n;->C:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->pollFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/n$m;

    const-string v1, "FragmentManager"

    if-nez v0, :cond_23

    .line 2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "No IntentSenders were started for "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3
    :cond_23
    iget-object v2, v0, Landroidx/fragment/app/n$m;->o:Ljava/lang/String;

    .line 4
    iget v0, v0, Landroidx/fragment/app/n$m;->p:I

    .line 5
    iget-object v3, p0, Landroidx/fragment/app/n$a;->a:Landroidx/fragment/app/n;

    invoke-static {v3}, Landroidx/fragment/app/n;->c(Landroidx/fragment/app/n;)Landroidx/fragment/app/v;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroidx/fragment/app/v;->i(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v3

    if-nez v3, :cond_48

    .line 6
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Intent Sender result delivered for unknown Fragment "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 7
    :cond_48
    invoke-virtual {p1}, Landroidx/activity/result/a;->t()I

    move-result v1

    .line 8
    invoke-virtual {p1}, Landroidx/activity/result/a;->h()Landroid/content/Intent;

    move-result-object p1

    .line 9
    invoke-virtual {v3, v0, v1, p1}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

###### Class androidx.fragment.app.n.b (androidx.fragment.app.n$b)
.class Landroidx/fragment/app/n$b;
.super Ljava/lang/Object;
.source "FragmentManager.java"

# interfaces
.implements Landroidx/activity/result/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/fragment/app/n;->k(Landroidx/fragment/app/k;Landroidx/fragment/app/g;Landroidx/fragment/app/Fragment;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/activity/result/b<",
        "Ljava/util/Map<",
        "Ljava/lang/String;",
        "Ljava/lang/Boolean;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroidx/fragment/app/n;


# direct methods
.method constructor <init>(Landroidx/fragment/app/n;)V
    .registers 2

    .line 1
    iput-object p1, p0, Landroidx/fragment/app/n$b;->a:Landroidx/fragment/app/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)V
    .registers 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SyntheticAccessor"
        }
    .end annotation

    .line 1
    check-cast p1, Ljava/util/Map;

    invoke-virtual {p0, p1}, Landroidx/fragment/app/n$b;->b(Ljava/util/Map;)V

    return-void
.end method

.method public b(Ljava/util/Map;)V
    .registers 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SyntheticAccessor"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 2
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 3
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array p1, p1, [I

    const/4 v3, 0x0

    .line 4
    :goto_1d
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_37

    .line 5
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_31

    const/4 v4, 0x0

    goto :goto_32

    :cond_31
    const/4 v4, -0x1

    .line 6
    :goto_32
    aput v4, p1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1d

    .line 7
    :cond_37
    iget-object v1, p0, Landroidx/fragment/app/n$b;->a:Landroidx/fragment/app/n;

    iget-object v1, v1, Landroidx/fragment/app/n;->C:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->pollFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/n$m;

    const-string v2, "FragmentManager"

    if-nez v1, :cond_5a

    .line 8
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "No permissions were requested for "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 9
    :cond_5a
    iget-object v3, v1, Landroidx/fragment/app/n$m;->o:Ljava/lang/String;

    .line 10
    iget v1, v1, Landroidx/fragment/app/n$m;->p:I

    .line 11
    iget-object v4, p0, Landroidx/fragment/app/n$b;->a:Landroidx/fragment/app/n;

    invoke-static {v4}, Landroidx/fragment/app/n;->c(Landroidx/fragment/app/n;)Landroidx/fragment/app/v;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroidx/fragment/app/v;->i(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v4

    if-nez v4, :cond_7f

    .line 12
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Permission request result delivered for unknown Fragment "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 13
    :cond_7f
    invoke-virtual {v4, v1, v0, p1}, Landroidx/fragment/app/Fragment;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    return-void
.end method

###### Class androidx.fragment.app.n.c (androidx.fragment.app.n$c)
.class Landroidx/fragment/app/n$c;
.super Landroidx/activity/g;
.source "FragmentManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/fragment/app/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Landroidx/fragment/app/n;


# direct methods
.method constructor <init>(Landroidx/fragment/app/n;Z)V
    .registers 3

    .line 1
    iput-object p1, p0, Landroidx/fragment/app/n$c;->d:Landroidx/fragment/app/n;

    invoke-direct {p0, p2}, Landroidx/activity/g;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public b()V
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/n$c;->d:Landroidx/fragment/app/n;

    invoke-virtual {v0}, Landroidx/fragment/app/n;->B0()V

    return-void
.end method

###### Class androidx.fragment.app.n.d (androidx.fragment.app.n$d)
.class Landroidx/fragment/app/n$d;
.super Ljava/lang/Object;
.source "FragmentManager.java"

# interfaces
.implements Landroidx/fragment/app/x$g;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/fragment/app/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/fragment/app/n;


# direct methods
.method constructor <init>(Landroidx/fragment/app/n;)V
    .registers 2

    .line 1
    iput-object p1, p0, Landroidx/fragment/app/n$d;->a:Landroidx/fragment/app/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroidx/fragment/app/Fragment;Landroidx/core/os/e;)V
    .registers 4

    .line 1
    invoke-virtual {p2}, Landroidx/core/os/e;->b()Z

    move-result v0

    if-nez v0, :cond_b

    .line 2
    iget-object v0, p0, Landroidx/fragment/app/n$d;->a:Landroidx/fragment/app/n;

    invoke-virtual {v0, p1, p2}, Landroidx/fragment/app/n;->b1(Landroidx/fragment/app/Fragment;Landroidx/core/os/e;)V

    :cond_b
    return-void
.end method

.method public b(Landroidx/fragment/app/Fragment;Landroidx/core/os/e;)V
    .registers 4

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/n$d;->a:Landroidx/fragment/app/n;

    invoke-virtual {v0, p1, p2}, Landroidx/fragment/app/n;->f(Landroidx/fragment/app/Fragment;Landroidx/core/os/e;)V

    return-void
.end method

###### Class androidx.fragment.app.n.e (androidx.fragment.app.n$e)
.class Landroidx/fragment/app/n$e;
.super Landroidx/fragment/app/j;
.source "FragmentManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/fragment/app/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Landroidx/fragment/app/n;


# direct methods
.method constructor <init>(Landroidx/fragment/app/n;)V
    .registers 2

    .line 1
    iput-object p1, p0, Landroidx/fragment/app/n$e;->b:Landroidx/fragment/app/n;

    invoke-direct {p0}, Landroidx/fragment/app/j;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/ClassLoader;Ljava/lang/String;)Landroidx/fragment/app/Fragment;
    .registers 5

    .line 1
    iget-object p1, p0, Landroidx/fragment/app/n$e;->b:Landroidx/fragment/app/n;

    invoke-virtual {p1}, Landroidx/fragment/app/n;->t0()Landroidx/fragment/app/k;

    move-result-object p1

    iget-object v0, p0, Landroidx/fragment/app/n$e;->b:Landroidx/fragment/app/n;

    invoke-virtual {v0}, Landroidx/fragment/app/n;->t0()Landroidx/fragment/app/k;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/k;->f()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroidx/fragment/app/g;->b(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    return-object p1
.end method

###### Class androidx.fragment.app.n.f (androidx.fragment.app.n$f)
.class Landroidx/fragment/app/n$f;
.super Ljava/lang/Object;
.source "FragmentManager.java"

# interfaces
.implements Landroidx/fragment/app/d0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/fragment/app/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/fragment/app/n;


# direct methods
.method constructor <init>(Landroidx/fragment/app/n;)V
    .registers 2

    .line 1
    iput-object p1, p0, Landroidx/fragment/app/n$f;->a:Landroidx/fragment/app/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;)Landroidx/fragment/app/c0;
    .registers 3

    .line 1
    new-instance v0, Landroidx/fragment/app/c;

    invoke-direct {v0, p1}, Landroidx/fragment/app/c;-><init>(Landroid/view/ViewGroup;)V

    return-object v0
.end method

###### Class androidx.fragment.app.n.g (androidx.fragment.app.n$g)
.class Landroidx/fragment/app/n$g;
.super Ljava/lang/Object;
.source "FragmentManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/fragment/app/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic o:Landroidx/fragment/app/n;


# direct methods
.method constructor <init>(Landroidx/fragment/app/n;)V
    .registers 2

    .line 1
    iput-object p1, p0, Landroidx/fragment/app/n$g;->o:Landroidx/fragment/app/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/n$g;->o:Landroidx/fragment/app/n;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/fragment/app/n;->b0(Z)Z

    return-void
.end method

###### Class androidx.fragment.app.n.h (androidx.fragment.app.n$h)
.class Landroidx/fragment/app/n$h;
.super Landroid/animation/AnimatorListenerAdapter;
.source "FragmentManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/fragment/app/n;->v(Landroidx/fragment/app/Fragment;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/ViewGroup;

.field final synthetic b:Landroid/view/View;

.field final synthetic c:Landroidx/fragment/app/Fragment;

.field final synthetic d:Landroidx/fragment/app/n;


# direct methods
.method constructor <init>(Landroidx/fragment/app/n;Landroid/view/ViewGroup;Landroid/view/View;Landroidx/fragment/app/Fragment;)V
    .registers 5

    .line 1
    iput-object p1, p0, Landroidx/fragment/app/n$h;->d:Landroidx/fragment/app/n;

    iput-object p2, p0, Landroidx/fragment/app/n$h;->a:Landroid/view/ViewGroup;

    iput-object p3, p0, Landroidx/fragment/app/n$h;->b:Landroid/view/View;

    iput-object p4, p0, Landroidx/fragment/app/n$h;->c:Landroidx/fragment/app/Fragment;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 4

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/n$h;->a:Landroid/view/ViewGroup;

    iget-object v1, p0, Landroidx/fragment/app/n$h;->b:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->endViewTransition(Landroid/view/View;)V

    .line 2
    invoke-virtual {p1, p0}, Landroid/animation/Animator;->removeListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 3
    iget-object p1, p0, Landroidx/fragment/app/n$h;->c:Landroidx/fragment/app/Fragment;

    iget-object v0, p1, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    if-eqz v0, :cond_19

    iget-boolean p1, p1, Landroidx/fragment/app/Fragment;->mHidden:Z

    if-eqz p1, :cond_19

    const/16 p1, 0x8

    .line 4
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_19
    return-void
.end method

###### Class androidx.fragment.app.n.i (androidx.fragment.app.n$i)
.class Landroidx/fragment/app/n$i;
.super Ljava/lang/Object;
.source "FragmentManager.java"

# interfaces
.implements Landroidx/fragment/app/r;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/fragment/app/n;->k(Landroidx/fragment/app/k;Landroidx/fragment/app/g;Landroidx/fragment/app/Fragment;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic o:Landroidx/fragment/app/Fragment;

.field final synthetic p:Landroidx/fragment/app/n;


# direct methods
.method constructor <init>(Landroidx/fragment/app/n;Landroidx/fragment/app/Fragment;)V
    .registers 3

    .line 1
    iput-object p1, p0, Landroidx/fragment/app/n$i;->p:Landroidx/fragment/app/n;

    iput-object p2, p0, Landroidx/fragment/app/n$i;->o:Landroidx/fragment/app/Fragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroidx/fragment/app/n;Landroidx/fragment/app/Fragment;)V
    .registers 3

    .line 1
    iget-object p1, p0, Landroidx/fragment/app/n$i;->o:Landroidx/fragment/app/Fragment;

    invoke-virtual {p1, p2}, Landroidx/fragment/app/Fragment;->onAttachFragment(Landroidx/fragment/app/Fragment;)V

    return-void
.end method

###### Class androidx.fragment.app.n.j (androidx.fragment.app.n$j)
.class Landroidx/fragment/app/n$j;
.super Ljava/lang/Object;
.source "FragmentManager.java"

# interfaces
.implements Landroidx/activity/result/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/fragment/app/n;->k(Landroidx/fragment/app/k;Landroidx/fragment/app/g;Landroidx/fragment/app/Fragment;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/activity/result/b<",
        "Landroidx/activity/result/a;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroidx/fragment/app/n;


# direct methods
.method constructor <init>(Landroidx/fragment/app/n;)V
    .registers 2

    .line 1
    iput-object p1, p0, Landroidx/fragment/app/n$j;->a:Landroidx/fragment/app/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)V
    .registers 2

    .line 1
    check-cast p1, Landroidx/activity/result/a;

    invoke-virtual {p0, p1}, Landroidx/fragment/app/n$j;->b(Landroidx/activity/result/a;)V

    return-void
.end method

.method public b(Landroidx/activity/result/a;)V
    .registers 6

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/n$j;->a:Landroidx/fragment/app/n;

    iget-object v0, v0, Landroidx/fragment/app/n;->C:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->pollFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/n$m;

    const-string v1, "FragmentManager"

    if-nez v0, :cond_23

    .line 2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "No Activities were started for result for "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3
    :cond_23
    iget-object v2, v0, Landroidx/fragment/app/n$m;->o:Ljava/lang/String;

    .line 4
    iget v0, v0, Landroidx/fragment/app/n$m;->p:I

    .line 5
    iget-object v3, p0, Landroidx/fragment/app/n$j;->a:Landroidx/fragment/app/n;

    invoke-static {v3}, Landroidx/fragment/app/n;->c(Landroidx/fragment/app/n;)Landroidx/fragment/app/v;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroidx/fragment/app/v;->i(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v3

    if-nez v3, :cond_48

    .line 6
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Activity result delivered for unknown Fragment "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 7
    :cond_48
    invoke-virtual {p1}, Landroidx/activity/result/a;->t()I

    move-result v1

    .line 8
    invoke-virtual {p1}, Landroidx/activity/result/a;->h()Landroid/content/Intent;

    move-result-object p1

    .line 9
    invoke-virtual {v3, v0, v1, p1}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

###### Class androidx.fragment.app.n.k (androidx.fragment.app.n$k)
.class Landroidx/fragment/app/n$k;
.super Le/a;
.source "FragmentManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/fragment/app/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "k"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a<",
        "Landroidx/activity/result/e;",
        "Landroidx/activity/result/a;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Le/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Landroidx/activity/result/e;)Landroid/content/Intent;
    .registers 6

    .line 1
    new-instance p1, Landroid/content/Intent;

    const-string v0, "androidx.activity.result.contract.action.INTENT_SENDER_REQUEST"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p2}, Landroidx/activity/result/e;->h()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_42

    const-string v1, "androidx.activity.result.contract.extra.ACTIVITY_OPTIONS_BUNDLE"

    .line 3
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_42

    .line 4
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 5
    invoke-virtual {v0, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    const/4 v1, 0x0

    const-string v2, "androidx.fragment.extra.ACTIVITY_OPTIONS_BUNDLE"

    .line 6
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_42

    .line 7
    new-instance v0, Landroidx/activity/result/e$b;

    invoke-virtual {p2}, Landroidx/activity/result/e;->w()Landroid/content/IntentSender;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/activity/result/e$b;-><init>(Landroid/content/IntentSender;)V

    const/4 v1, 0x0

    .line 8
    invoke-virtual {v0, v1}, Landroidx/activity/result/e$b;->b(Landroid/content/Intent;)Landroidx/activity/result/e$b;

    move-result-object v0

    .line 9
    invoke-virtual {p2}, Landroidx/activity/result/e;->v()I

    move-result v1

    invoke-virtual {p2}, Landroidx/activity/result/e;->t()I

    move-result p2

    invoke-virtual {v0, v1, p2}, Landroidx/activity/result/e$b;->c(II)Landroidx/activity/result/e$b;

    move-result-object p2

    .line 10
    invoke-virtual {p2}, Landroidx/activity/result/e$b;->a()Landroidx/activity/result/e;

    move-result-object p2

    :cond_42
    const-string v0, "androidx.activity.result.contract.extra.INTENT_SENDER_REQUEST"

    .line 11
    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/4 p2, 0x2

    .line 12
    invoke-static {p2}, Landroidx/fragment/app/n;->F0(I)Z

    move-result p2

    if-eqz p2, :cond_64

    .line 13
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "CreateIntent created the following intent: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "FragmentManager"

    invoke-static {v0, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_64
    return-object p1
.end method

.method public b(ILandroid/content/Intent;)Landroidx/activity/result/a;
    .registers 4

    .line 1
    new-instance v0, Landroidx/activity/result/a;

    invoke-direct {v0, p1, p2}, Landroidx/activity/result/a;-><init>(ILandroid/content/Intent;)V

    return-object v0
.end method

.method public bridge synthetic createIntent(Landroid/content/Context;Ljava/lang/Object;)Landroid/content/Intent;
    .registers 3

    .line 1
    check-cast p2, Landroidx/activity/result/e;

    invoke-virtual {p0, p1, p2}, Landroidx/fragment/app/n$k;->a(Landroid/content/Context;Landroidx/activity/result/e;)Landroid/content/Intent;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic parseResult(ILandroid/content/Intent;)Ljava/lang/Object;
    .registers 3

    .line 1
    invoke-virtual {p0, p1, p2}, Landroidx/fragment/app/n$k;->b(ILandroid/content/Intent;)Landroidx/activity/result/a;

    move-result-object p1

    return-object p1
.end method

###### Class androidx.fragment.app.n.l (androidx.fragment.app.n$l)
.class public abstract Landroidx/fragment/app/n$l;
.super Ljava/lang/Object;
.source "FragmentManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/fragment/app/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "l"
.end annotation

###### Class androidx.fragment.app.n.m (androidx.fragment.app.n$m)
.class Landroidx/fragment/app/n$m;
.super Ljava/lang/Object;
.source "FragmentManager.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "BanParcelableUsage"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/fragment/app/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "m"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroidx/fragment/app/n$m;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field o:Ljava/lang/String;

.field p:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Landroidx/fragment/app/n$m$a;

    invoke-direct {v0}, Landroidx/fragment/app/n$m$a;-><init>()V

    sput-object v0, Landroidx/fragment/app/n$m;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/fragment/app/n$m;->o:Ljava/lang/String;

    .line 6
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Landroidx/fragment/app/n$m;->p:I

    return-void
.end method

.method constructor <init>(Ljava/lang/String;I)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroidx/fragment/app/n$m;->o:Ljava/lang/String;

    .line 3
    iput p2, p0, Landroidx/fragment/app/n$m;->p:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 1
    iget-object p2, p0, Landroidx/fragment/app/n$m;->o:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2
    iget p2, p0, Landroidx/fragment/app/n$m;->p:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method

###### Class androidx.fragment.app.n.m.a (androidx.fragment.app.n$m$a)
.class Landroidx/fragment/app/n$m$a;
.super Ljava/lang/Object;
.source "FragmentManager.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/fragment/app/n$m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroidx/fragment/app/n$m;",
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
.method public a(Landroid/os/Parcel;)Landroidx/fragment/app/n$m;
    .registers 3

    .line 1
    new-instance v0, Landroidx/fragment/app/n$m;

    invoke-direct {v0, p1}, Landroidx/fragment/app/n$m;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public b(I)[Landroidx/fragment/app/n$m;
    .registers 2

    .line 1
    new-array p1, p1, [Landroidx/fragment/app/n$m;

    return-object p1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Landroidx/fragment/app/n$m$a;->a(Landroid/os/Parcel;)Landroidx/fragment/app/n$m;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Landroidx/fragment/app/n$m$a;->b(I)[Landroidx/fragment/app/n$m;

    move-result-object p1

    return-object p1
.end method

###### Class androidx.fragment.app.n.InterfaceC0053n (androidx.fragment.app.n$n)
.class public interface abstract Landroidx/fragment/app/n$n;
.super Ljava/lang/Object;
.source "FragmentManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/fragment/app/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "n"
.end annotation


# virtual methods
.method public abstract a()V
.end method

###### Class androidx.fragment.app.n.o (androidx.fragment.app.n$o)
.class interface abstract Landroidx/fragment/app/n$o;
.super Ljava/lang/Object;
.source "FragmentManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/fragment/app/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "o"
.end annotation


# virtual methods
.method public abstract a(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/a;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation
.end method

###### Class androidx.fragment.app.n.p (androidx.fragment.app.n$p)
.class Landroidx/fragment/app/n$p;
.super Ljava/lang/Object;
.source "FragmentManager.java"

# interfaces
.implements Landroidx/fragment/app/n$o;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/fragment/app/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "p"
.end annotation


# instance fields
.field final a:Ljava/lang/String;

.field final b:I

.field final c:I

.field final synthetic d:Landroidx/fragment/app/n;


# direct methods
.method constructor <init>(Landroidx/fragment/app/n;Ljava/lang/String;II)V
    .registers 5

    .line 1
    iput-object p1, p0, Landroidx/fragment/app/n$p;->d:Landroidx/fragment/app/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Landroidx/fragment/app/n$p;->a:Ljava/lang/String;

    .line 3
    iput p3, p0, Landroidx/fragment/app/n$p;->b:I

    .line 4
    iput p4, p0, Landroidx/fragment/app/n$p;->c:I

    return-void
.end method


# virtual methods
.method public a(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/a;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/n$p;->d:Landroidx/fragment/app/n;

    iget-object v0, v0, Landroidx/fragment/app/n;->u:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_1a

    iget v1, p0, Landroidx/fragment/app/n$p;->b:I

    if-gez v1, :cond_1a

    iget-object v1, p0, Landroidx/fragment/app/n$p;->a:Ljava/lang/String;

    if-nez v1, :cond_1a

    .line 2
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/n;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Landroidx/fragment/app/n;->X0()Z

    move-result v0

    if-eqz v0, :cond_1a

    const/4 p1, 0x0

    return p1

    .line 4
    :cond_1a
    iget-object v0, p0, Landroidx/fragment/app/n$p;->d:Landroidx/fragment/app/n;

    iget-object v3, p0, Landroidx/fragment/app/n$p;->a:Ljava/lang/String;

    iget v4, p0, Landroidx/fragment/app/n$p;->b:I

    iget v5, p0, Landroidx/fragment/app/n$p;->c:I

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Landroidx/fragment/app/n;->Z0(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;II)Z

    move-result p1

    return p1
.end method

###### Class androidx.fragment.app.n.q (androidx.fragment.app.n$q)
.class Landroidx/fragment/app/n$q;
.super Ljava/lang/Object;
.source "FragmentManager.java"

# interfaces
.implements Landroidx/fragment/app/Fragment$l;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/fragment/app/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "q"
.end annotation


# instance fields
.field final a:Z

.field final b:Landroidx/fragment/app/a;

.field private c:I


# direct methods
.method constructor <init>(Landroidx/fragment/app/a;Z)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-boolean p2, p0, Landroidx/fragment/app/n$q;->a:Z

    .line 3
    iput-object p1, p0, Landroidx/fragment/app/n$q;->b:Landroidx/fragment/app/a;

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    .line 1
    iget v0, p0, Landroidx/fragment/app/n$q;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroidx/fragment/app/n$q;->c:I

    return-void
.end method

.method public b()V
    .registers 2

    .line 1
    iget v0, p0, Landroidx/fragment/app/n$q;->c:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroidx/fragment/app/n$q;->c:I

    if-eqz v0, :cond_9

    return-void

    .line 2
    :cond_9
    iget-object v0, p0, Landroidx/fragment/app/n$q;->b:Landroidx/fragment/app/a;

    iget-object v0, v0, Landroidx/fragment/app/a;->t:Landroidx/fragment/app/n;

    invoke-virtual {v0}, Landroidx/fragment/app/n;->j1()V

    return-void
.end method

.method c()V
    .registers 5

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/n$q;->b:Landroidx/fragment/app/a;

    iget-object v1, v0, Landroidx/fragment/app/a;->t:Landroidx/fragment/app/n;

    iget-boolean v2, p0, Landroidx/fragment/app/n$q;->a:Z

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3, v3}, Landroidx/fragment/app/n;->u(Landroidx/fragment/app/a;ZZZ)V

    return-void
.end method

.method d()V
    .registers 6

    .line 1
    iget v0, p0, Landroidx/fragment/app/n$q;->c:I

    const/4 v1, 0x1

    if-lez v0, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    .line 2
    :goto_8
    iget-object v2, p0, Landroidx/fragment/app/n$q;->b:Landroidx/fragment/app/a;

    iget-object v2, v2, Landroidx/fragment/app/a;->t:Landroidx/fragment/app/n;

    .line 3
    invoke-virtual {v2}, Landroidx/fragment/app/n;->s0()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_14
    :goto_14
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_30

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/Fragment;

    const/4 v4, 0x0

    .line 4
    invoke-virtual {v3, v4}, Landroidx/fragment/app/Fragment;->setOnStartEnterTransitionListener(Landroidx/fragment/app/Fragment$l;)V

    if-eqz v0, :cond_14

    .line 5
    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->isPostponed()Z

    move-result v4

    if-eqz v4, :cond_14

    .line 6
    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->startPostponedEnterTransition()V

    goto :goto_14

    .line 7
    :cond_30
    iget-object v2, p0, Landroidx/fragment/app/n$q;->b:Landroidx/fragment/app/a;

    iget-object v3, v2, Landroidx/fragment/app/a;->t:Landroidx/fragment/app/n;

    iget-boolean v4, p0, Landroidx/fragment/app/n$q;->a:Z

    xor-int/2addr v0, v1

    invoke-virtual {v3, v2, v4, v0, v1}, Landroidx/fragment/app/n;->u(Landroidx/fragment/app/a;ZZZ)V

    return-void
.end method

.method public e()Z
    .registers 2

    .line 1
    iget v0, p0, Landroidx/fragment/app/n$q;->c:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method
