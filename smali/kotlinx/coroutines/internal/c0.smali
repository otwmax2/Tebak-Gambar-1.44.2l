###### Class kotlinx.coroutines.internal.c0 (kotlinx.coroutines.internal.c0)
.class public Lkotlinx/coroutines/internal/c0;
.super Lda/a;
.source "Scopes.kt"

# interfaces
.implements Lm9/e;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lda/a<",
        "TT;>;",
        "Lm9/e;"
    }
.end annotation


# instance fields
.field public final q:Lk9/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lk9/d<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lk9/g;Lk9/d;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lk9/g;",
            "Lk9/d<",
            "-TT;>;)V"
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, p1, v0, v0}, Lda/a;-><init>(Lk9/g;ZZ)V

    .line 2
    iput-object p2, p0, Lkotlinx/coroutines/internal/c0;->q:Lk9/d;

    return-void
.end method


# virtual methods
.method protected J(Ljava/lang/Object;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/internal/c0;->q:Lk9/d;

    invoke-static {v0}, Ll9/b;->b(Lk9/d;)Lk9/d;

    move-result-object v0

    iget-object v1, p0, Lkotlinx/coroutines/internal/c0;->q:Lk9/d;

    invoke-static {p1, v1}, Lda/e0;->a(Ljava/lang/Object;Lk9/d;)Ljava/lang/Object;

    move-result-object p1

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {v0, p1, v1, v2, v1}, Lkotlinx/coroutines/internal/i;->c(Lk9/d;Ljava/lang/Object;Ls9/l;ILjava/lang/Object;)V

    return-void
.end method

.method protected J0(Ljava/lang/Object;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/internal/c0;->q:Lk9/d;

    invoke-static {p1, v0}, Lda/e0;->a(Ljava/lang/Object;Lk9/d;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Lk9/d;->g(Ljava/lang/Object;)V

    return-void
.end method

.method public final N0()Lda/x1;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lda/e2;->d0()Lda/s;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-interface {v0}, Lda/s;->getParent()Lda/x1;

    move-result-object v0

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return-object v0
.end method

.method public final e()Lm9/e;
    .registers 3

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/internal/c0;->q:Lk9/d;

    instance-of v1, v0, Lm9/e;

    if-eqz v1, :cond_9

    check-cast v0, Lm9/e;

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return-object v0
.end method

.method protected final j0()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public final o()Ljava/lang/StackTraceElement;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method
