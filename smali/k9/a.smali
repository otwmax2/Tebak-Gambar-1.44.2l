###### Class k9.a (k9.a)
.class public abstract Lk9/a;
.super Ljava/lang/Object;
.source "CoroutineContextImpl.kt"

# interfaces
.implements Lk9/g$b;


# instance fields
.field private final o:Lk9/g$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lk9/g$c<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lk9/g$c;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lk9/g$c<",
            "*>;)V"
        }
    .end annotation

    const-string v0, "key"

    invoke-static {p1, v0}, Lt9/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lk9/a;->o:Lk9/g$c;

    return-void
.end method


# virtual methods
.method public b(Lk9/g$c;)Lk9/g$b;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lk9/g$b;",
            ">(",
            "Lk9/g$c<",
            "TE;>;)TE;"
        }
    .end annotation

    .line 1
    invoke-static {p0, p1}, Lk9/g$b$a;->b(Lk9/g$b;Lk9/g$c;)Lk9/g$b;

    move-result-object p1

    return-object p1
.end method

.method public d(Lk9/g;)Lk9/g;
    .registers 2

    .line 1
    invoke-static {p0, p1}, Lk9/g$b$a;->d(Lk9/g$b;Lk9/g;)Lk9/g;

    move-result-object p1

    return-object p1
.end method

.method public getKey()Lk9/g$c;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lk9/g$c<",
            "*>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lk9/a;->o:Lk9/g$c;

    return-object v0
.end method

.method public q(Lk9/g$c;)Lk9/g;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lk9/g$c<",
            "*>;)",
            "Lk9/g;"
        }
    .end annotation

    .line 1
    invoke-static {p0, p1}, Lk9/g$b$a;->c(Lk9/g$b;Lk9/g$c;)Lk9/g;

    move-result-object p1

    return-object p1
.end method

.method public s(Ljava/lang/Object;Ls9/p;)Ljava/lang/Object;
    .registers 3
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

    .line 1
    invoke-static {p0, p1, p2}, Lk9/g$b$a;->a(Lk9/g$b;Ljava/lang/Object;Ls9/p;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
