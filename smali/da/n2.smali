###### Class da.n2 (da.n2)
.class final Lda/n2;
.super Lda/d2;
.source "JobSupport.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lda/d2;"
    }
.end annotation


# instance fields
.field private final s:Lda/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lda/n<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lda/n;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lda/n<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lda/d2;-><init>()V

    .line 2
    iput-object p1, p0, Lda/n2;->s:Lda/n;

    return-void
.end method


# virtual methods
.method public C(Ljava/lang/Throwable;)V
    .registers 4

    .line 1
    invoke-virtual {p0}, Lda/d2;->D()Lda/e2;

    move-result-object p1

    invoke-virtual {p1}, Lda/e2;->e0()Ljava/lang/Object;

    move-result-object p1

    .line 2
    invoke-static {}, Lda/s0;->a()Z

    move-result v0

    if-eqz v0, :cond_1b

    instance-of v0, p1, Lda/s1;

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_15

    goto :goto_1b

    :cond_15
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 3
    :cond_1b
    :goto_1b
    instance-of v0, p1, Lda/a0;

    if-eqz v0, :cond_33

    .line 4
    iget-object v0, p0, Lda/n2;->s:Lda/n;

    sget-object v1, Lh9/n;->o:Lh9/n$a;

    check-cast p1, Lda/a0;

    iget-object p1, p1, Lda/a0;->a:Ljava/lang/Throwable;

    invoke-static {p1}, Lh9/o;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lh9/n;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Lk9/d;->g(Ljava/lang/Object;)V

    goto :goto_42

    .line 5
    :cond_33
    iget-object v0, p0, Lda/n2;->s:Lda/n;

    sget-object v1, Lh9/n;->o:Lh9/n$a;

    invoke-static {p1}, Lda/f2;->h(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lh9/n;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Lk9/d;->g(Ljava/lang/Object;)V

    :goto_42
    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 1
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lda/n2;->C(Ljava/lang/Throwable;)V

    sget-object p1, Lh9/t;->a:Lh9/t;

    return-object p1
.end method
