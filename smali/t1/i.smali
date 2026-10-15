###### Class t1.i (t1.i)
.class public Lt1/i;
.super Ljava/lang/Object;
.source "TaskCompletionSource.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TResult:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:Lt1/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lt1/h<",
            "TTResult;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lt1/h;

    invoke-direct {v0}, Lt1/h;-><init>()V

    iput-object v0, p0, Lt1/i;->a:Lt1/h;

    return-void
.end method


# virtual methods
.method public a()Lt1/h;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lt1/h<",
            "TTResult;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lt1/i;->a:Lt1/h;

    return-object v0
.end method

.method public b()V
    .registers 3

    .line 1
    invoke-virtual {p0}, Lt1/i;->e()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 2
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot cancel a completed task."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public c(Ljava/lang/Exception;)V
    .registers 3

    .line 1
    invoke-virtual {p0, p1}, Lt1/i;->f(Ljava/lang/Exception;)Z

    move-result p1

    if-eqz p1, :cond_7

    return-void

    .line 2
    :cond_7
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot set the error on a completed task."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public d(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTResult;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lt1/i;->g(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    return-void

    .line 2
    :cond_7
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot set the result of a completed task."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public e()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lt1/i;->a:Lt1/h;

    invoke-virtual {v0}, Lt1/h;->D()Z

    move-result v0

    return v0
.end method

.method public f(Ljava/lang/Exception;)Z
    .registers 3

    .line 1
    iget-object v0, p0, Lt1/i;->a:Lt1/h;

    invoke-virtual {v0, p1}, Lt1/h;->E(Ljava/lang/Exception;)Z

    move-result p1

    return p1
.end method

.method public g(Ljava/lang/Object;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTResult;)Z"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lt1/i;->a:Lt1/h;

    invoke-virtual {v0, p1}, Lt1/h;->F(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
