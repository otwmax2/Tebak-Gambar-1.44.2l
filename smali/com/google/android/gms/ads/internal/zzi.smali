###### Class com.google.android.gms.ads.internal.zzi (com.google.android.gms.ads.internal.zzi)
.class public final Lcom/google/android/gms/ads/internal/zzi;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Ljava/lang/Runnable;
.implements Lcom/google/android/gms/internal/ads/zzaps;


# instance fields
.field private final A:Z

.field final B:Ljava/util/concurrent/CountDownLatch;

.field private C:I

.field private final o:Ljava/util/List;

.field private final p:Ljava/util/concurrent/atomic/AtomicReference;

.field private final q:Ljava/util/concurrent/atomic/AtomicReference;

.field protected r:Z
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation
.end field

.field private final s:Z

.field private final t:Z

.field private final u:Ljava/util/concurrent/Executor;

.field private final v:Lcom/google/android/gms/internal/ads/zzfhp;

.field private w:Landroid/content/Context;

.field private final x:Landroid/content/Context;

.field private y:Lcom/google/android/gms/internal/ads/zzbzg;

.field private final z:Lcom/google/android/gms/internal/ads/zzbzg;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbzg;)V
    .registers 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/zzi;->o:Ljava/util/List;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    .line 2
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/zzi;->p:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    .line 3
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/zzi;->q:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    .line 4
    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/zzi;->B:Ljava/util/concurrent/CountDownLatch;

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/zzi;->w:Landroid/content/Context;

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/zzi;->x:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/zzi;->y:Lcom/google/android/gms/internal/ads/zzbzg;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/zzi;->z:Lcom/google/android/gms/internal/ads/zzbzg;

    .line 5
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/zzi;->u:Ljava/util/concurrent/Executor;

    .line 6
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbar;->X1:Lcom/google/android/gms/internal/ads/zzbaj;

    .line 7
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->c()Lcom/google/android/gms/internal/ads/zzbap;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/zzbap;->b(Lcom/google/android/gms/internal/ads/zzbaj;)Ljava/lang/Object;

    move-result-object v0

    .line 8
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/zzi;->A:Z

    .line 9
    invoke-static {p1, p2, v0}, Lcom/google/android/gms/internal/ads/zzfhp;->a(Landroid/content/Context;Ljava/util/concurrent/Executor;Z)Lcom/google/android/gms/internal/ads/zzfhp;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/zzi;->v:Lcom/google/android/gms/internal/ads/zzfhp;

    sget-object p1, Lcom/google/android/gms/internal/ads/zzbar;->T1:Lcom/google/android/gms/internal/ads/zzbaj;

    .line 10
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->c()Lcom/google/android/gms/internal/ads/zzbap;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzbap;->b(Lcom/google/android/gms/internal/ads/zzbaj;)Ljava/lang/Object;

    move-result-object p1

    .line 11
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/gms/ads/internal/zzi;->s:Z

    sget-object p1, Lcom/google/android/gms/internal/ads/zzbar;->Y1:Lcom/google/android/gms/internal/ads/zzbaj;

    .line 12
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->c()Lcom/google/android/gms/internal/ads/zzbap;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzbap;->b(Lcom/google/android/gms/internal/ads/zzbaj;)Ljava/lang/Object;

    move-result-object p1

    .line 13
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/gms/ads/internal/zzi;->t:Z

    sget-object p1, Lcom/google/android/gms/internal/ads/zzbar;->W1:Lcom/google/android/gms/internal/ads/zzbaj;

    .line 14
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->c()Lcom/google/android/gms/internal/ads/zzbap;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzbap;->b(Lcom/google/android/gms/internal/ads/zzbaj;)Ljava/lang/Object;

    move-result-object p1

    .line 15
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_80

    const/4 p1, 0x2

    iput p1, p0, Lcom/google/android/gms/ads/internal/zzi;->C:I

    goto :goto_82

    .line 16
    :cond_80
    iput v1, p0, Lcom/google/android/gms/ads/internal/zzi;->C:I

    .line 17
    :goto_82
    sget-object p1, Lcom/google/android/gms/internal/ads/zzbar;->X2:Lcom/google/android/gms/internal/ads/zzbaj;

    .line 18
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->c()Lcom/google/android/gms/internal/ads/zzbap;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzbap;->b(Lcom/google/android/gms/internal/ads/zzbaj;)Ljava/lang/Object;

    move-result-object p1

    .line 19
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_9a

    .line 20
    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/zzi;->k()Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/gms/ads/internal/zzi;->r:Z

    :cond_9a
    sget-object p1, Lcom/google/android/gms/internal/ads/zzbar;->Q2:Lcom/google/android/gms/internal/ads/zzbaj;

    .line 21
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->c()Lcom/google/android/gms/internal/ads/zzbap;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzbap;->b(Lcom/google/android/gms/internal/ads/zzbaj;)Ljava/lang/Object;

    move-result-object p1

    .line 22
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_b2

    .line 23
    sget-object p1, Lcom/google/android/gms/internal/ads/zzbzn;->a:Lcom/google/android/gms/internal/ads/zzfuu;

    invoke-interface {p1, p0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void

    .line 24
    :cond_b2
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzay;->b()Lcom/google/android/gms/internal/ads/zzbyt;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbyt;->A()Z

    move-result p1

    if-eqz p1, :cond_c1

    .line 25
    sget-object p1, Lcom/google/android/gms/internal/ads/zzbzn;->a:Lcom/google/android/gms/internal/ads/zzfuu;

    invoke-interface {p1, p0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void

    .line 26
    :cond_c1
    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/zzi;->run()V

    return-void
.end method

.method static bridge synthetic i(Lcom/google/android/gms/ads/internal/zzi;)Lcom/google/android/gms/internal/ads/zzfhp;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/ads/internal/zzi;->v:Lcom/google/android/gms/internal/ads/zzfhp;

    return-object p0
.end method

.method private final n()Lcom/google/android/gms/internal/ads/zzaps;
    .registers 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/zzi;->m()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_10

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzi;->q:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzaps;

    return-object v0

    :cond_10
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzi;->p:Ljava/util/concurrent/atomic/AtomicReference;

    .line 2
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzaps;

    return-object v0
.end method

.method private final o()V
    .registers 8

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/zzi;->n()Lcom/google/android/gms/internal/ads/zzaps;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzi;->o:Ljava/util/List;

    .line 2
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_53

    if-nez v0, :cond_f

    goto :goto_53

    :cond_f
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzi;->o:Ljava/util/List;

    .line 3
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_15
    :goto_15
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    .line 4
    array-length v3, v2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v3, v5, :cond_2e

    .line 5
    aget-object v2, v2, v4

    check-cast v2, Landroid/view/MotionEvent;

    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/ads/zzaps;->f(Landroid/view/MotionEvent;)V

    goto :goto_15

    :cond_2e
    const/4 v6, 0x3

    if-ne v3, v6, :cond_15

    .line 6
    aget-object v3, v2, v4

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aget-object v4, v2, v5

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, 0x2

    aget-object v2, v2, v5

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v0, v3, v4, v2}, Lcom/google/android/gms/internal/ads/zzaps;->d(III)V

    goto :goto_15

    :cond_4e
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzi;->o:Ljava/util/List;

    .line 7
    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_53
    :goto_53
    return-void
.end method

.method private final p(Z)V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzi;->y:Lcom/google/android/gms/internal/ads/zzbzg;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzbzg;->o:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzi;->w:Landroid/content/Context;

    .line 2
    invoke-static {v1}, Lcom/google/android/gms/ads/internal/zzi;->q(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/google/android/gms/ads/internal/zzi;->C:I

    .line 3
    invoke-static {v0, v1, p1, v2}, Lcom/google/android/gms/internal/ads/zzapv;->y(Ljava/lang/String;Landroid/content/Context;ZI)Lcom/google/android/gms/internal/ads/zzapv;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzi;->p:Ljava/util/concurrent/atomic/AtomicReference;

    .line 4
    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method

.method private static final q(Landroid/content/Context;)Landroid/content/Context;
    .registers 2

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_7

    return-object p0

    :cond_7
    return-object v0
.end method


# virtual methods
.method public final a(Landroid/view/View;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/zzi;->n()Lcom/google/android/gms/internal/ads/zzaps;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 2
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzaps;->a(Landroid/view/View;)V

    :cond_9
    return-void
.end method

.method public final b([Ljava/lang/StackTraceElement;)V
    .registers 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/zzi;->l()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/zzi;->n()Lcom/google/android/gms/internal/ads/zzaps;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 3
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzaps;->b([Ljava/lang/StackTraceElement;)V

    :cond_f
    return-void
.end method

.method public final c(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/zzi;->l()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/zzi;->n()Lcom/google/android/gms/internal/ads/zzaps;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 3
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/zzi;->o()V

    .line 4
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/zzi;->q(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzaps;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1a

    :cond_18
    const-string p1, ""

    :goto_1a
    return-object p1
.end method

.method public final d(III)V
    .registers 7

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/zzi;->n()Lcom/google/android/gms/internal/ads/zzaps;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/zzi;->o()V

    .line 3
    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzaps;->d(III)V

    return-void

    :cond_d
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzi;->o:Ljava/util/List;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 4
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v2

    const/4 p1, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v1, p1

    const/4 p1, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v1, p1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final e(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;Landroid/app/Activity;)Ljava/lang/String;
    .registers 8

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/zzi;->l()Z

    move-result v0

    if-eqz v0, :cond_32

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/zzi;->n()Lcom/google/android/gms/internal/ads/zzaps;

    move-result-object v0

    .line 3
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbar;->a9:Lcom/google/android/gms/internal/ads/zzbaj;

    .line 4
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->c()Lcom/google/android/gms/internal/ads/zzbap;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzbap;->b(Lcom/google/android/gms/internal/ads/zzbaj;)Ljava/lang/Object;

    move-result-object v1

    .line 5
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_24

    .line 6
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->r()Lcom/google/android/gms/ads/internal/util/zzs;

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-static {p3, v1, v2}, Lcom/google/android/gms/ads/internal/util/zzs;->f(Landroid/view/View;ILandroid/view/MotionEvent;)V

    :cond_24
    if-eqz v0, :cond_32

    .line 7
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/zzi;->o()V

    .line 8
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/zzi;->q(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    .line 9
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/ads/zzaps;->e(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;Landroid/app/Activity;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_32
    const-string p1, ""

    return-object p1
.end method

.method public final f(Landroid/view/MotionEvent;)V
    .registers 5

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/zzi;->n()Lcom/google/android/gms/internal/ads/zzaps;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/zzi;->o()V

    .line 3
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzaps;->f(Landroid/view/MotionEvent;)V

    return-void

    :cond_d
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzi;->o:Ljava/util/List;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 4
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final g(Landroid/content/Context;Landroid/view/View;Landroid/app/Activity;)Ljava/lang/String;
    .registers 9

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbar;->Z8:Lcom/google/android/gms/internal/ads/zzbaj;

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->c()Lcom/google/android/gms/internal/ads/zzbap;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbap;->b(Lcom/google/android/gms/internal/ads/zzbaj;)Ljava/lang/Object;

    move-result-object v0

    .line 3
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-eqz v0, :cond_3d

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/zzi;->l()Z

    move-result v0

    if-eqz v0, :cond_60

    .line 5
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/zzi;->n()Lcom/google/android/gms/internal/ads/zzaps;

    move-result-object v0

    sget-object v3, Lcom/google/android/gms/internal/ads/zzbar;->a9:Lcom/google/android/gms/internal/ads/zzbaj;

    .line 6
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->c()Lcom/google/android/gms/internal/ads/zzbap;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/ads/zzbap;->b(Lcom/google/android/gms/internal/ads/zzbaj;)Ljava/lang/Object;

    move-result-object v3

    .line 7
    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_36

    .line 8
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->r()Lcom/google/android/gms/ads/internal/util/zzs;

    invoke-static {p2, v2, v1}, Lcom/google/android/gms/ads/internal/util/zzs;->f(Landroid/view/View;ILandroid/view/MotionEvent;)V

    :cond_36
    if-eqz v0, :cond_60

    .line 9
    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzaps;->g(Landroid/content/Context;Landroid/view/View;Landroid/app/Activity;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 10
    :cond_3d
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/zzi;->n()Lcom/google/android/gms/internal/ads/zzaps;

    move-result-object v0

    sget-object v3, Lcom/google/android/gms/internal/ads/zzbar;->a9:Lcom/google/android/gms/internal/ads/zzbaj;

    .line 11
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->c()Lcom/google/android/gms/internal/ads/zzbap;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/ads/zzbap;->b(Lcom/google/android/gms/internal/ads/zzbaj;)Ljava/lang/Object;

    move-result-object v3

    .line 12
    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_59

    .line 13
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->r()Lcom/google/android/gms/ads/internal/util/zzs;

    invoke-static {p2, v2, v1}, Lcom/google/android/gms/ads/internal/util/zzs;->f(Landroid/view/View;ILandroid/view/MotionEvent;)V

    :cond_59
    if-eqz v0, :cond_60

    .line 14
    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzaps;->g(Landroid/content/Context;Landroid/view/View;Landroid/app/Activity;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_60
    const-string p1, ""

    return-object p1
.end method

.method public final h(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;)Ljava/lang/String;
    .registers 5

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/google/android/gms/ads/internal/zzi;->e(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;Landroid/app/Activity;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method final synthetic j(Z)V
    .registers 8

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    :try_start_4
    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzi;->z:Lcom/google/android/gms/internal/ads/zzbzg;

    .line 2
    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzbzg;->o:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/zzi;->x:Landroid/content/Context;

    .line 3
    invoke-static {v3}, Lcom/google/android/gms/ads/internal/zzi;->q(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v3

    iget-boolean v4, p0, Lcom/google/android/gms/ads/internal/zzi;->A:Z

    .line 4
    invoke-static {v2, v3, p1, v4}, Lcom/google/android/gms/internal/ads/zzapp;->i(Ljava/lang/String;Landroid/content/Context;ZZ)Lcom/google/android/gms/internal/ads/zzapp;

    move-result-object p1

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzapp;->p()V
    :try_end_17
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_17} :catch_18

    return-void

    :catch_18
    move-exception p1

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzi;->v:Lcom/google/android/gms/internal/ads/zzfhp;

    const/16 v3, 0x7eb

    .line 6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    .line 7
    invoke-virtual {v2, v3, v4, v5, p1}, Lcom/google/android/gms/internal/ads/zzfhp;->c(IJLjava/lang/Exception;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method protected final k()Z
    .registers 7

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzi;->w:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzi;->v:Lcom/google/android/gms/internal/ads/zzfhp;

    new-instance v2, Lcom/google/android/gms/ads/internal/a;

    invoke-direct {v2, p0}, Lcom/google/android/gms/ads/internal/a;-><init>(Lcom/google/android/gms/ads/internal/zzi;)V

    new-instance v3, Lcom/google/android/gms/internal/ads/zzfjl;

    iget-object v4, p0, Lcom/google/android/gms/ads/internal/zzi;->w:Landroid/content/Context;

    .line 2
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzfir;->b(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzfhp;)I

    move-result v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzbar;->U1:Lcom/google/android/gms/internal/ads/zzbaj;

    .line 3
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->c()Lcom/google/android/gms/internal/ads/zzbap;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/google/android/gms/internal/ads/zzbap;->b(Lcom/google/android/gms/internal/ads/zzbaj;)Ljava/lang/Object;

    move-result-object v1

    .line 4
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-direct {v3, v4, v0, v2, v1}, Lcom/google/android/gms/internal/ads/zzfjl;-><init>(Landroid/content/Context;ILcom/google/android/gms/internal/ads/zzfis;Z)V

    const/4 v0, 0x1

    .line 5
    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/ads/zzfjl;->d(I)Z

    move-result v0

    return v0
.end method

.method public final l()Z
    .registers 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzi;->B:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_5} :catch_7

    const/4 v0, 0x1

    return v0

    :catch_7
    move-exception v0

    const-string v1, "Interrupted during GADSignals creation."

    .line 2
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzbza;->h(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return v0
.end method

.method protected final m()I
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/zzi;->s:Z

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/zzi;->r:Z

    if-nez v0, :cond_a

    const/4 v0, 0x1

    return v0

    :cond_a
    iget v0, p0, Lcom/google/android/gms/ads/internal/zzi;->C:I

    return v0
.end method

.method public final run()V
    .registers 9

    const/4 v0, 0x0

    .line 1
    :try_start_1
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbar;->X2:Lcom/google/android/gms/internal/ads/zzbaj;

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->c()Lcom/google/android/gms/internal/ads/zzbap;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzbap;->b(Lcom/google/android/gms/internal/ads/zzbaj;)Ljava/lang/Object;

    move-result-object v1

    .line 3
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_19

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/zzi;->k()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/gms/ads/internal/zzi;->r:Z

    :cond_19
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzi;->y:Lcom/google/android/gms/internal/ads/zzbzg;

    .line 5
    iget-boolean v1, v1, Lcom/google/android/gms/internal/ads/zzbzg;->r:Z

    sget-object v2, Lcom/google/android/gms/internal/ads/zzbar;->Q0:Lcom/google/android/gms/internal/ads/zzbaj;

    .line 6
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->c()Lcom/google/android/gms/internal/ads/zzbap;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/zzbap;->b(Lcom/google/android/gms/internal/ads/zzbaj;)Ljava/lang/Object;

    move-result-object v2

    .line 7
    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_34

    if-eqz v1, :cond_34

    const/4 v3, 0x1

    :cond_34
    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/zzi;->m()I

    move-result v1

    if-ne v1, v4, :cond_4d

    .line 8
    invoke-direct {p0, v3}, Lcom/google/android/gms/ads/internal/zzi;->p(Z)V

    iget v1, p0, Lcom/google/android/gms/ads/internal/zzi;->C:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_88

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzi;->u:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/google/android/gms/ads/internal/zzg;

    invoke-direct {v2, p0, v3}, Lcom/google/android/gms/ads/internal/zzg;-><init>(Lcom/google/android/gms/ads/internal/zzi;Z)V

    .line 9
    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_88

    .line 10
    :cond_4d
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1
    :try_end_51
    .catchall {:try_start_1 .. :try_end_51} :catchall_92

    :try_start_51
    iget-object v5, p0, Lcom/google/android/gms/ads/internal/zzi;->y:Lcom/google/android/gms/internal/ads/zzbzg;

    .line 11
    iget-object v5, v5, Lcom/google/android/gms/internal/ads/zzbzg;->o:Ljava/lang/String;

    iget-object v6, p0, Lcom/google/android/gms/ads/internal/zzi;->w:Landroid/content/Context;

    .line 12
    invoke-static {v6}, Lcom/google/android/gms/ads/internal/zzi;->q(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v6

    iget-boolean v7, p0, Lcom/google/android/gms/ads/internal/zzi;->A:Z

    .line 13
    invoke-static {v5, v6, v3, v7}, Lcom/google/android/gms/internal/ads/zzapp;->i(Ljava/lang/String;Landroid/content/Context;ZZ)Lcom/google/android/gms/internal/ads/zzapp;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/gms/ads/internal/zzi;->q:Ljava/util/concurrent/atomic/AtomicReference;

    .line 14
    invoke-virtual {v6, v5}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    iget-boolean v6, p0, Lcom/google/android/gms/ads/internal/zzi;->t:Z

    if-eqz v6, :cond_88

    .line 15
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzapp;->r()Z

    move-result v5

    if-nez v5, :cond_88

    iput v4, p0, Lcom/google/android/gms/ads/internal/zzi;->C:I

    .line 16
    invoke-direct {p0, v3}, Lcom/google/android/gms/ads/internal/zzi;->p(Z)V
    :try_end_75
    .catch Ljava/lang/NullPointerException; {:try_start_51 .. :try_end_75} :catch_76
    .catchall {:try_start_51 .. :try_end_75} :catchall_92

    goto :goto_88

    :catch_76
    move-exception v5

    .line 17
    :try_start_77
    iput v4, p0, Lcom/google/android/gms/ads/internal/zzi;->C:I

    .line 18
    invoke-direct {p0, v3}, Lcom/google/android/gms/ads/internal/zzi;->p(Z)V

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/zzi;->v:Lcom/google/android/gms/internal/ads/zzfhp;

    const/16 v4, 0x7ef

    .line 19
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v1

    .line 20
    invoke-virtual {v3, v4, v6, v7, v5}, Lcom/google/android/gms/internal/ads/zzfhp;->c(IJLjava/lang/Exception;)Lcom/google/android/gms/tasks/Task;
    :try_end_88
    .catchall {:try_start_77 .. :try_end_88} :catchall_92

    .line 21
    :cond_88
    :goto_88
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzi;->B:Ljava/util/concurrent/CountDownLatch;

    .line 22
    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/zzi;->w:Landroid/content/Context;

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/zzi;->y:Lcom/google/android/gms/internal/ads/zzbzg;

    return-void

    :catchall_92
    move-exception v1

    .line 23
    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzi;->B:Ljava/util/concurrent/CountDownLatch;

    .line 24
    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/zzi;->w:Landroid/content/Context;

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/zzi;->y:Lcom/google/android/gms/internal/ads/zzbzg;

    .line 25
    throw v1
.end method

###### Class com.google.android.gms.ads.internal.zzg (com.google.android.gms.ads.internal.zzg)
.class public final synthetic Lcom/google/android/gms/ads/internal/zzg;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic o:Lcom/google/android/gms/ads/internal/zzi;

.field public final synthetic p:Z


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/ads/internal/zzi;Z)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/zzg;->o:Lcom/google/android/gms/ads/internal/zzi;

    iput-boolean p2, p0, Lcom/google/android/gms/ads/internal/zzg;->p:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzg;->o:Lcom/google/android/gms/ads/internal/zzi;

    iget-boolean v1, p0, Lcom/google/android/gms/ads/internal/zzg;->p:Z

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/internal/zzi;->j(Z)V

    return-void
.end method
