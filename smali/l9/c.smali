###### Class l9.c (l9.c)
.class Ll9/c;
.super Ljava/lang/Object;
.source "IntrinsicsJvm.kt"


# direct methods
.method public static a(Ls9/p;Ljava/lang/Object;Lk9/d;)Lk9/d;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">(",
            "Ls9/p<",
            "-TR;-",
            "Lk9/d<",
            "-TT;>;+",
            "Ljava/lang/Object;",
            ">;TR;",
            "Lk9/d<",
            "-TT;>;)",
            "Lk9/d<",
            "Lh9/t;",
            ">;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lt9/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "completion"

    invoke-static {p2, v0}, Lt9/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p2}, Lm9/h;->a(Lk9/d;)Lk9/d;

    move-result-object p2

    .line 2
    instance-of v0, p0, Lm9/a;

    if-eqz v0, :cond_19

    .line 3
    check-cast p0, Lm9/a;

    invoke-virtual {p0, p1, p2}, Lm9/a;->d(Ljava/lang/Object;Lk9/d;)Lk9/d;

    move-result-object p0

    goto :goto_2e

    .line 4
    :cond_19
    invoke-interface {p2}, Lk9/d;->getContext()Lk9/g;

    move-result-object v0

    .line 5
    sget-object v1, Lk9/h;->o:Lk9/h;

    if-ne v0, v1, :cond_28

    .line 6
    new-instance v0, Ll9/c$a;

    invoke-direct {v0, p2, p0, p1}, Ll9/c$a;-><init>(Lk9/d;Ls9/p;Ljava/lang/Object;)V

    move-object p0, v0

    goto :goto_2e

    .line 7
    :cond_28
    new-instance v1, Ll9/c$b;

    invoke-direct {v1, p2, v0, p0, p1}, Ll9/c$b;-><init>(Lk9/d;Lk9/g;Ls9/p;Ljava/lang/Object;)V

    move-object p0, v1

    :goto_2e
    return-object p0
.end method

.method public static b(Lk9/d;)Lk9/d;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lk9/d<",
            "-TT;>;)",
            "Lk9/d<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lt9/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    instance-of v0, p0, Lm9/d;

    if-eqz v0, :cond_d

    move-object v0, p0

    check-cast v0, Lm9/d;

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    if-eqz v0, :cond_18

    invoke-virtual {v0}, Lm9/d;->k()Lk9/d;

    move-result-object v0

    if-nez v0, :cond_17

    goto :goto_18

    :cond_17
    move-object p0, v0

    :cond_18
    :goto_18
    return-object p0
.end method

###### Class l9.c.a (l9.c$a)
.class public final Ll9/c$a;
.super Lm9/j;
.source "IntrinsicsJvm.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ll9/c;->a(Ls9/p;Ljava/lang/Object;Lk9/d;)Lk9/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field private p:I

.field final synthetic q:Ls9/p;

.field final synthetic r:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lk9/d;Ls9/p;Ljava/lang/Object;)V
    .registers 4

    iput-object p2, p0, Ll9/c$a;->q:Ls9/p;

    iput-object p3, p0, Ll9/c$a;->r:Ljava/lang/Object;

    const-string p2, "null cannot be cast to non-null type kotlin.coroutines.Continuation<kotlin.Any?>"

    .line 1
    invoke-static {p1, p2}, Lt9/m;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lm9/j;-><init>(Lk9/d;)V

    return-void
.end method


# virtual methods
.method protected i(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    .line 1
    iget v0, p0, Ll9/c$a;->p:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz v0, :cond_1a

    if-ne v0, v2, :cond_e

    .line 2
    iput v1, p0, Ll9/c$a;->p:I

    .line 3
    invoke-static {p1}, Lh9/o;->b(Ljava/lang/Object;)V

    goto :goto_34

    :cond_e
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "This coroutine had already completed"

    .line 4
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 5
    :cond_1a
    iput v2, p0, Ll9/c$a;->p:I

    .line 6
    invoke-static {p1}, Lh9/o;->b(Ljava/lang/Object;)V

    .line 7
    iget-object p1, p0, Ll9/c$a;->q:Ls9/p;

    const-string v0, "null cannot be cast to non-null type kotlin.Function2<R of kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt.createCoroutineUnintercepted$lambda-1, kotlin.coroutines.Continuation<T of kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt.createCoroutineUnintercepted$lambda-1>, kotlin.Any?>"

    invoke-static {p1, v0}, Lt9/m;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Ll9/c$a;->q:Ls9/p;

    invoke-static {p1, v1}, Lt9/c0;->b(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ls9/p;

    iget-object v0, p0, Ll9/c$a;->r:Ljava/lang/Object;

    invoke-interface {p1, v0, p0}, Ls9/p;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_34
    return-object p1
.end method

###### Class l9.c.b (l9.c$b)
.class public final Ll9/c$b;
.super Lm9/d;
.source "IntrinsicsJvm.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ll9/c;->a(Ls9/p;Ljava/lang/Object;Lk9/d;)Lk9/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field private r:I

.field final synthetic s:Ls9/p;

.field final synthetic t:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lk9/d;Lk9/g;Ls9/p;Ljava/lang/Object;)V
    .registers 5

    iput-object p3, p0, Ll9/c$b;->s:Ls9/p;

    iput-object p4, p0, Ll9/c$b;->t:Ljava/lang/Object;

    const-string p3, "null cannot be cast to non-null type kotlin.coroutines.Continuation<kotlin.Any?>"

    .line 1
    invoke-static {p1, p3}, Lt9/m;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lm9/d;-><init>(Lk9/d;Lk9/g;)V

    return-void
.end method


# virtual methods
.method protected i(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    .line 1
    iget v0, p0, Ll9/c$b;->r:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz v0, :cond_1a

    if-ne v0, v2, :cond_e

    .line 2
    iput v1, p0, Ll9/c$b;->r:I

    .line 3
    invoke-static {p1}, Lh9/o;->b(Ljava/lang/Object;)V

    goto :goto_34

    :cond_e
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "This coroutine had already completed"

    .line 4
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 5
    :cond_1a
    iput v2, p0, Ll9/c$b;->r:I

    .line 6
    invoke-static {p1}, Lh9/o;->b(Ljava/lang/Object;)V

    .line 7
    iget-object p1, p0, Ll9/c$b;->s:Ls9/p;

    const-string v0, "null cannot be cast to non-null type kotlin.Function2<R of kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt.createCoroutineUnintercepted$lambda-1, kotlin.coroutines.Continuation<T of kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt.createCoroutineUnintercepted$lambda-1>, kotlin.Any?>"

    invoke-static {p1, v0}, Lt9/m;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Ll9/c$b;->s:Ls9/p;

    invoke-static {p1, v1}, Lt9/c0;->b(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ls9/p;

    iget-object v0, p0, Ll9/c$b;->t:Ljava/lang/Object;

    invoke-interface {p1, v0, p0}, Ls9/p;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_34
    return-object p1
.end method
