###### Class da.w (da.w)
.class final Lda/w;
.super Lda/e2;
.source "CompletableDeferred.kt"

# interfaces
.implements Lda/v;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lda/e2;",
        "Lda/v<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lda/x1;)V
    .registers 3

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, v0}, Lda/e2;-><init>(Z)V

    .line 2
    invoke-virtual {p0, p1}, Lda/e2;->h0(Lda/x1;)V

    return-void
.end method


# virtual methods
.method public A(Lk9/d;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lk9/d<",
            "-TT;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lda/e2;->K(Lk9/d;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Ll9/b;->c()Ljava/lang/Object;

    return-object p1
.end method

.method public b0()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public u(Ljava/lang/Throwable;)Z
    .registers 6

    .line 1
    new-instance v0, Lda/a0;

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-direct {v0, p1, v1, v2, v3}, Lda/a0;-><init>(Ljava/lang/Throwable;ZILt9/g;)V

    invoke-virtual {p0, v0}, Lda/e2;->l0(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public v(Ljava/lang/Object;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lda/e2;->l0(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
