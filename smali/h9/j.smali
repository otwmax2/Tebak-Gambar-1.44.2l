###### Class h9.j (h9.j)
.class Lh9/j;
.super Ljava/lang/Object;
.source "LazyJVM.kt"


# direct methods
.method public static a(Ls9/a;)Lh9/h;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ls9/a<",
            "+TT;>;)",
            "Lh9/h<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "initializer"

    invoke-static {p0, v0}, Lt9/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lh9/p;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {v0, p0, v1, v2, v1}, Lh9/p;-><init>(Ls9/a;Ljava/lang/Object;ILt9/g;)V

    return-object v0
.end method
