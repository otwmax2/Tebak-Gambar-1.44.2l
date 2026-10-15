###### Class da.m2 (da.m2)
.class final Lda/m2;
.super Lda/e;
.source "CancellableContinuation.kt"


# instance fields
.field private final o:Lkotlinx/coroutines/internal/r;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/internal/r;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Lda/e;-><init>()V

    iput-object p1, p0, Lda/m2;->o:Lkotlinx/coroutines/internal/r;

    return-void
.end method


# virtual methods
.method public c(Ljava/lang/Throwable;)V
    .registers 2

    .line 1
    iget-object p1, p0, Lda/m2;->o:Lkotlinx/coroutines/internal/r;

    invoke-virtual {p1}, Lkotlinx/coroutines/internal/r;->x()Z

    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 1
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lda/m2;->c(Ljava/lang/Throwable;)V

    sget-object p1, Lh9/t;->a:Lh9/t;

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RemoveOnCancel["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lda/m2;->o:Lkotlinx/coroutines/internal/r;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
