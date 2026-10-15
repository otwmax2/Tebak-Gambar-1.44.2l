###### Class kotlinx.coroutines.internal.d0 (kotlinx.coroutines.internal.d0)
.class public final Lkotlinx/coroutines/internal/d0;
.super Ljava/lang/Object;
.source "StackTraceRecovery.kt"


# static fields
.field private static final a:Ljava/lang/String;

.field private static final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    :try_start_0
    sget-object v0, Lh9/n;->o:Lh9/n$a;

    const-string v0, "m9.a"

    .line 2
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {v0}, Lh9/n;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_10
    .catchall {:try_start_0 .. :try_end_10} :catchall_11

    goto :goto_1c

    :catchall_11
    move-exception v0

    sget-object v1, Lh9/n;->o:Lh9/n$a;

    invoke-static {v0}, Lh9/o;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lh9/n;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 4
    :goto_1c
    invoke-static {v0}, Lh9/n;->b(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    if-nez v1, :cond_23

    goto :goto_25

    :cond_23
    const-string v0, "kotlin.coroutines.jvm.internal.BaseContinuationImpl"

    :goto_25
    check-cast v0, Ljava/lang/String;

    sput-object v0, Lkotlinx/coroutines/internal/d0;->a:Ljava/lang/String;

    .line 5
    :try_start_29
    sget-object v0, Lh9/n;->o:Lh9/n$a;

    .line 6
    const-class v0, Lkotlinx/coroutines/internal/d0;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    .line 7
    invoke-static {v0}, Lh9/n;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_35
    .catchall {:try_start_29 .. :try_end_35} :catchall_36

    goto :goto_41

    :catchall_36
    move-exception v0

    sget-object v1, Lh9/n;->o:Lh9/n$a;

    invoke-static {v0}, Lh9/o;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lh9/n;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 8
    :goto_41
    invoke-static {v0}, Lh9/n;->b(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    if-nez v1, :cond_48

    goto :goto_4a

    :cond_48
    const-string v0, "kotlinx.coroutines.internal.StackTraceRecoveryKt"

    :goto_4a
    check-cast v0, Ljava/lang/String;

    sput-object v0, Lkotlinx/coroutines/internal/d0;->b:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic a(Ljava/lang/Throwable;Lm9/e;)Ljava/lang/Throwable;
    .registers 2

    .line 1
    invoke-static {p0, p1}, Lkotlinx/coroutines/internal/d0;->j(Ljava/lang/Throwable;Lm9/e;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method public static final b(Ljava/lang/String;)Ljava/lang/StackTraceElement;
    .registers 4

    .line 1
    new-instance v0, Ljava/lang/StackTraceElement;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u0008\u0008\u0008("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "\u0008"

    const/4 v2, -0x1

    invoke-direct {v0, p0, v1, v1, v2}, Ljava/lang/StackTraceElement;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-object v0
.end method

.method private static final c(Ljava/lang/Throwable;)Lh9/m;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Throwable;",
            ">(TE;)",
            "Lh9/m<",
            "TE;[",
            "Ljava/lang/StackTraceElement;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_39

    .line 2
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-static {v2, v3}, Lt9/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_39

    .line 3
    invoke-virtual {p0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    .line 4
    array-length v3, v2

    const/4 v4, 0x0

    :goto_1b
    if-ge v4, v3, :cond_2a

    aget-object v5, v2, v4

    .line 5
    invoke-static {v5}, Lkotlinx/coroutines/internal/d0;->h(Ljava/lang/StackTraceElement;)Z

    move-result v5

    if-eqz v5, :cond_27

    const/4 v3, 0x1

    goto :goto_2b

    :cond_27
    add-int/lit8 v4, v4, 0x1

    goto :goto_1b

    :cond_2a
    const/4 v3, 0x0

    :goto_2b
    if-eqz v3, :cond_32

    .line 6
    invoke-static {v0, v2}, Lh9/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Lh9/m;

    move-result-object p0

    goto :goto_3f

    :cond_32
    new-array v0, v1, [Ljava/lang/StackTraceElement;

    .line 7
    invoke-static {p0, v0}, Lh9/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Lh9/m;

    move-result-object p0

    goto :goto_3f

    :cond_39
    new-array v0, v1, [Ljava/lang/StackTraceElement;

    .line 8
    invoke-static {p0, v0}, Lh9/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Lh9/m;

    move-result-object p0

    :goto_3f
    return-object p0
.end method

.method private static final d(Ljava/lang/Throwable;Ljava/lang/Throwable;Ljava/util/ArrayDeque;)Ljava/lang/Throwable;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Throwable;",
            ">(TE;TE;",
            "Ljava/util/ArrayDeque<",
            "Ljava/lang/StackTraceElement;",
            ">;)TE;"
        }
    .end annotation

    const-string v0, "Coroutine boundary"

    .line 1
    invoke-static {v0}, Lkotlinx/coroutines/internal/d0;->b(Ljava/lang/String;)Ljava/lang/StackTraceElement;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/ArrayDeque;->addFirst(Ljava/lang/Object;)V

    .line 2
    invoke-virtual {p0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object p0

    .line 3
    sget-object v0, Lkotlinx/coroutines/internal/d0;->a:Ljava/lang/String;

    invoke-static {p0, v0}, Lkotlinx/coroutines/internal/d0;->g([Ljava/lang/StackTraceElement;Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_28

    new-array p0, v1, [Ljava/lang/StackTraceElement;

    .line 4
    invoke-interface {p2, p0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    const-string p2, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>"

    invoke-static {p0, p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p0, [Ljava/lang/StackTraceElement;

    .line 5
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->setStackTrace([Ljava/lang/StackTraceElement;)V

    return-object p1

    .line 6
    :cond_28
    invoke-virtual {p2}, Ljava/util/ArrayDeque;->size()I

    move-result v2

    add-int/2addr v2, v0

    new-array v2, v2, [Ljava/lang/StackTraceElement;

    const/4 v3, 0x0

    :goto_30
    if-ge v3, v0, :cond_39

    .line 7
    aget-object v4, p0, v3

    aput-object v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_30

    .line 8
    :cond_39
    invoke-virtual {p2}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_3d
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_50

    add-int/lit8 p2, v1, 0x1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/StackTraceElement;

    add-int/2addr v1, v0

    .line 9
    aput-object v3, v2, v1

    move v1, p2

    goto :goto_3d

    .line 10
    :cond_50
    invoke-virtual {p1, v2}, Ljava/lang/Throwable;->setStackTrace([Ljava/lang/StackTraceElement;)V

    return-object p1
.end method

.method private static final e(Lm9/e;)Ljava/util/ArrayDeque;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lm9/e;",
            ")",
            "Ljava/util/ArrayDeque<",
            "Ljava/lang/StackTraceElement;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    .line 2
    invoke-interface {p0}, Lm9/e;->o()Ljava/lang/StackTraceElement;

    move-result-object v1

    if-eqz v1, :cond_e

    invoke-virtual {v0, v1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 3
    :cond_e
    :goto_e
    invoke-interface {p0}, Lm9/e;->e()Lm9/e;

    move-result-object p0

    if-nez p0, :cond_15

    return-object v0

    .line 4
    :cond_15
    invoke-interface {p0}, Lm9/e;->o()Ljava/lang/StackTraceElement;

    move-result-object v1

    if-eqz v1, :cond_e

    invoke-virtual {v0, v1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    goto :goto_e
.end method

.method private static final f(Ljava/lang/StackTraceElement;Ljava/lang/StackTraceElement;)Z
    .registers 4

    .line 1
    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v1

    if-ne v0, v1, :cond_36

    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lt9/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_36

    .line 2
    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lt9/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_36

    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lt9/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_36

    const/4 p0, 0x1

    goto :goto_37

    :cond_36
    const/4 p0, 0x0

    :goto_37
    return p0
.end method

.method private static final g([Ljava/lang/StackTraceElement;Ljava/lang/String;)I
    .registers 5

    .line 1
    array-length v0, p0

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_14

    .line 2
    aget-object v2, p0, v1

    .line 3
    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lt9/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    goto :goto_15

    :cond_11
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_14
    const/4 v1, -0x1

    :goto_15
    return v1
.end method

.method public static final h(Ljava/lang/StackTraceElement;)Z
    .registers 5

    .line 1
    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "\u0008\u0008\u0008"

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {p0, v0, v1, v2, v3}, Lba/g;->u(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static final i([Ljava/lang/StackTraceElement;Ljava/util/ArrayDeque;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/StackTraceElement;",
            "Ljava/util/ArrayDeque<",
            "Ljava/lang/StackTraceElement;",
            ">;)V"
        }
    .end annotation

    .line 1
    array-length v0, p0

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_10

    .line 2
    aget-object v2, p0, v1

    .line 3
    invoke-static {v2}, Lkotlinx/coroutines/internal/d0;->h(Ljava/lang/StackTraceElement;)Z

    move-result v2

    if-eqz v2, :cond_d

    goto :goto_11

    :cond_d
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_10
    const/4 v1, -0x1

    :goto_11
    add-int/lit8 v1, v1, 0x1

    .line 4
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    if-gt v1, v0, :cond_33

    .line 5
    :goto_18
    aget-object v2, p0, v0

    .line 6
    invoke-virtual {p1}, Ljava/util/ArrayDeque;->getLast()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/StackTraceElement;

    invoke-static {v2, v3}, Lkotlinx/coroutines/internal/d0;->f(Ljava/lang/StackTraceElement;Ljava/lang/StackTraceElement;)Z

    move-result v2

    if-eqz v2, :cond_29

    .line 7
    invoke-virtual {p1}, Ljava/util/ArrayDeque;->removeLast()Ljava/lang/Object;

    .line 8
    :cond_29
    aget-object v2, p0, v0

    invoke-virtual {p1, v2}, Ljava/util/ArrayDeque;->addFirst(Ljava/lang/Object;)V

    if-eq v0, v1, :cond_33

    add-int/lit8 v0, v0, -0x1

    goto :goto_18

    :cond_33
    return-void
.end method

.method private static final j(Ljava/lang/Throwable;Lm9/e;)Ljava/lang/Throwable;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Throwable;",
            ">(TE;",
            "Lm9/e;",
            ")TE;"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lkotlinx/coroutines/internal/d0;->c(Ljava/lang/Throwable;)Lh9/m;

    move-result-object v0

    invoke-virtual {v0}, Lh9/m;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Throwable;

    invoke-virtual {v0}, Lh9/m;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/StackTraceElement;

    .line 2
    invoke-static {v1}, Lkotlinx/coroutines/internal/d0;->k(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v2

    if-nez v2, :cond_17

    return-object p0

    .line 3
    :cond_17
    invoke-static {p1}, Lkotlinx/coroutines/internal/d0;->e(Lm9/e;)Ljava/util/ArrayDeque;

    move-result-object p1

    .line 4
    invoke-virtual {p1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_22

    return-object p0

    :cond_22
    if-eq v1, p0, :cond_27

    .line 5
    invoke-static {v0, p1}, Lkotlinx/coroutines/internal/d0;->i([Ljava/lang/StackTraceElement;Ljava/util/ArrayDeque;)V

    .line 6
    :cond_27
    invoke-static {v1, v2, p1}, Lkotlinx/coroutines/internal/d0;->d(Ljava/lang/Throwable;Ljava/lang/Throwable;Ljava/util/ArrayDeque;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method private static final k(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Throwable;",
            ">(TE;)TE;"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lkotlinx/coroutines/internal/j;->g(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return-object v1

    .line 2
    :cond_8
    instance-of v2, p0, Lda/g0;

    if-nez v2, :cond_1b

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lt9/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1b

    return-object v1

    :cond_1b
    return-object v0
.end method

.method public static final l(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Throwable;",
            ">(TE;)TE;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_2e

    .line 2
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v1, v2}, Lt9/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15

    goto :goto_2e

    .line 3
    :cond_15
    invoke-virtual {p0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    .line 4
    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_1c
    if-ge v4, v2, :cond_2b

    aget-object v5, v1, v4

    .line 5
    invoke-static {v5}, Lkotlinx/coroutines/internal/d0;->h(Ljava/lang/StackTraceElement;)Z

    move-result v5

    if-eqz v5, :cond_28

    const/4 v3, 0x1

    goto :goto_2b

    :cond_28
    add-int/lit8 v4, v4, 0x1

    goto :goto_1c

    :cond_2b
    :goto_2b
    if-eqz v3, :cond_2e

    return-object v0

    :cond_2e
    :goto_2e
    return-object p0
.end method
