###### Class fa.m (fa.m)
.class public Lfa/m;
.super Lfa/a;
.source "LinkedListChannel.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lfa/a<",
        "TE;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ls9/l;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls9/l<",
            "-TE;",
            "Lh9/t;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lfa/a;-><init>(Ls9/l;)V

    return-void
.end method


# virtual methods
.method protected m(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    :cond_0
    invoke-super {p0, p1}, Lfa/c;->m(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 2
    sget-object v1, Lfa/b;->b:Lkotlinx/coroutines/internal/e0;

    if-ne v0, v1, :cond_9

    return-object v1

    .line 3
    :cond_9
    sget-object v2, Lfa/b;->c:Lkotlinx/coroutines/internal/e0;

    if-ne v0, v2, :cond_19

    .line 4
    invoke-virtual {p0, p1}, Lfa/c;->o(Ljava/lang/Object;)Lfa/p;

    move-result-object v0

    if-nez v0, :cond_14

    return-object v1

    .line 5
    :cond_14
    instance-of v1, v0, Lfa/i;

    if-eqz v1, :cond_0

    return-object v0

    .line 6
    :cond_19
    instance-of p1, v0, Lfa/i;

    if-eqz p1, :cond_1e

    return-object v0

    :cond_1e
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid offerInternal result "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_3a

    :goto_39
    throw p1

    :goto_3a
    goto :goto_39
.end method

.method protected final v()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method protected final w()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method
