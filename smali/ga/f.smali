###### Class ga.f (ga.f)
.class public final Lga/f;
.super Ljava/lang/Object;
.source "FlowExceptions.common.kt"


# direct methods
.method public static final a(Lga/a;Lkotlinx/coroutines/flow/c;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lga/a;",
            "Lkotlinx/coroutines/flow/c<",
            "*>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lga/a;->o:Lkotlinx/coroutines/flow/c;

    if-ne v0, p1, :cond_5

    return-void

    :cond_5
    throw p0
.end method
