###### Class da.u1 (da.u1)
.class final Lda/u1;
.super Lda/k;
.source "CancellableContinuationImpl.kt"


# instance fields
.field private final o:Ls9/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls9/l<",
            "Ljava/lang/Throwable;",
            "Lh9/t;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ls9/l;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls9/l<",
            "-",
            "Ljava/lang/Throwable;",
            "Lh9/t;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lda/k;-><init>()V

    .line 2
    iput-object p1, p0, Lda/u1;->o:Ls9/l;

    return-void
.end method


# virtual methods
.method public c(Ljava/lang/Throwable;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lda/u1;->o:Ls9/l;

    invoke-interface {v0, p1}, Ls9/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 1
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lda/u1;->c(Ljava/lang/Throwable;)V

    sget-object p1, Lh9/t;->a:Lh9/t;

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "InvokeOnCancel["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lda/u1;->o:Ls9/l;

    invoke-static {v1}, Lda/t0;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lda/t0;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
