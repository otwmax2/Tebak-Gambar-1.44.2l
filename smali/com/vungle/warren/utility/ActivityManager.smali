###### Class com.vungle.warren.utility.ActivityManager (com.vungle.warren.utility.ActivityManager)
.class public Lcom/vungle/warren/utility/ActivityManager;
.super Ljava/lang/Object;
.source "ActivityManager.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/warren/utility/ActivityManager$LeftApplicationCallback;,
        Lcom/vungle/warren/utility/ActivityManager$LifeCycleCallback;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String;

.field private static final x:Lcom/vungle/warren/utility/ActivityManager;


# instance fields
.field private o:Z

.field private p:I

.field private q:I

.field private r:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Lcom/vungle/warren/utility/ActivityManager$LifeCycleCallback;",
            ">;"
        }
    .end annotation
.end field

.field private s:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Lcom/vungle/warren/utility/ActivityManager$LeftApplicationCallback;",
            "Lcom/vungle/warren/utility/ActivityManager$LifeCycleCallback;",
            ">;"
        }
    .end annotation
.end field

.field private t:Landroid/os/Handler;

.field private u:Z

.field private v:Z

.field private w:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    const-class v0, Lcom/vungle/warren/utility/ActivityManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/vungle/warren/utility/ActivityManager;->TAG:Ljava/lang/String;

    .line 2
    new-instance v0, Lcom/vungle/warren/utility/ActivityManager;

    invoke-direct {v0}, Lcom/vungle/warren/utility/ActivityManager;-><init>()V

    sput-object v0, Lcom/vungle/warren/utility/ActivityManager;->x:Lcom/vungle/warren/utility/ActivityManager;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/vungle/warren/utility/ActivityManager;->r:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 3
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/vungle/warren/utility/ActivityManager;->s:Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/vungle/warren/utility/ActivityManager;->u:Z

    .line 5
    iput-boolean v0, p0, Lcom/vungle/warren/utility/ActivityManager;->v:Z

    .line 6
    new-instance v0, Lcom/vungle/warren/utility/ActivityManager$1;

    invoke-direct {v0, p0}, Lcom/vungle/warren/utility/ActivityManager$1;-><init>(Lcom/vungle/warren/utility/ActivityManager;)V

    iput-object v0, p0, Lcom/vungle/warren/utility/ActivityManager;->w:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic a(Lcom/vungle/warren/utility/ActivityManager;)I
    .registers 1

    .line 1
    iget p0, p0, Lcom/vungle/warren/utility/ActivityManager;->q:I

    return p0
.end method

.method static synthetic b(Lcom/vungle/warren/utility/ActivityManager;)Z
    .registers 1

    .line 1
    iget-boolean p0, p0, Lcom/vungle/warren/utility/ActivityManager;->u:Z

    return p0
.end method

.method static synthetic c(Lcom/vungle/warren/utility/ActivityManager;)Ljava/util/concurrent/ConcurrentHashMap;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/vungle/warren/utility/ActivityManager;->s:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method static synthetic d(Lcom/vungle/warren/utility/ActivityManager;Z)Z
    .registers 2

    .line 1
    iput-boolean p1, p0, Lcom/vungle/warren/utility/ActivityManager;->u:Z

    return p1
.end method

.method static synthetic e(Lcom/vungle/warren/utility/ActivityManager;)Ljava/util/concurrent/CopyOnWriteArraySet;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/vungle/warren/utility/ActivityManager;->r:Ljava/util/concurrent/CopyOnWriteArraySet;

    return-object p0
.end method

.method static synthetic f(Lcom/vungle/warren/utility/ActivityManager;)I
    .registers 1

    .line 1
    iget p0, p0, Lcom/vungle/warren/utility/ActivityManager;->p:I

    return p0
.end method

.method static synthetic g(Lcom/vungle/warren/utility/ActivityManager;)Z
    .registers 1

    .line 1
    iget-boolean p0, p0, Lcom/vungle/warren/utility/ActivityManager;->v:Z

    return p0
.end method

.method public static getInstance()Lcom/vungle/warren/utility/ActivityManager;
    .registers 1

    .line 1
    sget-object v0, Lcom/vungle/warren/utility/ActivityManager;->x:Lcom/vungle/warren/utility/ActivityManager;

    return-object v0
