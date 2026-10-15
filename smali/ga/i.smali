###### Class ga.i (ga.i)
.class public final Lga/i;
.super Lm9/d;
.source "SafeCollector.kt"

# interfaces
.implements Lkotlinx/coroutines/flow/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lm9/d;",
        "Lkotlinx/coroutines/flow/c<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final r:Lkotlinx/coroutines/flow/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/c<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final s:Lk9/g;

.field public final t:I

.field private u:Lk9/g;

.field private v:Lk9/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lk9/d<",
            "-",
            "Lh9/t;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/flow/c;Lk9/g;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/flow/c<",
            "-TT;>;",
            "Lk9/g;",
            ")V"
        }
    .end annotation

    .line 1
    sget-object v0, Lga/g;->o:Lga/g;

    sget-object v1, Lk9/h;->o:Lk9/h;

    invoke-direct {p0, v0, v1}, Lm9/d;-><init>(Lk9/d;Lk9/g;)V

    .line 2
    iput-object p1, p0, Lga/i;->r:Lkotlinx/coroutines/flow/c;

    .line 3
    iput-object p2, p0, Lga/i;->s:Lk9/g;

    const/4 p1, 0x0

    .line 4
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    sget-object v0, Lga/i$a;->o:Lga/i$a;

    invoke-interface {p2, p1, v0}, Lk9/g;->s(Ljava/lang/Object;Ls9/p;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    iput p1, p0, Lga/i;->t:I

    return-void
.end method

.method private final l(Lk9/g;Lk9/g;Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lk9/g;",
            "Lk9/g;",
            "TT;)V"
        }
    .end annotation

    .line 1
    instance-of v0, p2, Lga/e;

    if-eqz v0, :cond_9

    .line 2
    check-cast p2, Lga/e;

    invoke-direct {p0, p2, p3}, Lga/i;->p(Lga/e;Ljava/lang/Object;)V

    .line 3
    :cond_9
    invoke-static {p0, p1}, Lga/k;->a(Lga/i;Lk9/g;)V

    return-void
.end method

.method private final n(Lk9/d;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lk9/d<",
            "-",
            "Lh9/t;",
            ">;TT;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Lk9/d;->getContext()Lk9/g;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lda/b2;->e(Lk9/g;)V

    .line 3
    iget-object v1, p0, Lga/i;->u:Lk9/g;

    if-eq v1, v0, :cond_10

    .line 4
    invoke-direct {p0, v0, v1, p2}, Lga/i;->l(Lk9/g;Lk9/g;Ljava/lang/Object;)V

    .line 5
    iput-object v0, p0, Lga/i;->u:Lk9/g;

    .line 6
    :cond_10
    iput-object p1, p0, Lga/i;->v:Lk9/d;

    .line 7
    invoke-static {}, Lga/j;->a()Ls9/q;

    move-result-object p1

    iget-object v0, p0, Lga/i;->r:Lkotlinx/coroutines/flow/c;

    invoke-interface {p1, v0, p2, p0}, Ls9/q;->b(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 8
    invoke-static {}, Ll9/b;->c()Ljava/lang/Object;

    move-result-object p2

    invoke-static {p1, p2}, Lt9/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_29

    const/4 p2, 0x0

    .line 9
    iput-object p2, p0, Lga/i;->v:Lk9/d;

    :cond_29
    return-object p1
.end method

.method private final p(Lga/e;Ljava/lang/Object;)V
    .registers 6

    .line 1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\n            Flow exception transparency is violated:\n                Previous \'emit\' call has thrown exception "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2
    iget-object p1, p1, Lga/e;->o:Ljava/lang/Throwable;

    .line 3
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", but then emission attempt of value \'"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "\' has been detected.\n                Emissions from \'catch\' blocks are prohibited in order to avoid unspecified behaviour, \'Flow.catch\' operator can be used instead.\n                For a more detailed explanation, please refer to Flow documentation.\n            "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 4
    invoke-static {p1}, Lba/g;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public c(Ljava/lang/Object;Lk9/d;)Ljava/lang/Object;
    .registers 4
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
    :try_start_0
    invoke-direct {p0, p2, p1}, Lga/i;->n(Lk9/d;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_4
    .catchall {:try_start_0 .. :try_end_4} :catchall_17

    .line 2
    invoke-static {}, Ll9/b;->c()Ljava/lang/Object;

    move-result-object v0

    if-ne p1, v0, :cond_d

    invoke-static {p2}, Lm9/h;->c(Lk9/d;)V

    :cond_d
    invoke-static {}, Ll9/b;->c()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_14

    return-object p1

    :cond_14
    sget-object p1, Lh9/t;->a:Lh9/t;

    return-object p1

    :catchall_17
    move-exception p1

    .line 3
    new-instance v0, Lga/e;

    invoke-interface {p2}, Lk9/d;->getContext()Lk9/g;

    move-result-object p2

    invoke-direct {v0, p1, p2}, Lga/e;-><init>(Ljava/lang/Throwable;Lk9/g;)V

    iput-object v0, p0, Lga/i;->u:Lk9/g;

    .line 4
    throw p1
.end method

.method public e()Lm9/e;
    .registers 3

    .line 1
    iget-object v0, p0, Lga/i;->v:Lk9/d;

    instance-of v1, v0, Lm9/e;

    if-eqz v1, :cond_9

    check-cast v0, Lm9/e;

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return-object v0
.end method

.method public getContext()Lk9/g;
    .registers 2

    .line 1
    iget-object v0, p0, Lga/i;->u:Lk9/g;

    if-nez v0, :cond_6

    sget-object v0, Lk9/h;->o:Lk9/h;

    :cond_6
    return-object v0
.end method

.method public i(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    .line 1
    invoke-static {p1}, Lh9/n;->b(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_11

    new-instance v1, Lga/e;

    invoke-virtual {p0}, Lga/i;->getContext()Lk9/g;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lga/e;-><init>(Ljava/lang/Throwable;Lk9/g;)V

    iput-object v1, p0, Lga/i;->u:Lk9/g;

    .line 2
    :cond_11
    iget-object v0, p0, Lga/i;->v:Lk9/d;

    if-eqz v0, :cond_18

    invoke-interface {v0, p1}, Lk9/d;->g(Ljava/lang/Object;)V

    .line 3
    :cond_18
    invoke-static {}, Ll9/b;->c()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public j()V
    .registers 1

    .line 1
    invoke-super {p0}, Lm9/d;->j()V

    return-void
.end method

.method public o()Ljava/lang/StackTraceElement;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

###### Class ga.i.a (ga.i$a)
.class final Lga/i$a;
.super Lt9/n;
.source "SafeCollector.kt"

# interfaces
.implements Ls9/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lga/i;-><init>(Lkotlinx/coroutines/flow/c;Lk9/g;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lt9/n;",
        "Ls9/p<",
        "Ljava/lang/Integer;",
        "Lk9/g$b;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field public static final o:Lga/i$a;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lga/i$a;

    invoke-direct {v0}, Lga/i$a;-><init>()V

    sput-object v0, Lga/i$a;->o:Lga/i$a;

    return-void
.end method

.method constructor <init>()V
    .registers 2

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lt9/n;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final c(ILk9/g$b;)Ljava/lang/Integer;
    .registers 3

    add-int/lit8 p1, p1, 0x1

    .line 1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 1
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    check-cast p2, Lk9/g$b;

    invoke-virtual {p0, p1, p2}, Lga/i$a;->c(ILk9/g$b;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
