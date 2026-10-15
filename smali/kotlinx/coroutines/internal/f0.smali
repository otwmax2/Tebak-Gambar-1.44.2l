###### Class kotlinx.coroutines.internal.f0 (kotlinx.coroutines.internal.f0)
.class public final Lkotlinx/coroutines/internal/f0;
.super Ljava/lang/Object;


# direct methods
.method public static final a()I
    .registers 1

    .line 1
    invoke-static {}, Lkotlinx/coroutines/internal/g0;->a()I

    move-result v0

    return v0
.end method

.method public static final b(Ljava/lang/String;III)I
    .registers 4

    .line 1
    invoke-static {p0, p1, p2, p3}, Lkotlinx/coroutines/internal/h0;->a(Ljava/lang/String;III)I

    move-result p0

    return p0
.end method

.method public static final c(Ljava/lang/String;JJJ)J
    .registers 7

    .line 1
    invoke-static/range {p0 .. p6}, Lkotlinx/coroutines/internal/h0;->b(Ljava/lang/String;JJJ)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final d(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    .line 1
    invoke-static {p0}, Lkotlinx/coroutines/internal/g0;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final e(Ljava/lang/String;Z)Z
    .registers 2

    .line 1
    invoke-static {p0, p1}, Lkotlinx/coroutines/internal/h0;->c(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static synthetic f(Ljava/lang/String;IIIILjava/lang/Object;)I
    .registers 6

    .line 1
    invoke-static/range {p0 .. p5}, Lkotlinx/coroutines/internal/h0;->d(Ljava/lang/String;IIIILjava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public static synthetic g(Ljava/lang/String;JJJILjava/lang/Object;)J
    .registers 9

    .line 1
    invoke-static/range {p0 .. p8}, Lkotlinx/coroutines/internal/h0;->e(Ljava/lang/String;JJJILjava/lang/Object;)J

    move-result-wide p0

    return-wide p0
.end method
