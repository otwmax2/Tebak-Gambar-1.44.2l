###### Class h9.p (h9.p)
.class final Lh9/p;
.super Ljava/lang/Object;
.source "LazyJVM.kt"

# interfaces
.implements Lh9/h;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lh9/h<",
        "TT;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field private o:Ls9/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls9/a<",
            "+TT;>;"
        }
    .end annotation
.end field

.field private volatile p:Ljava/lang/Object;

.field private final q:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ls9/a;Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls9/a<",
            "+TT;>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    const-string v0, "initializer"

    invoke-static {p1, v0}, Lt9/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lh9/p;->o:Ls9/a;

    .line 3
    sget-object p1, Lh9/r;->a:Lh9/r;

    iput-object p1, p0, Lh9/p;->p:Ljava/lang/Object;

    if-nez p2, :cond_11

    move-object p2, p0

    .line 4
    :cond_11
    iput-object p2, p0, Lh9/p;->q:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ls9/a;Ljava/lang/Object;ILt9/g;)V
    .registers 5

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_5

    const/4 p2, 0x0

    .line 5
    :cond_5
    invoke-direct {p0, p1, p2}, Lh9/p;-><init>(Ls9/a;Ljava/lang/Object;)V

    return-void
.end method

.method private final writeReplace()Ljava/lang/Object;
    .registers 3

    .line 1
    new-instance v0, Lh9/d;

    invoke-virtual {p0}, Lh9/p;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v1}, Lh9/d;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public a()Z
    .registers 3

    .line 1
    iget-object v0, p0, Lh9/p;->p:Ljava/lang/Object;

    sget-object v1, Lh9/r;->a:Lh9/r;

    if-eq v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public getValue()Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lh9/p;->p:Ljava/lang/Object;

    .line 2
    sget-object v1, Lh9/r;->a:Lh9/r;

    if-eq v0, v1, :cond_7

    return-object v0

    .line 3
    :cond_7
    iget-object v0, p0, Lh9/p;->q:Ljava/lang/Object;

    monitor-enter v0

    .line 4
    :try_start_a
    iget-object v2, p0, Lh9/p;->p:Ljava/lang/Object;

    if-eq v2, v1, :cond_f

    goto :goto_1d

    .line 5
    :cond_f
    iget-object v1, p0, Lh9/p;->o:Ls9/a;

    invoke-static {v1}, Lt9/m;->b(Ljava/lang/Object;)V

    invoke-interface {v1}, Ls9/a;->invoke()Ljava/lang/Object;

    move-result-object v2

    .line 6
    iput-object v2, p0, Lh9/p;->p:Ljava/lang/Object;

    const/4 v1, 0x0

    .line 7
    iput-object v1, p0, Lh9/p;->o:Ls9/a;
    :try_end_1d
    .catchall {:try_start_a .. :try_end_1d} :catchall_1f

    .line 8
    :goto_1d
    monitor-exit v0

    return-object v2

    :catchall_1f
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lh9/p;->a()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {p0}, Lh9/p;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_11

    :cond_f
    const-string v0, "Lazy value not initialized yet."

    :goto_11
    return-object v0
.end method
