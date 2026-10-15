###### Class fa.d (fa.d)
.class public Lfa/d;
.super Lfa/a;
.source "ArrayChannel.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfa/d$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lfa/a<",
        "TE;>;"
    }
.end annotation


# instance fields
.field private final e:I

.field private final f:Lfa/e;

.field private final g:Ljava/util/concurrent/locks/ReentrantLock;

.field private h:[Ljava/lang/Object;

.field private i:I

.field private volatile synthetic size:I


# direct methods
.method public constructor <init>(ILfa/e;Ls9/l;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lfa/e;",
            "Ls9/l<",
            "-TE;",
            "Lh9/t;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p3}, Lfa/a;-><init>(Ls9/l;)V

    .line 2
    iput p1, p0, Lfa/d;->e:I

    .line 3
    iput-object p2, p0, Lfa/d;->f:Lfa/e;

    const/4 p2, 0x0

    const/4 p3, 0x1

    if-lt p1, p3, :cond_c

    goto :goto_d

    :cond_c
    const/4 p3, 0x0

    :goto_d
    if-eqz p3, :cond_2d

    .line 4
    new-instance p3, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {p3}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object p3, p0, Lfa/d;->g:Ljava/util/concurrent/locks/ReentrantLock;

    const/16 p3, 0x8

    .line 5
    invoke-static {p1, p3}, Ljava/lang/Math;->min(II)I

    move-result p1

    new-array p1, p1, [Ljava/lang/Object;

    sget-object v1, Lfa/b;->a:Lkotlinx/coroutines/internal/e0;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Li9/c;->e([Ljava/lang/Object;Ljava/lang/Object;IIILjava/lang/Object;)V

    iput-object p1, p0, Lfa/d;->h:[Ljava/lang/Object;

    .line 6
    iput p2, p0, Lfa/d;->size:I

    return-void

    .line 7
    :cond_2d
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "ArrayChannel capacity must be at least 1, but "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " was specified"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method private final C(ILjava/lang/Object;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    .line 1
    iget v0, p0, Lfa/d;->e:I

    if-ge p1, v0, :cond_11

    .line 2
    invoke-direct {p0, p1}, Lfa/d;->D(I)V

    .line 3
    iget-object v0, p0, Lfa/d;->h:[Ljava/lang/Object;

    iget v1, p0, Lfa/d;->i:I

    add-int/2addr v1, p1

    array-length p1, v0

    rem-int/2addr v1, p1

    aput-object p2, v0, v1

    goto :goto_3e

    .line 4
    :cond_11
    invoke-static {}, Lda/s0;->a()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lfa/d;->f:Lfa/e;

    sget-object v2, Lfa/e;->p:Lfa/e;

    if-ne v0, v2, :cond_20

    const/4 v0, 0x1

    goto :goto_21

    :cond_20
    const/4 v0, 0x0

    :goto_21
    if-eqz v0, :cond_24

    goto :goto_2a

    :cond_24
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 5
    :cond_2a
    :goto_2a
    iget-object v0, p0, Lfa/d;->h:[Ljava/lang/Object;

    iget v2, p0, Lfa/d;->i:I

    array-length v3, v0

    rem-int v3, v2, v3

    const/4 v4, 0x0

    aput-object v4, v0, v3

    add-int/2addr p1, v2

    .line 6
    array-length v3, v0

    rem-int/2addr p1, v3

    aput-object p2, v0, p1

    add-int/2addr v2, v1

    .line 7
    array-length p1, v0

    rem-int/2addr v2, p1

    iput v2, p0, Lfa/d;->i:I

    :goto_3e
    return-void
.end method

.method private final D(I)V
    .registers 9

    .line 1
    iget-object v0, p0, Lfa/d;->h:[Ljava/lang/Object;

    array-length v1, v0

    if-lt p1, v1, :cond_2b

    .line 2
    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    iget v1, p0, Lfa/d;->e:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 3
    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_12
    if-ge v3, p1, :cond_22

    .line 4
    iget-object v4, p0, Lfa/d;->h:[Ljava/lang/Object;

    iget v5, p0, Lfa/d;->i:I

    add-int/2addr v5, v3

    array-length v6, v4

    rem-int/2addr v5, v6

    aget-object v4, v4, v5

    aput-object v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    .line 5
    :cond_22
    sget-object v3, Lfa/b;->a:Lkotlinx/coroutines/internal/e0;

    invoke-static {v1, v3, p1, v0}, Li9/c;->d([Ljava/lang/Object;Ljava/lang/Object;II)V

    .line 6
    iput-object v1, p0, Lfa/d;->h:[Ljava/lang/Object;

    .line 7
    iput v2, p0, Lfa/d;->i:I

    :cond_2b
    return-void
.end method

.method private final E(I)Lkotlinx/coroutines/internal/e0;
    .registers 5

    .line 1
    iget v0, p0, Lfa/d;->e:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ge p1, v0, :cond_a

    add-int/2addr p1, v2

    .line 2
    iput p1, p0, Lfa/d;->size:I

    return-object v1

    .line 3
    :cond_a
    iget-object p1, p0, Lfa/d;->f:Lfa/e;

    sget-object v0, Lfa/d$a;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    if-eq p1, v2, :cond_26

    const/4 v0, 0x2

    if-eq p1, v0, :cond_23

    const/4 v0, 0x3

    if-ne p1, v0, :cond_1d

    goto :goto_28

    .line 4
    :cond_1d
    new-instance p1, Lh9/l;

    invoke-direct {p1}, Lh9/l;-><init>()V

    throw p1

    .line 5
    :cond_23
    sget-object v1, Lfa/b;->b:Lkotlinx/coroutines/internal/e0;

    goto :goto_28

    .line 6
    :cond_26
    sget-object v1, Lfa/b;->c:Lkotlinx/coroutines/internal/e0;

    :goto_28
    return-object v1
.end method


# virtual methods
.method protected f()Ljava/lang/String;
    .registers 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "(buffer:capacity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lfa/d;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lfa/d;->size:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected m(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lfa/d;->g:Ljava/util/concurrent/locks/ReentrantLock;

    .line 2
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 3
    :try_start_5
    iget v1, p0, Lfa/d;->size:I

    .line 4
    invoke-virtual {p0}, Lfa/c;->g()Lfa/i;

    move-result-object v2
    :try_end_b
    .catchall {:try_start_5 .. :try_end_b} :catchall_66

    if-eqz v2, :cond_11

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v2

    .line 5
    :cond_11
    :try_start_11
    invoke-direct {p0, v1}, Lfa/d;->E(I)Lkotlinx/coroutines/internal/e0;

    move-result-object v2
    :try_end_15
    .catchall {:try_start_11 .. :try_end_15} :catchall_66

    if-eqz v2, :cond_1b

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v2

    :cond_1b
    if-nez v1, :cond_5d

    .line 6
    :cond_1d
    :try_start_1d
    invoke-virtual {p0}, Lfa/a;->p()Lfa/p;

    move-result-object v2

    if-nez v2, :cond_24

    goto :goto_5d

    .line 7
    :cond_24
    instance-of v3, v2, Lfa/i;

    if-eqz v3, :cond_2e

    .line 8
    iput v1, p0, Lfa/d;->size:I
    :try_end_2a
    .catchall {:try_start_1d .. :try_end_2a} :catchall_66

    .line 9
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v2

    .line 10
    :cond_2e
    :try_start_2e
    invoke-static {v2}, Lt9/m;->b(Ljava/lang/Object;)V

    const/4 v3, 0x0

    invoke-interface {v2, p1, v3}, Lfa/p;->j(Ljava/lang/Object;Lkotlinx/coroutines/internal/r$b;)Lkotlinx/coroutines/internal/e0;

    move-result-object v3

    if-eqz v3, :cond_1d

    .line 11
    invoke-static {}, Lda/s0;->a()Z

    move-result v4

    if-eqz v4, :cond_4e

    sget-object v4, Lda/o;->a:Lkotlinx/coroutines/internal/e0;

    if-ne v3, v4, :cond_44

    const/4 v3, 0x1

    goto :goto_45

    :cond_44
    const/4 v3, 0x0

    :goto_45
    if-eqz v3, :cond_48

    goto :goto_4e

    :cond_48
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 12
    :cond_4e
    :goto_4e
    iput v1, p0, Lfa/d;->size:I

    .line 13
    sget-object v1, Lh9/t;->a:Lh9/t;
    :try_end_52
    .catchall {:try_start_2e .. :try_end_52} :catchall_66

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 14
    invoke-interface {v2, p1}, Lfa/p;->g(Ljava/lang/Object;)V

    .line 15
    invoke-interface {v2}, Lfa/p;->d()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 16
    :cond_5d
    :goto_5d
    :try_start_5d
    invoke-direct {p0, v1, p1}, Lfa/d;->C(ILjava/lang/Object;)V

    .line 17
    sget-object p1, Lfa/b;->b:Lkotlinx/coroutines/internal/e0;
    :try_end_62
    .catchall {:try_start_5d .. :try_end_62} :catchall_66

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object p1

    :catchall_66
    move-exception p1

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_6c

    :goto_6b
    throw p1

    :goto_6c
    goto :goto_6b
.end method

.method protected u(Lfa/n;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lfa/n<",
            "-TE;>;)Z"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lfa/d;->g:Ljava/util/concurrent/locks/ReentrantLock;

    .line 2
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 3
    :try_start_5
    invoke-super {p0, p1}, Lfa/a;->u(Lfa/n;)Z

    move-result p1
    :try_end_9
    .catchall {:try_start_5 .. :try_end_9} :catchall_d

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return p1

    :catchall_d
    move-exception p1

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method protected final v()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method protected final w()Z
    .registers 2

    .line 1
    iget v0, p0, Lfa/d;->size:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method protected z()Ljava/lang/Object;
    .registers 10

    .line 1
    iget-object v0, p0, Lfa/d;->g:Ljava/util/concurrent/locks/ReentrantLock;

    .line 2
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 3
    :try_start_5
    iget v1, p0, Lfa/d;->size:I

    if-nez v1, :cond_15

    .line 4
    invoke-virtual {p0}, Lfa/c;->g()Lfa/i;

    move-result-object v1

    if-nez v1, :cond_11

    sget-object v1, Lfa/b;->d:Lkotlinx/coroutines/internal/e0;
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_86

    :cond_11
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v1

    .line 5
    :cond_15
    :try_start_15
    iget-object v2, p0, Lfa/d;->h:[Ljava/lang/Object;

    iget v3, p0, Lfa/d;->i:I

    aget-object v4, v2, v3

    const/4 v5, 0x0

    .line 6
    aput-object v5, v2, v3

    add-int/lit8 v2, v1, -0x1

    .line 7
    iput v2, p0, Lfa/d;->size:I

    .line 8
    sget-object v2, Lfa/b;->d:Lkotlinx/coroutines/internal/e0;

    .line 9
    iget v3, p0, Lfa/d;->e:I

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-ne v1, v3, :cond_5c

    move-object v3, v5

    .line 10
    :goto_2b
    invoke-virtual {p0}, Lfa/c;->q()Lfa/r;

    move-result-object v8

    if-nez v8, :cond_33

    move-object v5, v3

    goto :goto_5c

    .line 11
    :cond_33
    invoke-static {v8}, Lt9/m;->b(Ljava/lang/Object;)V

    invoke-virtual {v8, v5}, Lfa/r;->E(Lkotlinx/coroutines/internal/r$b;)Lkotlinx/coroutines/internal/e0;

    move-result-object v3

    if-eqz v3, :cond_57

    .line 12
    invoke-static {}, Lda/s0;->a()Z

    move-result v2

    if-eqz v2, :cond_50

    sget-object v2, Lda/o;->a:Lkotlinx/coroutines/internal/e0;

    if-ne v3, v2, :cond_47

    const/4 v6, 0x1

    :cond_47
    if-eqz v6, :cond_4a

    goto :goto_50

    :cond_4a
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 13
    :cond_50
    :goto_50
    invoke-virtual {v8}, Lfa/r;->D()Ljava/lang/Object;

    move-result-object v2

    move-object v5, v8

    const/4 v6, 0x1

    goto :goto_5c

    .line 14
    :cond_57
    invoke-virtual {v8}, Lfa/r;->F()V

    move-object v3, v8

    goto :goto_2b

    .line 15
    :cond_5c
    :goto_5c
    sget-object v3, Lfa/b;->d:Lkotlinx/coroutines/internal/e0;

    if-eq v2, v3, :cond_6f

    instance-of v3, v2, Lfa/i;

    if-nez v3, :cond_6f

    .line 16
    iput v1, p0, Lfa/d;->size:I

    .line 17
    iget-object v3, p0, Lfa/d;->h:[Ljava/lang/Object;

    iget v8, p0, Lfa/d;->i:I

    add-int/2addr v8, v1

    array-length v1, v3

    rem-int/2addr v8, v1

    aput-object v2, v3, v8

    .line 18
    :cond_6f
    iget v1, p0, Lfa/d;->i:I

    add-int/2addr v1, v7

    iget-object v2, p0, Lfa/d;->h:[Ljava/lang/Object;

    array-length v2, v2

    rem-int/2addr v1, v2

    iput v1, p0, Lfa/d;->i:I

    .line 19
    sget-object v1, Lh9/t;->a:Lh9/t;
    :try_end_7a
    .catchall {:try_start_15 .. :try_end_7a} :catchall_86

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    if-eqz v6, :cond_85

    .line 20
    invoke-static {v5}, Lt9/m;->b(Ljava/lang/Object;)V

    invoke-virtual {v5}, Lfa/r;->C()V

    :cond_85
    return-object v4

    :catchall_86
    move-exception v1

    .line 21
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_8c

    :goto_8b
    throw v1

    :goto_8c
    goto :goto_8b
.end method

###### Class fa.d.a (fa.d$a)
.class public final synthetic Lfa/d$a;
.super Ljava/lang/Object;
.source "ArrayChannel.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfa/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1001
    name = "a"
.end annotation


# static fields
.field public static final synthetic a:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    invoke-static {}, Lfa/e;->values()[Lfa/e;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sget-object v1, Lfa/e;->o:Lfa/e;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1

    sget-object v1, Lfa/e;->q:Lfa/e;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1

    sget-object v1, Lfa/e;->p:Lfa/e;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1

    sput-object v0, Lfa/d$a;->a:[I

    return-void
.end method
