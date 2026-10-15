###### Class kotlinx.coroutines.internal.v (kotlinx.coroutines.internal.v)
.class public final Lkotlinx/coroutines/internal/v;
.super Ljava/lang/Object;
.source "MainDispatchers.kt"


# static fields
.field public static final a:Lkotlinx/coroutines/internal/v;

.field private static final b:Z

.field public static final c:Lda/h2;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Lkotlinx/coroutines/internal/v;

    invoke-direct {v0}, Lkotlinx/coroutines/internal/v;-><init>()V

    sput-object v0, Lkotlinx/coroutines/internal/v;->a:Lkotlinx/coroutines/internal/v;

    const-string v1, "kotlinx.coroutines.fast.service.loader"

    const/4 v2, 0x1

    .line 1
    invoke-static {v1, v2}, Lkotlinx/coroutines/internal/f0;->e(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lkotlinx/coroutines/internal/v;->b:Z

    .line 2
    invoke-direct {v0}, Lkotlinx/coroutines/internal/v;->a()Lda/h2;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/internal/v;->c:Lda/h2;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final a()Lda/h2;
    .registers 8

    .line 1
    const-class v0, Lkotlinx/coroutines/internal/u;

    const/4 v1, 0x0

    :try_start_3
    sget-boolean v2, Lkotlinx/coroutines/internal/v;->b:Z

    if-eqz v2, :cond_e

    .line 2
    sget-object v0, Lkotlinx/coroutines/internal/k;->a:Lkotlinx/coroutines/internal/k;

    invoke-virtual {v0}, Lkotlinx/coroutines/internal/k;->c()Ljava/util/List;

    move-result-object v0

    goto :goto_22

    .line 3
    :cond_e
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    .line 4
    invoke-static {v0, v2}, Ljava/util/ServiceLoader;->load(Ljava/lang/Class;Ljava/lang/ClassLoader;)Ljava/util/ServiceLoader;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/util/ServiceLoader;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Laa/c;->a(Ljava/util/Iterator;)Laa/b;

    move-result-object v0

    invoke-static {v0}, Laa/c;->f(Laa/b;)Ljava/util/List;

    move-result-object v0

    .line 6
    :goto_22
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_2e

    move-object v3, v1

    goto :goto_55

    .line 8
    :cond_2e
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_39

    goto :goto_55

    .line 10
    :cond_39
    move-object v4, v3

    check-cast v4, Lkotlinx/coroutines/internal/u;

    .line 11
    invoke-interface {v4}, Lkotlinx/coroutines/internal/u;->c()I

    move-result v4

    .line 12
    :cond_40
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 13
    move-object v6, v5

    check-cast v6, Lkotlinx/coroutines/internal/u;

    .line 14
    invoke-interface {v6}, Lkotlinx/coroutines/internal/u;->c()I

    move-result v6

    if-ge v4, v6, :cond_4f

    move-object v3, v5

    move v4, v6

    .line 15
    :cond_4f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_40

    .line 16
    :goto_55
    check-cast v3, Lkotlinx/coroutines/internal/u;

    if-eqz v3, :cond_5f

    invoke-static {v3, v0}, Lkotlinx/coroutines/internal/w;->e(Lkotlinx/coroutines/internal/u;Ljava/util/List;)Lda/h2;

    move-result-object v0

    if-nez v0, :cond_6b

    :cond_5f
    const/4 v0, 0x3

    .line 17
    invoke-static {v1, v1, v0, v1}, Lkotlinx/coroutines/internal/w;->b(Ljava/lang/Throwable;Ljava/lang/String;ILjava/lang/Object;)Lkotlinx/coroutines/internal/x;

    move-result-object v0
    :try_end_64
    .catchall {:try_start_3 .. :try_end_64} :catchall_65

    goto :goto_6b

    :catchall_65
    move-exception v0

    const/4 v2, 0x2

    .line 18
    invoke-static {v0, v1, v2, v1}, Lkotlinx/coroutines/internal/w;->b(Ljava/lang/Throwable;Ljava/lang/String;ILjava/lang/Object;)Lkotlinx/coroutines/internal/x;

    move-result-object v0

    :cond_6b
    :goto_6b
    return-object v0
.end method
