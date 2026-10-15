###### Class com.vungle.warren.utility.HandlerScheduler (com.vungle.warren.utility.HandlerScheduler)
.class public Lcom/vungle/warren/utility/HandlerScheduler;
.super Ljava/lang/Object;
.source "HandlerScheduler.java"

# interfaces
.implements Lcom/vungle/warren/utility/Scheduler;


# instance fields
.field private a:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/vungle/warren/utility/HandlerScheduler;->a:Landroid/os/Handler;

    return-void
.end method

.method private a(J)J
    .registers 5

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    add-long/2addr v0, p1

    return-wide v0
.end method


# virtual methods
.method public cancel(Ljava/lang/String;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/utility/HandlerScheduler;->a:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public cancelAll()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/utility/HandlerScheduler;->a:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public schedule(Ljava/lang/Runnable;J)V
    .registers 5

    .line 2
    iget-object v0, p0, Lcom/vungle/warren/utility/HandlerScheduler;->a:Landroid/os/Handler;

    invoke-direct {p0, p2, p3}, Lcom/vungle/warren/utility/HandlerScheduler;->a(J)J

    move-result-wide p2

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public schedule(Ljava/lang/Runnable;Ljava/lang/String;J)V
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/utility/HandlerScheduler;->a:Landroid/os/Handler;

    invoke-direct {p0, p3, p4}, Lcom/vungle/warren/utility/HandlerScheduler;->a(J)J

    move-result-wide p3

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    return-void
.end method
