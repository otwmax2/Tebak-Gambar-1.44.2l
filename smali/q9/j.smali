###### Class q9.j (q9.j)
.class Lq9/j;
.super Lq9/i;
.source "FileTreeWalk.kt"


# direct methods
.method public static final a(Ljava/io/File;Lq9/f;)Lq9/e;
    .registers 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lt9/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "direction"

    invoke-static {p1, v0}, Lt9/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lq9/e;

    invoke-direct {v0, p0, p1}, Lq9/e;-><init>(Ljava/io/File;Lq9/f;)V

    return-object v0
.end method

.method public static final b(Ljava/io/File;)Lq9/e;
    .registers 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lt9/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lq9/f;->p:Lq9/f;

    invoke-static {p0, v0}, Lq9/j;->a(Ljava/io/File;Lq9/f;)Lq9/e;

    move-result-object p0

    return-object p0
.end method
