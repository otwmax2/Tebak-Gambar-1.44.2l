###### Class k9.f (k9.f)
.class public final Lk9/f;
.super Ljava/lang/Object;
.source "Continuation.kt"


# direct methods
.method public static final a(Ls9/p;Ljava/lang/Object;Lk9/d;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">(",
            "Ls9/p<",
            "-TR;-",
            "Lk9/d<",
            "-TT;>;+",
            "Ljava/lang/Object;",
            ">;TR;",
            "Lk9/d<",
            "-TT;>;)V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lt9/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "completion"

    invoke-static {p2, v0}, Lt9/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p0, p1, p2}, Ll9/b;->a(Ls9/p;Ljava/lang/Object;Lk9/d;)Lk9/d;

    move-result-object p0

    invoke-static {p0}, Ll9/b;->b(Lk9/d;)Lk9/d;

    move-result-object p0

    sget-object p1, Lh9/n;->o:Lh9/n$a;

    sget-object p1, Lh9/t;->a:Lh9/t;

    invoke-static {p1}, Lh9/n;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, p1}, Lk9/d;->g(Ljava/lang/Object;)V

    return-void
.end method
