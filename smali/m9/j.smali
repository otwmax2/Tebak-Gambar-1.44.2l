###### Class m9.j (m9.j)
.class public abstract Lm9/j;
.super Lm9/a;
.source "ContinuationImpl.kt"


# direct methods
.method public constructor <init>(Lk9/d;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lk9/d<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lm9/a;-><init>(Lk9/d;)V

    if-eqz p1, :cond_1f

    .line 2
    invoke-interface {p1}, Lk9/d;->getContext()Lk9/g;

    move-result-object p1

    sget-object v0, Lk9/h;->o:Lk9/h;

    if-ne p1, v0, :cond_f

    const/4 p1, 0x1

    goto :goto_10

    :cond_f
    const/4 p1, 0x0

    :goto_10
    if-eqz p1, :cond_13

    goto :goto_1f

    :cond_13
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Coroutines with restricted suspension must have EmptyCoroutineContext"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1f
    :goto_1f
    return-void
.end method


# virtual methods
.method public getContext()Lk9/g;
    .registers 2

    .line 1
    sget-object v0, Lk9/h;->o:Lk9/h;

    return-object v0
.end method
