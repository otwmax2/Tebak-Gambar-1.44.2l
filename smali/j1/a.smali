###### Class j1.a (j1.a)
.class public Lj1/a;
.super Ljava/lang/Object;
.source "DefaultRunnableScheduler.java"

# interfaces
.implements Li1/q;


# instance fields
.field private final a:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {v0}, Landroidx/core/os/g;->a(Landroid/os/Looper;)Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lj1/a;->a:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public a(JLjava/lang/Runnable;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lj1/a;->a:Landroid/os/Handler;

    invoke-virtual {v0, p3, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public b(Ljava/lang/Runnable;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lj1/a;->a:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method
