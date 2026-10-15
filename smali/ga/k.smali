###### Class ga.k (ga.k)
.class public final Lga/k;
.super Ljava/lang/Object;
.source "SafeCollector.common.kt"


# direct methods
.method public static final a(Lga/i;Lk9/g;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lga/i<",
            "*>;",
            "Lk9/g;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v1, Lga/k$a;

    invoke-direct {v1, p0}, Lga/k$a;-><init>(Lga/i;)V

    invoke-interface {p1, v0, v1}, Lk9/g;->s(Ljava/lang/Object;Ls9/p;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    .line 2
    iget v1, p0, Lga/i;->t:I

    if-ne v0, v1, :cond_19

    return-void

    .line 3
    :cond_19
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Flow invariant is violated:\n\t\tFlow was collected in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    iget-object p0, p0, Lga/i;->s:Lk9/g;

    .line 6
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ",\n\t\tbut emission happened in "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ".\n\t\tPlease refer to \'flow\' documentation or use \'flowOn\' instead"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final b(Lda/x1;Lda/x1;)Lda/x1;
    .registers 3

    :goto_0
    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    if-ne p0, p1, :cond_7

    return-object p0

    .line 1
    :cond_7
    instance-of v0, p0, Lkotlinx/coroutines/internal/c0;

    if-nez v0, :cond_c

    return-object p0

    .line 2
    :cond_c
    check-cast p0, Lkotlinx/coroutines/internal/c0;

    invoke-virtual {p0}, Lkotlinx/coroutines/internal/c0;->N0()Lda/x1;

    move-result-object p0

    goto :goto_0
.end method

###### Class ga.k.a (ga.k$a)
.class final Lga/k$a;
.super Lt9/n;
.source "SafeCollector.common.kt"

# interfaces
.implements Ls9/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lga/k;->a(Lga/i;Lk9/g;)V
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


# instance fields
.field final synthetic o:Lga/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lga/i<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lga/i;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lga/i<",
            "*>;)V"
        }
    .end annotation

    iput-object p1, p0, Lga/k$a;->o:Lga/i;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lt9/n;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final c(ILk9/g$b;)Ljava/lang/Integer;
    .registers 6

    .line 1
    invoke-interface {p2}, Lk9/g$b;->getKey()Lk9/g$c;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lga/k$a;->o:Lga/i;

    iget-object v1, v1, Lga/i;->s:Lk9/g;

    invoke-interface {v1, v0}, Lk9/g;->b(Lk9/g$c;)Lk9/g$b;

    move-result-object v1

    .line 3
    sget-object v2, Lda/x1;->m:Lda/x1$b;

    if-eq v0, v2, :cond_1c

    if-eq p2, v1, :cond_15

    const/high16 p1, -0x80000000

    goto :goto_17

    :cond_15
    add-int/lit8 p1, p1, 0x1

    .line 4
    :goto_17
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 5
    :cond_1c
    check-cast v1, Lda/x1;

    .line 6
    check-cast p2, Lda/x1;

    invoke-static {p2, v1}, Lga/k;->b(Lda/x1;Lda/x1;)Lda/x1;

    move-result-object p2

    if-ne p2, v1, :cond_30

    if-nez v1, :cond_29

    goto :goto_2b

    :cond_29
    add-int/lit8 p1, p1, 0x1

    .line 7
    :goto_2b
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 8
    :cond_30
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Flow invariant is violated:\n\t\tEmission from another coroutine is detected.\n\t\tChild of "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ", expected child of "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ".\n\t\tFlowCollector is not thread-safe and concurrent emissions are prohibited.\n\t\tTo mitigate this restriction please use \'channelFlow\' builder instead of \'flow\'"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 1
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    check-cast p2, Lk9/g$b;

    invoke-virtual {p0, p1, p2}, Lga/k$a;->c(ILk9/g$b;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
