###### Class kotlinx.coroutines.internal.j (kotlinx.coroutines.internal.j)
.class public final Lkotlinx/coroutines/internal/j;
.super Ljava/lang/Object;
.source "ExceptionsConstructor.kt"


# static fields
.field private static final a:I

.field private static final b:Lkotlinx/coroutines/internal/g;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    const-class v0, Ljava/lang/Throwable;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lkotlinx/coroutines/internal/j;->f(Ljava/lang/Class;I)I

    move-result v0

    sput v0, Lkotlinx/coroutines/internal/j;->a:I

    .line 2
    :try_start_9
    invoke-static {}, Lkotlinx/coroutines/internal/l;->a()Z

    move-result v0

    if-eqz v0, :cond_12

    sget-object v0, Lkotlinx/coroutines/internal/n0;->a:Lkotlinx/coroutines/internal/n0;

    goto :goto_17

    .line 3
    :cond_12
    sget-object v0, Lkotlinx/coroutines/internal/d;->a:Lkotlinx/coroutines/internal/d;
    :try_end_14
    .catchall {:try_start_9 .. :try_end_14} :catchall_15

    goto :goto_17

    .line 4
    :catchall_15
    sget-object v0, Lkotlinx/coroutines/internal/n0;->a:Lkotlinx/coroutines/internal/n0;

    .line 5
    :goto_17
    sput-object v0, Lkotlinx/coroutines/internal/j;->b:Lkotlinx/coroutines/internal/g;

    return-void
.end method

.method public static final synthetic a(Ljava/lang/Class;)Ls9/l;
    .registers 1

    .line 1
    invoke-static {p0}, Lkotlinx/coroutines/internal/j;->b(Ljava/lang/Class;)Ls9/l;

    move-result-object p0

    return-object p0
.end method

.method private static final b(Ljava/lang/Class;)Ls9/l;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Throwable;",
            ">(",
            "Ljava/lang/Class<",
            "TE;>;)",
            "Ls9/l<",
            "Ljava/lang/Throwable;",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lkotlinx/coroutines/internal/j$b;->o:Lkotlinx/coroutines/internal/j$b;

    .line 2
    sget v1, Lkotlinx/coroutines/internal/j;->a:I

    const/4 v2, 0x0

    invoke-static {p0, v2}, Lkotlinx/coroutines/internal/j;->f(Ljava/lang/Class;I)I

    move-result v2

    if-eq v1, v2, :cond_c

    return-object v0

    .line 3
    :cond_c
    invoke-virtual {p0}, Ljava/lang/Class;->getConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object p0

    .line 4
    new-instance v1, Lkotlinx/coroutines/internal/j$a;

    invoke-direct {v1}, Lkotlinx/coroutines/internal/j$a;-><init>()V

    invoke-static {p0, v1}, Li9/c;->p([Ljava/lang/Object;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object p0

    .line 5
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1d
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_30

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/reflect/Constructor;

    .line 6
    invoke-static {v1}, Lkotlinx/coroutines/internal/j;->c(Ljava/lang/reflect/Constructor;)Ls9/l;

    move-result-object v1

    if-eqz v1, :cond_1d

    return-object v1

    :cond_30
    return-object v0
.end method

.method private static final c(Ljava/lang/reflect/Constructor;)Ls9/l;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Constructor<",
            "*>;)",
            "Ls9/l<",
            "Ljava/lang/Throwable;",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation

    .line 1
    const-class v0, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v1

    .line 2
    array-length v2, v1

    const/4 v3, 0x0

    if-eqz v2, :cond_46

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq v2, v5, :cond_2a

    const/4 v6, 0x2

    if-eq v2, v6, :cond_12

    goto :goto_4b

    .line 3
    :cond_12
    aget-object v2, v1, v4

    invoke-static {v2, v0}, Lt9/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4b

    aget-object v0, v1, v5

    const-class v1, Ljava/lang/Throwable;

    invoke-static {v0, v1}, Lt9/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4b

    .line 4
    new-instance v3, Lkotlinx/coroutines/internal/j$c;

    invoke-direct {v3, p0}, Lkotlinx/coroutines/internal/j$c;-><init>(Ljava/lang/reflect/Constructor;)V

    goto :goto_4b

    .line 5
    :cond_2a
    aget-object v1, v1, v4

    .line 6
    const-class v2, Ljava/lang/Throwable;

    invoke-static {v1, v2}, Lt9/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3a

    .line 7
    new-instance v3, Lkotlinx/coroutines/internal/j$d;

    invoke-direct {v3, p0}, Lkotlinx/coroutines/internal/j$d;-><init>(Ljava/lang/reflect/Constructor;)V

    goto :goto_4b

    .line 8
    :cond_3a
    invoke-static {v1, v0}, Lt9/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4b

    .line 9
    new-instance v3, Lkotlinx/coroutines/internal/j$e;

    invoke-direct {v3, p0}, Lkotlinx/coroutines/internal/j$e;-><init>(Ljava/lang/reflect/Constructor;)V

    goto :goto_4b

    .line 10
    :cond_46
    new-instance v3, Lkotlinx/coroutines/internal/j$f;

    invoke-direct {v3, p0}, Lkotlinx/coroutines/internal/j$f;-><init>(Ljava/lang/reflect/Constructor;)V

    :cond_4b
    :goto_4b
    return-object v3
.end method

.method private static final d(Ljava/lang/Class;I)I
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;I)I"
        }
    .end annotation

    .line 1
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    .line 2
    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_7
    if-ge v2, v1, :cond_1c

    aget-object v4, v0, v2

    .line 3
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v4

    invoke-static {v4}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_19

    add-int/lit8 v3, v3, 0x1

    :cond_19
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_1c
    add-int/2addr p1, v3

    .line 4
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p0

    if-nez p0, :cond_0

    return p1
