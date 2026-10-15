###### Class k9.g (k9.g)
.class public interface abstract Lk9/g;
.super Ljava/lang/Object;
.source "CoroutineContext.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lk9/g$c;,
        Lk9/g$b;,
        Lk9/g$a;
    }
.end annotation


# virtual methods
.method public abstract b(Lk9/g$c;)Lk9/g$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lk9/g$b;",
            ">(",
            "Lk9/g$c<",
            "TE;>;)TE;"
        }
    .end annotation
.end method

.method public abstract d(Lk9/g;)Lk9/g;
.end method

.method public abstract q(Lk9/g$c;)Lk9/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lk9/g$c<",
            "*>;)",
            "Lk9/g;"
        }
    .end annotation
.end method

.method public abstract s(Ljava/lang/Object;Ls9/p;)Ljava/lang/Object;
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
.end method

###### Class k9.g.a (k9.g$a)
.class public final Lk9/g$a;
.super Ljava/lang/Object;
.source "CoroutineContext.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk9/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public static a(Lk9/g;Lk9/g;)Lk9/g;
    .registers 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lt9/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lk9/h;->o:Lk9/h;

    if-ne p1, v0, :cond_a

    goto :goto_12

    .line 2
    :cond_a
    sget-object v0, Lk9/g$a$a;->o:Lk9/g$a$a;

    invoke-interface {p1, p0, v0}, Lk9/g;->s(Ljava/lang/Object;Ls9/p;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lk9/g;

    :goto_12
    return-object p0
.end method

###### Class k9.g.a.C0191a (k9.g$a$a)
.class final Lk9/g$a$a;
.super Lt9/n;
.source "CoroutineContext.kt"

# interfaces
.implements Ls9/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lk9/g$a;->a(Lk9/g;Lk9/g;)Lk9/g;
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
.field public static final o:Lk9/g$a$a;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lk9/g$a$a;

    invoke-direct {v0}, Lk9/g$a$a;-><init>()V

    sput-object v0, Lk9/g$a$a;->o:Lk9/g$a$a;

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
    .registers 6

    const-string v0, "acc"

    invoke-static {p1, v0}, Lt9/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "element"

    invoke-static {p2, v0}, Lt9/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p2}, Lk9/g$b;->getKey()Lk9/g$c;

    move-result-object v0

    invoke-interface {p1, v0}, Lk9/g;->q(Lk9/g$c;)Lk9/g;

    move-result-object p1

    .line 2
    sget-object v0, Lk9/h;->o:Lk9/h;

    if-ne p1, v0, :cond_17

    goto :goto_40

    .line 3
    :cond_17
    sget-object v1, Lk9/e;->n:Lk9/e$b;

    invoke-interface {p1, v1}, Lk9/g;->b(Lk9/g$c;)Lk9/g$b;

    move-result-object v2

    check-cast v2, Lk9/e;

    if-nez v2, :cond_28

    .line 4
    new-instance v0, Lk9/c;

    invoke-direct {v0, p1, p2}, Lk9/c;-><init>(Lk9/g;Lk9/g$b;)V

    :goto_26
    move-object p2, v0

    goto :goto_40

    .line 5
    :cond_28
    invoke-interface {p1, v1}, Lk9/g;->q(Lk9/g$c;)Lk9/g;

    move-result-object p1

    if-ne p1, v0, :cond_35

    .line 6
    new-instance p1, Lk9/c;

    invoke-direct {p1, p2, v2}, Lk9/c;-><init>(Lk9/g;Lk9/g$b;)V

    move-object p2, p1

    goto :goto_40

    .line 7
    :cond_35
    new-instance v0, Lk9/c;

    new-instance v1, Lk9/c;

    invoke-direct {v1, p1, p2}, Lk9/c;-><init>(Lk9/g;Lk9/g$b;)V

    invoke-direct {v0, v1, v2}, Lk9/c;-><init>(Lk9/g;Lk9/g$b;)V

    goto :goto_26

    :goto_40
    return-object p2
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 1
    check-cast p1, Lk9/g;

    check-cast p2, Lk9/g$b;

    invoke-virtual {p0, p1, p2}, Lk9/g$a$a;->c(Lk9/g;Lk9/g$b;)Lk9/g;

    move-result-object p1

    return-object p1
.end method

###### Class k9.g.b (k9.g$b)
.class public interface abstract Lk9/g$b;
.super Ljava/lang/Object;
.source "CoroutineContext.kt"

# interfaces
.implements Lk9/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk9/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lk9/g$b$a;
    }
.end annotation


# virtual methods
.method public abstract b(Lk9/g$c;)Lk9/g$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lk9/g$b;",
            ">(",
            "Lk9/g$c<",
            "TE;>;)TE;"
        }
    .end annotation
.end method

.method public abstract getKey()Lk9/g$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lk9/g$c<",
            "*>;"
        }
    .end annotation
.end method

###### Class k9.g.b.a (k9.g$b$a)
.class public final Lk9/g$b$a;
.super Ljava/lang/Object;
.source "CoroutineContext.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk9/g$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public static a(Lk9/g$b;Ljava/lang/Object;Ls9/p;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lk9/g$b;",
            "TR;",
            "Ls9/p<",
            "-TR;-",
            "Lk9/g$b;",
            "+TR;>;)TR;"
        }
    .end annotation

    const-string v0, "operation"

    invoke-static {p2, v0}, Lt9/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p2, p1, p0}, Ls9/p;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static b(Lk9/g$b;Lk9/g$c;)Lk9/g$b;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lk9/g$b;",
            ">(",
            "Lk9/g$b;",
            "Lk9/g$c<",
            "TE;>;)TE;"
        }
    .end annotation

    const-string v0, "key"

    invoke-static {p1, v0}, Lt9/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p0}, Lk9/g$b;->getKey()Lk9/g$c;

    move-result-object v0

    invoke-static {v0, p1}, Lt9/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_15

    const-string p1, "null cannot be cast to non-null type E of kotlin.coroutines.CoroutineContext.Element.get"

    invoke-static {p0, p1}, Lt9/m;->c(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_16

    :cond_15
    const/4 p0, 0x0

    :goto_16
    return-object p0
.end method

.method public static c(Lk9/g$b;Lk9/g$c;)Lk9/g;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lk9/g$b;",
            "Lk9/g$c<",
            "*>;)",
            "Lk9/g;"
        }
    .end annotation

    const-string v0, "key"

    invoke-static {p1, v0}, Lt9/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p0}, Lk9/g$b;->getKey()Lk9/g$c;

    move-result-object v0

    invoke-static {v0, p1}, Lt9/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_11

    sget-object p0, Lk9/h;->o:Lk9/h;

    :cond_11
    return-object p0
.end method

.method public static d(Lk9/g$b;Lk9/g;)Lk9/g;
    .registers 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lt9/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p0, p1}, Lk9/g$a;->a(Lk9/g;Lk9/g;)Lk9/g;

    move-result-object p0

    return-object p0
.end method

###### Class k9.g.c (k9.g$c)
.class public interface abstract Lk9/g$c;
.super Ljava/lang/Object;
.source "CoroutineContext.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk9/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E::",
        "Lk9/g$b;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation
