###### Class ca.c (ca.c)
.class public final Lca/c;
.super Ljava/lang/Object;
.source "Duration.kt"


# direct methods
.method public static final synthetic a(JI)J
    .registers 3

    .line 1
    invoke-static {p0, p1, p2}, Lca/c;->d(JI)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final synthetic b(J)J
    .registers 2

    .line 1
    invoke-static {p0, p1}, Lca/c;->e(J)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final synthetic c(J)J
    .registers 2

    .line 1
    invoke-static {p0, p1}, Lca/c;->g(J)J

    move-result-wide p0

    return-wide p0
.end method

.method private static final d(JI)J
    .registers 5

    const/4 v0, 0x1

    shl-long/2addr p0, v0

    int-to-long v0, p2

    add-long/2addr p0, v0

    .line 1
    invoke-static {p0, p1}, Lca/a;->i(J)J

    move-result-wide p0

    return-wide p0
.end method

.method private static final e(J)J
    .registers 4

    const/4 v0, 0x1

    shl-long/2addr p0, v0

    const-wide/16 v0, 0x1

    add-long/2addr p0, v0

    .line 1
    invoke-static {p0, p1}, Lca/a;->i(J)J

    move-result-wide p0

    return-wide p0
.end method

.method private static final f(J)J
    .registers 3

    const/4 v0, 0x1

    shl-long/2addr p0, v0

    .line 1
    invoke-static {p0, p1}, Lca/a;->i(J)J

    move-result-wide p0

    return-wide p0
.end method

.method private static final g(J)J
    .registers 4

    const v0, 0xf4240

    int-to-long v0, v0

    mul-long p0, p0, v0

    return-wide p0
.end method

.method public static final h(ILca/d;)J
    .registers 4

    const-string v0, "unit"

    invoke-static {p1, v0}, Lt9/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lca/d;->s:Lca/d;

    invoke-virtual {p1, v0}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-gtz v0, :cond_19

    int-to-long v0, p0

    .line 2
    sget-object p0, Lca/d;->p:Lca/d;

    invoke-static {v0, v1, p1, p0}, Lca/e;->b(JLca/d;Lca/d;)J

    move-result-wide p0

    invoke-static {p0, p1}, Lca/c;->f(J)J

    move-result-wide p0

    goto :goto_1e

    :cond_19
    int-to-long v0, p0

    .line 3
    invoke-static {v0, v1, p1}, Lca/c;->i(JLca/d;)J

    move-result-wide p0

    :goto_1e
    return-wide p0
.end method

.method public static final i(JLca/d;)J
    .registers 10

    const-string v0, "unit"

    invoke-static {p2, v0}, Lt9/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lca/d;->p:Lca/d;

    const-wide v1, 0x3ffffffffffa14bfL    # 1.9999999999138678

    invoke-static {v1, v2, v0, p2}, Lca/e;->b(JLca/d;Lca/d;)J

    move-result-wide v1

    .line 2
    new-instance v3, Ly9/i;

    neg-long v4, v1

    invoke-direct {v3, v4, v5, v1, v2}, Ly9/i;-><init>(JJ)V

    invoke-virtual {v3, p0, p1}, Ly9/i;->j(J)Z

    move-result v1

    if-eqz v1, :cond_25

    .line 3
    invoke-static {p0, p1, p2, v0}, Lca/e;->b(JLca/d;Lca/d;)J

    move-result-wide p0

    invoke-static {p0, p1}, Lca/c;->f(J)J

    move-result-wide p0

    return-wide p0

    .line 4
    :cond_25
    sget-object v0, Lca/d;->r:Lca/d;

    invoke-static {p0, p1, p2, v0}, Lca/e;->a(JLca/d;Lca/d;)J

    move-result-wide v1

    const-wide v3, -0x3fffffffffffffffL    # -2.0000000000000004

    const-wide v5, 0x3fffffffffffffffL    # 1.9999999999999998

    .line 5
    invoke-static/range {v1 .. v6}, Ly9/j;->f(JJJ)J

    move-result-wide p0

    invoke-static {p0, p1}, Lca/c;->e(J)J

    move-result-wide p0

    return-wide p0
.end method
