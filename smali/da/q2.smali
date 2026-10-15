###### Class da.q2 (da.q2)
.class public final Lda/q2;
.super Ljava/lang/Object;
.source "Supervisor.kt"


# direct methods
.method public static final a(Lda/x1;)Lda/y;
    .registers 2

    .line 1
    new-instance v0, Lda/p2;

    invoke-direct {v0, p0}, Lda/p2;-><init>(Lda/x1;)V

    return-object v0
.end method

.method public static synthetic b(Lda/x1;ILjava/lang/Object;)Lda/y;
    .registers 3

    and-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_5

    const/4 p0, 0x0

    .line 1
    :cond_5
    invoke-static {p0}, Lda/q2;->a(Lda/x1;)Lda/y;

    move-result-object p0

    return-object p0
.end method
