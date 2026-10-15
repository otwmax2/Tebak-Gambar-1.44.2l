###### Class com.google.firebase.concurrent.ExecutorsRegistrar (com.google.firebase.concurrent.ExecutorsRegistrar)
.class public Lcom/google/firebase/concurrent/ExecutorsRegistrar;
.super Ljava/lang/Object;
.source "ExecutorsRegistrar.java"

# interfaces
.implements Lcom/google/firebase/components/ComponentRegistrar;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ThreadPoolCreation"
    }
.end annotation


# static fields
.field static final a:Lk5/x;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lk5/x<",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            ">;"
        }
    .end annotation
.end field

.field static final b:Lk5/x;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lk5/x<",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            ">;"
        }
    .end annotation
.end field

.field static final c:Lk5/x;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lk5/x<",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            ">;"
        }
    .end annotation
.end field

.field static final d:Lk5/x;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lk5/x<",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Lk5/x;

    sget-object v1, Ll5/h;->a:Ll5/h;

    invoke-direct {v0, v1}, Lk5/x;-><init>(Lk6/b;)V

    sput-object v0, Lcom/google/firebase/concurrent/ExecutorsRegistrar;->a:Lk5/x;

    .line 2
    new-instance v0, Lk5/x;

    sget-object v1, Ll5/g;->a:Ll5/g;

    invoke-direct {v0, v1}, Lk5/x;-><init>(Lk6/b;)V

    sput-object v0, Lcom/google/firebase/concurrent/ExecutorsRegistrar;->b:Lk5/x;

    .line 3
    new-instance v0, Lk5/x;

    sget-object v1, Ll5/f;->a:Ll5/f;

    invoke-direct {v0, v1}, Lk5/x;-><init>(Lk6/b;)V

    sput-object v0, Lcom/google/firebase/concurrent/ExecutorsRegistrar;->c:Lk5/x;

    .line 4
    new-instance v0, Lk5/x;

    sget-object v1, Ll5/e;->a:Ll5/e;

    invoke-direct {v0, v1}, Lk5/x;-><init>(Lk6/b;)V

    sput-object v0, Lcom/google/firebase/concurrent/ExecutorsRegistrar;->d:Lk5/x;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lk5/e;)Ljava/util/concurrent/ScheduledExecutorService;
    .registers 1

    invoke-static {p0}, Lcom/google/firebase/concurrent/ExecutorsRegistrar;->m(Lk5/e;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b()Ljava/util/concurrent/ScheduledExecutorService;
    .registers 1

    invoke-static {}, Lcom/google/firebase/concurrent/ExecutorsRegistrar;->s()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic c()Ljava/util/concurrent/ScheduledExecutorService;
    .registers 1

    invoke-static {}, Lcom/google/firebase/concurrent/ExecutorsRegistrar;->r()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic d()Ljava/util/concurrent/ScheduledExecutorService;
    .registers 1

    invoke-static {}, Lcom/google/firebase/concurrent/ExecutorsRegistrar;->q()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic e(Lk5/e;)Ljava/util/concurrent/Executor;
    .registers 1

    invoke-static {p0}, Lcom/google/firebase/concurrent/ExecutorsRegistrar;->o(Lk5/e;)Ljava/util/concurrent/Executor;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic f(Lk5/e;)Ljava/util/concurrent/ScheduledExecutorService;
    .registers 1

    invoke-static {p0}, Lcom/google/firebase/concurrent/ExecutorsRegistrar;->n(Lk5/e;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic g()Ljava/util/concurrent/ScheduledExecutorService;
    .registers 1

    invoke-static {}, Lcom/google/firebase/concurrent/ExecutorsRegistrar;->p()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic h(Lk5/e;)Ljava/util/concurrent/ScheduledExecutorService;
    .registers 1

    invoke-static {p0}, Lcom/google/firebase/concurrent/ExecutorsRegistrar;->l(Lk5/e;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object p0

    return-object p0
.end method

.method private static i()Landroid/os/StrictMode$ThreadPolicy;
    .registers 3

    .line 1
    new-instance v0, Landroid/os/StrictMode$ThreadPolicy$Builder;

    invoke-direct {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;-><init>()V

    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->detectNetwork()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v0

    .line 2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_19

    .line 3
    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->detectResourceMismatches()Landroid/os/StrictMode$ThreadPolicy$Builder;

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_19

    .line 4
    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->detectUnbufferedIo()Landroid/os/StrictMode$ThreadPolicy$Builder;

    .line 5
    :cond_19
    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->penaltyLog()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->build()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    return-object v0
.end method

.method private static j(Ljava/lang/String;I)Ljava/util/concurrent/ThreadFactory;
    .registers 4

    .line 1
    new-instance v0, Lcom/google/firebase/concurrent/b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/google/firebase/concurrent/b;-><init>(Ljava/lang/String;ILandroid/os/StrictMode$ThreadPolicy;)V

    return-object v0
.end method

.method private static k(Ljava/lang/String;ILandroid/os/StrictMode$ThreadPolicy;)Ljava/util/concurrent/ThreadFactory;
    .registers 4

    .line 1
    new-instance v0, Lcom/google/firebase/concurrent/b;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/firebase/concurrent/b;-><init>(Ljava/lang/String;ILandroid/os/StrictMode$ThreadPolicy;)V

    return-object v0
.end method

.method private static synthetic l(Lk5/e;)Ljava/util/concurrent/ScheduledExecutorService;
    .registers 1

    .line 1
    sget-object p0, Lcom/google/firebase/concurrent/ExecutorsRegistrar;->a:Lk5/x;

    invoke-virtual {p0}, Lk5/x;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/concurrent/ScheduledExecutorService;

    return-object p0
.end method

.method private static synthetic m(Lk5/e;)Ljava/util/concurrent/ScheduledExecutorService;
    .registers 1

    .line 1
    sget-object p0, Lcom/google/firebase/concurrent/ExecutorsRegistrar;->c:Lk5/x;

    invoke-virtual {p0}, Lk5/x;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/concurrent/ScheduledExecutorService;

    return-object p0
.end method

.method private static synthetic n(Lk5/e;)Ljava/util/concurrent/ScheduledExecutorService;
    .registers 1

    .line 1
    sget-object p0, Lcom/google/firebase/concurrent/ExecutorsRegistrar;->b:Lk5/x;

    invoke-virtual {p0}, Lk5/x;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/concurrent/ScheduledExecutorService;

    return-object p0
.end method

.method private static synthetic o(Lk5/e;)Ljava/util/concurrent/Executor;
    .registers 1

    .line 1
    sget-object p0, Ll5/k;->o:Ll5/k;

    return-object p0
.end method

.method private static synthetic p()Ljava/util/concurrent/ScheduledExecutorService;
    .registers 3

    .line 1
    invoke-static {}, Lcom/google/firebase/concurrent/ExecutorsRegistrar;->i()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    const-string v1, "Firebase Background"

    const/16 v2, 0xa

    .line 2
    invoke-static {v1, v2, v0}, Lcom/google/firebase/concurrent/ExecutorsRegistrar;->k(Ljava/lang/String;ILandroid/os/StrictMode$ThreadPolicy;)Ljava/util/concurrent/ThreadFactory;

    move-result-object v0

    const/4 v1, 0x4

    .line 3
    invoke-static {v1, v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    .line 4
    invoke-static {v0}, Lcom/google/firebase/concurrent/ExecutorsRegistrar;->u(Ljava/util/concurrent/ExecutorService;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    return-object v0
.end method

.method private static synthetic q()Ljava/util/concurrent/ScheduledExecutorService;
    .registers 4

    .line 1
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    const/4 v1, 0x2

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 2
    invoke-static {}, Lcom/google/firebase/concurrent/ExecutorsRegistrar;->t()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v1

    const-string v2, "Firebase Lite"

    const/4 v3, 0x0

    invoke-static {v2, v3, v1}, Lcom/google/firebase/concurrent/ExecutorsRegistrar;->k(Ljava/lang/String;ILandroid/os/StrictMode$ThreadPolicy;)Ljava/util/concurrent/ThreadFactory;

    move-result-object v1

    .line 3
    invoke-static {v0, v1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    .line 4
    invoke-static {v0}, Lcom/google/firebase/concurrent/ExecutorsRegistrar;->u(Ljava/util/concurrent/ExecutorService;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    return-object v0
.end method

.method private static synthetic r()Ljava/util/concurrent/ScheduledExecutorService;
    .registers 2

    const-string v0, "Firebase Blocking"

    const/16 v1, 0xb

    .line 1
    invoke-static {v0, v1}, Lcom/google/firebase/concurrent/ExecutorsRegistrar;->j(Ljava/lang/String;I)Ljava/util/concurrent/ThreadFactory;

    move-result-object v0

    .line 2
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newCachedThreadPool(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    .line 3
    invoke-static {v0}, Lcom/google/firebase/concurrent/ExecutorsRegistrar;->u(Ljava/util/concurrent/ExecutorService;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    return-object v0
.end method

.method private static synthetic s()Ljava/util/concurrent/ScheduledExecutorService;
    .registers 2

    const-string v0, "Firebase Scheduler"

    const/4 v1, 0x0

    .line 1
    invoke-static {v0, v1}, Lcom/google/firebase/concurrent/ExecutorsRegistrar;->j(Ljava/lang/String;I)Ljava/util/concurrent/ThreadFactory;

    move-result-object v0

    .line 2
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    return-object v0
.end method

.method private static t()Landroid/os/StrictMode$ThreadPolicy;
    .registers 1

    .line 1
    new-instance v0, Landroid/os/StrictMode$ThreadPolicy$Builder;

    invoke-direct {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;-><init>()V

    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->detectAll()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->penaltyLog()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->build()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    return-object v0
.end method

.method private static u(Ljava/util/concurrent/ExecutorService;)Ljava/util/concurrent/ScheduledExecutorService;
    .registers 3

    .line 1
    new-instance v0, Lcom/google/firebase/concurrent/o;

    sget-object v1, Lcom/google/firebase/concurrent/ExecutorsRegistrar;->d:Lk5/x;

    invoke-virtual {v1}, Lk5/x;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/ScheduledExecutorService;

    invoke-direct {v0, p0, v1}, Lcom/google/firebase/concurrent/o;-><init>(Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/ScheduledExecutorService;)V

    return-object v0
.end method


# virtual methods
.method public getComponents()Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lk5/c<",
            "*>;>;"
        }
    .end annotation

    const/4 v0, 0x4

    new-array v0, v0, [Lk5/c;

    .line 1
    const-class v1, Lf5/a;

    const-class v2, Ljava/util/concurrent/ScheduledExecutorService;

    .line 2
    invoke-static {v1, v2}, Lk5/f0;->a(Ljava/lang/Class;Ljava/lang/Class;)Lk5/f0;

    move-result-object v1

    const/4 v2, 0x2

    new-array v3, v2, [Lk5/f0;

    const-class v4, Lf5/a;

    const-class v5, Ljava/util/concurrent/ExecutorService;

    .line 3
    invoke-static {v4, v5}, Lk5/f0;->a(Ljava/lang/Class;Ljava/lang/Class;)Lk5/f0;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-class v4, Lf5/a;

    const-class v6, Ljava/util/concurrent/Executor;

    .line 4
    invoke-static {v4, v6}, Lk5/f0;->a(Ljava/lang/Class;Ljava/lang/Class;)Lk5/f0;

    move-result-object v4

    const/4 v6, 0x1

    aput-object v4, v3, v6

    .line 5
    invoke-static {v1, v3}, Lk5/c;->f(Lk5/f0;[Lk5/f0;)Lk5/c$b;

    move-result-object v1

    sget-object v3, Ll5/d;->a:Ll5/d;

    .line 6
    invoke-virtual {v1, v3}, Lk5/c$b;->f(Lk5/h;)Lk5/c$b;

    move-result-object v1

    .line 7
    invoke-virtual {v1}, Lk5/c$b;->d()Lk5/c;

    move-result-object v1

    aput-object v1, v0, v5

    const-class v1, Lf5/b;

    const-class v3, Ljava/util/concurrent/ScheduledExecutorService;

    .line 8
    invoke-static {v1, v3}, Lk5/f0;->a(Ljava/lang/Class;Ljava/lang/Class;)Lk5/f0;

    move-result-object v1

    new-array v3, v2, [Lk5/f0;

    const-class v4, Lf5/b;

    const-class v7, Ljava/util/concurrent/ExecutorService;

    .line 9
    invoke-static {v4, v7}, Lk5/f0;->a(Ljava/lang/Class;Ljava/lang/Class;)Lk5/f0;

    move-result-object v4

    aput-object v4, v3, v5

    const-class v4, Lf5/b;

    const-class v7, Ljava/util/concurrent/Executor;

    .line 10
    invoke-static {v4, v7}, Lk5/f0;->a(Ljava/lang/Class;Ljava/lang/Class;)Lk5/f0;

    move-result-object v4

    aput-object v4, v3, v6

    .line 11
    invoke-static {v1, v3}, Lk5/c;->f(Lk5/f0;[Lk5/f0;)Lk5/c$b;

    move-result-object v1

    sget-object v3, Ll5/a;->a:Ll5/a;

    .line 12
    invoke-virtual {v1, v3}, Lk5/c$b;->f(Lk5/h;)Lk5/c$b;

    move-result-object v1

    .line 13
    invoke-virtual {v1}, Lk5/c$b;->d()Lk5/c;

    move-result-object v1

    aput-object v1, v0, v6

    const-class v1, Lf5/c;

    const-class v3, Ljava/util/concurrent/ScheduledExecutorService;

    .line 14
    invoke-static {v1, v3}, Lk5/f0;->a(Ljava/lang/Class;Ljava/lang/Class;)Lk5/f0;

    move-result-object v1

    new-array v3, v2, [Lk5/f0;

    const-class v4, Lf5/c;

    const-class v7, Ljava/util/concurrent/ExecutorService;

    .line 15
    invoke-static {v4, v7}, Lk5/f0;->a(Ljava/lang/Class;Ljava/lang/Class;)Lk5/f0;

    move-result-object v4

    aput-object v4, v3, v5

    const-class v4, Lf5/c;

    const-class v5, Ljava/util/concurrent/Executor;

    .line 16
    invoke-static {v4, v5}, Lk5/f0;->a(Ljava/lang/Class;Ljava/lang/Class;)Lk5/f0;

    move-result-object v4

    aput-object v4, v3, v6

    .line 17
    invoke-static {v1, v3}, Lk5/c;->f(Lk5/f0;[Lk5/f0;)Lk5/c$b;

    move-result-object v1

    sget-object v3, Ll5/c;->a:Ll5/c;

    .line 18
    invoke-virtual {v1, v3}, Lk5/c$b;->f(Lk5/h;)Lk5/c$b;

    move-result-object v1

    .line 19
    invoke-virtual {v1}, Lk5/c$b;->d()Lk5/c;

    move-result-object v1

    aput-object v1, v0, v2

    const-class v1, Lf5/d;

    const-class v2, Ljava/util/concurrent/Executor;

    .line 20
    invoke-static {v1, v2}, Lk5/f0;->a(Ljava/lang/Class;Ljava/lang/Class;)Lk5/f0;

    move-result-object v1

    invoke-static {v1}, Lk5/c;->e(Lk5/f0;)Lk5/c$b;

    move-result-object v1

    sget-object v2, Ll5/b;->a:Ll5/b;

    .line 21
    invoke-virtual {v1, v2}, Lk5/c$b;->f(Lk5/h;)Lk5/c$b;

    move-result-object v1

    .line 22
    invoke-virtual {v1}, Lk5/c$b;->d()Lk5/c;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 23
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

###### Class l5.a (l5.a)
.class public final synthetic Ll5/a;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lk5/h;


# static fields
.field public static final synthetic a:Ll5/a;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Ll5/a;

    invoke-direct {v0}, Ll5/a;-><init>()V

    sput-object v0, Ll5/a;->a:Ll5/a;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lk5/e;)Ljava/lang/Object;
    .registers 2

    invoke-static {p1}, Lcom/google/firebase/concurrent/ExecutorsRegistrar;->a(Lk5/e;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object p1

    return-object p1
.end method

###### Class l5.b (l5.b)
.class public final synthetic Ll5/b;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lk5/h;


# static fields
.field public static final synthetic a:Ll5/b;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Ll5/b;

    invoke-direct {v0}, Ll5/b;-><init>()V

    sput-object v0, Ll5/b;->a:Ll5/b;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lk5/e;)Ljava/lang/Object;
    .registers 2

    invoke-static {p1}, Lcom/google/firebase/concurrent/ExecutorsRegistrar;->e(Lk5/e;)Ljava/util/concurrent/Executor;

    move-result-object p1

    return-object p1
.end method

###### Class l5.c (l5.c)
.class public final synthetic Ll5/c;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lk5/h;


# static fields
.field public static final synthetic a:Ll5/c;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Ll5/c;

    invoke-direct {v0}, Ll5/c;-><init>()V

    sput-object v0, Ll5/c;->a:Ll5/c;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lk5/e;)Ljava/lang/Object;
    .registers 2

    invoke-static {p1}, Lcom/google/firebase/concurrent/ExecutorsRegistrar;->f(Lk5/e;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object p1

    return-object p1
.end method

###### Class l5.d (l5.d)
.class public final synthetic Ll5/d;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lk5/h;


# static fields
.field public static final synthetic a:Ll5/d;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Ll5/d;

    invoke-direct {v0}, Ll5/d;-><init>()V

    sput-object v0, Ll5/d;->a:Ll5/d;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lk5/e;)Ljava/lang/Object;
    .registers 2

    invoke-static {p1}, Lcom/google/firebase/concurrent/ExecutorsRegistrar;->h(Lk5/e;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object p1

    return-object p1
.end method

###### Class l5.e (l5.e)
.class public final synthetic Ll5/e;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lk6/b;


# static fields
.field public static final synthetic a:Ll5/e;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Ll5/e;

    invoke-direct {v0}, Ll5/e;-><init>()V

    sput-object v0, Ll5/e;->a:Ll5/e;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 2

    invoke-static {}, Lcom/google/firebase/concurrent/ExecutorsRegistrar;->b()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    return-object v0
.end method

###### Class l5.f (l5.f)
.class public final synthetic Ll5/f;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lk6/b;


# static fields
.field public static final synthetic a:Ll5/f;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Ll5/f;

    invoke-direct {v0}, Ll5/f;-><init>()V

    sput-object v0, Ll5/f;->a:Ll5/f;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 2

    invoke-static {}, Lcom/google/firebase/concurrent/ExecutorsRegistrar;->c()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    return-object v0
.end method

###### Class l5.g (l5.g)
.class public final synthetic Ll5/g;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lk6/b;


# static fields
.field public static final synthetic a:Ll5/g;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Ll5/g;

    invoke-direct {v0}, Ll5/g;-><init>()V

    sput-object v0, Ll5/g;->a:Ll5/g;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 2

    invoke-static {}, Lcom/google/firebase/concurrent/ExecutorsRegistrar;->d()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    return-object v0
.end method

###### Class l5.h (l5.h)
.class public final synthetic Ll5/h;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lk6/b;


# static fields
.field public static final synthetic a:Ll5/h;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Ll5/h;

    invoke-direct {v0}, Ll5/h;-><init>()V

    sput-object v0, Ll5/h;->a:Ll5/h;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 2

    invoke-static {}, Lcom/google/firebase/concurrent/ExecutorsRegistrar;->g()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    return-object v0
.end method
