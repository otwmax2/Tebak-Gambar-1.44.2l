###### Class kotlinx.coroutines.flow.a (kotlinx.coroutines.flow.a)
.class public abstract Lkotlinx/coroutines/flow/a;
.super Ljava/lang/Object;
.source "Flow.kt"

# interfaces
.implements Lkotlinx/coroutines/flow/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lkotlinx/coroutines/flow/b<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lkotlinx/coroutines/flow/c;Lk9/d;)Ljava/lang/Object;
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

    instance-of v0, p2, Lkotlinx/coroutines/flow/a$a;

    if-eqz v0, :cond_13

    move-object v0, p2

    check-cast v0, Lkotlinx/coroutines/flow/a$a;

    iget v1, v0, Lkotlinx/coroutines/flow/a$a;->u:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lkotlinx/coroutines/flow/a$a;->u:I

    goto :goto_18

    :cond_13
    new-instance v0, Lkotlinx/coroutines/flow/a$a;

    invoke-direct {v0, p0, p2}, Lkotlinx/coroutines/flow/a$a;-><init>(Lkotlinx/coroutines/flow/a;Lk9/d;)V

    :goto_18
    iget-object p2, v0, Lkotlinx/coroutines/flow/a$a;->s:Ljava/lang/Object;

    invoke-static {}, Ll9/b;->c()Ljava/lang/Object;

    move-result-object v1

    .line 1
    iget v2, v0, Lkotlinx/coroutines/flow/a$a;->u:I

    const/4 v3, 0x1

    if-eqz v2, :cond_37

    if-ne v2, v3, :cond_2f

    iget-object p1, v0, Lkotlinx/coroutines/flow/a$a;->r:Ljava/lang/Object;

    check-cast p1, Lga/i;

    :try_start_29
    invoke-static {p2}, Lh9/o;->b(Ljava/lang/Object;)V
    :try_end_2c
    .catchall {:try_start_29 .. :try_end_2c} :catchall_2d

    goto :goto_4f

    :catchall_2d
    move-exception p2

    goto :goto_59

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
    new-instance p2, Lga/i;

    invoke-interface {v0}, Lk9/d;->getContext()Lk9/g;

    move-result-object v2

    invoke-direct {p2, p1, v2}, Lga/i;-><init>(Lkotlinx/coroutines/flow/c;Lk9/g;)V

    .line 5
    :try_start_43
    iput-object p2, v0, Lkotlinx/coroutines/flow/a$a;->r:Ljava/lang/Object;

    iput v3, v0, Lkotlinx/coroutines/flow/a$a;->u:I

    invoke-virtual {p0, p2, v0}, Lkotlinx/coroutines/flow/a;->b(Lkotlinx/coroutines/flow/c;Lk9/d;)Ljava/lang/Object;

    move-result-object p1
    :try_end_4b
    .catchall {:try_start_43 .. :try_end_4b} :catchall_55

    if-ne p1, v1, :cond_4e

    return-object v1

    :cond_4e
    move-object p1, p2

    .line 6
    :goto_4f
    invoke-virtual {p1}, Lga/i;->j()V

    .line 7
    sget-object p1, Lh9/t;->a:Lh9/t;

    return-object p1

    :catchall_55
    move-exception p1

    move-object v4, p2

    move-object p2, p1

    move-object p1, v4

    .line 8
    :goto_59
    invoke-virtual {p1}, Lga/i;->j()V

    throw p2
.end method

.method public abstract b(Lkotlinx/coroutines/flow/c;Lk9/d;)Ljava/lang/Object;
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
.end method

###### Class kotlinx.coroutines.flow.a.C0192a (kotlinx.coroutines.flow.a$a)
.class final Lkotlinx/coroutines/flow/a$a;
.super Lm9/d;
.source "Flow.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlinx/coroutines/flow/a;->a(Lkotlinx/coroutines/flow/c;Lk9/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lm9/f;
    c = "kotlinx.coroutines.flow.AbstractFlow"
    f = "Flow.kt"
    l = {
        0xe6
    }
    m = "collect"
.end annotation


# instance fields
.field r:Ljava/lang/Object;

.field synthetic s:Ljava/lang/Object;

.field final synthetic t:Lkotlinx/coroutines/flow/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/a<",
            "TT;>;"
        }
    .end annotation
.end field

.field u:I


# direct methods
.method constructor <init>(Lkotlinx/coroutines/flow/a;Lk9/d;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/flow/a<",
            "TT;>;",
            "Lk9/d<",
            "-",
            "Lkotlinx/coroutines/flow/a$a;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lkotlinx/coroutines/flow/a$a;->t:Lkotlinx/coroutines/flow/a;

    invoke-direct {p0, p2}, Lm9/d;-><init>(Lk9/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    iput-object p1, p0, Lkotlinx/coroutines/flow/a$a;->s:Ljava/lang/Object;

    iget p1, p0, Lkotlinx/coroutines/flow/a$a;->u:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lkotlinx/coroutines/flow/a$a;->u:I

    iget-object p1, p0, Lkotlinx/coroutines/flow/a$a;->t:Lkotlinx/coroutines/flow/a;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, Lkotlinx/coroutines/flow/a;->a(Lkotlinx/coroutines/flow/c;Lk9/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
