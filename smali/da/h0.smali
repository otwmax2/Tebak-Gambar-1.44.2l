###### Class da.h0 (da.h0)
.class public final Lda/h0;
.super Ljava/lang/Object;
.source "CoroutineContext.kt"


# direct methods
.method private static final a(Lk9/g;Lk9/g;Z)Lk9/g;
    .registers 6

    .line 1
    invoke-static {p0}, Lda/h0;->c(Lk9/g;)Z

    move-result v0

    .line 2
    invoke-static {p1}, Lda/h0;->c(Lk9/g;)Z

    move-result v1

    if-nez v0, :cond_11

    if-nez v1, :cond_11

    .line 3
    invoke-interface {p0, p1}, Lk9/g;->d(Lk9/g;)Lk9/g;

    move-result-object p0

    return-object p0

    .line 4
    :cond_11
    new-instance v0, Lt9/y;

    invoke-direct {v0}, Lt9/y;-><init>()V

    iput-object p1, v0, Lt9/y;->o:Ljava/lang/Object;

    .line 5
    sget-object p1, Lk9/h;->o:Lk9/h;

    new-instance v2, Lda/h0$b;

    invoke-direct {v2, v0, p2}, Lda/h0$b;-><init>(Lt9/y;Z)V

    invoke-interface {p0, p1, v2}, Lk9/g;->s(Ljava/lang/Object;Ls9/p;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lk9/g;

    if-eqz v1, :cond_33

    .line 6
    iget-object p2, v0, Lt9/y;->o:Ljava/lang/Object;

    check-cast p2, Lk9/g;

    sget-object v1, Lda/h0$a;->o:Lda/h0$a;

    invoke-interface {p2, p1, v1}, Lk9/g;->s(Ljava/lang/Object;Ls9/p;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, v0, Lt9/y;->o:Ljava/lang/Object;

    .line 7
    :cond_33
    iget-object p1, v0, Lt9/y;->o:Ljava/lang/Object;

    check-cast p1, Lk9/g;

    invoke-interface {p0, p1}, Lk9/g;->d(Lk9/g;)Lk9/g;

    move-result-object p0

    return-object p0
.end method

.method public static final b(Lk9/g;)Ljava/lang/String;
    .registers 5

    .line 1
    invoke-static {}, Lda/s0;->c()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return-object v1

    .line 2
    :cond_8
    sget-object v0, Lda/m0;->q:Lda/m0$a;

    invoke-interface {p0, v0}, Lk9/g;->b(Lk9/g$c;)Lk9/g$b;

    move-result-object v0

    check-cast v0, Lda/m0;

    if-nez v0, :cond_13

    return-object v1

    .line 3
    :cond_13
    sget-object v1, Lda/n0;->q:Lda/n0$a;

    invoke-interface {p0, v1}, Lk9/g;->b(Lk9/g$c;)Lk9/g$b;

    move-result-object p0

    check-cast p0, Lda/n0;

    if-eqz p0, :cond_23

    invoke-virtual {p0}, Lda/n0;->m()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_25

    :cond_23
    const-string p0, "coroutine"

    .line 4
    :cond_25
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x23

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lda/m0;->m()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static final c(Lk9/g;)Z
    .registers 3

    .line 1
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object v1, Lda/h0$c;->o:Lda/h0$c;

    invoke-interface {p0, v0, v1}, Lk9/g;->s(Ljava/lang/Object;Ls9/p;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public static final d(Lda/o0;Lk9/g;)Lk9/g;
    .registers 4

    .line 1
    invoke-interface {p0}, Lda/o0;->a()Lk9/g;

    move-result-object p0

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lda/h0;->a(Lk9/g;Lk9/g;Z)Lk9/g;

    move-result-object p0

    .line 2
    invoke-static {}, Lda/s0;->c()Z

    move-result p1

    if-eqz p1, :cond_21

    new-instance p1, Lda/m0;

    invoke-static {}, Lda/s0;->b()Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v0

    invoke-direct {p1, v0, v1}, Lda/m0;-><init>(J)V

    invoke-interface {p0, p1}, Lk9/g;->d(Lk9/g;)Lk9/g;

    move-result-object p1

    goto :goto_22

    :cond_21
    move-object p1, p0

    .line 3
    :goto_22
    invoke-static {}, Lda/d1;->a()Lda/i0;

    move-result-object v0

    if-eq p0, v0, :cond_38

    sget-object v0, Lk9/e;->n:Lk9/e$b;

    invoke-interface {p0, v0}, Lk9/g;->b(Lk9/g$c;)Lk9/g$b;

    move-result-object p0

    if-nez p0, :cond_38

    .line 4
    invoke-static {}, Lda/d1;->a()Lda/i0;

    move-result-object p0

    invoke-interface {p1, p0}, Lk9/g;->d(Lk9/g;)Lk9/g;

    move-result-object p1

    :cond_38
    return-object p1
.end method

.method public static final e(Lk9/g;Lk9/g;)Lk9/g;
    .registers 3

    .line 1
    invoke-static {p1}, Lda/h0;->c(Lk9/g;)Z

    move-result v0

    if-nez v0, :cond_b

    invoke-interface {p0, p1}, Lk9/g;->d(Lk9/g;)Lk9/g;

    move-result-object p0

    return-object p0

    :cond_b
    const/4 v0, 0x0

    .line 2
    invoke-static {p0, p1, v0}, Lda/h0;->a(Lk9/g;Lk9/g;Z)Lk9/g;

    move-result-object p0

    return-object p0
.end method

.method public static final f(Lm9/e;)Lda/u2;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lm9/e;",
            ")",
            "Lda/u2<",
            "*>;"
        }
    .end annotation

    .line 1
    :cond_0
    instance-of v0, p0, Lda/z0;

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    return-object v1

    .line 2
    :cond_6
    invoke-interface {p0}, Lm9/e;->e()Lm9/e;

    move-result-object p0

    if-nez p0, :cond_d

    return-object v1

    .line 3
    :cond_d
    instance-of v0, p0, Lda/u2;

    if-eqz v0, :cond_0

    check-cast p0, Lda/u2;

    return-object p0
.end method

.method public static final g(Lk9/d;Lk9/g;Ljava/lang/Object;)Lda/u2;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lk9/d<",
            "*>;",
            "Lk9/g;",
            "Ljava/lang/Object;",
            ")",
            "Lda/u2<",
            "*>;"
        }
    .end annotation

    .line 1
    instance-of v0, p0, Lm9/e;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return-object v1

    .line 2
    :cond_6
    sget-object v0, Lda/v2;->o:Lda/v2;

    invoke-interface {p1, v0}, Lk9/g;->b(Lk9/g$c;)Lk9/g$b;

    move-result-object v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    if-nez v0, :cond_14

    return-object v1

    .line 3
    :cond_14
    check-cast p0, Lm9/e;

    invoke-static {p0}, Lda/h0;->f(Lm9/e;)Lda/u2;

    move-result-object p0

    if-eqz p0, :cond_1f

    .line 4
    invoke-virtual {p0, p1, p2}, Lda/u2;->P0(Lk9/g;Ljava/lang/Object;)V

    :cond_1f
    return-object p0
.end method

###### Class da.h0.a (da.h0$a)
.class final Lda/h0$a;
.super Lt9/n;
.source "CoroutineContext.kt"

# interfaces
.implements Ls9/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lda/h0;->a(Lk9/g;Lk9/g;Z)Lk9/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lt9/n;",
        "Ls9/p<",
        "Lk9/g;",
        "Lk9/g$b;",
        "Lk9/g;",
        ">;"
    }
