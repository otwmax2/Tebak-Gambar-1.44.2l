###### Class da.k1 (da.k1)
.class public final Lda/k1;
.super Ljava/lang/Object;
.source "EventLoop.kt"


# direct methods
.method public static final a()Lda/h1;
    .registers 2

    .line 1
    new-instance v0, Lda/g;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-direct {v0, v1}, Lda/g;-><init>(Ljava/lang/Thread;)V

    return-object v0
.end method
