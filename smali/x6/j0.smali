###### Class x6.j0 (x6.j0)
.class public final Lx6/j0;
.super Ljava/lang/Object;
.source "SessionsActivityLifecycleCallbacks.kt"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# static fields
.field public static final o:Lx6/j0;

.field private static p:Z

.field private static q:Lx6/g0;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lx6/j0;

    invoke-direct {v0}, Lx6/j0;-><init>()V

    sput-object v0, Lx6/j0;->o:Lx6/j0;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lx6/g0;)V
    .registers 3

    .line 1
    sput-object p1, Lx6/j0;->q:Lx6/g0;

    if-eqz p1, :cond_e

    .line 2
    sget-boolean v0, Lx6/j0;->p:Z

    if-eqz v0, :cond_e

    const/4 v0, 0x0

    .line 3
    sput-boolean v0, Lx6/j0;->p:Z

    .line 4
    invoke-virtual {p1}, Lx6/g0;->k()V

    :cond_e
    return-void
.end method

.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 3

    const-string p2, "activity"

    invoke-static {p1, p2}, Lt9/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .registers 3

    const-string v0, "activity"

    invoke-static {p1, v0}, Lt9/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .registers 3

    const-string v0, "activity"

    invoke-static {p1, v0}, Lt9/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object p1, Lx6/j0;->q:Lx6/g0;

    if-eqz p1, :cond_c

    invoke-virtual {p1}, Lx6/g0;->h()V

    :cond_c
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .registers 3

    const-string v0, "activity"

    invoke-static {p1, v0}, Lt9/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object p1, Lx6/j0;->q:Lx6/g0;

    if-eqz p1, :cond_f

    invoke-virtual {p1}, Lx6/g0;->k()V

    sget-object p1, Lh9/t;->a:Lh9/t;

    goto :goto_10

    :cond_f
    const/4 p1, 0x0

    :goto_10
    if-nez p1, :cond_15

    const/4 p1, 0x1

    sput-boolean p1, Lx6/j0;->p:Z

    :cond_15
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 4

    const-string v0, "activity"

    invoke-static {p1, v0}, Lt9/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "outState"

    invoke-static {p2, p1}, Lt9/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .registers 3

    const-string v0, "activity"

    invoke-static {p1, v0}, Lt9/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .registers 3

    const-string v0, "activity"

    invoke-static {p1, v0}, Lt9/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