.end method

.method static synthetic e(Ljava/lang/Class;IILjava/lang/Object;)I
    .registers 4

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_5

    const/4 p1, 0x0

    .line 1
    :cond_5
    invoke-static {p0, p1}, Lkotlinx/coroutines/internal/j;->d(Ljava/lang/Class;I)I

    move-result p0

    return p0
.end method

.method private static final f(Ljava/lang/Class;I)I
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;I)I"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lr9/a;->c(Ljava/lang/Class;)Lz9/b;

    :try_start_3
    sget-object v0, Lh9/n;->o:Lh9/n$a;

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Lkotlinx/coroutines/internal/j;->e(Ljava/lang/Class;IILjava/lang/Object;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p0}, Lh9/n;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_15

    goto :goto_20

    :catchall_15
    move-exception p0

    sget-object v0, Lh9/n;->o:Lh9/n$a;

    invoke-static {p0}, Lh9/o;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lh9/n;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :goto_20
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p0}, Lh9/n;->c(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    move-object p0, p1

    :cond_2b
    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0
.end method

.method public static final g(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Throwable;",
            ">(TE;)TE;"
        }
    .end annotation

    .line 1
    instance-of v0, p0, Lda/g0;

    if-eqz v0, :cond_26

    .line 2
    :try_start_4
    sget-object v0, Lh9/n;->o:Lh9/n$a;

    check-cast p0, Lda/g0;

    invoke-interface {p0}, Lda/g0;->a()Ljava/lang/Throwable;

    move-result-object p0

    invoke-static {p0}, Lh9/n;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_10
    .catchall {:try_start_4 .. :try_end_10} :catchall_11

    goto :goto_1c

    :catchall_11
    move-exception p0

    sget-object v0, Lh9/n;->o:Lh9/n$a;

    invoke-static {p0}, Lh9/o;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lh9/n;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :goto_1c
    invoke-static {p0}, Lh9/n;->c(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    const/4 p0, 0x0

    :cond_23
    check-cast p0, Ljava/lang/Throwable;

    return-object p0

    .line 3
    :cond_26
    sget-object v0, Lkotlinx/coroutines/internal/j;->b:Lkotlinx/coroutines/internal/g;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkotlinx/coroutines/internal/g;->a(Ljava/lang/Class;)Ls9/l;

    move-result-object v0

    invoke-interface {v0, p0}, Ls9/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Throwable;

    return-object p0
.end method

###### Class kotlinx.coroutines.internal.j.a (kotlinx.coroutines.internal.j$a)
.class public final Lkotlinx/coroutines/internal/j$a;
.super Ljava/lang/Object;
.source "Comparisons.kt"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlinx/coroutines/internal/j;->b(Ljava/lang/Class;)Ls9/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Comparator;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)I"
        }
    .end annotation

    .line 1
    check-cast p2, Ljava/lang/reflect/Constructor;

    .line 2
    invoke-virtual {p2}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object p2

    array-length p2, p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    check-cast p1, Ljava/lang/reflect/Constructor;

    invoke-virtual {p1}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object p1

    array-length p1, p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2, p1}, Lj9/a;->a(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result p1

    return p1
.end method

###### Class kotlinx.coroutines.internal.j.b (kotlinx.coroutines.internal.j$b)
.class final Lkotlinx/coroutines/internal/j$b;
.super Lt9/n;
.source "ExceptionsConstructor.kt"

# interfaces
.implements Ls9/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlinx/coroutines/internal/j;->b(Ljava/lang/Class;)Ls9/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# static fields
.field public static final o:Lkotlinx/coroutines/internal/j$b;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lkotlinx/coroutines/internal/j$b;

    invoke-direct {v0}, Lkotlinx/coroutines/internal/j$b;-><init>()V

    sput-object v0, Lkotlinx/coroutines/internal/j$b;->o:Lkotlinx/coroutines/internal/j$b;

    return-void
.end method

.method constructor <init>()V
    .registers 2

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lt9/n;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final c(Ljava/lang/Throwable;)Ljava/lang/Void;
    .registers 2

    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 1
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/internal/j$b;->c(Ljava/lang/Throwable;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

###### Class kotlinx.coroutines.internal.j.c (kotlinx.coroutines.internal.j$c)
.class public final Lkotlinx/coroutines/internal/j$c;
.super Lt9/n;
.source "ExceptionsConstructor.kt"

# interfaces
.implements Ls9/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlinx/coroutines/internal/j;->c(Ljava/lang/reflect/Constructor;)Ls9/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lt9/n;",
        "Ls9/l<",
        "Ljava/lang/Throwable;",
        "Ljava/lang/Throwable;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic o:Ljava/lang/reflect/Constructor;


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Constructor;)V
    .registers 2

    iput-object p1, p0, Lkotlinx/coroutines/internal/j$c;->o:Ljava/lang/reflect/Constructor;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lt9/n;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final c(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .registers 6

    .line 1
    :try_start_0
    sget-object v0, Lh9/n;->o:Lh9/n$a;

    .line 2
    iget-object v0, p0, Lkotlinx/coroutines/internal/j$c;->o:Ljava/lang/reflect/Constructor;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1e

    check-cast p1, Ljava/lang/Throwable;

    .line 3
    invoke-static {p1}, Lh9/n;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_31

    .line 4
    :cond_1e
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "null cannot be cast to non-null type kotlin.Throwable"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_26
    .catchall {:try_start_0 .. :try_end_26} :catchall_26

    :catchall_26
    move-exception p1

    .line 5
    sget-object v0, Lh9/n;->o:Lh9/n$a;

    invoke-static {p1}, Lh9/o;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lh9/n;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_31
    invoke-static {p1}, Lh9/n;->c(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_38

    const/4 p1, 0x0

    :cond_38
    check-cast p1, Ljava/lang/Throwable;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 1
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/internal/j$c;->c(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p1

    return-object p1
.end method

###### Class kotlinx.coroutines.internal.j.d (kotlinx.coroutines.internal.j$d)
.class public final Lkotlinx/coroutines/internal/j$d;
.super Lt9/n;
.source "ExceptionsConstructor.kt"

# interfaces
.implements Ls9/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlinx/coroutines/internal/j;->c(Ljava/lang/reflect/Constructor;)Ls9/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lt9/n;",
        "Ls9/l<",
        "Ljava/lang/Throwable;",
        "Ljava/lang/Throwable;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic o:Ljava/lang/reflect/Constructor;


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Constructor;)V
    .registers 2

    iput-object p1, p0, Lkotlinx/coroutines/internal/j$d;->o:Ljava/lang/reflect/Constructor;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lt9/n;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final c(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .registers 5

    .line 1
    :try_start_0
    sget-object v0, Lh9/n;->o:Lh9/n$a;

    .line 2
    iget-object v0, p0, Lkotlinx/coroutines/internal/j$d;->o:Ljava/lang/reflect/Constructor;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_17

    check-cast p1, Ljava/lang/Throwable;

    .line 3
    invoke-static {p1}, Lh9/n;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_2a

    .line 4
    :cond_17
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "null cannot be cast to non-null type kotlin.Throwable"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1f
    .catchall {:try_start_0 .. :try_end_1f} :catchall_1f

    :catchall_1f
    move-exception p1

    .line 5
    sget-object v0, Lh9/n;->o:Lh9/n$a;

    invoke-static {p1}, Lh9/o;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lh9/n;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_2a
    invoke-static {p1}, Lh9/n;->c(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_31

    const/4 p1, 0x0

    :cond_31
    check-cast p1, Ljava/lang/Throwable;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 1
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/internal/j$d;->c(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p1

    return-object p1
.end method

###### Class kotlinx.coroutines.internal.j.e (kotlinx.coroutines.internal.j$e)
.class public final Lkotlinx/coroutines/internal/j$e;
.super Lt9/n;
.source "ExceptionsConstructor.kt"

# interfaces
.implements Ls9/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlinx/coroutines/internal/j;->c(Ljava/lang/reflect/Constructor;)Ls9/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lt9/n;",
        "Ls9/l<",
        "Ljava/lang/Throwable;",
        "Ljava/lang/Throwable;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic o:Ljava/lang/reflect/Constructor;


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Constructor;)V
    .registers 2

    iput-object p1, p0, Lkotlinx/coroutines/internal/j$e;->o:Ljava/lang/reflect/Constructor;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lt9/n;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final c(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .registers 6

    .line 1
    :try_start_0
    sget-object v0, Lh9/n;->o:Lh9/n$a;

    .line 2
    iget-object v0, p0, Lkotlinx/coroutines/internal/j$e;->o:Ljava/lang/reflect/Constructor;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1e

    check-cast v0, Ljava/lang/Throwable;

    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 3
    invoke-static {v0}, Lh9/n;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_31

    .line 4
    :cond_1e
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "null cannot be cast to non-null type kotlin.Throwable"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_26
    .catchall {:try_start_0 .. :try_end_26} :catchall_26

    :catchall_26
    move-exception p1

    .line 5
    sget-object v0, Lh9/n;->o:Lh9/n$a;

    invoke-static {p1}, Lh9/o;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lh9/n;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_31
    invoke-static {p1}, Lh9/n;->c(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_38

    const/4 p1, 0x0

    :cond_38
    check-cast p1, Ljava/lang/Throwable;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 1
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/internal/j$e;->c(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p1

    return-object p1
.end method

###### Class kotlinx.coroutines.internal.j.f (kotlinx.coroutines.internal.j$f)
.class public final Lkotlinx/coroutines/internal/j$f;
.super Lt9/n;
.source "ExceptionsConstructor.kt"

# interfaces
.implements Ls9/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlinx/coroutines/internal/j;->c(Ljava/lang/reflect/Constructor;)Ls9/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lt9/n;",
        "Ls9/l<",
        "Ljava/lang/Throwable;",
        "Ljava/lang/Throwable;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic o:Ljava/lang/reflect/Constructor;


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Constructor;)V
    .registers 2

    iput-object p1, p0, Lkotlinx/coroutines/internal/j$f;->o:Ljava/lang/reflect/Constructor;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lt9/n;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final c(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .registers 4

    .line 1
    :try_start_0
    sget-object v0, Lh9/n;->o:Lh9/n$a;

    .line 2
    iget-object v0, p0, Lkotlinx/coroutines/internal/j$f;->o:Ljava/lang/reflect/Constructor;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_17

    check-cast v0, Ljava/lang/Throwable;

    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 3
    invoke-static {v0}, Lh9/n;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_2a

    .line 4
    :cond_17
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "null cannot be cast to non-null type kotlin.Throwable"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1f
    .catchall {:try_start_0 .. :try_end_1f} :catchall_1f

    :catchall_1f
    move-exception p1

    .line 5
    sget-object v0, Lh9/n;->o:Lh9/n$a;

    invoke-static {p1}, Lh9/o;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lh9/n;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_2a
    invoke-static {p1}, Lh9/n;->c(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_31

    const/4 p1, 0x0

    :cond_31
    check-cast p1, Ljava/lang/Throwable;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 1
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/internal/j$f;->c(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p1

    return-object p1
.end method
