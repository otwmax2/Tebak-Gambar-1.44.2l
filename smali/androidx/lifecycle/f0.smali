###### Class androidx.lifecycle.f0 (androidx.lifecycle.f0)
.class public Landroidx/lifecycle/f0;
.super Ljava/lang/Object;
.source "ServiceLifecycleDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/lifecycle/f0$a;
    }
.end annotation


# instance fields
.field private final a:Landroidx/lifecycle/o;

.field private final b:Landroid/os/Handler;

.field private c:Landroidx/lifecycle/f0$a;


# direct methods
.method public constructor <init>(Landroidx/lifecycle/n;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroidx/lifecycle/o;

    invoke-direct {v0, p1}, Landroidx/lifecycle/o;-><init>(Landroidx/lifecycle/n;)V

    iput-object v0, p0, Landroidx/lifecycle/f0;->a:Landroidx/lifecycle/o;

    .line 3
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Landroidx/lifecycle/f0;->b:Landroid/os/Handler;

    return-void
.end method

.method private f(Landroidx/lifecycle/j$b;)V
    .registers 4

    .line 1
    iget-object v0, p0, Landroidx/lifecycle/f0;->c:Landroidx/lifecycle/f0$a;

    if-eqz v0, :cond_7

    .line 2
    invoke-virtual {v0}, Landroidx/lifecycle/f0$a;->run()V

    .line 3
    :cond_7
    new-instance v0, Landroidx/lifecycle/f0$a;

    iget-object v1, p0, Landroidx/lifecycle/f0;->a:Landroidx/lifecycle/o;

    invoke-direct {v0, v1, p1}, Landroidx/lifecycle/f0$a;-><init>(Landroidx/lifecycle/o;Landroidx/lifecycle/j$b;)V

    iput-object v0, p0, Landroidx/lifecycle/f0;->c:Landroidx/lifecycle/f0$a;

    .line 4
    iget-object p1, p0, Landroidx/lifecycle/f0;->b:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public a()Landroidx/lifecycle/j;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/lifecycle/f0;->a:Landroidx/lifecycle/o;

    return-object v0
.end method

.method public b()V
    .registers 2

    .line 1
    sget-object v0, Landroidx/lifecycle/j$b;->ON_START:Landroidx/lifecycle/j$b;

    invoke-direct {p0, v0}, Landroidx/lifecycle/f0;->f(Landroidx/lifecycle/j$b;)V

    return-void
.end method

.method public c()V
    .registers 2

    .line 1
    sget-object v0, Landroidx/lifecycle/j$b;->ON_CREATE:Landroidx/lifecycle/j$b;

    invoke-direct {p0, v0}, Landroidx/lifecycle/f0;->f(Landroidx/lifecycle/j$b;)V

    return-void
.end method

.method public d()V
    .registers 2

    .line 1
    sget-object v0, Landroidx/lifecycle/j$b;->ON_STOP:Landroidx/lifecycle/j$b;

    invoke-direct {p0, v0}, Landroidx/lifecycle/f0;->f(Landroidx/lifecycle/j$b;)V

    .line 2
    sget-object v0, Landroidx/lifecycle/j$b;->ON_DESTROY:Landroidx/lifecycle/j$b;

    invoke-direct {p0, v0}, Landroidx/lifecycle/f0;->f(Landroidx/lifecycle/j$b;)V

    return-void
.end method

.method public e()V
    .registers 2

    .line 1
    sget-object v0, Landroidx/lifecycle/j$b;->ON_START:Landroidx/lifecycle/j$b;

    invoke-direct {p0, v0}, Landroidx/lifecycle/f0;->f(Landroidx/lifecycle/j$b;)V

    return-void
.end method

###### Class androidx.lifecycle.f0.a (androidx.lifecycle.f0$a)
.class Landroidx/lifecycle/f0$a;
.super Ljava/lang/Object;
.source "ServiceLifecycleDispatcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/lifecycle/f0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private final o:Landroidx/lifecycle/o;

.field final p:Landroidx/lifecycle/j$b;

.field private q:Z


# direct methods
.method constructor <init>(Landroidx/lifecycle/o;Landroidx/lifecycle/j$b;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Landroidx/lifecycle/f0$a;->q:Z

    .line 3
    iput-object p1, p0, Landroidx/lifecycle/f0$a;->o:Landroidx/lifecycle/o;

    .line 4
    iput-object p2, p0, Landroidx/lifecycle/f0$a;->p:Landroidx/lifecycle/j$b;

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 1
    iget-boolean v0, p0, Landroidx/lifecycle/f0$a;->q:Z

    if-nez v0, :cond_e

    .line 2
    iget-object v0, p0, Landroidx/lifecycle/f0$a;->o:Landroidx/lifecycle/o;

    iget-object v1, p0, Landroidx/lifecycle/f0$a;->p:Landroidx/lifecycle/j$b;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/o;->h(Landroidx/lifecycle/j$b;)V

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Landroidx/lifecycle/f0$a;->q:Z

    :cond_e
    return-void
.end method
