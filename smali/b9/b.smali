###### Class b9.b (b9.b)
.class Lb9/b;
.super Ljava/lang/Object;
.source "AuthState.java"


# instance fields
.field final a:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lb9/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lb9/b;->a:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method


# virtual methods
.method public a(Landroid/app/Activity;Lb9/a;)Z
    .registers 5

    .line 1
    invoke-virtual {p0}, Lb9/b;->d()Z

    move-result v0

    const-string v1, "Twitter"

    if-eqz v0, :cond_12

    .line 2
    invoke-static {}, Lcom/twitter/sdk/android/core/o;->g()Lcom/twitter/sdk/android/core/h;

    move-result-object p1

    const-string p2, "Authorize already in progress"

    invoke-interface {p1, v1, p2}, Lcom/twitter/sdk/android/core/h;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2b

    .line 3
    :cond_12
    invoke-virtual {p2, p1}, Lb9/a;->a(Landroid/app/Activity;)Z

    move-result p1

    if-eqz p1, :cond_2b

    .line 4
    iget-object p1, p0, Lb9/b;->a:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p2}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2c

    .line 5
    invoke-static {}, Lcom/twitter/sdk/android/core/o;->g()Lcom/twitter/sdk/android/core/h;

    move-result-object p2

    const-string v0, "Failed to update authHandler, authorize already in progress."

    invoke-interface {p2, v1, v0}, Lcom/twitter/sdk/android/core/h;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2c

    :cond_2b
    :goto_2b
    const/4 p1, 0x0

    :cond_2c
    :goto_2c
    return p1
.end method

.method public b()V
    .registers 3

    .line 1
    iget-object v0, p0, Lb9/b;->a:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public c()Lb9/a;
    .registers 2

    .line 1
    iget-object v0, p0, Lb9/b;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb9/a;

    return-object v0
.end method

.method public d()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lb9/b;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method