.end method

.method static synthetic h(Lcom/vungle/warren/utility/ActivityManager;Z)Z
    .registers 2

    .line 1
    iput-boolean p1, p0, Lcom/vungle/warren/utility/ActivityManager;->v:Z

    return p1
.end method

.method static synthetic i()Lcom/vungle/warren/utility/ActivityManager;
    .registers 1

    .line 1
    sget-object v0, Lcom/vungle/warren/utility/ActivityManager;->x:Lcom/vungle/warren/utility/ActivityManager;

    return-object v0
.end method

.method static synthetic j(Lcom/vungle/warren/utility/ActivityManager;Lcom/vungle/warren/utility/ActivityManager$LifeCycleCallback;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/vungle/warren/utility/ActivityManager;->o(Lcom/vungle/warren/utility/ActivityManager$LifeCycleCallback;)V

    return-void
.end method

.method static synthetic k(Landroid/content/Context;Landroid/content/Intent;)Z
    .registers 2

    .line 1
    invoke-static {p0, p1}, Lcom/vungle/warren/utility/ActivityManager;->q(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result p0

    return p0
.end method

.method static synthetic l(Lcom/vungle/warren/utility/ActivityManager;)Landroid/os/Handler;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/vungle/warren/utility/ActivityManager;->t:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic m(Lcom/vungle/warren/utility/ActivityManager;Lcom/vungle/warren/utility/ActivityManager$LeftApplicationCallback;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/vungle/warren/utility/ActivityManager;->p(Lcom/vungle/warren/utility/ActivityManager$LeftApplicationCallback;)V

    return-void
.end method

.method private o(Lcom/vungle/warren/utility/ActivityManager$LifeCycleCallback;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/utility/ActivityManager;->r:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method private p(Lcom/vungle/warren/utility/ActivityManager$LeftApplicationCallback;)V
    .registers 3

    if-nez p1, :cond_3

    return-void

    .line 1
    :cond_3
    iget-object v0, p0, Lcom/vungle/warren/utility/ActivityManager;->s:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/vungle/warren/utility/ActivityManager$LifeCycleCallback;

    if-eqz p1, :cond_10

    .line 2
    invoke-direct {p0, p1}, Lcom/vungle/warren/utility/ActivityManager;->o(Lcom/vungle/warren/utility/ActivityManager$LifeCycleCallback;)V

    :cond_10
    return-void
.end method

.method private static q(Landroid/content/Context;Landroid/content/Intent;)Z
    .registers 4

    .line 1
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_3
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_3} :catch_5

    const/4 p0, 0x1

    return p0

    :catch_5
    move-exception p0

    .line 2
    sget-object p1, Lcom/vungle/warren/utility/ActivityManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot find activity to handle the Implicit intent: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/ActivityNotFoundException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public static startWhenForeground(Landroid/content/Context;Landroid/content/Intent;Lcom/vungle/warren/utility/ActivityManager$LeftApplicationCallback;)V
    .registers 6

    .line 1
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 2
    sget-object v1, Lcom/vungle/warren/utility/ActivityManager;->x:Lcom/vungle/warren/utility/ActivityManager;

    invoke-virtual {v1}, Lcom/vungle/warren/utility/ActivityManager;->n()Z

    move-result v2

    if-eqz v2, :cond_17

    .line 3
    invoke-static {p0, p1}, Lcom/vungle/warren/utility/ActivityManager;->q(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result p0

    if-eqz p0, :cond_1f

    .line 4
    invoke-virtual {v1, p2}, Lcom/vungle/warren/utility/ActivityManager;->addOnNextAppLeftCallback(Lcom/vungle/warren/utility/ActivityManager$LeftApplicationCallback;)V

    goto :goto_1f

    .line 5
    :cond_17
    new-instance p0, Lcom/vungle/warren/utility/ActivityManager$2;

    invoke-direct {p0, v0, p1, p2}, Lcom/vungle/warren/utility/ActivityManager$2;-><init>(Ljava/lang/ref/WeakReference;Landroid/content/Intent;Lcom/vungle/warren/utility/ActivityManager$LeftApplicationCallback;)V

    invoke-virtual {v1, p0}, Lcom/vungle/warren/utility/ActivityManager;->addListener(Lcom/vungle/warren/utility/ActivityManager$LifeCycleCallback;)V

    :cond_1f
    :goto_1f
    return-void
.end method


# virtual methods
.method public addListener(Lcom/vungle/warren/utility/ActivityManager$LifeCycleCallback;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/utility/ActivityManager;->r:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addOnNextAppLeftCallback(Lcom/vungle/warren/utility/ActivityManager$LeftApplicationCallback;)V
    .registers 7

    if-nez p1, :cond_3

    return-void

    .line 1
    :cond_3
    iget-boolean v0, p0, Lcom/vungle/warren/utility/ActivityManager;->o:Z

    if-nez v0, :cond_b

    .line 2
    invoke-interface {p1}, Lcom/vungle/warren/utility/ActivityManager$LeftApplicationCallback;->onLeftApplication()V

    return-void

    .line 3
    :cond_b
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 4
    new-instance v1, Lcom/vungle/warren/utility/ActivityManager$3;

    invoke-direct {v1, p0, v0}, Lcom/vungle/warren/utility/ActivityManager$3;-><init>(Lcom/vungle/warren/utility/ActivityManager;Ljava/lang/ref/WeakReference;)V

    .line 5
    new-instance v2, Lcom/vungle/warren/utility/ActivityManager$4;

    invoke-direct {v2, p0, v0, v1}, Lcom/vungle/warren/utility/ActivityManager$4;-><init>(Lcom/vungle/warren/utility/ActivityManager;Ljava/lang/ref/WeakReference;Ljava/lang/Runnable;)V

    .line 6
    iget-object v3, p0, Lcom/vungle/warren/utility/ActivityManager;->s:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, p1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    invoke-virtual {p0}, Lcom/vungle/warren/utility/ActivityManager;->n()Z

    move-result p1

    if-eqz p1, :cond_30

    .line 8
    iget-object p1, p0, Lcom/vungle/warren/utility/ActivityManager;->t:Landroid/os/Handler;

    const-wide/16 v3, 0xbb8

    invoke-virtual {p1, v1, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 9
    invoke-virtual {p0, v2}, Lcom/vungle/warren/utility/ActivityManager;->addListener(Lcom/vungle/warren/utility/ActivityManager$LifeCycleCallback;)V

    goto :goto_3c

    .line 10
    :cond_30
    invoke-static {}, Lcom/vungle/warren/utility/ActivityManager;->getInstance()Lcom/vungle/warren/utility/ActivityManager;

    move-result-object p1

    new-instance v2, Lcom/vungle/warren/utility/ActivityManager$5;

    invoke-direct {v2, p0, v0, v1}, Lcom/vungle/warren/utility/ActivityManager$5;-><init>(Lcom/vungle/warren/utility/ActivityManager;Ljava/lang/ref/WeakReference;Ljava/lang/Runnable;)V

    invoke-virtual {p1, v2}, Lcom/vungle/warren/utility/ActivityManager;->addListener(Lcom/vungle/warren/utility/ActivityManager$LifeCycleCallback;)V

    :goto_3c
    return-void
.end method

.method public init(Landroid/content/Context;)V
    .registers 4

    .line 1
    iget-boolean v0, p0, Lcom/vungle/warren/utility/ActivityManager;->o:Z

    if-eqz v0, :cond_5

    return-void

    .line 2
    :cond_5
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/vungle/warren/utility/ActivityManager;->t:Landroid/os/Handler;

    .line 3
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Application;

    .line 4
    invoke-virtual {p1, p0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    const/4 p1, 0x1

    .line 5
    iput-boolean p1, p0, Lcom/vungle/warren/utility/ActivityManager;->o:Z

    return-void
.end method

.method public isInitialized()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/vungle/warren/utility/ActivityManager;->o:Z

    return v0
.end method

.method protected n()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/vungle/warren/utility/ActivityManager;->o:Z

    if-eqz v0, :cond_b

    iget v0, p0, Lcom/vungle/warren/utility/ActivityManager;->p:I

    if-lez v0, :cond_9

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

.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 3

    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .registers 2

    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .registers 5

    .line 1
    iget p1, p0, Lcom/vungle/warren/utility/ActivityManager;->q:I

    add-int/lit8 p1, p1, -0x1

    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/vungle/warren/utility/ActivityManager;->q:I

    .line 2
    iget-object p1, p0, Lcom/vungle/warren/utility/ActivityManager;->t:Landroid/os/Handler;

    iget-object v0, p0, Lcom/vungle/warren/utility/ActivityManager;->w:Ljava/lang/Runnable;

    const-wide/16 v1, 0x2bc

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .registers 3

    .line 1
    iget p1, p0, Lcom/vungle/warren/utility/ActivityManager;->q:I

    const/4 v0, 0x1

    add-int/2addr p1, v0

    iput p1, p0, Lcom/vungle/warren/utility/ActivityManager;->q:I

    if-ne p1, v0, :cond_2c

    .line 2
    iget-boolean p1, p0, Lcom/vungle/warren/utility/ActivityManager;->u:Z

    if-eqz p1, :cond_25

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Lcom/vungle/warren/utility/ActivityManager;->u:Z

    .line 4
    iget-object p1, p0, Lcom/vungle/warren/utility/ActivityManager;->r:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_15
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/warren/utility/ActivityManager$LifeCycleCallback;

    .line 5
    invoke-virtual {v0}, Lcom/vungle/warren/utility/ActivityManager$LifeCycleCallback;->onResume()V

    goto :goto_15

    .line 6
    :cond_25
    iget-object p1, p0, Lcom/vungle/warren/utility/ActivityManager;->t:Landroid/os/Handler;

    iget-object v0, p0, Lcom/vungle/warren/utility/ActivityManager;->w:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_2c
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 3

    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .registers 3

    .line 1
    iget p1, p0, Lcom/vungle/warren/utility/ActivityManager;->p:I

    const/4 v0, 0x1

    add-int/2addr p1, v0

    iput p1, p0, Lcom/vungle/warren/utility/ActivityManager;->p:I

    if-ne p1, v0, :cond_25

    .line 2
    iget-boolean p1, p0, Lcom/vungle/warren/utility/ActivityManager;->v:Z

    if-eqz p1, :cond_25

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Lcom/vungle/warren/utility/ActivityManager;->v:Z

    .line 4
    iget-object p1, p0, Lcom/vungle/warren/utility/ActivityManager;->r:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_15
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_25

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/warren/utility/ActivityManager$LifeCycleCallback;

    .line 5
    invoke-virtual {v0}, Lcom/vungle/warren/utility/ActivityManager$LifeCycleCallback;->onStart()V

    goto :goto_15

    :cond_25
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .registers 5

    .line 1
    iget p1, p0, Lcom/vungle/warren/utility/ActivityManager;->p:I

    add-int/lit8 p1, p1, -0x1

    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/vungle/warren/utility/ActivityManager;->p:I

    .line 2
    iget-object p1, p0, Lcom/vungle/warren/utility/ActivityManager;->t:Landroid/os/Handler;

    iget-object v0, p0, Lcom/vungle/warren/utility/ActivityManager;->w:Ljava/lang/Runnable;

    const-wide/16 v1, 0x2bc

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

###### Class com.vungle.warren.utility.ActivityManager.AnonymousClass1 (com.vungle.warren.utility.ActivityManager$1)
.class Lcom/vungle/warren/utility/ActivityManager$1;
.super Ljava/lang/Object;
.source "ActivityManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/warren/utility/ActivityManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic o:Lcom/vungle/warren/utility/ActivityManager;


# direct methods
.method constructor <init>(Lcom/vungle/warren/utility/ActivityManager;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/vungle/warren/utility/ActivityManager$1;->o:Lcom/vungle/warren/utility/ActivityManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/utility/ActivityManager$1;->o:Lcom/vungle/warren/utility/ActivityManager;

    invoke-static {v0}, Lcom/vungle/warren/utility/ActivityManager;->a(Lcom/vungle/warren/utility/ActivityManager;)I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_30

    iget-object v0, p0, Lcom/vungle/warren/utility/ActivityManager$1;->o:Lcom/vungle/warren/utility/ActivityManager;

    invoke-static {v0}, Lcom/vungle/warren/utility/ActivityManager;->b(Lcom/vungle/warren/utility/ActivityManager;)Z

    move-result v0

    if-nez v0, :cond_30

    .line 2
    iget-object v0, p0, Lcom/vungle/warren/utility/ActivityManager$1;->o:Lcom/vungle/warren/utility/ActivityManager;

    invoke-static {v0, v1}, Lcom/vungle/warren/utility/ActivityManager;->d(Lcom/vungle/warren/utility/ActivityManager;Z)Z

    .line 3
    iget-object v0, p0, Lcom/vungle/warren/utility/ActivityManager$1;->o:Lcom/vungle/warren/utility/ActivityManager;

    invoke-static {v0}, Lcom/vungle/warren/utility/ActivityManager;->e(Lcom/vungle/warren/utility/ActivityManager;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_20
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_30

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vungle/warren/utility/ActivityManager$LifeCycleCallback;

    .line 4
    invoke-virtual {v2}, Lcom/vungle/warren/utility/ActivityManager$LifeCycleCallback;->onPause()V

    goto :goto_20

    .line 5
    :cond_30
    iget-object v0, p0, Lcom/vungle/warren/utility/ActivityManager$1;->o:Lcom/vungle/warren/utility/ActivityManager;

    invoke-static {v0}, Lcom/vungle/warren/utility/ActivityManager;->f(Lcom/vungle/warren/utility/ActivityManager;)I

    move-result v0

    if-nez v0, :cond_67

    iget-object v0, p0, Lcom/vungle/warren/utility/ActivityManager$1;->o:Lcom/vungle/warren/utility/ActivityManager;

    invoke-static {v0}, Lcom/vungle/warren/utility/ActivityManager;->b(Lcom/vungle/warren/utility/ActivityManager;)Z

    move-result v0

    if-eqz v0, :cond_67

    iget-object v0, p0, Lcom/vungle/warren/utility/ActivityManager$1;->o:Lcom/vungle/warren/utility/ActivityManager;

    invoke-static {v0}, Lcom/vungle/warren/utility/ActivityManager;->g(Lcom/vungle/warren/utility/ActivityManager;)Z

    move-result v0

    if-nez v0, :cond_67

    .line 6
    iget-object v0, p0, Lcom/vungle/warren/utility/ActivityManager$1;->o:Lcom/vungle/warren/utility/ActivityManager;

    invoke-static {v0, v1}, Lcom/vungle/warren/utility/ActivityManager;->h(Lcom/vungle/warren/utility/ActivityManager;Z)Z

    .line 7
    iget-object v0, p0, Lcom/vungle/warren/utility/ActivityManager$1;->o:Lcom/vungle/warren/utility/ActivityManager;

    invoke-static {v0}, Lcom/vungle/warren/utility/ActivityManager;->e(Lcom/vungle/warren/utility/ActivityManager;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_57
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_67

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vungle/warren/utility/ActivityManager$LifeCycleCallback;

    .line 8
    invoke-virtual {v1}, Lcom/vungle/warren/utility/ActivityManager$LifeCycleCallback;->onStop()V

    goto :goto_57

    :cond_67
    return-void
.end method

###### Class com.vungle.warren.utility.ActivityManager.AnonymousClass2 (com.vungle.warren.utility.ActivityManager$2)
.class Lcom/vungle/warren/utility/ActivityManager$2;
.super Lcom/vungle/warren/utility/ActivityManager$LifeCycleCallback;
.source "ActivityManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/warren/utility/ActivityManager;->startWhenForeground(Landroid/content/Context;Landroid/content/Intent;Lcom/vungle/warren/utility/ActivityManager$LeftApplicationCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/ref/WeakReference;

.field final synthetic b:Landroid/content/Intent;

.field final synthetic c:Lcom/vungle/warren/utility/ActivityManager$LeftApplicationCallback;


# direct methods
.method constructor <init>(Ljava/lang/ref/WeakReference;Landroid/content/Intent;Lcom/vungle/warren/utility/ActivityManager$LeftApplicationCallback;)V
    .registers 4

    .line 1
    iput-object p1, p0, Lcom/vungle/warren/utility/ActivityManager$2;->a:Ljava/lang/ref/WeakReference;

    iput-object p2, p0, Lcom/vungle/warren/utility/ActivityManager$2;->b:Landroid/content/Intent;

    iput-object p3, p0, Lcom/vungle/warren/utility/ActivityManager$2;->c:Lcom/vungle/warren/utility/ActivityManager$LeftApplicationCallback;

    invoke-direct {p0}, Lcom/vungle/warren/utility/ActivityManager$LifeCycleCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onStart()V
    .registers 3

    .line 1
    invoke-super {p0}, Lcom/vungle/warren/utility/ActivityManager$LifeCycleCallback;->onStart()V

    .line 2
    invoke-static {}, Lcom/vungle/warren/utility/ActivityManager;->i()Lcom/vungle/warren/utility/ActivityManager;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/vungle/warren/utility/ActivityManager;->j(Lcom/vungle/warren/utility/ActivityManager;Lcom/vungle/warren/utility/ActivityManager$LifeCycleCallback;)V

    .line 3
    iget-object v0, p0, Lcom/vungle/warren/utility/ActivityManager$2;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-eqz v0, :cond_25

    .line 4
    iget-object v1, p0, Lcom/vungle/warren/utility/ActivityManager$2;->b:Landroid/content/Intent;

    invoke-static {v0, v1}, Lcom/vungle/warren/utility/ActivityManager;->k(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 5
    invoke-static {}, Lcom/vungle/warren/utility/ActivityManager;->i()Lcom/vungle/warren/utility/ActivityManager;

    move-result-object v0

    iget-object v1, p0, Lcom/vungle/warren/utility/ActivityManager$2;->c:Lcom/vungle/warren/utility/ActivityManager$LeftApplicationCallback;

    invoke-virtual {v0, v1}, Lcom/vungle/warren/utility/ActivityManager;->addOnNextAppLeftCallback(Lcom/vungle/warren/utility/ActivityManager$LeftApplicationCallback;)V

    :cond_25
    return-void
.end method

###### Class com.vungle.warren.utility.ActivityManager.AnonymousClass3 (com.vungle.warren.utility.ActivityManager$3)
.class Lcom/vungle/warren/utility/ActivityManager$3;
.super Ljava/lang/Object;
.source "ActivityManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/warren/utility/ActivityManager;->addOnNextAppLeftCallback(Lcom/vungle/warren/utility/ActivityManager$LeftApplicationCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic o:Ljava/lang/ref/WeakReference;

.field final synthetic p:Lcom/vungle/warren/utility/ActivityManager;


# direct methods
.method constructor <init>(Lcom/vungle/warren/utility/ActivityManager;Ljava/lang/ref/WeakReference;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/vungle/warren/utility/ActivityManager$3;->p:Lcom/vungle/warren/utility/ActivityManager;

    iput-object p2, p0, Lcom/vungle/warren/utility/ActivityManager$3;->o:Ljava/lang/ref/WeakReference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/utility/ActivityManager$3;->p:Lcom/vungle/warren/utility/ActivityManager;

    invoke-static {v0}, Lcom/vungle/warren/utility/ActivityManager;->l(Lcom/vungle/warren/utility/ActivityManager;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2
    iget-object v0, p0, Lcom/vungle/warren/utility/ActivityManager$3;->p:Lcom/vungle/warren/utility/ActivityManager;

    iget-object v1, p0, Lcom/vungle/warren/utility/ActivityManager$3;->o:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vungle/warren/utility/ActivityManager$LeftApplicationCallback;

    invoke-static {v0, v1}, Lcom/vungle/warren/utility/ActivityManager;->m(Lcom/vungle/warren/utility/ActivityManager;Lcom/vungle/warren/utility/ActivityManager$LeftApplicationCallback;)V

    return-void
.end method

###### Class com.vungle.warren.utility.ActivityManager.AnonymousClass4 (com.vungle.warren.utility.ActivityManager$4)
.class Lcom/vungle/warren/utility/ActivityManager$4;
.super Lcom/vungle/warren/utility/ActivityManager$LifeCycleCallback;
.source "ActivityManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/warren/utility/ActivityManager;->addOnNextAppLeftCallback(Lcom/vungle/warren/utility/ActivityManager$LeftApplicationCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field a:Z

.field final synthetic b:Ljava/lang/ref/WeakReference;

.field final synthetic c:Ljava/lang/Runnable;

.field final synthetic d:Lcom/vungle/warren/utility/ActivityManager;


# direct methods
.method constructor <init>(Lcom/vungle/warren/utility/ActivityManager;Ljava/lang/ref/WeakReference;Ljava/lang/Runnable;)V
    .registers 4

    .line 1
    iput-object p1, p0, Lcom/vungle/warren/utility/ActivityManager$4;->d:Lcom/vungle/warren/utility/ActivityManager;

    iput-object p2, p0, Lcom/vungle/warren/utility/ActivityManager$4;->b:Ljava/lang/ref/WeakReference;

    iput-object p3, p0, Lcom/vungle/warren/utility/ActivityManager$4;->c:Ljava/lang/Runnable;

    invoke-direct {p0}, Lcom/vungle/warren/utility/ActivityManager$LifeCycleCallback;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/vungle/warren/utility/ActivityManager$4;->a:Z

    return-void
.end method


# virtual methods
.method public onPause()V
    .registers 3

    .line 1
    invoke-super {p0}, Lcom/vungle/warren/utility/ActivityManager$LifeCycleCallback;->onPause()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/vungle/warren/utility/ActivityManager$4;->a:Z

    .line 3
    iget-object v0, p0, Lcom/vungle/warren/utility/ActivityManager$4;->d:Lcom/vungle/warren/utility/ActivityManager;

    invoke-static {v0}, Lcom/vungle/warren/utility/ActivityManager;->l(Lcom/vungle/warren/utility/ActivityManager;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/vungle/warren/utility/ActivityManager$4;->c:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onResume()V
    .registers 5

    .line 1
    invoke-super {p0}, Lcom/vungle/warren/utility/ActivityManager$LifeCycleCallback;->onResume()V

    .line 2
    iget-object v0, p0, Lcom/vungle/warren/utility/ActivityManager$4;->d:Lcom/vungle/warren/utility/ActivityManager;

    invoke-static {v0}, Lcom/vungle/warren/utility/ActivityManager;->l(Lcom/vungle/warren/utility/ActivityManager;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/vungle/warren/utility/ActivityManager$4;->c:Ljava/lang/Runnable;

    const-wide/16 v2, 0x578

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onStop()V
    .registers 3

    .line 1
    invoke-super {p0}, Lcom/vungle/warren/utility/ActivityManager$LifeCycleCallback;->onStop()V

    .line 2
    iget-object v0, p0, Lcom/vungle/warren/utility/ActivityManager$4;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/warren/utility/ActivityManager$LeftApplicationCallback;

    .line 3
    iget-boolean v1, p0, Lcom/vungle/warren/utility/ActivityManager$4;->a:Z

    if-eqz v1, :cond_20

    if-eqz v0, :cond_20

    iget-object v1, p0, Lcom/vungle/warren/utility/ActivityManager$4;->d:Lcom/vungle/warren/utility/ActivityManager;

    invoke-static {v1}, Lcom/vungle/warren/utility/ActivityManager;->c(Lcom/vungle/warren/utility/ActivityManager;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 4
    invoke-interface {v0}, Lcom/vungle/warren/utility/ActivityManager$LeftApplicationCallback;->onLeftApplication()V

    .line 5
    :cond_20
    iget-object v1, p0, Lcom/vungle/warren/utility/ActivityManager$4;->d:Lcom/vungle/warren/utility/ActivityManager;

    invoke-static {v1, v0}, Lcom/vungle/warren/utility/ActivityManager;->m(Lcom/vungle/warren/utility/ActivityManager;Lcom/vungle/warren/utility/ActivityManager$LeftApplicationCallback;)V

    .line 6
    iget-object v0, p0, Lcom/vungle/warren/utility/ActivityManager$4;->d:Lcom/vungle/warren/utility/ActivityManager;

    invoke-static {v0}, Lcom/vungle/warren/utility/ActivityManager;->l(Lcom/vungle/warren/utility/ActivityManager;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/vungle/warren/utility/ActivityManager$4;->c:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

###### Class com.vungle.warren.utility.ActivityManager.AnonymousClass5 (com.vungle.warren.utility.ActivityManager$5)
.class Lcom/vungle/warren/utility/ActivityManager$5;
.super Lcom/vungle/warren/utility/ActivityManager$LifeCycleCallback;
.source "ActivityManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/warren/utility/ActivityManager;->addOnNextAppLeftCallback(Lcom/vungle/warren/utility/ActivityManager$LeftApplicationCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/ref/WeakReference;

.field final synthetic b:Ljava/lang/Runnable;

.field final synthetic c:Lcom/vungle/warren/utility/ActivityManager;


# direct methods
.method constructor <init>(Lcom/vungle/warren/utility/ActivityManager;Ljava/lang/ref/WeakReference;Ljava/lang/Runnable;)V
    .registers 4

    .line 1
    iput-object p1, p0, Lcom/vungle/warren/utility/ActivityManager$5;->c:Lcom/vungle/warren/utility/ActivityManager;

    iput-object p2, p0, Lcom/vungle/warren/utility/ActivityManager$5;->a:Ljava/lang/ref/WeakReference;

    iput-object p3, p0, Lcom/vungle/warren/utility/ActivityManager$5;->b:Ljava/lang/Runnable;

    invoke-direct {p0}, Lcom/vungle/warren/utility/ActivityManager$LifeCycleCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onStart()V
    .registers 6

    .line 1
    invoke-static {}, Lcom/vungle/warren/utility/ActivityManager;->i()Lcom/vungle/warren/utility/ActivityManager;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/vungle/warren/utility/ActivityManager;->j(Lcom/vungle/warren/utility/ActivityManager;Lcom/vungle/warren/utility/ActivityManager$LifeCycleCallback;)V

    .line 2
    iget-object v0, p0, Lcom/vungle/warren/utility/ActivityManager$5;->c:Lcom/vungle/warren/utility/ActivityManager;

    invoke-static {v0}, Lcom/vungle/warren/utility/ActivityManager;->c(Lcom/vungle/warren/utility/ActivityManager;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/vungle/warren/utility/ActivityManager$5;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/warren/utility/ActivityManager$LifeCycleCallback;

    if-eqz v0, :cond_2d

    .line 3
    iget-object v1, p0, Lcom/vungle/warren/utility/ActivityManager$5;->c:Lcom/vungle/warren/utility/ActivityManager;

    invoke-static {v1}, Lcom/vungle/warren/utility/ActivityManager;->l(Lcom/vungle/warren/utility/ActivityManager;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/vungle/warren/utility/ActivityManager$5;->b:Ljava/lang/Runnable;

    const-wide/16 v3, 0xbb8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 4
    iget-object v1, p0, Lcom/vungle/warren/utility/ActivityManager$5;->c:Lcom/vungle/warren/utility/ActivityManager;

    invoke-virtual {v1, v0}, Lcom/vungle/warren/utility/ActivityManager;->addListener(Lcom/vungle/warren/utility/ActivityManager$LifeCycleCallback;)V

    :cond_2d
    return-void
.end method

###### Class com.vungle.warren.utility.ActivityManager.LeftApplicationCallback (com.vungle.warren.utility.ActivityManager$LeftApplicationCallback)
.class public interface abstract Lcom/vungle/warren/utility/ActivityManager$LeftApplicationCallback;
.super Ljava/lang/Object;
.source "ActivityManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/warren/utility/ActivityManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "LeftApplicationCallback"
.end annotation


# virtual methods
.method public abstract onLeftApplication()V
.end method

###### Class com.vungle.warren.utility.ActivityManager.LifeCycleCallback (com.vungle.warren.utility.ActivityManager$LifeCycleCallback)
.class public Lcom/vungle/warren/utility/ActivityManager$LifeCycleCallback;
.super Ljava/lang/Object;
.source "ActivityManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/warren/utility/ActivityManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LifeCycleCallback"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPause()V
    .registers 1

    return-void
.end method

.method public onResume()V
    .registers 1

    return-void
.end method

.method public onStart()V
    .registers 1

    return-void
.end method

.method public onStop()V
    .registers 1

    return-void
.end method
