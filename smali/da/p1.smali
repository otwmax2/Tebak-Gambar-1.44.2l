###### Class da.p1 (da.p1)
.class public final Lda/p1;
.super Ljava/lang/Object;
.source "Executors.kt"


# direct methods
.method public static final a(Ljava/util/concurrent/Executor;)Lda/i0;
    .registers 2

    .line 1
    instance-of v0, p0, Lda/c1;

    if-eqz v0, :cond_8

    move-object v0, p0

    check-cast v0, Lda/c1;

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    if-eqz v0, :cond_f

    iget-object v0, v0, Lda/c1;->o:Lda/i0;

    if-nez v0, :cond_14

    :cond_f
    new-instance v0, Lda/o1;

    invoke-direct {v0, p0}, Lda/o1;-><init>(Ljava/util/concurrent/Executor;)V

    :cond_14
    return-object v0
.end method