.end annotation


# static fields
.field public static final o:Lda/h0$a;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lda/h0$a;

    invoke-direct {v0}, Lda/h0$a;-><init>()V

    sput-object v0, Lda/h0$a;->o:Lda/h0$a;

    return-void
.end method

.method constructor <init>()V
    .registers 2

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lt9/n;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final c(Lk9/g;Lk9/g$b;)Lk9/g;
    .registers 4

    .line 1
    instance-of v0, p2, Lda/f0;

    if-eqz v0, :cond_f

    .line 2
    check-cast p2, Lda/f0;

    invoke-interface {p2}, Lda/f0;->r()Lda/f0;

    move-result-object p2

    invoke-interface {p1, p2}, Lk9/g;->d(Lk9/g;)Lk9/g;

    move-result-object p1

    return-object p1

    .line 3
    :cond_f
    invoke-interface {p1, p2}, Lk9/g;->d(Lk9/g;)Lk9/g;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 1
    check-cast p1, Lk9/g;

    check-cast p2, Lk9/g$b;

    invoke-virtual {p0, p1, p2}, Lda/h0$a;->c(Lk9/g;Lk9/g$b;)Lk9/g;

    move-result-object p1

    return-object p1
.end method

###### Class da.h0.b (da.h0$b)
.class final Lda/h0$b;
.super Lt9/n;
.source "CoroutineContext.kt"

