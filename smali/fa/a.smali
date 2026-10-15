###### Class fa.a (fa.a)
.class public abstract Lfa/a;
.super Lfa/c;
.source "AbstractChannel.kt"

# interfaces
.implements Lfa/f;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfa/a$c;,
        Lfa/a$a;,
        Lfa/a$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lfa/c<",
        "TE;>;",
        "Lfa/f<",
        "TE;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ls9/l;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls9/l<",
            "-TE;",
            "Lh9/t;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lfa/c;-><init>(Ls9/l;)V

    return-void
.end method

.method private final A(ILk9/d;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(I",
            "Lk9/d<",
            "-TR;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    invoke-static {p2}, Ll9/b;->b(Lk9/d;)Lk9/d;

    move-result-object v0

    invoke-static {v0}, Lda/p;->b(Lk9/d;)Lda/n;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lfa/c;->b:Ls9/l;

    if-nez v1, :cond_12

    .line 3
    new-instance v1, Lfa/a$a;

    invoke-direct {v1, v0, p1}, Lfa/a$a;-><init>(Lda/m;I)V

    goto :goto_19

    .line 4
    :cond_12
    new-instance v1, Lfa/a$b;

    iget-object v2, p0, Lfa/c;->b:Ls9/l;

    invoke-direct {v1, v0, p1, v2}, Lfa/a$b;-><init>(Lda/m;ILs9/l;)V

    .line 5
    :cond_19
    :goto_19
    invoke-static {p0, v1}, Lfa/a;->r(Lfa/a;Lfa/n;)Z

    move-result p1

    if-eqz p1, :cond_23

    .line 6
    invoke-static {p0, v0, v1}, Lfa/a;->s(Lfa/a;Lda/m;Lfa/n;)V

    goto :goto_40

    .line 7
    :cond_23
    invoke-virtual {p0}, Lfa/a;->z()Ljava/lang/Object;

    move-result-object p1

    .line 8
    instance-of v2, p1, Lfa/i;

    if-eqz v2, :cond_31

    .line 9
    check-cast p1, Lfa/i;

    invoke-virtual {v1, p1}, Lfa/a$a;->E(Lfa/i;)V

    goto :goto_40

    .line 10
    :cond_31
    sget-object v2, Lfa/b;->d:Lkotlinx/coroutines/internal/e0;

    if-eq p1, v2, :cond_19

    .line 11
    invoke-virtual {v1, p1}, Lfa/a$a;->F(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, p1}, Lfa/n;->D(Ljava/lang/Object;)Ls9/l;

    move-result-object p1

    invoke-interface {v0, v2, p1}, Lda/m;->x(Ljava/lang/Object;Ls9/l;)V

    .line 12
    :goto_40
    invoke-virtual {v0}, Lda/n;->t()Ljava/lang/Object;

    move-result-object p1

    .line 13
    invoke-static {}, Ll9/b;->c()Ljava/lang/Object;

    move-result-object v0

    if-ne p1, v0, :cond_4d

    invoke-static {p2}, Lm9/h;->c(Lk9/d;)V

    :cond_4d
    return-object p1
.end method

.method private final B(Lda/m;Lfa/n;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lda/m<",
            "*>;",
            "Lfa/n<",
            "*>;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lfa/a$c;

    invoke-direct {v0, p0, p2}, Lfa/a$c;-><init>(Lfa/a;Lfa/n;)V

    invoke-interface {p1, v0}, Lda/m;->z(Ls9/l;)V

    return-void
.end method

.method public static final synthetic r(Lfa/a;Lfa/n;)Z
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lfa/a;->t(Lfa/n;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic s(Lfa/a;Lda/m;Lfa/n;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Lfa/a;->B(Lda/m;Lfa/n;)V

    return-void
.end method

.method private final t(Lfa/n;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lfa/n<",
            "-TE;>;)Z"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lfa/a;->u(Lfa/n;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 2
    invoke-virtual {p0}, Lfa/a;->y()V

    :cond_9
    return p1
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .registers 3

    .line 1
    invoke-virtual {p0}, Lfa/a;->z()Ljava/lang/Object;

    move-result-object v0

    .line 2
    sget-object v1, Lfa/b;->d:Lkotlinx/coroutines/internal/e0;

    if-ne v0, v1, :cond_f

    sget-object v0, Lfa/h;->b:Lfa/h$b;

    invoke-virtual {v0}, Lfa/h$b;->b()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 3
    :cond_f
    instance-of v1, v0, Lfa/i;

    if-eqz v1, :cond_1e

    sget-object v1, Lfa/h;->b:Lfa/h$b;

    check-cast v0, Lfa/i;

    iget-object v0, v0, Lfa/i;->r:Ljava/lang/Throwable;

    invoke-virtual {v1, v0}, Lfa/h$b;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 4
    :cond_1e
    sget-object v1, Lfa/h;->b:Lfa/h$b;

    invoke-virtual {v1, v0}, Lfa/h$b;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final c(Lk9/d;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lk9/d<",
            "-TE;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lfa/a;->z()Ljava/lang/Object;

    move-result-object v0

    .line 2
    sget-object v1, Lfa/b;->d:Lkotlinx/coroutines/internal/e0;

    if-eq v0, v1, :cond_d

    instance-of v1, v0, Lfa/i;

    if-nez v1, :cond_d

    return-object v0

    :cond_d
    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, v0, p1}, Lfa/a;->A(ILk9/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected p()Lfa/p;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lfa/p<",
            "TE;>;"
        }
    .end annotation

    .line 1
    invoke-super {p0}, Lfa/c;->p()Lfa/p;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 2
    instance-of v1, v0, Lfa/i;

    if-nez v1, :cond_d

    invoke-virtual {p0}, Lfa/a;->x()V

    :cond_d
    return-object v0
.end method

.method protected u(Lfa/n;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lfa/n<",
            "-TE;>;)Z"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lfa/a;->v()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1d

    .line 2
    invoke-virtual {p0}, Lfa/c;->h()Lkotlinx/coroutines/internal/p;

    move-result-object v0

    .line 3
    :cond_c
    invoke-virtual {v0}, Lkotlinx/coroutines/internal/r;->t()Lkotlinx/coroutines/internal/r;

    move-result-object v3

    .line 4
    instance-of v4, v3, Lfa/r;

    xor-int/2addr v4, v2

    if-nez v4, :cond_16

    goto :goto_3b

    .line 5
    :cond_16
    invoke-virtual {v3, p1, v0}, Lkotlinx/coroutines/internal/r;->m(Lkotlinx/coroutines/internal/r;Lkotlinx/coroutines/internal/r;)Z

    move-result v3

    if-eqz v3, :cond_c

    goto :goto_3a

    .line 6
    :cond_1d
    invoke-virtual {p0}, Lfa/c;->h()Lkotlinx/coroutines/internal/p;

    move-result-object v0

    .line 7
    new-instance v3, Lfa/a$d;

    invoke-direct {v3, p1, p0}, Lfa/a$d;-><init>(Lkotlinx/coroutines/internal/r;Lfa/a;)V

    .line 8
    :goto_26
    invoke-virtual {v0}, Lkotlinx/coroutines/internal/r;->t()Lkotlinx/coroutines/internal/r;

    move-result-object v4

    .line 9
    instance-of v5, v4, Lfa/r;

    xor-int/2addr v5, v2

    if-nez v5, :cond_30

    goto :goto_3b

    .line 10
    :cond_30
    invoke-virtual {v4, p1, v0, v3}, Lkotlinx/coroutines/internal/r;->B(Lkotlinx/coroutines/internal/r;Lkotlinx/coroutines/internal/r;Lkotlinx/coroutines/internal/r$a;)I

    move-result v4

    if-eq v4, v2, :cond_3a

    const/4 v5, 0x2

    if-eq v4, v5, :cond_3b

    goto :goto_26

    :cond_3a
    :goto_3a
    const/4 v1, 0x1

    :cond_3b
    :goto_3b
    return v1
.end method

.method protected abstract v()Z
.end method

.method protected abstract w()Z
.end method

.method protected x()V
    .registers 1

    return-void
.end method

.method protected y()V
    .registers 1

    return-void
.end method

.method protected z()Ljava/lang/Object;
    .registers 4

    .line 1
    :goto_0
    invoke-virtual {p0}, Lfa/c;->q()Lfa/r;

    move-result-object v0

    if-nez v0, :cond_9

    sget-object v0, Lfa/b;->d:Lkotlinx/coroutines/internal/e0;

    return-object v0

    :cond_9
    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Lfa/r;->E(Lkotlinx/coroutines/internal/r$b;)Lkotlinx/coroutines/internal/e0;

    move-result-object v1

    if-eqz v1, :cond_2e

    .line 3
    invoke-static {}, Lda/s0;->a()Z

    move-result v2

    if-eqz v2, :cond_26

    sget-object v2, Lda/o;->a:Lkotlinx/coroutines/internal/e0;

    if-ne v1, v2, :cond_1c

    const/4 v1, 0x1

    goto :goto_1d

    :cond_1c
    const/4 v1, 0x0

    :goto_1d
    if-eqz v1, :cond_20

    goto :goto_26

    :cond_20
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 4
    :cond_26
    :goto_26
    invoke-virtual {v0}, Lfa/r;->C()V

    .line 5
    invoke-virtual {v0}, Lfa/r;->D()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 6
    :cond_2e
    invoke-virtual {v0}, Lfa/r;->F()V

    goto :goto_0
.end method

###### Class fa.a.C0160a (fa.a$a)
.class Lfa/a$a;
.super Lfa/n;
.source "AbstractChannel.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfa/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lfa/n<",
        "TE;>;"
    }
.end annotation


# instance fields
.field public final r:Lda/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lda/m<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public final s:I


# direct methods
.method public constructor <init>(Lda/m;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lda/m<",
            "Ljava/lang/Object;",
            ">;I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lfa/n;-><init>()V

    .line 2
    iput-object p1, p0, Lfa/a$a;->r:Lda/m;

    .line 3
    iput p2, p0, Lfa/a$a;->s:I

    return-void
.end method


# virtual methods
.method public E(Lfa/i;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lfa/i<",
            "*>;)V"
        }
    .end annotation

    .line 1
    iget v0, p0, Lfa/a$a;->s:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1d

    iget-object v0, p0, Lfa/a$a;->r:Lda/m;

    .line 2
    sget-object v1, Lfa/h;->b:Lfa/h$b;

    iget-object p1, p1, Lfa/i;->r:Ljava/lang/Throwable;

    invoke-virtual {v1, p1}, Lfa/h$b;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lfa/h;->b(Ljava/lang/Object;)Lfa/h;

    move-result-object p1

    .line 3
    sget-object v1, Lh9/n;->o:Lh9/n$a;

    invoke-static {p1}, Lh9/n;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Lk9/d;->g(Ljava/lang/Object;)V

    goto :goto_30

    .line 4
    :cond_1d
    iget-object v0, p0, Lfa/a$a;->r:Lda/m;

    sget-object v1, Lh9/n;->o:Lh9/n$a;

    invoke-virtual {p1}, Lfa/i;->I()Ljava/lang/Throwable;

    move-result-object p1

    invoke-static {p1}, Lh9/o;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lh9/n;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Lk9/d;->g(Ljava/lang/Object;)V

    :goto_30
    return-void
.end method

.method public final F(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget v0, p0, Lfa/a$a;->s:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_f

    .line 2
    sget-object v0, Lfa/h;->b:Lfa/h$b;

    invoke-virtual {v0, p1}, Lfa/h$b;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lfa/h;->b(Ljava/lang/Object;)Lfa/h;

    move-result-object p1

    :cond_f
    return-object p1
.end method

.method public g(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lfa/a$a;->r:Lda/m;

    sget-object v0, Lda/o;->a:Lkotlinx/coroutines/internal/e0;

    invoke-interface {p1, v0}, Lda/m;->B(Ljava/lang/Object;)V

    return-void
.end method

.method public j(Ljava/lang/Object;Lkotlinx/coroutines/internal/r$b;)Lkotlinx/coroutines/internal/e0;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;",
            "Lkotlinx/coroutines/internal/r$b;",
            ")",
            "Lkotlinx/coroutines/internal/e0;"
        }
    .end annotation

    .line 1
    iget-object p2, p0, Lfa/a$a;->r:Lda/m;

    invoke-virtual {p0, p1}, Lfa/a$a;->F(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, p1}, Lfa/n;->D(Ljava/lang/Object;)Ls9/l;

    move-result-object p1

    const/4 v1, 0x0

    invoke-interface {p2, v0, v1, p1}, Lda/m;->m(Ljava/lang/Object;Ljava/lang/Object;Ls9/l;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_12

    return-object v1

    .line 2
    :cond_12
    invoke-static {}, Lda/s0;->a()Z

    move-result p2

    if-eqz p2, :cond_28

    sget-object p2, Lda/o;->a:Lkotlinx/coroutines/internal/e0;

    if-ne p1, p2, :cond_1e

    const/4 p1, 0x1

    goto :goto_1f

    :cond_1e
    const/4 p1, 0x0

    :goto_1f
    if-eqz p1, :cond_22

    goto :goto_28

    :cond_22
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 3
    :cond_28
    :goto_28
    sget-object p1, Lda/o;->a:Lkotlinx/coroutines/internal/e0;

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ReceiveElement@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lda/t0;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "[receiveMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lfa/a$a;->s:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class fa.a.b (fa.a$b)
.class final Lfa/a$b;
.super Lfa/a$a;
.source "AbstractChannel.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfa/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lfa/a$a<",
        "TE;>;"
    }
.end annotation


# instance fields
.field public final t:Ls9/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls9/l<",
            "TE;",
            "Lh9/t;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lda/m;ILs9/l;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lda/m<",
            "Ljava/lang/Object;",
            ">;I",
            "Ls9/l<",
            "-TE;",
            "Lh9/t;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lfa/a$a;-><init>(Lda/m;I)V

    .line 2
    iput-object p3, p0, Lfa/a$b;->t:Ls9/l;

    return-void
.end method


# virtual methods
.method public D(Ljava/lang/Object;)Ls9/l;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Ls9/l<",
            "Ljava/lang/Throwable;",
            "Lh9/t;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lfa/a$b;->t:Ls9/l;

    iget-object v1, p0, Lfa/a$a;->r:Lda/m;

    invoke-interface {v1}, Lk9/d;->getContext()Lk9/g;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lkotlinx/coroutines/internal/y;->a(Ls9/l;Ljava/lang/Object;Lk9/g;)Ls9/l;

    move-result-object p1

    return-object p1
.end method

###### Class fa.a.c (fa.a$c)
.class final Lfa/a$c;
.super Lda/e;
.source "AbstractChannel.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfa/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "c"
.end annotation


# instance fields
.field private final o:Lfa/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lfa/n<",
            "*>;"
        }
    .end annotation
.end field

.field final synthetic p:Lfa/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lfa/a<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lfa/a;Lfa/n;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lfa/n<",
            "*>;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lfa/a$c;->p:Lfa/a;

    invoke-direct {p0}, Lda/e;-><init>()V

    iput-object p2, p0, Lfa/a$c;->o:Lfa/n;

    return-void
.end method


# virtual methods
.method public c(Ljava/lang/Throwable;)V
    .registers 2

    .line 1
    iget-object p1, p0, Lfa/a$c;->o:Lfa/n;

    invoke-virtual {p1}, Lkotlinx/coroutines/internal/r;->x()Z

    move-result p1

    if-eqz p1, :cond_d

    .line 2
    iget-object p1, p0, Lfa/a$c;->p:Lfa/a;

    invoke-virtual {p1}, Lfa/a;->x()V

    :cond_d
    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 1
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lfa/a$c;->c(Ljava/lang/Throwable;)V

    sget-object p1, Lh9/t;->a:Lh9/t;

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RemoveReceiveOnCancel["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lfa/a$c;->o:Lfa/n;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class fa.a.d (fa.a$d)
.class public final Lfa/a$d;
.super Lkotlinx/coroutines/internal/r$a;
.source "LockFreeLinkedList.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfa/a;->u(Lfa/n;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic d:Lfa/a;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/internal/r;Lfa/a;)V
    .registers 3

    iput-object p2, p0, Lfa/a$d;->d:Lfa/a;

    .line 1
    invoke-direct {p0, p1}, Lkotlinx/coroutines/internal/r$a;-><init>(Lkotlinx/coroutines/internal/r;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic g(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 1
    check-cast p1, Lkotlinx/coroutines/internal/r;

    invoke-virtual {p0, p1}, Lfa/a$d;->i(Lkotlinx/coroutines/internal/r;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public i(Lkotlinx/coroutines/internal/r;)Ljava/lang/Object;
    .registers 2

    .line 1
    iget-object p1, p0, Lfa/a$d;->d:Lfa/a;

    invoke-virtual {p1}, Lfa/a;->w()Z

    move-result p1

    if-eqz p1, :cond_a

    const/4 p1, 0x0

    goto :goto_e

    :cond_a
    invoke-static {}, Lkotlinx/coroutines/internal/q;->a()Ljava/lang/Object;

    move-result-object p1

    :goto_e
    return-object p1
.end method
