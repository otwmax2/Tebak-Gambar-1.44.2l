###### Class kotlinx.coroutines.flow.i (kotlinx.coroutines.flow.i)
.class final synthetic Lkotlinx/coroutines/flow/i;
.super Ljava/lang/Object;
.source "Limit.kt"


# direct methods
.method public static final a(Lkotlinx/coroutines/flow/b;Ls9/p;)Lkotlinx/coroutines/flow/b;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/coroutines/flow/b<",
            "+TT;>;",
            "Ls9/p<",
            "-TT;-",
            "Lk9/d<",
            "-",
            "Ljava/lang/Boolean;",
            ">;+",
            "Ljava/lang/Object;",
            ">;)",
            "Lkotlinx/coroutines/flow/b<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lkotlinx/coroutines/flow/i$a;

    invoke-direct {v0, p0, p1}, Lkotlinx/coroutines/flow/i$a;-><init>(Lkotlinx/coroutines/flow/b;Ls9/p;)V

    return-object v0
.end method

###### Class kotlinx.coroutines.flow.i.a (kotlinx.coroutines.flow.i$a)
.class public final Lkotlinx/coroutines/flow/i$a;
.super Ljava/lang/Object;
.source "SafeCollector.common.kt"

# interfaces
.implements Lkotlinx/coroutines/flow/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlinx/coroutines/flow/i;->a(Lkotlinx/coroutines/flow/b;Ls9/p;)Lkotlinx/coroutines/flow/b;
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

.field final synthetic p:Ls9/p;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/flow/b;Ls9/p;)V
    .registers 3

    iput-object p1, p0, Lkotlinx/coroutines/flow/i$a;->o:Lkotlinx/coroutines/flow/b;

    iput-object p2, p0, Lkotlinx/coroutines/flow/i$a;->p:Ls9/p;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lkotlinx/coroutines/flow/c;Lk9/d;)Ljava/lang/Object;
    .registers 7
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

    .line 1
    new-instance v0, Lt9/w;

    invoke-direct {v0}, Lt9/w;-><init>()V

    .line 2
    iget-object v1, p0, Lkotlinx/coroutines/flow/i$a;->o:Lkotlinx/coroutines/flow/b;

    new-instance v2, Lkotlinx/coroutines/flow/i$b;

    iget-object v3, p0, Lkotlinx/coroutines/flow/i$a;->p:Ls9/p;

    invoke-direct {v2, v0, p1, v3}, Lkotlinx/coroutines/flow/i$b;-><init>(Lt9/w;Lkotlinx/coroutines/flow/c;Ls9/p;)V

    invoke-interface {v1, v2, p2}, Lkotlinx/coroutines/flow/b;->a(Lkotlinx/coroutines/flow/c;Lk9/d;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Ll9/b;->c()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_19

    return-object p1

    .line 3
    :cond_19
    sget-object p1, Lh9/t;->a:Lh9/t;

    return-object p1
.end method

###### Class kotlinx.coroutines.flow.i.b (kotlinx.coroutines.flow.i$b)
.class final Lkotlinx/coroutines/flow/i$b;
.super Ljava/lang/Object;
.source "Limit.kt"

# interfaces
.implements Lkotlinx/coroutines/flow/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlinx/coroutines/flow/i;->a(Lkotlinx/coroutines/flow/b;Ls9/p;)Lkotlinx/coroutines/flow/b;
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
.field final synthetic o:Lt9/w;

.field final synthetic p:Lkotlinx/coroutines/flow/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/c<",
            "TT;>;"
        }
    .end annotation
.end field

