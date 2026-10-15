###### Class fa.n (fa.n)
.class public abstract Lfa/n;
.super Lkotlinx/coroutines/internal/r;
.source "AbstractChannel.kt"

# interfaces
.implements Lfa/p;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lkotlinx/coroutines/internal/r;",
        "Lfa/p<",
        "TE;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lkotlinx/coroutines/internal/r;-><init>()V

    return-void
.end method


# virtual methods
.method public C()Lkotlinx/coroutines/internal/e0;
    .registers 2

    .line 1
    sget-object v0, Lfa/b;->b:Lkotlinx/coroutines/internal/e0;

    return-object v0
.end method

.method public D(Ljava/lang/Object;)Ls9/l;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Ls9/l<",
            "Ljava/lang/Throwable;",
            "Lh9/t;",
            ">;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public abstract E(Lfa/i;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lfa/i<",
            "*>;)V"
        }
    .end annotation
.end method

.method public bridge synthetic d()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lfa/n;->C()Lkotlinx/coroutines/internal/e0;

    move-result-object v0

    return-object v0
.end method
