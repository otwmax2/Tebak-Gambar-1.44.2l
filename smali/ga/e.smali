###### Class ga.e (ga.e)
.class public final Lga/e;
.super Ljava/lang/Object;
.source "SafeCollector.kt"

# interfaces
.implements Lk9/g;


# instance fields
.field public final o:Ljava/lang/Throwable;

.field private final synthetic p:Lk9/g;


# direct methods
.method public constructor <init>(Ljava/lang/Throwable;Lk9/g;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lga/e;->o:Ljava/lang/Throwable;

    .line 3
    iput-object p2, p0, Lga/e;->p:Lk9/g;

    return-void
.end method


# virtual methods
.method public b(Lk9/g$c;)Lk9/g$b;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lk9/g$b;",
            ">(",
            "Lk9/g$c<",
            "TE;>;)TE;"
        }
    .end annotation

    iget-object v0, p0, Lga/e;->p:Lk9/g;

    invoke-interface {v0, p1}, Lk9/g;->b(Lk9/g$c;)Lk9/g$b;

    move-result-object p1

    return-object p1
.end method

.method public d(Lk9/g;)Lk9/g;
    .registers 3

    iget-object v0, p0, Lga/e;->p:Lk9/g;

    invoke-interface {v0, p1}, Lk9/g;->d(Lk9/g;)Lk9/g;

    move-result-object p1

    return-object p1
.end method

.method public q(Lk9/g$c;)Lk9/g;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lk9/g$c<",
            "*>;)",
            "Lk9/g;"
        }
    .end annotation

    iget-object v0, p0, Lga/e;->p:Lk9/g;

    invoke-interface {v0, p1}, Lk9/g;->q(Lk9/g$c;)Lk9/g;

    move-result-object p1

    return-object p1
.end method

.method public s(Ljava/lang/Object;Ls9/p;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(TR;",
            "Ls9/p<",
            "-TR;-",
            "Lk9/g$b;",
            "+TR;>;)TR;"
        }
    .end annotation

    iget-object v0, p0, Lga/e;->p:Lk9/g;

    invoke-interface {v0, p1, p2}, Lk9/g;->s(Ljava/lang/Object;Ls9/p;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
