###### Class kotlinx.coroutines.flow.h (kotlinx.coroutines.flow.h)
.class final synthetic Lkotlinx/coroutines/flow/h;
.super Ljava/lang/Object;
.source "Errors.kt"


# direct methods
.method public static final a(Lkotlinx/coroutines/flow/b;Ls9/q;)Lkotlinx/coroutines/flow/b;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/coroutines/flow/b<",
            "+TT;>;",
            "Ls9/q<",
            "-",
            "Lkotlinx/coroutines/flow/c<",
            "-TT;>;-",
            "Ljava/lang/Throwable;",
            "-",
            "Lk9/d<",
            "-",
            "Lh9/t;",
            ">;+",
            "Ljava/lang/Object;",
            ">;)",
            "Lkotlinx/coroutines/flow/b<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lkotlinx/coroutines/flow/h$a;

    invoke-direct {v0, p0, p1}, Lkotlinx/coroutines/flow/h$a;-><init>(Lkotlinx/coroutines/flow/b;Ls9/q;)V

    return-object v0
.end method

.method public static final b(Lkotlinx/coroutines/flow/b;Lkotlinx/coroutines/flow/c;Lk9/d;)Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/coroutines/flow/b<",
            "+TT;>;",
            "Lkotlinx/coroutines/flow/c<",
            "-TT;>;",
            "Lk9/d<",
            "-",
            "Ljava/lang/Throwable;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lkotlinx/coroutines/flow/h$b;

    if-eqz v0, :cond_13

    move-object v0, p2

    check-cast v0, Lkotlinx/coroutines/flow/h$b;

    iget v1, v0, Lkotlinx/coroutines/flow/h$b;->t:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lkotlinx/coroutines/flow/h$b;->t:I

    goto :goto_18

    :cond_13
    new-instance v0, Lkotlinx/coroutines/flow/h$b;

    invoke-direct {v0, p2}, Lkotlinx/coroutines/flow/h$b;-><init>(Lk9/d;)V

    :goto_18
    iget-object p2, v0, Lkotlinx/coroutines/flow/h$b;->s:Ljava/lang/Object;

    invoke-static {}, Ll9/b;->c()Ljava/lang/Object;

    move-result-object v1

    .line 1
    iget v2, v0, Lkotlinx/coroutines/flow/h$b;->t:I

    const/4 v3, 0x1

    if-eqz v2, :cond_37

    if-ne v2, v3, :cond_2f

    iget-object p0, v0, Lkotlinx/coroutines/flow/h$b;->r:Ljava/lang/Object;

    check-cast p0, Lt9/y;

    :try_start_29
    invoke-static {p2}, Lh9/o;->b(Ljava/lang/Object;)V
    :try_end_2c
    .catchall {:try_start_29 .. :try_end_2c} :catchall_2d

    goto :goto_4f

    :catchall_2d
    move-exception p1

    goto :goto_53

    .line 2
    :cond_2f
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3
    :cond_37
    invoke-static {p2}, Lh9/o;->b(Ljava/lang/Object;)V

    .line 4
    new-instance p2, Lt9/y;

    invoke-direct {p2}, Lt9/y;-><init>()V

    .line 5
    :try_start_3f
    new-instance v2, Lkotlinx/coroutines/flow/h$c;

    invoke-direct {v2, p1, p2}, Lkotlinx/coroutines/flow/h$c;-><init>(Lkotlinx/coroutines/flow/c;Lt9/y;)V

    iput-object p2, v0, Lkotlinx/coroutines/flow/h$b;->r:Ljava/lang/Object;

    iput v3, v0, Lkotlinx/coroutines/flow/h$b;->t:I

    invoke-interface {p0, v2, v0}, Lkotlinx/coroutines/flow/b;->a(Lkotlinx/coroutines/flow/c;Lk9/d;)Ljava/lang/Object;

    move-result-object p0
    :try_end_4c
    .catchall {:try_start_3f .. :try_end_4c} :catchall_51

    if-ne p0, v1, :cond_4f

    return-object v1

    :cond_4f
    :goto_4f
    const/4 p0, 0x0

    return-object p0

    :catchall_51
    move-exception p1

    move-object p0, p2

    .line 6
    :goto_53
    iget-object p0, p0, Lt9/y;->o:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Throwable;

    .line 7
    invoke-static {p1, p0}, Lkotlinx/coroutines/flow/h;->d(Ljava/lang/Throwable;Ljava/lang/Throwable;)Z

    move-result p2

    if-nez p2, :cond_76

    invoke-interface {v0}, Lk9/d;->getContext()Lk9/g;

    move-result-object p2

    invoke-static {p1, p2}, Lkotlinx/coroutines/flow/h;->c(Ljava/lang/Throwable;Lk9/g;)Z

    move-result p2

    if-nez p2, :cond_76

    if-nez p0, :cond_6a

    return-object p1

    .line 8
    :cond_6a
    instance-of p2, p1, Ljava/util/concurrent/CancellationException;

    if-eqz p2, :cond_72

    .line 9
    invoke-static {p0, p1}, Lh9/a;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 10
    throw p0

    .line 11
    :cond_72
    invoke-static {p1, p0}, Lh9/a;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 12
    throw p1

    .line 13
    :cond_76
    throw p1
