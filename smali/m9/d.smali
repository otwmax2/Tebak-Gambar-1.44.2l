###### Class m9.d (m9.d)
.class public abstract Lm9/d;
.super Lm9/a;
.source "ContinuationImpl.kt"


# instance fields
.field private final p:Lk9/g;

.field private transient q:Lk9/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lk9/d<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lk9/d;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lk9/d<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_7

    .line 3
    invoke-interface {p1}, Lk9/d;->getContext()Lk9/g;

    move-result-object v0

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    invoke-direct {p0, p1, v0}, Lm9/d;-><init>(Lk9/d;Lk9/g;)V

    return-void
.end method

.method public constructor <init>(Lk9/d;Lk9/g;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lk9/d<",
            "Ljava/lang/Object;",
            ">;",
            "Lk9/g;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lm9/a;-><init>(Lk9/d;)V

    .line 2
    iput-object p2, p0, Lm9/d;->p:Lk9/g;

    return-void
.end method


# virtual methods
.method public getContext()Lk9/g;
    .registers 2

    .line 1
    iget-object v0, p0, Lm9/d;->p:Lk9/g;

    invoke-static {v0}, Lt9/m;->b(Ljava/lang/Object;)V

    return-object v0
.end method

.method protected j()V
    .registers 4

    .line 1
    iget-object v0, p0, Lm9/d;->q:Lk9/d;

    if-eqz v0, :cond_18

    if-eq v0, p0, :cond_18

    .line 2
    invoke-virtual {p0}, Lm9/d;->getContext()Lk9/g;

    move-result-object v1

    sget-object v2, Lk9/e;->n:Lk9/e$b;

    invoke-interface {v1, v2}, Lk9/g;->b(Lk9/g$c;)Lk9/g$b;

    move-result-object v1

    invoke-static {v1}, Lt9/m;->b(Ljava/lang/Object;)V

    check-cast v1, Lk9/e;

    invoke-interface {v1, v0}, Lk9/e;->h(Lk9/d;)V

    .line 3
    :cond_18
    sget-object v0, Lm9/c;->o:Lm9/c;

    iput-object v0, p0, Lm9/d;->q:Lk9/d;

    return-void
.end method

.method public final k()Lk9/d;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lk9/d<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lm9/d;->q:Lk9/d;

    if-nez v0, :cond_1b

    .line 2
    invoke-virtual {p0}, Lm9/d;->getContext()Lk9/g;

    move-result-object v0

    sget-object v1, Lk9/e;->n:Lk9/e$b;

    invoke-interface {v0, v1}, Lk9/g;->b(Lk9/g$c;)Lk9/g$b;

    move-result-object v0

    check-cast v0, Lk9/e;

    if-eqz v0, :cond_18

    invoke-interface {v0, p0}, Lk9/e;->p(Lk9/d;)Lk9/d;

    move-result-object v0

    if-nez v0, :cond_19

    :cond_18
    move-object v0, p0

    .line 3
    :cond_19
    iput-object v0, p0, Lm9/d;->q:Lk9/d;

    :cond_1b
    return-object v0
.end method
