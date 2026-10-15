###### Class com.vungle.warren.utility.RefreshHandler (com.vungle.warren.utility.RefreshHandler)
.class public Lcom/vungle/warren/utility/RefreshHandler;
.super Landroid/os/Handler;
.source "RefreshHandler.java"


# instance fields
.field private a:J

.field private b:J

.field private final c:J

.field private d:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;J)V
    .registers 4

    .line 1
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 2
    iput-wide p2, p0, Lcom/vungle/warren/utility/RefreshHandler;->c:J

    .line 3
    iput-object p1, p0, Lcom/vungle/warren/utility/RefreshHandler;->d:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public declared-synchronized clean()V
    .registers 3

    monitor-enter p0

    const/4 v0, 0x0

    .line 1
    :try_start_2
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 2
    iget-object v0, p0, Lcom/vungle/warren/utility/RefreshHandler;->d:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const-wide/16 v0, 0x0

    .line 3
    iput-wide v0, p0, Lcom/vungle/warren/utility/RefreshHandler;->b:J

    .line 4
    iput-wide v0, p0, Lcom/vungle/warren/utility/RefreshHandler;->a:J
    :try_end_10
    .catchall {:try_start_2 .. :try_end_10} :catchall_12

    .line 5
    monitor-exit p0

    return-void

    :catchall_12
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized pause()V
    .registers 8

    monitor-enter p0

    const/4 v0, 0x0

    .line 1
    :try_start_2
    invoke-virtual {p0, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 2
    iget-wide v1, p0, Lcom/vungle/warren/utility/RefreshHandler;->b:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/vungle/warren/utility/RefreshHandler;->a:J

    sub-long/2addr v3, v5

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/vungle/warren/utility/RefreshHandler;->b:J

    .line 3
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 4
    iget-object v0, p0, Lcom/vungle/warren/utility/RefreshHandler;->d:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V
    :try_end_1c
    .catchall {:try_start_2 .. :try_end_1c} :catchall_1e

    .line 5
    :cond_1c
    monitor-exit p0

    return-void

    :catchall_1e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized start()V
    .registers 6

    monitor-enter p0

    .line 1
    :try_start_1
    iget-wide v0, p0, Lcom/vungle/warren/utility/RefreshHandler;->c:J
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_24

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_b

    .line 2
    monitor-exit p0

    return-void

    :cond_b
    const/4 v0, 0x0

    .line 3
    :try_start_c
    invoke-virtual {p0, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_22

    .line 4
    iget-wide v0, p0, Lcom/vungle/warren/utility/RefreshHandler;->c:J

    iget-wide v2, p0, Lcom/vungle/warren/utility/RefreshHandler;->b:J

    sub-long/2addr v0, v2

    .line 5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/vungle/warren/utility/RefreshHandler;->a:J

    .line 6
    iget-object v2, p0, Lcom/vungle/warren/utility/RefreshHandler;->d:Ljava/lang/Runnable;

    invoke-virtual {p0, v2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_22
    .catchall {:try_start_c .. :try_end_22} :catchall_24

    .line 7
    :cond_22
    monitor-exit p0

    return-void

    :catchall_24
    move-exception v0

    monitor-exit p0

    throw v0
.end method
