###### Class androidx.lifecycle.w (androidx.lifecycle.w)
.class public Landroidx/lifecycle/w;
.super Ljava/lang/Object;
.source "ProcessLifecycleOwner.java"

# interfaces
.implements Landroidx/lifecycle/n;


# static fields
.field private static final w:Landroidx/lifecycle/w;


# instance fields
.field private o:I

.field private p:I

.field private q:Z

.field private r:Z

.field private s:Landroid/os/Handler;

.field private final t:Landroidx/lifecycle/o;

.field private u:Ljava/lang/Runnable;

.field v:Landroidx/lifecycle/x$a;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Landroidx/lifecycle/w;

    invoke-direct {v0}, Landroidx/lifecycle/w;-><init>()V

    sput-object v0, Landroidx/lifecycle/w;->w:Landroidx/lifecycle/w;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Landroidx/lifecycle/w;->o:I

    .line 3
    iput v0, p0, Landroidx/lifecycle/w;->p:I

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Landroidx/lifecycle/w;->q:Z

    .line 5
    iput-boolean v0, p0, Landroidx/lifecycle/w;->r:Z

    .line 6
    new-instance v0, Landroidx/lifecycle/o;

    invoke-direct {v0, p0}, Landroidx/lifecycle/o;-><init>(Landroidx/lifecycle/n;)V

    iput-object v0, p0, Landroidx/lifecycle/w;->t:Landroidx/lifecycle/o;

    .line 7
    new-instance v0, Landroidx/lifecycle/w$a;

    invoke-direct {v0, p0}, Landroidx/lifecycle/w$a;-><init>(Landroidx/lifecycle/w;)V

    iput-object v0, p0, Landroidx/lifecycle/w;->u:Ljava/lang/Runnable;

    .line 8
    new-instance v0, Landroidx/lifecycle/w$b;

    invoke-direct {v0, p0}, Landroidx/lifecycle/w$b;-><init>(Landroidx/lifecycle/w;)V

    iput-object v0, p0, Landroidx/lifecycle/w;->v:Landroidx/lifecycle/x$a;

    return-void
.end method

.method public static h()Landroidx/lifecycle/n;
    .registers 1

    .line 1
    sget-object v0, Landroidx/lifecycle/w;->w:Landroidx/lifecycle/w;

    return-object v0
.end method

