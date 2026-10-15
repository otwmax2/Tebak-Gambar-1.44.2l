###### Class com.android.volley.toolbox.AsyncHttpStack (com.android.volley.toolbox.AsyncHttpStack)
.class public abstract Lcom/android/volley/toolbox/AsyncHttpStack;
.super Lcom/android/volley/toolbox/BaseHttpStack;
.source "AsyncHttpStack.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/volley/toolbox/AsyncHttpStack$Response;,
        Lcom/android/volley/toolbox/AsyncHttpStack$OnRequestComplete;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/android/volley/toolbox/BaseHttpStack;-><init>()V

    return-void
.end method


# virtual methods
.method public final b(Lcom/android/volley/Request;Ljava/util/Map;)Lcom/android/volley/toolbox/HttpResponse;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/Request<",
            "*>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/android/volley/toolbox/HttpResponse;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/volley/AuthFailureError;
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
    new-instance v2, Lcom/android/volley/toolbox/AsyncHttpStack$1;

    invoke-direct {v2, p0, v1, v0}, Lcom/android/volley/toolbox/AsyncHttpStack$1;-><init>(Lcom/android/volley/toolbox/AsyncHttpStack;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {p0, p1, p2, v2}, Lcom/android/volley/toolbox/AsyncHttpStack;->c(Lcom/android/volley/Request;Ljava/util/Map;Lcom/android/volley/toolbox/AsyncHttpStack$OnRequestComplete;)V

    .line 4
    :try_start_13
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_16
    .catch Ljava/lang/InterruptedException; {:try_start_13 .. :try_end_16} :catch_29

    .line 5
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/volley/toolbox/AsyncHttpStack$Response;

    .line 6
    iget-object p2, p1, Lcom/android/volley/toolbox/AsyncHttpStack$Response;->a:Lcom/android/volley/toolbox/HttpResponse;

    if-eqz p2, :cond_21

    return-object p2

    .line 7
    :cond_21
    iget-object p2, p1, Lcom/android/volley/toolbox/AsyncHttpStack$Response;->b:Ljava/io/IOException;

    if-eqz p2, :cond_26

    .line 8
    throw p2

    .line 9
    :cond_26
    iget-object p1, p1, Lcom/android/volley/toolbox/AsyncHttpStack$Response;->c:Lcom/android/volley/AuthFailureError;

    throw p1

    :catch_29
    move-exception p1

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    const-string v0, "while waiting for CountDownLatch"

    .line 10
    invoke-static {p1, v0, p2}, Lcom/android/volley/VolleyLog;->d(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Thread;->interrupt()V

    .line 12
    new-instance p2, Ljava/io/InterruptedIOException;

    invoke-virtual {p1}, Ljava/lang/InterruptedException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public abstract c(Lcom/android/volley/Request;Ljava/util/Map;Lcom/android/volley/toolbox/AsyncHttpStack$OnRequestComplete;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/Request<",
            "*>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/volley/toolbox/AsyncHttpStack$OnRequestComplete;",
            ")V"
        }
    .end annotation
.end method

###### Class com.android.volley.toolbox.AsyncHttpStack.AnonymousClass1 (com.android.volley.toolbox.AsyncHttpStack$1)
.class Lcom/android/volley/toolbox/AsyncHttpStack$1;
.super Ljava/lang/Object;
.source "AsyncHttpStack.java"

# interfaces
.implements Lcom/android/volley/toolbox/AsyncHttpStack$OnRequestComplete;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/volley/toolbox/AsyncHttpStack;->b(Lcom/android/volley/Request;Ljava/util/Map;)Lcom/android/volley/toolbox/HttpResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/concurrent/atomic/AtomicReference;

.field final synthetic b:Ljava/util/concurrent/CountDownLatch;

.field final synthetic c:Lcom/android/volley/toolbox/AsyncHttpStack;


# direct methods
.method constructor <init>(Lcom/android/volley/toolbox/AsyncHttpStack;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/CountDownLatch;)V
    .registers 4

    .line 1
    iput-object p1, p0, Lcom/android/volley/toolbox/AsyncHttpStack$1;->c:Lcom/android/volley/toolbox/AsyncHttpStack;

    iput-object p2, p0, Lcom/android/volley/toolbox/AsyncHttpStack$1;->a:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p3, p0, Lcom/android/volley/toolbox/AsyncHttpStack$1;->b:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

###### Class com.android.volley.toolbox.AsyncHttpStack.OnRequestComplete (com.android.volley.toolbox.AsyncHttpStack$OnRequestComplete)
.class public interface abstract Lcom/android/volley/toolbox/AsyncHttpStack$OnRequestComplete;
.super Ljava/lang/Object;
.source "AsyncHttpStack.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/volley/toolbox/AsyncHttpStack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnRequestComplete"
.end annotation

###### Class com.android.volley.toolbox.AsyncHttpStack.Response (com.android.volley.toolbox.AsyncHttpStack$Response)
.class Lcom/android/volley/toolbox/AsyncHttpStack$Response;
.super Ljava/lang/Object;
.source "AsyncHttpStack.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/volley/toolbox/AsyncHttpStack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Response"
.end annotation


# instance fields
.field a:Lcom/android/volley/toolbox/HttpResponse;

.field b:Ljava/io/IOException;

.field c:Lcom/android/volley/AuthFailureError;
