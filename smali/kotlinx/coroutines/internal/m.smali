###### Class kotlinx.coroutines.internal.m (kotlinx.coroutines.internal.m)
.class public final Lkotlinx/coroutines/internal/m;
.super Ljava/lang/Object;
.source "InlineList.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public static a(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    return-object p0
.end method

.method public static synthetic b(Ljava/lang/Object;ILt9/g;)Ljava/lang/Object;
    .registers 3

    and-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_5

    const/4 p0, 0x0

    .line 1
    :cond_5
    invoke-static {p0}, Lkotlinx/coroutines/internal/m;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final c(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "TE;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lda/s0;->a()Z

    move-result v0

    if-eqz v0, :cond_13

    instance-of v0, p1, Ljava/util/List;

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_d

    goto :goto_13

    :cond_d
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_13
    :goto_13
    if-nez p0, :cond_1a

    .line 2
    invoke-static {p1}, Lkotlinx/coroutines/internal/m;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_39

    .line 3
    :cond_1a
    instance-of v0, p0, Ljava/util/ArrayList;

    if-eqz v0, :cond_29

    .line 4
    move-object v0, p0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5
    invoke-static {p0}, Lkotlinx/coroutines/internal/m;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_39

    .line 6
    :cond_29
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 7
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9
    invoke-static {v0}, Lkotlinx/coroutines/internal/m;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :goto_39
    return-object p0
.end method
