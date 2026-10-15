###### Class da.v2 (da.v2)
.class final Lda/v2;
.super Ljava/lang/Object;
.source "CoroutineContext.kt"

# interfaces
.implements Lk9/g$b;
.implements Lk9/g$c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lk9/g$b;",
        "Lk9/g$c<",
        "Lda/v2;",
        ">;"
    }
.end annotation


# static fields
.field public static final o:Lda/v2;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lda/v2;

    invoke-direct {v0}, Lda/v2;-><init>()V

    sput-object v0, Lda/v2;->o:Lda/v2;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lk9/g$c<",
            "*>;"
        }
    .end annotation

    return-object p0
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
