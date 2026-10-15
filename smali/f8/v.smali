###### Class f8.v (f8.v)
.class Lf8/v;
.super Ljava/util/concurrent/ThreadPoolExecutor;
.source "PicassoExecutorService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lf8/v$a;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 9

    .line 1
    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-direct {v6}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    new-instance v7, Lf8/e0$f;

    invoke-direct {v7}, Lf8/e0$f;-><init>()V

    const/4 v1, 0x3

    const/4 v2, 0x3

    const-wide/16 v3, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    return-void
.end method

.method private b(I)V
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->setCorePoolSize(I)V

    .line 2
    invoke-virtual {p0, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->setMaximumPoolSize(I)V

    return-void
.end method


# virtual methods
.method a(Landroid/net/NetworkInfo;)V
    .registers 5

    const/4 v0, 0x3

    if-eqz p1, :cond_3e

    .line 1
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v1

    if-nez v1, :cond_a

    goto :goto_3e

    .line 2
    :cond_a
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_23

    if-eq v1, v2, :cond_1e

    const/4 p1, 0x6

    if-eq v1, p1, :cond_1e

    const/16 p1, 0x9

    if-eq v1, p1, :cond_1e

    .line 3
    invoke-direct {p0, v0}, Lf8/v;->b(I)V

    goto :goto_3d

    :cond_1e
    const/4 p1, 0x4

    .line 4
    invoke-direct {p0, p1}, Lf8/v;->b(I)V

    goto :goto_3d

    .line 5
    :cond_23
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result p1

    packed-switch p1, :pswitch_data_42

    packed-switch p1, :pswitch_data_52

    .line 6
    invoke-direct {p0, v0}, Lf8/v;->b(I)V

    goto :goto_3d

    .line 7
    :pswitch_31
    invoke-direct {p0, v0}, Lf8/v;->b(I)V

    goto :goto_3d

    :pswitch_35
    const/4 p1, 0x2

    .line 8
    invoke-direct {p0, p1}, Lf8/v;->b(I)V

    goto :goto_3d

    .line 9
    :pswitch_3a
    invoke-direct {p0, v2}, Lf8/v;->b(I)V

    :goto_3d
    return-void

    .line 10
    :cond_3e
    :goto_3e
    invoke-direct {p0, v0}, Lf8/v;->b(I)V

    return-void

    :pswitch_data_42
    .packed-switch 0x1
        :pswitch_3a
        :pswitch_3a
        :pswitch_35
        :pswitch_35
        :pswitch_35
        :pswitch_35
    .end packed-switch

    :pswitch_data_52
    .packed-switch 0xc
        :pswitch_35
        :pswitch_31
        :pswitch_31
        :pswitch_31
    .end packed-switch
.end method

.method public submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            ")",
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lf8/v$a;

    check-cast p1, Lf8/c;

    invoke-direct {v0, p1}, Lf8/v$a;-><init>(Lf8/c;)V

    .line 2
    invoke-virtual {p0, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-object v0
.end method

###### Class f8.v.a (f8.v$a)
.class final Lf8/v$a;
.super Ljava/util/concurrent/FutureTask;
.source "PicassoExecutorService.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf8/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/FutureTask<",
        "Lf8/c;",
        ">;",
        "Ljava/lang/Comparable<",
        "Lf8/v$a;",
        ">;"
    }
.end annotation


# instance fields
.field private final o:Lf8/c;


# direct methods
.method public constructor <init>(Lf8/c;)V
    .registers 3

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/lang/Runnable;Ljava/lang/Object;)V

    .line 2
    iput-object p1, p0, Lf8/v$a;->o:Lf8/c;

    return-void
.end method


# virtual methods
.method public c(Lf8/v$a;)I
    .registers 4

    .line 1
    iget-object v0, p0, Lf8/v$a;->o:Lf8/c;

    invoke-virtual {v0}, Lf8/c;->p()Lf8/t$f;

    move-result-object v0

    .line 2
    iget-object v1, p1, Lf8/v$a;->o:Lf8/c;

    invoke-virtual {v1}, Lf8/c;->p()Lf8/t$f;

    move-result-object v1

    if-ne v0, v1, :cond_18

    .line 3
    iget-object v0, p0, Lf8/v$a;->o:Lf8/c;

    iget v0, v0, Lf8/c;->o:I

    iget-object p1, p1, Lf8/v$a;->o:Lf8/c;

    iget p1, p1, Lf8/c;->o:I

    sub-int/2addr v0, p1

    goto :goto_22

    :cond_18
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    sub-int v0, p1, v0

    :goto_22
    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 2

    .line 1
    check-cast p1, Lf8/v$a;

    invoke-virtual {p0, p1}, Lf8/v$a;->c(Lf8/v$a;)I

    move-result p1

    return p1
.end method
