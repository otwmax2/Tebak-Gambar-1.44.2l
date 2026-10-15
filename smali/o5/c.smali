###### Class o5.c (o5.c)
.class public Lo5/c;
.super Ljava/lang/Object;
.source "BlockingAnalyticsEventLogger.java"

# interfaces
.implements Lo5/b;
.implements Lo5/a;


# instance fields
.field private final a:Lo5/e;

.field private final b:I

.field private final c:Ljava/util/concurrent/TimeUnit;

.field private final d:Ljava/lang/Object;

.field private e:Ljava/util/concurrent/CountDownLatch;

.field private f:Z


# direct methods
.method public constructor <init>(Lo5/e;ILjava/util/concurrent/TimeUnit;)V
    .registers 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lo5/c;->d:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lo5/c;->f:Z

    .line 4
    iput-object p1, p0, Lo5/c;->a:Lo5/e;

    .line 5
    iput p2, p0, Lo5/c;->b:I

    .line 6
    iput-object p3, p0, Lo5/c;->c:Ljava/util/concurrent/TimeUnit;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 8

    .line 1
    iget-object v0, p0, Lo5/c;->d:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_3
    invoke-static {}, Ln5/g;->f()Ln5/g;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Logging event "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " to Firebase Analytics with params "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3
    invoke-virtual {v1, v2}, Ln5/g;->i(Ljava/lang/String;)V

    .line 4
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v1, p0, Lo5/c;->e:Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x0

    .line 5
    iput-boolean v1, p0, Lo5/c;->f:Z

    .line 6
    iget-object v1, p0, Lo5/c;->a:Lo5/e;

    invoke-virtual {v1, p1, p2}, Lo5/e;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 7
    invoke-static {}, Ln5/g;->f()Ln5/g;

    move-result-object p1

    const-string p2, "Awaiting app exception callback from Analytics..."

    invoke-virtual {p1, p2}, Ln5/g;->i(Ljava/lang/String;)V
    :try_end_3c
    .catchall {:try_start_3 .. :try_end_3c} :catchall_6d

    .line 8
    :try_start_3c
    iget-object p1, p0, Lo5/c;->e:Ljava/util/concurrent/CountDownLatch;

    iget p2, p0, Lo5/c;->b:I

    int-to-long v3, p2

    iget-object p2, p0, Lo5/c;->c:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v3, v4, p2}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result p1

    if-eqz p1, :cond_55

    .line 9
    iput-boolean v2, p0, Lo5/c;->f:Z

    .line 10
    invoke-static {}, Ln5/g;->f()Ln5/g;

    move-result-object p1

    const-string p2, "App exception callback received from Analytics listener."

    invoke-virtual {p1, p2}, Ln5/g;->i(Ljava/lang/String;)V

    goto :goto_68

    .line 11
    :cond_55
    invoke-static {}, Ln5/g;->f()Ln5/g;

    move-result-object p1

    const-string p2, "Timeout exceeded while awaiting app exception callback from Analytics listener."

    .line 12
    invoke-virtual {p1, p2}, Ln5/g;->k(Ljava/lang/String;)V
    :try_end_5e
    .catch Ljava/lang/InterruptedException; {:try_start_3c .. :try_end_5e} :catch_5f
    .catchall {:try_start_3c .. :try_end_5e} :catchall_6d

    goto :goto_68

    .line 13
    :catch_5f
    :try_start_5f
    invoke-static {}, Ln5/g;->f()Ln5/g;

    move-result-object p1

    const-string p2, "Interrupted while awaiting app exception callback from Analytics listener."

    .line 14
    invoke-virtual {p1, p2}, Ln5/g;->d(Ljava/lang/String;)V

    :goto_68
    const/4 p1, 0x0

    .line 15
    iput-object p1, p0, Lo5/c;->e:Ljava/util/concurrent/CountDownLatch;

    .line 16
    monitor-exit v0

    return-void

    :catchall_6d
    move-exception p1

    monitor-exit v0
    :try_end_6f
    .catchall {:try_start_5f .. :try_end_6f} :catchall_6d

    throw p1
.end method

.method public s1(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 4

    .line 1
    iget-object p2, p0, Lo5/c;->e:Ljava/util/concurrent/CountDownLatch;

    if-nez p2, :cond_5

    return-void

    :cond_5
    const-string v0, "_ae"

    .line 2
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_10

    .line 3
    invoke-virtual {p2}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    :cond_10
    return-void
.end method
