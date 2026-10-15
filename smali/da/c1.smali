###### Class da.c1 (da.c1)
.class final Lda/c1;
.super Ljava/lang/Object;
.source "Executors.kt"

# interfaces
.implements Ljava/util/concurrent/Executor;


# instance fields
.field public final o:Lda/i0;


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lda/c1;->o:Lda/i0;

    sget-object v1, Lk9/h;->o:Lk9/h;

    invoke-virtual {v0, v1, p1}, Lda/i0;->m(Lk9/g;Ljava/lang/Runnable;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lda/c1;->o:Lda/i0;

    invoke-virtual {v0}, Lda/i0;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
