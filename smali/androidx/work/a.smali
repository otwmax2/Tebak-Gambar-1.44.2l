###### Class androidx.work.a (androidx.work.a)
.class public final Landroidx/work/a;
.super Ljava/lang/Object;
.source "Configuration.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/work/a$c;,
        Landroidx/work/a$b;
    }
.end annotation


# instance fields
.field final a:Ljava/util/concurrent/Executor;

.field final b:Ljava/util/concurrent/Executor;

.field final c:Li1/v;

.field final d:Li1/i;

.field final e:Li1/q;

.field final f:Li1/g;

.field final g:Ljava/lang/String;

.field final h:I

.field final i:I

.field final j:I

.field final k:I

.field private final l:Z


# direct methods
.method constructor <init>(Landroidx/work/a$b;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iget-object v0, p1, Landroidx/work/a$b;->a:Ljava/util/concurrent/Executor;

    const/4 v1, 0x0

    if-nez v0, :cond_f

    .line 3
    invoke-direct {p0, v1}, Landroidx/work/a;->a(Z)Ljava/util/concurrent/Executor;

    move-result-object v0

    iput-object v0, p0, Landroidx/work/a;->a:Ljava/util/concurrent/Executor;

    goto :goto_11

    .line 4
    :cond_f
    iput-object v0, p0, Landroidx/work/a;->a:Ljava/util/concurrent/Executor;

    .line 5
    :goto_11
    iget-object v0, p1, Landroidx/work/a$b;->d:Ljava/util/concurrent/Executor;

    if-nez v0, :cond_1f

    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Landroidx/work/a;->l:Z

    .line 7
    invoke-direct {p0, v0}, Landroidx/work/a;->a(Z)Ljava/util/concurrent/Executor;

    move-result-object v0

    iput-object v0, p0, Landroidx/work/a;->b:Ljava/util/concurrent/Executor;

    goto :goto_23

    .line 8
    :cond_1f
    iput-boolean v1, p0, Landroidx/work/a;->l:Z

    .line 9
    iput-object v0, p0, Landroidx/work/a;->b:Ljava/util/concurrent/Executor;

    .line 10
    :goto_23
    iget-object v0, p1, Landroidx/work/a$b;->b:Li1/v;

    if-nez v0, :cond_2e

    .line 11
    invoke-static {}, Li1/v;->c()Li1/v;

    move-result-object v0

    iput-object v0, p0, Landroidx/work/a;->c:Li1/v;

    goto :goto_30

    .line 12
    :cond_2e
    iput-object v0, p0, Landroidx/work/a;->c:Li1/v;

    .line 13
    :goto_30
    iget-object v0, p1, Landroidx/work/a$b;->c:Li1/i;

    if-nez v0, :cond_3b

    .line 14
    invoke-static {}, Li1/i;->c()Li1/i;

    move-result-object v0

    iput-object v0, p0, Landroidx/work/a;->d:Li1/i;

    goto :goto_3d

    .line 15
    :cond_3b
    iput-object v0, p0, Landroidx/work/a;->d:Li1/i;

    .line 16
    :goto_3d
    iget-object v0, p1, Landroidx/work/a$b;->e:Li1/q;

    if-nez v0, :cond_49

    .line 17
    new-instance v0, Lj1/a;

    invoke-direct {v0}, Lj1/a;-><init>()V

    iput-object v0, p0, Landroidx/work/a;->e:Li1/q;

    goto :goto_4b

    .line 18
    :cond_49
    iput-object v0, p0, Landroidx/work/a;->e:Li1/q;

    .line 19
    :goto_4b
    iget v0, p1, Landroidx/work/a$b;->h:I

    iput v0, p0, Landroidx/work/a;->h:I

    .line 20
    iget v0, p1, Landroidx/work/a$b;->i:I

    iput v0, p0, Landroidx/work/a;->i:I

    .line 21
    iget v0, p1, Landroidx/work/a$b;->j:I

    iput v0, p0, Landroidx/work/a;->j:I

    .line 22
    iget v0, p1, Landroidx/work/a$b;->k:I

    iput v0, p0, Landroidx/work/a;->k:I

    .line 23
    iget-object v0, p1, Landroidx/work/a$b;->f:Li1/g;

    iput-object v0, p0, Landroidx/work/a;->f:Li1/g;

    .line 24
    iget-object p1, p1, Landroidx/work/a$b;->g:Ljava/lang/String;

    iput-object p1, p0, Landroidx/work/a;->g:Ljava/lang/String;

    return-void
.end method

.method private a(Z)Ljava/util/concurrent/Executor;
    .registers 4

    .line 1
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x4

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x2

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 2
    invoke-direct {p0, p1}, Landroidx/work/a;->b(Z)Ljava/util/concurrent/ThreadFactory;

    move-result-object p1

    .line 3
    invoke-static {v0, p1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    return-object p1
.end method

.method private b(Z)Ljava/util/concurrent/ThreadFactory;
    .registers 3

    .line 1
    new-instance v0, Landroidx/work/a$a;

    invoke-direct {v0, p0, p1}, Landroidx/work/a$a;-><init>(Landroidx/work/a;Z)V

    return-object v0
.end method


# virtual methods
.method public c()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/work/a;->g:Ljava/lang/String;

    return-object v0
.end method

.method public d()Li1/g;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/work/a;->f:Li1/g;

    return-object v0
.end method

.method public e()Ljava/util/concurrent/Executor;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/work/a;->a:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method public f()Li1/i;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/work/a;->d:Li1/i;

    return-object v0
.end method

.method public g()I
    .registers 2

    .line 1
    iget v0, p0, Landroidx/work/a;->j:I

    return v0
.end method

.method public h()I
    .registers 3

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ne v0, v1, :cond_b

    .line 2
    iget v0, p0, Landroidx/work/a;->k:I

    div-int/lit8 v0, v0, 0x2

    return v0

    .line 3
    :cond_b
    iget v0, p0, Landroidx/work/a;->k:I

    return v0
.end method

.method public i()I
    .registers 2

    .line 1
    iget v0, p0, Landroidx/work/a;->i:I

    return v0
.end method

.method public j()I
    .registers 2

    .line 1
    iget v0, p0, Landroidx/work/a;->h:I

    return v0
.end method

.method public k()Li1/q;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/work/a;->e:Li1/q;

    return-object v0
.end method

.method public l()Ljava/util/concurrent/Executor;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/work/a;->b:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method public m()Li1/v;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/work/a;->c:Li1/v;

    return-object v0
.end method

###### Class androidx.work.a.ThreadFactoryC0072a (androidx.work.a$a)
.class Landroidx/work/a$a;
.super Ljava/lang/Object;
.source "Configuration.java"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/work/a;->b(Z)Ljava/util/concurrent/ThreadFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final a:Ljava/util/concurrent/atomic/AtomicInteger;

.field final synthetic b:Z

.field final synthetic c:Landroidx/work/a;


# direct methods
.method constructor <init>(Landroidx/work/a;Z)V
    .registers 3

    .line 1
    iput-object p1, p0, Landroidx/work/a$a;->c:Landroidx/work/a;

    iput-boolean p2, p0, Landroidx/work/a$a;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object p1, p0, Landroidx/work/a$a;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method


# virtual methods
.method public newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .registers 5

    .line 1
    iget-boolean v0, p0, Landroidx/work/a$a;->b:Z

    if-eqz v0, :cond_7

    const-string v0, "WM.task-"

    goto :goto_9

    :cond_7
    const-string v0, "androidx.work-"

    .line 2
    :goto_9
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Landroidx/work/a$a;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-object v1
.end method

###### Class androidx.work.a.b (androidx.work.a$b)
.class public final Landroidx/work/a$b;
.super Ljava/lang/Object;
.source "Configuration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/work/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field a:Ljava/util/concurrent/Executor;

.field b:Li1/v;

.field c:Li1/i;

.field d:Ljava/util/concurrent/Executor;

.field e:Li1/q;

.field f:Li1/g;

.field g:Ljava/lang/String;

.field h:I

.field i:I

.field j:I

.field k:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    .line 2
    iput v0, p0, Landroidx/work/a$b;->h:I

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Landroidx/work/a$b;->i:I

    const v0, 0x7fffffff

    .line 4
    iput v0, p0, Landroidx/work/a$b;->j:I

    const/16 v0, 0x14

    .line 5
    iput v0, p0, Landroidx/work/a$b;->k:I

    return-void
.end method


# virtual methods
.method public a()Landroidx/work/a;
    .registers 2

    .line 1
    new-instance v0, Landroidx/work/a;

    invoke-direct {v0, p0}, Landroidx/work/a;-><init>(Landroidx/work/a$b;)V

    return-object v0
.end method

###### Class androidx.work.a.c (androidx.work.a$c)
.class public interface abstract Landroidx/work/a$c;
.super Ljava/lang/Object;
.source "Configuration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/work/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "c"
.end annotation


# virtual methods
.method public abstract a()Landroidx/work/a;
.end method
