###### Class kotlinx.coroutines.flow.j (kotlinx.coroutines.flow.j)
.class final synthetic Lkotlinx/coroutines/flow/j;
.super Ljava/lang/Object;
.source "Reduce.kt"


# direct methods
.method public static final a(Lkotlinx/coroutines/flow/b;Lk9/d;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/coroutines/flow/b<",
            "+TT;>;",
            "Lk9/d<",
            "-TT;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lkotlinx/coroutines/flow/j$b;

    if-eqz v0, :cond_13

    move-object v0, p1

    check-cast v0, Lkotlinx/coroutines/flow/j$b;

    iget v1, v0, Lkotlinx/coroutines/flow/j$b;->u:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lkotlinx/coroutines/flow/j$b;->u:I

    goto :goto_18

    :cond_13
    new-instance v0, Lkotlinx/coroutines/flow/j$b;

    invoke-direct {v0, p1}, Lkotlinx/coroutines/flow/j$b;-><init>(Lk9/d;)V

    :goto_18
    iget-object p1, v0, Lkotlinx/coroutines/flow/j$b;->t:Ljava/lang/Object;

    invoke-static {}, Ll9/b;->c()Ljava/lang/Object;

    move-result-object v1

    .line 1
    iget v2, v0, Lkotlinx/coroutines/flow/j$b;->u:I

    const/4 v3, 0x1

    if-eqz v2, :cond_3b

    if-ne v2, v3, :cond_33

    iget-object p0, v0, Lkotlinx/coroutines/flow/j$b;->s:Ljava/lang/Object;

    check-cast p0, Lkotlinx/coroutines/flow/j$a;

    iget-object v0, v0, Lkotlinx/coroutines/flow/j$b;->r:Ljava/lang/Object;

    check-cast v0, Lt9/y;

    :try_start_2d
    invoke-static {p1}, Lh9/o;->b(Ljava/lang/Object;)V
    :try_end_30
    .catch Lga/a; {:try_start_2d .. :try_end_30} :catch_31

    goto :goto_62

    :catch_31
    move-exception p1

    goto :goto_5f

    .line 2
    :cond_33
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3
    :cond_3b
    invoke-static {p1}, Lh9/o;->b(Ljava/lang/Object;)V

    .line 4
    new-instance p1, Lt9/y;

    invoke-direct {p1}, Lt9/y;-><init>()V

    sget-object v2, Lga/h;->a:Lkotlinx/coroutines/internal/e0;

    iput-object v2, p1, Lt9/y;->o:Ljava/lang/Object;

    .line 5
    new-instance v2, Lkotlinx/coroutines/flow/j$a;

    invoke-direct {v2, p1}, Lkotlinx/coroutines/flow/j$a;-><init>(Lt9/y;)V

    .line 6
    :try_start_4c
    iput-object p1, v0, Lkotlinx/coroutines/flow/j$b;->r:Ljava/lang/Object;

    iput-object v2, v0, Lkotlinx/coroutines/flow/j$b;->s:Ljava/lang/Object;

    iput v3, v0, Lkotlinx/coroutines/flow/j$b;->u:I

    invoke-interface {p0, v2, v0}, Lkotlinx/coroutines/flow/b;->a(Lkotlinx/coroutines/flow/c;Lk9/d;)Ljava/lang/Object;

    move-result-object p0
    :try_end_56
    .catch Lga/a; {:try_start_4c .. :try_end_56} :catch_5b

    if-ne p0, v1, :cond_59

    return-object v1

    :cond_59
    move-object v0, p1

    goto :goto_62

    :catch_5b
    move-exception p0

    move-object v0, p1

    move-object p1, p0

    move-object p0, v2

    .line 7
    :goto_5f
    invoke-static {p1, p0}, Lga/f;->a(Lga/a;Lkotlinx/coroutines/flow/c;)V

    .line 8
    :goto_62
    iget-object p0, v0, Lt9/y;->o:Ljava/lang/Object;

    sget-object p1, Lga/h;->a:Lkotlinx/coroutines/internal/e0;

    if-eq p0, p1, :cond_69

    return-object p0

    :cond_69
    new-instance p0, Ljava/util/NoSuchElementException;

    const-string p1, "Expected at least one element"

    invoke-direct {p0, p1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

###### Class kotlinx.coroutines.flow.j.a (kotlinx.coroutines.flow.j$a)
.class public final Lkotlinx/coroutines/flow/j$a;
.super Ljava/lang/Object;
.source "Limit.kt"

# interfaces
.implements Lkotlinx/coroutines/flow/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlinx/coroutines/flow/j;->a(Lkotlinx/coroutines/flow/b;Lk9/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlinx/coroutines/flow/c<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic o:Lt9/y;


# direct methods
.method public constructor <init>(Lt9/y;)V
    .registers 2

    iput-object p1, p0, Lkotlinx/coroutines/flow/j$a;->o:Lt9/y;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public c(Ljava/lang/Object;Lk9/d;)Ljava/lang/Object;
    .registers 3
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

    .line 1
    iget-object p2, p0, Lkotlinx/coroutines/flow/j$a;->o:Lt9/y;

    iput-object p1, p2, Lt9/y;->o:Ljava/lang/Object;

    .line 2
    new-instance p1, Lga/a;

    invoke-direct {p1, p0}, Lga/a;-><init>(Lkotlinx/coroutines/flow/c;)V

    throw p1
.end method

###### Class kotlinx.coroutines.flow.j.b (kotlinx.coroutines.flow.j$b)
.class final Lkotlinx/coroutines/flow/j$b;
.super Lm9/d;
.source "Reduce.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlinx/coroutines/flow/j;->a(Lkotlinx/coroutines/flow/b;Lk9/d;)Ljava/lang/Object;
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
    c = "kotlinx.coroutines.flow.FlowKt__ReduceKt"
    f = "Reduce.kt"
    l = {
        0xb7
    }
    m = "first"
.end annotation


# instance fields
.field r:Ljava/lang/Object;

.field s:Ljava/lang/Object;

.field synthetic t:Ljava/lang/Object;

.field u:I


# direct methods
.method constructor <init>(Lk9/d;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lk9/d<",
            "-",
            "Lkotlinx/coroutines/flow/j$b;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lm9/d;-><init>(Lk9/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    iput-object p1, p0, Lkotlinx/coroutines/flow/j$b;->t:Ljava/lang/Object;

    iget p1, p0, Lkotlinx/coroutines/flow/j$b;->u:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lkotlinx/coroutines/flow/j$b;->u:I

    const/4 p1, 0x0

    invoke-static {p1, p0}, Lkotlinx/coroutines/flow/d;->f(Lkotlinx/coroutines/flow/b;Lk9/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
