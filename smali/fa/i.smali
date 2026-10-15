###### Class fa.i (fa.i)
.class public final Lfa/i;
.super Lfa/r;
.source "AbstractChannel.kt"

# interfaces
.implements Lfa/p;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lfa/r;",
        "Lfa/p<",
        "TE;>;"
    }
.end annotation


# instance fields
.field public final r:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(Ljava/lang/Throwable;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Lfa/r;-><init>()V

    .line 2
    iput-object p1, p0, Lfa/i;->r:Ljava/lang/Throwable;

    return-void
.end method


# virtual methods
.method public C()V
    .registers 1

    return-void
.end method

.method public bridge synthetic D()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lfa/i;->H()Lfa/i;

    move-result-object v0

    return-object v0
.end method

.method public E(Lkotlinx/coroutines/internal/r$b;)Lkotlinx/coroutines/internal/e0;
    .registers 2

    .line 1
    sget-object p1, Lda/o;->a:Lkotlinx/coroutines/internal/e0;

    return-object p1
.end method

.method public G()Lfa/i;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lfa/i<",
            "TE;>;"
        }
    .end annotation

    return-object p0
.end method

.method public H()Lfa/i;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lfa/i<",
            "TE;>;"
        }
    .end annotation

    return-object p0
.end method

.method public final I()Ljava/lang/Throwable;
    .registers 3

    .line 1
    iget-object v0, p0, Lfa/i;->r:Ljava/lang/Throwable;

    if-nez v0, :cond_b

    new-instance v0, Lfa/j;

    const-string v1, "Channel was closed"

    invoke-direct {v0, v1}, Lfa/j;-><init>(Ljava/lang/String;)V

    :cond_b
    return-object v0
.end method

.method public final J()Ljava/lang/Throwable;
    .registers 3

    .line 1
    iget-object v0, p0, Lfa/i;->r:Ljava/lang/Throwable;

    if-nez v0, :cond_b

    new-instance v0, Lfa/k;

    const-string v1, "Channel was closed"

    invoke-direct {v0, v1}, Lfa/k;-><init>(Ljava/lang/String;)V

    :cond_b
    return-object v0
.end method

.method public bridge synthetic d()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lfa/i;->G()Lfa/i;

    move-result-object v0

    return-object v0
.end method

.method public g(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    return-void
.end method

.method public j(Ljava/lang/Object;Lkotlinx/coroutines/internal/r$b;)Lkotlinx/coroutines/internal/e0;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;",
            "Lkotlinx/coroutines/internal/r$b;",
            ")",
            "Lkotlinx/coroutines/internal/e0;"
        }
    .end annotation

    .line 1
    sget-object p1, Lda/o;->a:Lkotlinx/coroutines/internal/e0;

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Closed@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lda/t0;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lfa/i;->r:Ljava/lang/Throwable;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
