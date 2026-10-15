###### Class h0.l (h0.l)
.class public final Lh0/l;
.super Ljava/lang/Object;
.source "SimpleActor.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:Lda/o0;

.field private final b:Ls9/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls9/p<",
            "TT;",
            "Lk9/d<",
            "-",
            "Lh9/t;",
            ">;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lfa/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lfa/f<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public constructor <init>(Lda/o0;Ls9/l;Ls9/p;Ls9/p;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lda/o0;",
            "Ls9/l<",
            "-",
            "Ljava/lang/Throwable;",
            "Lh9/t;",
            ">;",
            "Ls9/p<",
            "-TT;-",
            "Ljava/lang/Throwable;",
            "Lh9/t;",
            ">;",
            "Ls9/p<",
            "-TT;-",
            "Lk9/d<",
            "-",
            "Lh9/t;",
            ">;+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "scope"

    invoke-static {p1, v0}, Lt9/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onComplete"

    invoke-static {p2, v0}, Lt9/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onUndeliveredElement"

    invoke-static {p3, v0}, Lt9/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "consumeMessage"

    invoke-static {p4, v0}, Lt9/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lh0/l;->a:Lda/o0;

    .line 3
    iput-object p4, p0, Lh0/l;->b:Ls9/p;

    const p4, 0x7fffffff

    const/4 v0, 0x0

    const/4 v1, 0x6

    .line 4
    invoke-static {p4, v0, v0, v1, v0}, Lfa/g;->b(ILfa/e;Ls9/l;ILjava/lang/Object;)Lfa/f;

    move-result-object p4

    iput-object p4, p0, Lh0/l;->c:Lfa/f;

    .line 5
    new-instance p4, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v0, 0x0

    invoke-direct {p4, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object p4, p0, Lh0/l;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 6
    invoke-interface {p1}, Lda/o0;->a()Lk9/g;

    move-result-object p1

    sget-object p4, Lda/x1;->m:Lda/x1$b;

    invoke-interface {p1, p4}, Lk9/g;->b(Lk9/g$c;)Lk9/g$b;

    move-result-object p1

    check-cast p1, Lda/x1;

    if-nez p1, :cond_3d

    goto :goto_45

    :cond_3d
    new-instance p4, Lh0/l$a;

    invoke-direct {p4, p2, p0, p3}, Lh0/l$a;-><init>(Ls9/l;Lh0/l;Ls9/p;)V

    invoke-interface {p1, p4}, Lda/x1;->f(Ls9/l;)Lda/e1;

    :goto_45
    return-void
.end method

.method public static final synthetic a(Lh0/l;)Ls9/p;
    .registers 1

    .line 1
    iget-object p0, p0, Lh0/l;->b:Ls9/p;

    return-object p0
.end method

.method public static final synthetic b(Lh0/l;)Lfa/f;
    .registers 1

    .line 1
    iget-object p0, p0, Lh0/l;->c:Lfa/f;

    return-object p0
.end method

.method public static final synthetic c(Lh0/l;)Ljava/util/concurrent/atomic/AtomicInteger;
    .registers 1

    .line 1
    iget-object p0, p0, Lh0/l;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object p0
.end method

.method public static final synthetic d(Lh0/l;)Lda/o0;
    .registers 1

    .line 1
    iget-object p0, p0, Lh0/l;->a:Lda/o0;

    return-object p0
.end method


# virtual methods
.method public final e(Ljava/lang/Object;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lh0/l;->c:Lfa/f;

    invoke-interface {v0, p1}, Lfa/s;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 2
    instance-of v0, p1, Lfa/h$a;

    if-eqz v0, :cond_18

    invoke-static {p1}, Lfa/h;->e(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-nez p1, :cond_17

    .line 3
    new-instance p1, Lfa/k;

    const-string v0, "Channel was closed normally"

    invoke-direct {p1, v0}, Lfa/k;-><init>(Ljava/lang/String;)V

    :cond_17
    throw p1

    .line 4
    :cond_18
    invoke-static {p1}, Lfa/h;->h(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_36

    .line 5
    iget-object p1, p0, Lh0/l;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result p1

    if-nez p1, :cond_35

    .line 6
    iget-object v0, p0, Lh0/l;->a:Lda/o0;

    const/4 v1, 0x0

    const/4 v2, 0x0

    new-instance v3, Lh0/l$b;

    const/4 p1, 0x0

    invoke-direct {v3, p0, p1}, Lh0/l$b;-><init>(Lh0/l;Lk9/d;)V

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lda/h;->b(Lda/o0;Lk9/g;Lda/q0;Ls9/p;ILjava/lang/Object;)Lda/x1;

    :cond_35
    return-void

    .line 7
    :cond_36
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Check failed."

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

###### Class h0.l.a (h0.l$a)
.class final Lh0/l$a;
.super Lt9/n;
.source "SimpleActor.kt"

# interfaces
.implements Ls9/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lh0/l;-><init>(Lda/o0;Ls9/l;Ls9/p;Ls9/p;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lt9/n;",
        "Ls9/l<",
        "Ljava/lang/Throwable;",
        "Lh9/t;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic o:Ls9/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls9/l<",
            "Ljava/lang/Throwable;",
            "Lh9/t;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic p:Lh0/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lh0/l<",
            "TT;>;"
        }
    .end annotation
.end field

.field final synthetic q:Ls9/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls9/p<",
            "TT;",
            "Ljava/lang/Throwable;",
            "Lh9/t;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ls9/l;Lh0/l;Ls9/p;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls9/l<",
            "-",
            "Ljava/lang/Throwable;",
            "Lh9/t;",
            ">;",
            "Lh0/l<",
            "TT;>;",
            "Ls9/p<",
            "-TT;-",
            "Ljava/lang/Throwable;",
            "Lh9/t;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lh0/l$a;->o:Ls9/l;

    iput-object p2, p0, Lh0/l$a;->p:Lh0/l;

    iput-object p3, p0, Lh0/l$a;->q:Ls9/p;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lt9/n;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final c(Ljava/lang/Throwable;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lh0/l$a;->o:Ls9/l;

    invoke-interface {v0, p1}, Ls9/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Lh0/l$a;->p:Lh0/l;

    invoke-static {v0}, Lh0/l;->b(Lh0/l;)Lfa/f;

    move-result-object v0

    invoke-interface {v0, p1}, Lfa/s;->b(Ljava/lang/Throwable;)Z

    .line 3
    :cond_e
    iget-object v0, p0, Lh0/l$a;->p:Lh0/l;

    invoke-static {v0}, Lh0/l;->b(Lh0/l;)Lfa/f;

    move-result-object v0

    invoke-interface {v0}, Lfa/o;->a()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lfa/h;->f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_20

    const/4 v0, 0x0

    goto :goto_27

    :cond_20
    iget-object v1, p0, Lh0/l$a;->q:Ls9/p;

    .line 4
    invoke-interface {v1, v0, p1}, Ls9/p;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    sget-object v0, Lh9/t;->a:Lh9/t;

    :goto_27
    if-nez v0, :cond_e

    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 1
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lh0/l$a;->c(Ljava/lang/Throwable;)V

    sget-object p1, Lh9/t;->a:Lh9/t;

    return-object p1
.end method

###### Class h0.l.b (h0.l$b)
.class final Lh0/l$b;
.super Lm9/k;
.source "SimpleActor.kt"

# interfaces
.implements Ls9/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lh0/l;->e(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lm9/k;",
        "Ls9/p<",
        "Lda/o0;",
        "Lk9/d<",
        "-",
        "Lh9/t;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lm9/f;
    c = "androidx.datastore.core.SimpleActor$offer$2"
    f = "SimpleActor.kt"
    l = {
        0x7a,
        0x7a
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field s:Ljava/lang/Object;

.field t:I

.field final synthetic u:Lh0/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lh0/l<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lh0/l;Lk9/d;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lh0/l<",
            "TT;>;",
            "Lk9/d<",
            "-",
            "Lh0/l$b;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lh0/l$b;->u:Lh0/l;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lm9/k;-><init>(ILk9/d;)V

    return-void
.end method


# virtual methods
.method public final d(Ljava/lang/Object;Lk9/d;)Lk9/d;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lk9/d<",
            "*>;)",
            "Lk9/d<",
            "Lh9/t;",
            ">;"
        }
    .end annotation

    new-instance p1, Lh0/l$b;

    iget-object v0, p0, Lh0/l$b;->u:Lh0/l;

    invoke-direct {p1, v0, p2}, Lh0/l$b;-><init>(Lh0/l;Lk9/d;)V

    return-object p1
.end method

.method public final i(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 9

    invoke-static {}, Ll9/b;->c()Ljava/lang/Object;

    move-result-object v0

    .line 1
    iget v1, p0, Lh0/l$b;->t:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_26

    if-eq v1, v3, :cond_1b

    if-ne v1, v2, :cond_13

    invoke-static {p1}, Lh9/o;->b(Ljava/lang/Object;)V

    move-object p1, p0

    goto :goto_6e

    .line 2
    :cond_13
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1b
    iget-object v1, p0, Lh0/l$b;->s:Ljava/lang/Object;

    check-cast v1, Ls9/p;

    invoke-static {p1}, Lh9/o;->b(Ljava/lang/Object;)V

    move-object v4, v1

    move-object v1, v0

    move-object v0, p0

    goto :goto_60

    :cond_26
    invoke-static {p1}, Lh9/o;->b(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Lh0/l$b;->u:Lh0/l;

    invoke-static {p1}, Lh0/l;->c(Lh0/l;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p1

    if-lez p1, :cond_37

    const/4 p1, 0x1

    goto :goto_38

    :cond_37
    const/4 p1, 0x0

    :goto_38
    if-eqz p1, :cond_7d

    move-object p1, p0

    .line 5
    :cond_3b
    iget-object v1, p1, Lh0/l$b;->u:Lh0/l;

    invoke-static {v1}, Lh0/l;->d(Lh0/l;)Lda/o0;

    move-result-object v1

    invoke-static {v1}, Lda/p0;->b(Lda/o0;)V

    .line 6
    iget-object v1, p1, Lh0/l$b;->u:Lh0/l;

    invoke-static {v1}, Lh0/l;->a(Lh0/l;)Ls9/p;

    move-result-object v1

    iget-object v4, p1, Lh0/l$b;->u:Lh0/l;

    invoke-static {v4}, Lh0/l;->b(Lh0/l;)Lfa/f;

    move-result-object v4

    iput-object v1, p1, Lh0/l$b;->s:Ljava/lang/Object;

    iput v3, p1, Lh0/l$b;->t:I

    invoke-interface {v4, p1}, Lfa/o;->c(Lk9/d;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v0, :cond_5b

    return-object v0

    :cond_5b
    move-object v6, v0

    move-object v0, p1

    move-object p1, v4

    move-object v4, v1

    move-object v1, v6

    :goto_60
    const/4 v5, 0x0

    iput-object v5, v0, Lh0/l$b;->s:Ljava/lang/Object;

    iput v2, v0, Lh0/l$b;->t:I

    invoke-interface {v4, p1, v0}, Ls9/p;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_6c

    return-object v1

    :cond_6c
    move-object p1, v0

    move-object v0, v1

    .line 7
    :goto_6e
    iget-object v1, p1, Lh0/l$b;->u:Lh0/l;

    invoke-static {v1}, Lh0/l;->c(Lh0/l;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v1

    if-nez v1, :cond_3b

    .line 8
    sget-object p1, Lh9/t;->a:Lh9/t;

    return-object p1

    .line 9
    :cond_7d
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Check failed."

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_8a

    :goto_89
    throw p1

    :goto_8a
    goto :goto_89
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Lda/o0;

    check-cast p2, Lk9/d;

    invoke-virtual {p0, p1, p2}, Lh0/l$b;->l(Lda/o0;Lk9/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final l(Lda/o0;Lk9/d;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lda/o0;",
            "Lk9/d<",
            "-",
            "Lh9/t;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lh0/l$b;->d(Ljava/lang/Object;Lk9/d;)Lk9/d;

    move-result-object p1

    check-cast p1, Lh0/l$b;

    sget-object p2, Lh9/t;->a:Lh9/t;

    invoke-virtual {p1, p2}, Lh0/l$b;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