.method static i(Landroid/content/Context;)V
    .registers 2

    .line 1
    sget-object v0, Landroidx/lifecycle/w;->w:Landroidx/lifecycle/w;

    invoke-virtual {v0, p0}, Landroidx/lifecycle/w;->e(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method a()V
    .registers 5

    .line 1
    iget v0, p0, Landroidx/lifecycle/w;->p:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroidx/lifecycle/w;->p:I

    if-nez v0, :cond_11

    .line 2
    iget-object v0, p0, Landroidx/lifecycle/w;->s:Landroid/os/Handler;

    iget-object v1, p0, Landroidx/lifecycle/w;->u:Ljava/lang/Runnable;

    const-wide/16 v2, 0x2bc

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_11
    return-void
.end method

.method b()V
    .registers 3

    .line 1
    iget v0, p0, Landroidx/lifecycle/w;->p:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Landroidx/lifecycle/w;->p:I

    if-ne v0, v1, :cond_1e

    .line 2
    iget-boolean v0, p0, Landroidx/lifecycle/w;->q:Z

    if-eqz v0, :cond_17

    .line 3
    iget-object v0, p0, Landroidx/lifecycle/w;->t:Landroidx/lifecycle/o;

    sget-object v1, Landroidx/lifecycle/j$b;->ON_RESUME:Landroidx/lifecycle/j$b;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/o;->h(Landroidx/lifecycle/j$b;)V

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Landroidx/lifecycle/w;->q:Z

    goto :goto_1e

    .line 5
    :cond_17
    iget-object v0, p0, Landroidx/lifecycle/w;->s:Landroid/os/Handler;

    iget-object v1, p0, Landroidx/lifecycle/w;->u:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_1e
    :goto_1e
    return-void
.end method

.method c()V
    .registers 3

    .line 1
    iget v0, p0, Landroidx/lifecycle/w;->o:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Landroidx/lifecycle/w;->o:I

    if-ne v0, v1, :cond_16

    .line 2
    iget-boolean v0, p0, Landroidx/lifecycle/w;->r:Z

    if-eqz v0, :cond_16

    .line 3
    iget-object v0, p0, Landroidx/lifecycle/w;->t:Landroidx/lifecycle/o;

    sget-object v1, Landroidx/lifecycle/j$b;->ON_START:Landroidx/lifecycle/j$b;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/o;->h(Landroidx/lifecycle/j$b;)V

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Landroidx/lifecycle/w;->r:Z

    :cond_16
    return-void
.end method

.method d()V
    .registers 2

    .line 1
    iget v0, p0, Landroidx/lifecycle/w;->o:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroidx/lifecycle/w;->o:I

    .line 2
    invoke-virtual {p0}, Landroidx/lifecycle/w;->g()V

    return-void
.end method

.method e(Landroid/content/Context;)V
    .registers 4

    .line 1
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Landroidx/lifecycle/w;->s:Landroid/os/Handler;

    .line 2
    iget-object v0, p0, Landroidx/lifecycle/w;->t:Landroidx/lifecycle/o;

    sget-object v1, Landroidx/lifecycle/j$b;->ON_CREATE:Landroidx/lifecycle/j$b;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/o;->h(Landroidx/lifecycle/j$b;)V

    .line 3
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Application;

    .line 4
    new-instance v0, Landroidx/lifecycle/w$c;

    invoke-direct {v0, p0}, Landroidx/lifecycle/w$c;-><init>(Landroidx/lifecycle/w;)V

    invoke-virtual {p1, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    return-void
.end method

.method f()V
    .registers 3

    .line 1
    iget v0, p0, Landroidx/lifecycle/w;->p:I

    if-nez v0, :cond_e

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroidx/lifecycle/w;->q:Z

    .line 3
    iget-object v0, p0, Landroidx/lifecycle/w;->t:Landroidx/lifecycle/o;

    sget-object v1, Landroidx/lifecycle/j$b;->ON_PAUSE:Landroidx/lifecycle/j$b;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/o;->h(Landroidx/lifecycle/j$b;)V

    :cond_e
    return-void
.end method

.method g()V
    .registers 3

    .line 1
    iget v0, p0, Landroidx/lifecycle/w;->o:I

    if-nez v0, :cond_12

    iget-boolean v0, p0, Landroidx/lifecycle/w;->q:Z

    if-eqz v0, :cond_12

    .line 2
    iget-object v0, p0, Landroidx/lifecycle/w;->t:Landroidx/lifecycle/o;

    sget-object v1, Landroidx/lifecycle/j$b;->ON_STOP:Landroidx/lifecycle/j$b;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/o;->h(Landroidx/lifecycle/j$b;)V

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Landroidx/lifecycle/w;->r:Z

    :cond_12
    return-void
.end method

.method public getLifecycle()Landroidx/lifecycle/j;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/lifecycle/w;->t:Landroidx/lifecycle/o;

    return-object v0
.end method

###### Class androidx.lifecycle.w.a (androidx.lifecycle.w$a)
.class Landroidx/lifecycle/w$a;
.super Ljava/lang/Object;
.source "ProcessLifecycleOwner.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/lifecycle/w;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic o:Landroidx/lifecycle/w;


# direct methods
.method constructor <init>(Landroidx/lifecycle/w;)V
    .registers 2

    .line 1
    iput-object p1, p0, Landroidx/lifecycle/w$a;->o:Landroidx/lifecycle/w;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/lifecycle/w$a;->o:Landroidx/lifecycle/w;

    invoke-virtual {v0}, Landroidx/lifecycle/w;->f()V

    .line 2
    iget-object v0, p0, Landroidx/lifecycle/w$a;->o:Landroidx/lifecycle/w;

    invoke-virtual {v0}, Landroidx/lifecycle/w;->g()V

    return-void
.end method

###### Class androidx.lifecycle.w.b (androidx.lifecycle.w$b)
.class Landroidx/lifecycle/w$b;
.super Ljava/lang/Object;
.source "ProcessLifecycleOwner.java"

# interfaces
.implements Landroidx/lifecycle/x$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/lifecycle/w;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/lifecycle/w;


# direct methods
.method constructor <init>(Landroidx/lifecycle/w;)V
    .registers 2

    .line 1
    iput-object p1, p0, Landroidx/lifecycle/w$b;->a:Landroidx/lifecycle/w;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b()V
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/lifecycle/w$b;->a:Landroidx/lifecycle/w;

    invoke-virtual {v0}, Landroidx/lifecycle/w;->c()V

    return-void
.end method

.method public c()V
    .registers 1

    return-void
.end method

.method public onResume()V
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/lifecycle/w$b;->a:Landroidx/lifecycle/w;

    invoke-virtual {v0}, Landroidx/lifecycle/w;->b()V

    return-void
.end method

###### Class androidx.lifecycle.w.c (androidx.lifecycle.w$c)
.class Landroidx/lifecycle/w$c;
.super Landroidx/lifecycle/e;
.source "ProcessLifecycleOwner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/lifecycle/w;->e(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/lifecycle/w;


# direct methods
.method constructor <init>(Landroidx/lifecycle/w;)V
    .registers 2

    .line 1
    iput-object p1, p0, Landroidx/lifecycle/w$c;->this$0:Landroidx/lifecycle/w;

    invoke-direct {p0}, Landroidx/lifecycle/e;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 4

    .line 1
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1d

    if-ge p2, v0, :cond_11

    .line 2
    invoke-static {p1}, Landroidx/lifecycle/x;->f(Landroid/app/Activity;)Landroidx/lifecycle/x;

    move-result-object p1

    iget-object p2, p0, Landroidx/lifecycle/w$c;->this$0:Landroidx/lifecycle/w;

    iget-object p2, p2, Landroidx/lifecycle/w;->v:Landroidx/lifecycle/x$a;

    invoke-virtual {p1, p2}, Landroidx/lifecycle/x;->h(Landroidx/lifecycle/x$a;)V

    :cond_11
    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .registers 2

    .line 1
    iget-object p1, p0, Landroidx/lifecycle/w$c;->this$0:Landroidx/lifecycle/w;

    invoke-virtual {p1}, Landroidx/lifecycle/w;->a()V

    return-void
.end method

.method public onActivityPreCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 3

    .line 1
    new-instance p2, Landroidx/lifecycle/w$c$a;

    invoke-direct {p2, p0}, Landroidx/lifecycle/w$c$a;-><init>(Landroidx/lifecycle/w$c;)V

    invoke-virtual {p1, p2}, Landroid/app/Activity;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .registers 2

    .line 1
    iget-object p1, p0, Landroidx/lifecycle/w$c;->this$0:Landroidx/lifecycle/w;

    invoke-virtual {p1}, Landroidx/lifecycle/w;->d()V

    return-void
.end method

###### Class androidx.lifecycle.w.c.a (androidx.lifecycle.w$c$a)
.class Landroidx/lifecycle/w$c$a;
.super Landroidx/lifecycle/e;
.source "ProcessLifecycleOwner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/lifecycle/w$c;->onActivityPreCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroidx/lifecycle/w$c;


# direct methods
.method constructor <init>(Landroidx/lifecycle/w$c;)V
    .registers 2

    .line 1
    iput-object p1, p0, Landroidx/lifecycle/w$c$a;->this$1:Landroidx/lifecycle/w$c;

    invoke-direct {p0}, Landroidx/lifecycle/e;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityPostResumed(Landroid/app/Activity;)V
    .registers 2

    .line 1
    iget-object p1, p0, Landroidx/lifecycle/w$c$a;->this$1:Landroidx/lifecycle/w$c;

    iget-object p1, p1, Landroidx/lifecycle/w$c;->this$0:Landroidx/lifecycle/w;

    invoke-virtual {p1}, Landroidx/lifecycle/w;->b()V

    return-void
.end method

.method public onActivityPostStarted(Landroid/app/Activity;)V
    .registers 2

    .line 1
    iget-object p1, p0, Landroidx/lifecycle/w$c$a;->this$1:Landroidx/lifecycle/w$c;

    iget-object p1, p1, Landroidx/lifecycle/w$c;->this$0:Landroidx/lifecycle/w;

    invoke-virtual {p1}, Landroidx/lifecycle/w;->c()V

    return-void
.end method