.field final synthetic q:Ls9/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls9/p<",
            "TT;",
            "Lk9/d<",
            "-",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lt9/w;Lkotlinx/coroutines/flow/c;Ls9/p;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lt9/w;",
            "Lkotlinx/coroutines/flow/c<",
            "-TT;>;",
            "Ls9/p<",
            "-TT;-",
            "Lk9/d<",
            "-",
            "Ljava/lang/Boolean;",
            ">;+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lkotlinx/coroutines/flow/i$b;->o:Lt9/w;

    iput-object p2, p0, Lkotlinx/coroutines/flow/i$b;->p:Lkotlinx/coroutines/flow/c;

    iput-object p3, p0, Lkotlinx/coroutines/flow/i$b;->q:Ls9/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final c(Ljava/lang/Object;Lk9/d;)Ljava/lang/Object;
    .registers 9
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

    instance-of v0, p2, Lkotlinx/coroutines/flow/i$b$a;

    if-eqz v0, :cond_13

    move-object v0, p2

    check-cast v0, Lkotlinx/coroutines/flow/i$b$a;

    iget v1, v0, Lkotlinx/coroutines/flow/i$b$a;->v:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lkotlinx/coroutines/flow/i$b$a;->v:I

    goto :goto_18

    :cond_13
    new-instance v0, Lkotlinx/coroutines/flow/i$b$a;

    invoke-direct {v0, p0, p2}, Lkotlinx/coroutines/flow/i$b$a;-><init>(Lkotlinx/coroutines/flow/i$b;Lk9/d;)V

    :goto_18
    iget-object p2, v0, Lkotlinx/coroutines/flow/i$b$a;->t:Ljava/lang/Object;

    invoke-static {}, Ll9/b;->c()Ljava/lang/Object;

    move-result-object v1

    .line 1
    iget v2, v0, Lkotlinx/coroutines/flow/i$b$a;->v:I

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v2, :cond_45

    if-eq v2, v5, :cond_41

    if-eq v2, v4, :cond_37

    if-ne v2, v3, :cond_2f

    invoke-static {p2}, Lh9/o;->b(Ljava/lang/Object;)V

    goto :goto_88

    .line 2
    :cond_2f
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_37
    iget-object p1, v0, Lkotlinx/coroutines/flow/i$b$a;->s:Ljava/lang/Object;

    iget-object v2, v0, Lkotlinx/coroutines/flow/i$b$a;->r:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/flow/i$b;

    invoke-static {p2}, Lh9/o;->b(Ljava/lang/Object;)V

    goto :goto_6c

    :cond_41
    invoke-static {p2}, Lh9/o;->b(Ljava/lang/Object;)V

    goto :goto_59

    :cond_45
    invoke-static {p2}, Lh9/o;->b(Ljava/lang/Object;)V

    .line 4
    iget-object p2, p0, Lkotlinx/coroutines/flow/i$b;->o:Lt9/w;

    iget-boolean p2, p2, Lt9/w;->o:Z

    if-eqz p2, :cond_5c

    .line 5
    iget-object p2, p0, Lkotlinx/coroutines/flow/i$b;->p:Lkotlinx/coroutines/flow/c;

    iput v5, v0, Lkotlinx/coroutines/flow/i$b$a;->v:I

    invoke-interface {p2, p1, v0}, Lkotlinx/coroutines/flow/c;->c(Ljava/lang/Object;Lk9/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_59

    return-object v1

    .line 6
    :cond_59
    :goto_59
    sget-object p1, Lh9/t;->a:Lh9/t;

    return-object p1

    .line 7
    :cond_5c
    iget-object p2, p0, Lkotlinx/coroutines/flow/i$b;->q:Ls9/p;

    iput-object p0, v0, Lkotlinx/coroutines/flow/i$b$a;->r:Ljava/lang/Object;

    iput-object p1, v0, Lkotlinx/coroutines/flow/i$b$a;->s:Ljava/lang/Object;

    iput v4, v0, Lkotlinx/coroutines/flow/i$b$a;->v:I

    invoke-interface {p2, p1, v0}, Ls9/p;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_6b

    return-object v1

    :cond_6b
    move-object v2, p0

    :goto_6c
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-nez p2, :cond_8b

    .line 8
    iget-object p2, v2, Lkotlinx/coroutines/flow/i$b;->o:Lt9/w;

    iput-boolean v5, p2, Lt9/w;->o:Z

    .line 9
    iget-object p2, v2, Lkotlinx/coroutines/flow/i$b;->p:Lkotlinx/coroutines/flow/c;

    const/4 v2, 0x0

    iput-object v2, v0, Lkotlinx/coroutines/flow/i$b$a;->r:Ljava/lang/Object;

    iput-object v2, v0, Lkotlinx/coroutines/flow/i$b$a;->s:Ljava/lang/Object;

    iput v3, v0, Lkotlinx/coroutines/flow/i$b$a;->v:I

    invoke-interface {p2, p1, v0}, Lkotlinx/coroutines/flow/c;->c(Ljava/lang/Object;Lk9/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_88

    return-object v1

    .line 10
    :cond_88
    :goto_88
    sget-object p1, Lh9/t;->a:Lh9/t;

    return-object p1

    :cond_8b
    sget-object p1, Lh9/t;->a:Lh9/t;

    return-object p1
.end method

###### Class kotlinx.coroutines.flow.i.b.a (kotlinx.coroutines.flow.i$b$a)
.class final Lkotlinx/coroutines/flow/i$b$a;
.super Lm9/d;
.source "Limit.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlinx/coroutines/flow/i$b;->c(Ljava/lang/Object;Lk9/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lm9/f;
    c = "kotlinx.coroutines.flow.FlowKt__LimitKt$dropWhile$1$1"
    f = "Limit.kt"
    l = {
        0x25,
        0x26,
        0x28
    }
    m = "emit"
.end annotation


# instance fields
.field r:Ljava/lang/Object;

.field s:Ljava/lang/Object;

.field synthetic t:Ljava/lang/Object;

.field final synthetic u:Lkotlinx/coroutines/flow/i$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/i$b<",
            "TT;>;"
        }
    .end annotation
.end field

.field v:I


# direct methods
.method constructor <init>(Lkotlinx/coroutines/flow/i$b;Lk9/d;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/flow/i$b<",
            "-TT;>;",
            "Lk9/d<",
            "-",
            "Lkotlinx/coroutines/flow/i$b$a;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lkotlinx/coroutines/flow/i$b$a;->u:Lkotlinx/coroutines/flow/i$b;

    invoke-direct {p0, p2}, Lm9/d;-><init>(Lk9/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    iput-object p1, p0, Lkotlinx/coroutines/flow/i$b$a;->t:Ljava/lang/Object;

    iget p1, p0, Lkotlinx/coroutines/flow/i$b$a;->v:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lkotlinx/coroutines/flow/i$b$a;->v:I

    iget-object p1, p0, Lkotlinx/coroutines/flow/i$b$a;->u:Lkotlinx/coroutines/flow/i$b;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, Lkotlinx/coroutines/flow/i$b;->c(Ljava/lang/Object;Lk9/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
