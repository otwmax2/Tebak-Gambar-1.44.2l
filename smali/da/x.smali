###### Class da.x (da.x)
.class public final Lda/x;
.super Ljava/lang/Object;
.source "CompletableDeferred.kt"


# direct methods
.method public static final a(Lda/x1;)Lda/v;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lda/x1;",
            ")",
            "Lda/v<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lda/w;

    invoke-direct {v0, p0}, Lda/w;-><init>(Lda/x1;)V

    return-object v0
.end method

.method public static synthetic b(Lda/x1;ILjava/lang/Object;)Lda/v;
    .registers 3

    and-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_5

    const/4 p0, 0x0

    .line 1
    :cond_5
    invoke-static {p0}, Lda/x;->a(Lda/x1;)Lda/v;

    move-result-object p0

    return-object p0
.end method

.method public static final c(Lda/v;Ljava/lang/Object;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lda/v<",
            "TT;>;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lh9/n;->b(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_b

    invoke-interface {p0, p1}, Lda/v;->v(Ljava/lang/Object;)Z

    move-result p0

    goto :goto_f

    :cond_b
    invoke-interface {p0, v0}, Lda/v;->u(Ljava/lang/Throwable;)Z

    move-result p0

    :goto_f
    return p0
.end method
