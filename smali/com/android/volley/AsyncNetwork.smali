###### Class com.android.volley.AsyncNetwork (com.android.volley.AsyncNetwork)
.class public abstract Lcom/android/volley/AsyncNetwork;
.super Ljava/lang/Object;
.source "AsyncNetwork.java"

# interfaces
.implements Lcom/android/volley/Network;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/volley/AsyncNetwork$OnRequestComplete;
    }
.end annotation


# instance fields
.field private a:Ljava/util/concurrent/ExecutorService;


# direct methods
.method protected constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/android/volley/Request;)Lcom/android/volley/NetworkResponse;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/Request<",
            "*>;)",
            "Lcom/android/volley/NetworkResponse;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/volley/VolleyError;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 2
    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 3
    new-instance v2, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 4
    new-instance v3, Lcom/android/volley/AsyncNetwork$1;

    invoke-direct {v3, p0, v1, v0, v2}, Lcom/android/volley/AsyncNetwork$1;-><init>(Lcom/android/volley/AsyncNetwork;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/CountDownLatch;Ljava/util/concurrent/atomic/AtomicReference;)V

    invoke-virtual {p0, p1, v3}, Lcom/android/volley/AsyncNetwork;->c(Lcom/android/volley/Request;Lcom/android/volley/AsyncNetwork$OnRequestComplete;)V

    .line 5
    :try_start_18
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_1b
    .catch Ljava/lang/InterruptedException; {:try_start_18 .. :try_end_1b} :catch_3d

    .line 6
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_28

    .line 7
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/volley/NetworkResponse;

    return-object p1

    .line 8
    :cond_28
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_35

    .line 9
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/volley/VolleyError;

    throw p1

    .line 10
    :cond_35
    new-instance p1, Lcom/android/volley/VolleyError;

    const-string v0, "Neither response entry was set"

    invoke-direct {p1, v0}, Lcom/android/volley/VolleyError;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_3d
    move-exception p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "while waiting for CountDownLatch"

    .line 11
    invoke-static {p1, v1, v0}, Lcom/android/volley/VolleyLog;->d(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 12
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 13
    new-instance v0, Lcom/android/volley/VolleyError;

    invoke-direct {v0, p1}, Lcom/android/volley/VolleyError;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method protected b()Ljava/util/concurrent/ExecutorService;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/volley/AsyncNetwork;->a:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method public abstract c(Lcom/android/volley/Request;Lcom/android/volley/AsyncNetwork$OnRequestComplete;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/Request<",
            "*>;",
            "Lcom/android/volley/AsyncNetwork$OnRequestComplete;",
            ")V"
        }
    .end annotation
.end method

###### Class com.android.volley.AsyncNetwork.AnonymousClass1 (com.android.volley.AsyncNetwork$1)
.class Lcom/android/volley/AsyncNetwork$1;
.super Ljava/lang/Object;
.source "AsyncNetwork.java"

# interfaces
.implements Lcom/android/volley/AsyncNetwork$OnRequestComplete;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/volley/AsyncNetwork;->a(Lcom/android/volley/Request;)Lcom/android/volley/NetworkResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/concurrent/atomic/AtomicReference;

.field final synthetic b:Ljava/util/concurrent/CountDownLatch;

.field final synthetic c:Ljava/util/concurrent/atomic/AtomicReference;

.field final synthetic d:Lcom/android/volley/AsyncNetwork;


# direct methods
.method constructor <init>(Lcom/android/volley/AsyncNetwork;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/CountDownLatch;Ljava/util/concurrent/atomic/AtomicReference;)V
    .registers 5

    .line 1
    iput-object p1, p0, Lcom/android/volley/AsyncNetwork$1;->d:Lcom/android/volley/AsyncNetwork;

    iput-object p2, p0, Lcom/android/volley/AsyncNetwork$1;->a:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p3, p0, Lcom/android/volley/AsyncNetwork$1;->b:Ljava/util/concurrent/CountDownLatch;

    iput-object p4, p0, Lcom/android/volley/AsyncNetwork$1;->c:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/android/volley/VolleyError;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/volley/AsyncNetwork$1;->c:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Lcom/android/volley/AsyncNetwork$1;->b:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method public b(Lcom/android/volley/NetworkResponse;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/volley/AsyncNetwork$1;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Lcom/android/volley/AsyncNetwork$1;->b:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

###### Class com.android.volley.AsyncNetwork.OnRequestComplete (com.android.volley.AsyncNetwork$OnRequestComplete)
.class public interface abstract Lcom/android/volley/AsyncNetwork$OnRequestComplete;
.super Ljava/lang/Object;
.source "AsyncNetwork.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/volley/AsyncNetwork;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnRequestComplete"
.end annotation


# virtual methods
.method public abstract a(Lcom/android/volley/VolleyError;)V
.end method

.method public abstract b(Lcom/android/volley/NetworkResponse;)V
.end method
