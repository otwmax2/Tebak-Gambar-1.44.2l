###### Class h9.o (h9.o)
.class public final Lh9/o;
.super Ljava/lang/Object;
.source "Result.kt"


# direct methods
.method public static final a(Ljava/lang/Throwable;)Ljava/lang/Object;
    .registers 2

    const-string v0, "exception"

    invoke-static {p0, v0}, Lt9/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lh9/n$b;

    invoke-direct {v0, p0}, Lh9/n$b;-><init>(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public static final b(Ljava/lang/Object;)V
    .registers 2

    .line 1
    instance-of v0, p0, Lh9/n$b;

    if-nez v0, :cond_5

    return-void

    :cond_5
    check-cast p0, Lh9/n$b;

    iget-object p0, p0, Lh9/n$b;->o:Ljava/lang/Throwable;

    throw p0
.end method
