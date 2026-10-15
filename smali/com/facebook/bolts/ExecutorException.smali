###### Class com.facebook.bolts.ExecutorException (com.facebook.bolts.ExecutorException)
.class public final Lcom/facebook/bolts/ExecutorException;
.super Ljava/lang/RuntimeException;
.source "ExecutorException.kt"


# direct methods
.method public constructor <init>(Ljava/lang/Exception;)V
    .registers 3

    const-string v0, "e"

    invoke-static {p1, v0}, Lt9/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "An exception was thrown by an Executor"

    .line 1
    invoke-direct {p0, v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
