###### Class androidx.core.os.e (androidx.core.os.e)
.class public final Landroidx/core/os/e;
.super Ljava/lang/Object;
.source "CancellationSignal.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/os/e$a;,
        Landroidx/core/os/e$b;
    }
.end annotation


# instance fields
.field private a:Z

.field private b:Landroidx/core/os/e$b;

.field private c:Ljava/lang/Object;

.field private d:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private d()V
    .registers 2

    .line 1
    :goto_0
    iget-boolean v0, p0, Landroidx/core/os/e;->d:Z

    if-eqz v0, :cond_a

    .line 2
    :try_start_4
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_7
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_7} :catch_8

    goto :goto_0

    :catch_8
    nop

    goto :goto_0

    :cond_a
    return-void
.end method


# virtual methods
.method public a()V
    .registers 5

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    iget-boolean v0, p0, Landroidx/core/os/e;->a:Z

    if-eqz v0, :cond_7

    .line 3
    monitor-exit p0

    return-void

    :cond_7
    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Landroidx/core/os/e;->a:Z

    .line 5
    iput-boolean v0, p0, Landroidx/core/os/e;->d:Z

    .line 6
    iget-object v0, p0, Landroidx/core/os/e;->b:Landroidx/core/os/e$b;

    .line 7
    iget-object v1, p0, Landroidx/core/os/e;->c:Ljava/lang/Object;

    .line 8
    monitor-exit p0
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_3c

    const/4 v2, 0x0

    if-eqz v0, :cond_1a

    .line 9
    :try_start_14
    invoke-interface {v0}, Landroidx/core/os/e$b;->onCancel()V

    goto :goto_1a

    :catchall_18
    move-exception v0

    goto :goto_26

    :cond_1a
    :goto_1a
    if-eqz v1, :cond_31

    .line 10
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x10

    if-lt v0, v3, :cond_31

    .line 11
    invoke-static {v1}, Landroidx/core/os/e$a;->a(Ljava/lang/Object;)V
    :try_end_25
    .catchall {:try_start_14 .. :try_end_25} :catchall_18

    goto :goto_31

    .line 12
    :goto_26
    monitor-enter p0

    .line 13
    :try_start_27
    iput-boolean v2, p0, Landroidx/core/os/e;->d:Z

    .line 14
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 15
    monitor-exit p0
    :try_end_2d
    .catchall {:try_start_27 .. :try_end_2d} :catchall_2e

    .line 16
    throw v0

    :catchall_2e
    move-exception v0

    .line 17
    :try_start_2f
    monitor-exit p0
    :try_end_30
    .catchall {:try_start_2f .. :try_end_30} :catchall_2e

    throw v0

    .line 18
    :cond_31
    :goto_31
    monitor-enter p0

    .line 19
    :try_start_32
    iput-boolean v2, p0, Landroidx/core/os/e;->d:Z

    .line 20
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 21
    monitor-exit p0

    return-void

    :catchall_39
    move-exception v0

    monitor-exit p0
    :try_end_3b
    .catchall {:try_start_32 .. :try_end_3b} :catchall_39

    throw v0

    :catchall_3c
    move-exception v0

    .line 22
    :try_start_3d
    monitor-exit p0
    :try_end_3e
    .catchall {:try_start_3d .. :try_end_3e} :catchall_3c

    throw v0
.end method

.method public b()Z
    .registers 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    iget-boolean v0, p0, Landroidx/core/os/e;->a:Z

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    .line 3
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_5

    throw v0
.end method

.method public c(Landroidx/core/os/e$b;)V
    .registers 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    invoke-direct {p0}, Landroidx/core/os/e;->d()V

    .line 3
    iget-object v0, p0, Landroidx/core/os/e;->b:Landroidx/core/os/e$b;

    if-ne v0, p1, :cond_a

    .line 4
    monitor-exit p0

    return-void

    .line 5
    :cond_a
    iput-object p1, p0, Landroidx/core/os/e;->b:Landroidx/core/os/e$b;

    .line 6
    iget-boolean v0, p0, Landroidx/core/os/e;->a:Z

    if-eqz v0, :cond_18

    if-nez p1, :cond_13

    goto :goto_18

    .line 7
    :cond_13
    monitor-exit p0
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_1a

    .line 8
    invoke-interface {p1}, Landroidx/core/os/e$b;->onCancel()V

    return-void

    .line 9
    :cond_18
    :goto_18
    :try_start_18
    monitor-exit p0

    return-void

    :catchall_1a
    move-exception p1

    .line 10
    monitor-exit p0
    :try_end_1c
    .catchall {:try_start_18 .. :try_end_1c} :catchall_1a

    throw p1
.end method

###### Class androidx.core.os.e.a (androidx.core.os.e$a)
.class Landroidx/core/os/e$a;
.super Ljava/lang/Object;
.source "CancellationSignal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/os/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# direct methods
.method static a(Ljava/lang/Object;)V
    .registers 1

    .line 1
    check-cast p0, Landroid/os/CancellationSignal;

    invoke-virtual {p0}, Landroid/os/CancellationSignal;->cancel()V

    return-void
.end method

.method static b()Landroid/os/CancellationSignal;
    .registers 1

    .line 1
    new-instance v0, Landroid/os/CancellationSignal;

    invoke-direct {v0}, Landroid/os/CancellationSignal;-><init>()V

    return-object v0
.end method

###### Class androidx.core.os.e.b (androidx.core.os.e$b)
.class public interface abstract Landroidx/core/os/e$b;
.super Ljava/lang/Object;
.source "CancellationSignal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/os/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "b"
.end annotation


# virtual methods
.method public abstract onCancel()V
.end method
