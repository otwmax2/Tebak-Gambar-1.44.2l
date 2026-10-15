###### Class s1.b (s1.b)
.class public Ls1/b;
.super Ljava/lang/Object;
.source "WorkManagerTaskExecutor.java"

# interfaces
.implements Ls1/a;


# instance fields
.field private final a:Lr1/g;

.field private final b:Landroid/os/Handler;

.field private final c:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Ls1/b;->b:Landroid/os/Handler;

    .line 3
    new-instance v0, Ls1/b$a;

    invoke-direct {v0, p0}, Ls1/b$a;-><init>(Ls1/b;)V

    iput-object v0, p0, Ls1/b;->c:Ljava/util/concurrent/Executor;

    .line 4
    new-instance v0, Lr1/g;

    invoke-direct {v0, p1}, Lr1/g;-><init>(Ljava/util/concurrent/Executor;)V

    iput-object v0, p0, Ls1/b;->a:Lr1/g;

    return-void
.end method


# virtual methods
.method public a()Ljava/util/concurrent/Executor;
    .registers 2

    .line 1
    iget-object v0, p0, Ls1/b;->c:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method public b(Ljava/lang/Runnable;)V
    .registers 3

    .line 1
    iget-object v0, p0, Ls1/b;->a:Lr1/g;

    invoke-virtual {v0, p1}, Lr1/g;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public c(Ljava/lang/Runnable;)V
    .registers 3

    .line 1
    iget-object v0, p0, Ls1/b;->b:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public getBackgroundExecutor()Lr1/g;
    .registers 2

    .line 1
    iget-object v0, p0, Ls1/b;->a:Lr1/g;

    return-object v0
.end method

###### Class s1.b.a (s1.b$a)
.class Ls1/b$a;
.super Ljava/lang/Object;
.source "WorkManagerTaskExecutor.java"

# interfaces
.implements Ljava/util/concurrent/Executor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ls1/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic o:Ls1/b;


# direct methods
.method constructor <init>(Ls1/b;)V
    .registers 2

    .line 1
    iput-object p1, p0, Ls1/b$a;->o:Ls1/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .registers 3

    .line 1
    iget-object v0, p0, Ls1/b$a;->o:Ls1/b;

    invoke-virtual {v0, p1}, Ls1/b;->c(Ljava/lang/Runnable;)V

    return-void
.end method