# interfaces
.implements Ls9/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lda/h0;->a(Lk9/g;Lk9/g;Z)Lk9/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lt9/n;",
        "Ls9/p<",
        "Lk9/g;",
        "Lk9/g$b;",
        "Lk9/g;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic o:Lt9/y;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lt9/y<",
            "Lk9/g;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic p:Z


# direct methods
.method constructor <init>(Lt9/y;Z)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lt9/y<",
            "Lk9/g;",
            ">;Z)V"
        }
    .end annotation

    iput-object p1, p0, Lda/h0$b;->o:Lt9/y;

    iput-boolean p2, p0, Lda/h0$b;->p:Z

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lt9/n;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final c(Lk9/g;Lk9/g$b;)Lk9/g;
    .registers 7

    .line 1
    instance-of v0, p2, Lda/f0;

    if-nez v0, :cond_9

    invoke-interface {p1, p2}, Lk9/g;->d(Lk9/g;)Lk9/g;

    move-result-object p1

    return-object p1

    .line 2
    :cond_9
    iget-object v0, p0, Lda/h0$b;->o:Lt9/y;

    iget-object v0, v0, Lt9/y;->o:Ljava/lang/Object;

    check-cast v0, Lk9/g;

    invoke-interface {p2}, Lk9/g$b;->getKey()Lk9/g$c;

    move-result-object v1

    invoke-interface {v0, v1}, Lk9/g;->b(Lk9/g$c;)Lk9/g$b;

    move-result-object v0

    if-nez v0, :cond_28

    .line 3
    iget-boolean v0, p0, Lda/h0$b;->p:Z

    check-cast p2, Lda/f0;

    if-eqz v0, :cond_23

    invoke-interface {p2}, Lda/f0;->r()Lda/f0;

    move-result-object p2

    :cond_23
    invoke-interface {p1, p2}, Lk9/g;->d(Lk9/g;)Lk9/g;

    move-result-object p1

    return-object p1

    .line 4
    :cond_28
    iget-object v1, p0, Lda/h0$b;->o:Lt9/y;

    iget-object v2, v1, Lt9/y;->o:Ljava/lang/Object;

    check-cast v2, Lk9/g;

    invoke-interface {p2}, Lk9/g$b;->getKey()Lk9/g$c;

    move-result-object v3

    invoke-interface {v2, v3}, Lk9/g;->q(Lk9/g$c;)Lk9/g;

    move-result-object v2

    iput-object v2, v1, Lt9/y;->o:Ljava/lang/Object;

    .line 5
    check-cast p2, Lda/f0;

    invoke-interface {p2, v0}, Lda/f0;->k(Lk9/g$b;)Lk9/g;

    move-result-object p2

    invoke-interface {p1, p2}, Lk9/g;->d(Lk9/g;)Lk9/g;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 1
    check-cast p1, Lk9/g;

    check-cast p2, Lk9/g$b;

    invoke-virtual {p0, p1, p2}, Lda/h0$b;->c(Lk9/g;Lk9/g$b;)Lk9/g;

    move-result-object p1

    return-object p1
.end method

###### Class da.h0.c (da.h0$c)
.class final Lda/h0$c;
.super Lt9/n;
.source "CoroutineContext.kt"

# interfaces
.implements Ls9/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lda/h0;->c(Lk9/g;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lt9/n;",
        "Ls9/p<",
        "Ljava/lang/Boolean;",
        "Lk9/g$b;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# static fields
.field public static final o:Lda/h0$c;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lda/h0$c;

    invoke-direct {v0}, Lda/h0$c;-><init>()V

    sput-object v0, Lda/h0$c;->o:Lda/h0$c;

    return-void
.end method

.method constructor <init>()V
    .registers 2

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lt9/n;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final c(ZLk9/g$b;)Ljava/lang/Boolean;
    .registers 3

    if-nez p1, :cond_9

    .line 1
    instance-of p1, p2, Lda/f0;

    if-eqz p1, :cond_7

    goto :goto_9

    :cond_7
    const/4 p1, 0x0

    goto :goto_a

    :cond_9
    :goto_9
    const/4 p1, 0x1

    :goto_a
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    check-cast p2, Lk9/g$b;

    invoke-virtual {p0, p1, p2}, Lda/h0$c;->c(ZLk9/g$b;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