.end method

.method private static final c(Ljava/lang/Throwable;Lk9/g;)Z
    .registers 3

    .line 1
    sget-object v0, Lda/x1;->m:Lda/x1$b;

    invoke-interface {p1, v0}, Lk9/g;->b(Lk9/g$c;)Lk9/g$b;

    move-result-object p1

    check-cast p1, Lda/x1;

    if-eqz p1, :cond_1a

    .line 2
    invoke-interface {p1}, Lda/x1;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_11

    goto :goto_1a

    .line 3
    :cond_11
    invoke-interface {p1}, Lda/x1;->j()Ljava/util/concurrent/CancellationException;

    move-result-object p1

    invoke-static {p0, p1}, Lkotlinx/coroutines/flow/h;->d(Ljava/lang/Throwable;Ljava/lang/Throwable;)Z

    move-result p0

    return p0

    :cond_1a
    :goto_1a
    const/4 p0, 0x0

    return p0
.end method

.method private static final d(Ljava/lang/Throwable;Ljava/lang/Throwable;)Z
    .registers 3

    if-eqz p1, :cond_20

    .line 1
    invoke-static {}, Lda/s0;->d()Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_d

    :cond_9
    invoke-static {p1}, Lkotlinx/coroutines/internal/d0;->l(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p1

    :goto_d
    invoke-static {}, Lda/s0;->d()Z

    move-result v0

    if-nez v0, :cond_14

    goto :goto_18

    :cond_14
    invoke-static {p0}, Lkotlinx/coroutines/internal/d0;->l(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    :goto_18
    invoke-static {p1, p0}, Lt9/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_20

    const/4 p0, 0x1

    goto :goto_21

    :cond_20
    const/4 p0, 0x0

    :goto_21
    return p0
.end method

###### Class kotlinx.coroutines.flow.h.a (kotlinx.coroutines.flow.h$a)
.class public final Lkotlinx/coroutines/flow/h$a;
.super Ljava/lang/Object;
.source "SafeCollector.common.kt"

# interfaces
.implements Lkotlinx/coroutines/flow/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlinx/coroutines/flow/h;->a(Lkotlinx/coroutines/flow/b;Ls9/q;)Lkotlinx/coroutines/flow/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlinx/coroutines/flow/b<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic o:Lkotlinx/coroutines/flow/b;

.field final synthetic p:Ls9/q;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/flow/b;Ls9/q;)V
    .registers 3

    iput-object p1, p0, Lkotlinx/coroutines/flow/h$a;->o:Lkotlinx/coroutines/flow/b;

    iput-object p2, p0, Lkotlinx/coroutines/flow/h$a;->p:Ls9/q;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lkotlinx/coroutines/flow/c;Lk9/d;)Ljava/lang/Object;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/flow/c<",
            "-TT;>;",
            "Lk9/d<",
            "-",
            "Lh9/t;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lkotlinx/coroutines/flow/h$a$a;

    if-eqz v0, :cond_13

    move-object v0, p2

    check-cast v0, Lkotlinx/coroutines/flow/h$a$a;

    iget v1, v0, Lkotlinx/coroutines/flow/h$a$a;->s:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lkotlinx/coroutines/flow/h$a$a;->s:I

    goto :goto_18

    :cond_13
    new-instance v0, Lkotlinx/coroutines/flow/h$a$a;

    invoke-direct {v0, p0, p2}, Lkotlinx/coroutines/flow/h$a$a;-><init>(Lkotlinx/coroutines/flow/h$a;Lk9/d;)V

    :goto_18
    iget-object p2, v0, Lkotlinx/coroutines/flow/h$a$a;->r:Ljava/lang/Object;

    invoke-static {}, Ll9/b;->c()Ljava/lang/Object;

    move-result-object v1

    .line 1
    iget v2, v0, Lkotlinx/coroutines/flow/h$a$a;->s:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_40

    if-eq v2, v4, :cond_34

    if-ne v2, v3, :cond_2c

    invoke-static {p2}, Lh9/o;->b(Ljava/lang/Object;)V

    goto :goto_6f

    .line 2
    :cond_2c
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_34
    iget-object p1, v0, Lkotlinx/coroutines/flow/h$a$a;->v:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/flow/c;

    iget-object v2, v0, Lkotlinx/coroutines/flow/h$a$a;->u:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/flow/h$a;

    invoke-static {p2}, Lh9/o;->b(Ljava/lang/Object;)V

    goto :goto_53

    :cond_40
    invoke-static {p2}, Lh9/o;->b(Ljava/lang/Object;)V

    .line 4
    iget-object p2, p0, Lkotlinx/coroutines/flow/h$a;->o:Lkotlinx/coroutines/flow/b;

    iput-object p0, v0, Lkotlinx/coroutines/flow/h$a$a;->u:Ljava/lang/Object;

    iput-object p1, v0, Lkotlinx/coroutines/flow/h$a$a;->v:Ljava/lang/Object;

    iput v4, v0, Lkotlinx/coroutines/flow/h$a$a;->s:I

    invoke-static {p2, p1, v0}, Lkotlinx/coroutines/flow/d;->b(Lkotlinx/coroutines/flow/b;Lkotlinx/coroutines/flow/c;Lk9/d;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_52

    return-object v1

    :cond_52
    move-object v2, p0

    .line 5
    :goto_53
    check-cast p2, Ljava/lang/Throwable;

    if-eqz p2, :cond_6f

    .line 6
    iget-object v2, v2, Lkotlinx/coroutines/flow/h$a;->p:Ls9/q;

    const/4 v4, 0x0

    iput-object v4, v0, Lkotlinx/coroutines/flow/h$a$a;->u:Ljava/lang/Object;

    iput-object v4, v0, Lkotlinx/coroutines/flow/h$a$a;->v:Ljava/lang/Object;

    iput v3, v0, Lkotlinx/coroutines/flow/h$a$a;->s:I

    const/4 v3, 0x6

    invoke-static {v3}, Lt9/k;->a(I)V

    invoke-interface {v2, p1, p2, v0}, Ls9/q;->b(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const/4 p2, 0x7

    invoke-static {p2}, Lt9/k;->a(I)V

    if-ne p1, v1, :cond_6f

    return-object v1

    .line 7
    :cond_6f
    :goto_6f
    sget-object p1, Lh9/t;->a:Lh9/t;

    return-object p1
.end method

###### Class kotlinx.coroutines.flow.h.a.C0193a (kotlinx.coroutines.flow.h$a$a)
.class public final Lkotlinx/coroutines/flow/h$a$a;
.super Lm9/d;
.source "SafeCollector.common.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlinx/coroutines/flow/h$a;->a(Lkotlinx/coroutines/flow/c;Lk9/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lm9/f;
    c = "kotlinx.coroutines.flow.FlowKt__ErrorsKt$catch$$inlined$unsafeFlow$1"
    f = "Errors.kt"
    l = {
        0x71,
        0x72
    }
    m = "collect"
.end annotation


# instance fields
.field synthetic r:Ljava/lang/Object;

.field s:I

.field final synthetic t:Lkotlinx/coroutines/flow/h$a;

.field u:Ljava/lang/Object;

.field v:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/flow/h$a;Lk9/d;)V
    .registers 3

    iput-object p1, p0, Lkotlinx/coroutines/flow/h$a$a;->t:Lkotlinx/coroutines/flow/h$a;

    invoke-direct {p0, p2}, Lm9/d;-><init>(Lk9/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    iput-object p1, p0, Lkotlinx/coroutines/flow/h$a$a;->r:Ljava/lang/Object;

    iget p1, p0, Lkotlinx/coroutines/flow/h$a$a;->s:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lkotlinx/coroutines/flow/h$a$a;->s:I

    iget-object p1, p0, Lkotlinx/coroutines/flow/h$a$a;->t:Lkotlinx/coroutines/flow/h$a;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, Lkotlinx/coroutines/flow/h$a;->a(Lkotlinx/coroutines/flow/c;Lk9/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

###### Class kotlinx.coroutines.flow.h.b (kotlinx.coroutines.flow.h$b)
.class final Lkotlinx/coroutines/flow/h$b;
.super Lm9/d;
.source "Errors.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlinx/coroutines/flow/h;->b(Lkotlinx/coroutines/flow/b;Lkotlinx/coroutines/flow/c;Lk9/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lm9/d;"
    }
.end annotation

.annotation runtime Lm9/f;
    c = "kotlinx.coroutines.flow.FlowKt__ErrorsKt"
    f = "Errors.kt"
    l = {
        0x9c
    }
    m = "catchImpl"
.end annotation


# instance fields
.field r:Ljava/lang/Object;

.field synthetic s:Ljava/lang/Object;

.field t:I


# direct methods
.method constructor <init>(Lk9/d;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lk9/d<",
            "-",
            "Lkotlinx/coroutines/flow/h$b;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lm9/d;-><init>(Lk9/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    iput-object p1, p0, Lkotlinx/coroutines/flow/h$b;->s:Ljava/lang/Object;

    iget p1, p0, Lkotlinx/coroutines/flow/h$b;->t:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lkotlinx/coroutines/flow/h$b;->t:I

    const/4 p1, 0x0

    invoke-static {p1, p1, p0}, Lkotlinx/coroutines/flow/d;->b(Lkotlinx/coroutines/flow/b;Lkotlinx/coroutines/flow/c;Lk9/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

###### Class kotlinx.coroutines.flow.h.c (kotlinx.coroutines.flow.h$c)
.class final Lkotlinx/coroutines/flow/h$c;
.super Ljava/lang/Object;
.source "Errors.kt"

# interfaces
.implements Lkotlinx/coroutines/flow/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlinx/coroutines/flow/h;->b(Lkotlinx/coroutines/flow/b;Lkotlinx/coroutines/flow/c;Lk9/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lkotlinx/coroutines/flow/c;"
    }
.end annotation


# instance fields
.field final synthetic o:Lkotlinx/coroutines/flow/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/c<",
            "TT;>;"
        }
    .end annotation
.end field

.field final synthetic p:Lt9/y;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lt9/y<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lkotlinx/coroutines/flow/c;Lt9/y;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/flow/c<",
            "-TT;>;",
            "Lt9/y<",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lkotlinx/coroutines/flow/h$c;->o:Lkotlinx/coroutines/flow/c;

    iput-object p2, p0, Lkotlinx/coroutines/flow/h$c;->p:Lt9/y;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final c(Ljava/lang/Object;Lk9/d;)Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lk9/d<",
            "-",
            "Lh9/t;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lkotlinx/coroutines/flow/h$c$a;

    if-eqz v0, :cond_13

    move-object v0, p2

    check-cast v0, Lkotlinx/coroutines/flow/h$c$a;

    iget v1, v0, Lkotlinx/coroutines/flow/h$c$a;->u:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lkotlinx/coroutines/flow/h$c$a;->u:I

    goto :goto_18

    :cond_13
    new-instance v0, Lkotlinx/coroutines/flow/h$c$a;

    invoke-direct {v0, p0, p2}, Lkotlinx/coroutines/flow/h$c$a;-><init>(Lkotlinx/coroutines/flow/h$c;Lk9/d;)V

    :goto_18
    iget-object p2, v0, Lkotlinx/coroutines/flow/h$c$a;->s:Ljava/lang/Object;

    invoke-static {}, Ll9/b;->c()Ljava/lang/Object;

    move-result-object v1

    .line 1
    iget v2, v0, Lkotlinx/coroutines/flow/h$c$a;->u:I

    const/4 v3, 0x1

    if-eqz v2, :cond_37

    if-ne v2, v3, :cond_2f

    iget-object p1, v0, Lkotlinx/coroutines/flow/h$c$a;->r:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/flow/h$c;

    :try_start_29
    invoke-static {p2}, Lh9/o;->b(Ljava/lang/Object;)V
    :try_end_2c
    .catchall {:try_start_29 .. :try_end_2c} :catchall_2d

    goto :goto_47

    :catchall_2d
    move-exception p2

    goto :goto_4c

    .line 2
    :cond_2f
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_37
    invoke-static {p2}, Lh9/o;->b(Ljava/lang/Object;)V

    .line 4
    :try_start_3a
    iget-object p2, p0, Lkotlinx/coroutines/flow/h$c;->o:Lkotlinx/coroutines/flow/c;

    iput-object p0, v0, Lkotlinx/coroutines/flow/h$c$a;->r:Ljava/lang/Object;

    iput v3, v0, Lkotlinx/coroutines/flow/h$c$a;->u:I

    invoke-interface {p2, p1, v0}, Lkotlinx/coroutines/flow/c;->c(Ljava/lang/Object;Lk9/d;)Ljava/lang/Object;

    move-result-object p1
    :try_end_44
    .catchall {:try_start_3a .. :try_end_44} :catchall_4a

    if-ne p1, v1, :cond_47

    return-object v1

    .line 5
    :cond_47
    :goto_47
    sget-object p1, Lh9/t;->a:Lh9/t;

    return-object p1

    :catchall_4a
    move-exception p2

    move-object p1, p0

    .line 6
    :goto_4c
    iget-object p1, p1, Lkotlinx/coroutines/flow/h$c;->p:Lt9/y;

    iput-object p2, p1, Lt9/y;->o:Ljava/lang/Object;

    .line 7
    throw p2
.end method

###### Class kotlinx.coroutines.flow.h.c.a (kotlinx.coroutines.flow.h$c$a)
.class final Lkotlinx/coroutines/flow/h$c$a;
.super Lm9/d;
.source "Errors.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlinx/coroutines/flow/h$c;->c(Ljava/lang/Object;Lk9/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lm9/f;
    c = "kotlinx.coroutines.flow.FlowKt__ErrorsKt$catchImpl$2"
    f = "Errors.kt"
    l = {
        0x9e
    }
    m = "emit"
.end annotation


# instance fields
.field r:Ljava/lang/Object;

.field synthetic s:Ljava/lang/Object;

.field final synthetic t:Lkotlinx/coroutines/flow/h$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/h$c<",
            "TT;>;"
        }
    .end annotation
.end field

.field u:I


# direct methods
.method constructor <init>(Lkotlinx/coroutines/flow/h$c;Lk9/d;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/flow/h$c<",
            "-TT;>;",
            "Lk9/d<",
            "-",
            "Lkotlinx/coroutines/flow/h$c$a;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lkotlinx/coroutines/flow/h$c$a;->t:Lkotlinx/coroutines/flow/h$c;

    invoke-direct {p0, p2}, Lm9/d;-><init>(Lk9/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    iput-object p1, p0, Lkotlinx/coroutines/flow/h$c$a;->s:Ljava/lang/Object;

    iget p1, p0, Lkotlinx/coroutines/flow/h$c$a;->u:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lkotlinx/coroutines/flow/h$c$a;->u:I

    iget-object p1, p0, Lkotlinx/coroutines/flow/h$c$a;->t:Lkotlinx/coroutines/flow/h$c;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, Lkotlinx/coroutines/flow/h$c;->c(Ljava/lang/Object;Lk9/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
