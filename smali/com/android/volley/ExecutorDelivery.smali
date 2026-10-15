###### Class com.android.volley.ExecutorDelivery (com.android.volley.ExecutorDelivery)
.class public Lcom/android/volley/ExecutorDelivery;
.super Ljava/lang/Object;
.source "ExecutorDelivery.java"

# interfaces
.implements Lcom/android/volley/ResponseDelivery;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/volley/ExecutorDelivery$ResponseDeliveryRunnable;
    }
.end annotation


# instance fields
.field private final a:Ljava/util/concurrent/Executor;


# virtual methods
.method public a(Lcom/android/volley/Request;Lcom/android/volley/Response;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/Request<",
            "*>;",
            "Lcom/android/volley/Response<",
            "*>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/volley/ExecutorDelivery;->b(Lcom/android/volley/Request;Lcom/android/volley/Response;Ljava/lang/Runnable;)V

    return-void
.end method

.method public b(Lcom/android/volley/Request;Lcom/android/volley/Response;Ljava/lang/Runnable;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/Request<",
            "*>;",
            "Lcom/android/volley/Response<",
            "*>;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/android/volley/Request;->U()V

    const-string v0, "post-response"

    .line 2
    invoke-virtual {p1, v0}, Lcom/android/volley/Request;->e(Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/android/volley/ExecutorDelivery;->a:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/volley/ExecutorDelivery$ResponseDeliveryRunnable;

    invoke-direct {v1, p1, p2, p3}, Lcom/android/volley/ExecutorDelivery$ResponseDeliveryRunnable;-><init>(Lcom/android/volley/Request;Lcom/android/volley/Response;Ljava/lang/Runnable;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public c(Lcom/android/volley/Request;Lcom/android/volley/VolleyError;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/Request<",
            "*>;",
            "Lcom/android/volley/VolleyError;",
            ")V"
        }
    .end annotation

    const-string v0, "post-error"

    .line 1
    invoke-virtual {p1, v0}, Lcom/android/volley/Request;->e(Ljava/lang/String;)V

    .line 2
    invoke-static {p2}, Lcom/android/volley/Response;->a(Lcom/android/volley/VolleyError;)Lcom/android/volley/Response;

    move-result-object p2

    .line 3
    iget-object v0, p0, Lcom/android/volley/ExecutorDelivery;->a:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/volley/ExecutorDelivery$ResponseDeliveryRunnable;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p2, v2}, Lcom/android/volley/ExecutorDelivery$ResponseDeliveryRunnable;-><init>(Lcom/android/volley/Request;Lcom/android/volley/Response;Ljava/lang/Runnable;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

###### Class com.android.volley.ExecutorDelivery.AnonymousClass1 (com.android.volley.ExecutorDelivery$1)
.class Lcom/android/volley/ExecutorDelivery$1;
.super Ljava/lang/Object;
.source "ExecutorDelivery.java"

# interfaces
.implements Ljava/util/concurrent/Executor;


# instance fields
.field final synthetic o:Landroid/os/Handler;


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/volley/ExecutorDelivery$1;->o:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

###### Class com.android.volley.ExecutorDelivery.ResponseDeliveryRunnable (com.android.volley.ExecutorDelivery$ResponseDeliveryRunnable)
.class Lcom/android/volley/ExecutorDelivery$ResponseDeliveryRunnable;
.super Ljava/lang/Object;
.source "ExecutorDelivery.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/volley/ExecutorDelivery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ResponseDeliveryRunnable"
.end annotation


# instance fields
.field private final o:Lcom/android/volley/Request;

.field private final p:Lcom/android/volley/Response;

.field private final q:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/android/volley/Request;Lcom/android/volley/Response;Ljava/lang/Runnable;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/volley/ExecutorDelivery$ResponseDeliveryRunnable;->o:Lcom/android/volley/Request;

    .line 3
    iput-object p2, p0, Lcom/android/volley/ExecutorDelivery$ResponseDeliveryRunnable;->p:Lcom/android/volley/Response;

    .line 4
    iput-object p3, p0, Lcom/android/volley/ExecutorDelivery$ResponseDeliveryRunnable;->q:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/volley/ExecutorDelivery$ResponseDeliveryRunnable;->o:Lcom/android/volley/Request;

    invoke-virtual {v0}, Lcom/android/volley/Request;->T()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 2
    iget-object v0, p0, Lcom/android/volley/ExecutorDelivery$ResponseDeliveryRunnable;->o:Lcom/android/volley/Request;

    const-string v1, "canceled-at-delivery"

    invoke-virtual {v0, v1}, Lcom/android/volley/Request;->m(Ljava/lang/String;)V

    return-void

    .line 3
    :cond_10
    iget-object v0, p0, Lcom/android/volley/ExecutorDelivery$ResponseDeliveryRunnable;->p:Lcom/android/volley/Response;

    invoke-virtual {v0}, Lcom/android/volley/Response;->b()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 4
    iget-object v0, p0, Lcom/android/volley/ExecutorDelivery$ResponseDeliveryRunnable;->o:Lcom/android/volley/Request;

    iget-object v1, p0, Lcom/android/volley/ExecutorDelivery$ResponseDeliveryRunnable;->p:Lcom/android/volley/Response;

    iget-object v1, v1, Lcom/android/volley/Response;->a:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/android/volley/Request;->j(Ljava/lang/Object;)V

    goto :goto_2b

    .line 5
    :cond_22
    iget-object v0, p0, Lcom/android/volley/ExecutorDelivery$ResponseDeliveryRunnable;->o:Lcom/android/volley/Request;

    iget-object v1, p0, Lcom/android/volley/ExecutorDelivery$ResponseDeliveryRunnable;->p:Lcom/android/volley/Response;

    iget-object v1, v1, Lcom/android/volley/Response;->c:Lcom/android/volley/VolleyError;

    invoke-virtual {v0, v1}, Lcom/android/volley/Request;->i(Lcom/android/volley/VolleyError;)V

    .line 6
    :goto_2b
    iget-object v0, p0, Lcom/android/volley/ExecutorDelivery$ResponseDeliveryRunnable;->p:Lcom/android/volley/Response;

    iget-boolean v0, v0, Lcom/android/volley/Response;->d:Z

    if-eqz v0, :cond_39

    .line 7
    iget-object v0, p0, Lcom/android/volley/ExecutorDelivery$ResponseDeliveryRunnable;->o:Lcom/android/volley/Request;

    const-string v1, "intermediate-response"

    invoke-virtual {v0, v1}, Lcom/android/volley/Request;->e(Ljava/lang/String;)V

    goto :goto_40

    .line 8
    :cond_39
    iget-object v0, p0, Lcom/android/volley/ExecutorDelivery$ResponseDeliveryRunnable;->o:Lcom/android/volley/Request;

    const-string v1, "done"

    invoke-virtual {v0, v1}, Lcom/android/volley/Request;->m(Ljava/lang/String;)V

    .line 9
    :goto_40
    iget-object v0, p0, Lcom/android/volley/ExecutorDelivery$ResponseDeliveryRunnable;->q:Ljava/lang/Runnable;

    if-eqz v0, :cond_47

    .line 10
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_47
    return-void
.end method
