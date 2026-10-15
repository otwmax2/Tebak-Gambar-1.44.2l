###### Class k9.c (k9.c)
.class public final Lk9/c;
.super Ljava/lang/Object;
.source "CoroutineContextImpl.kt"

# interfaces
.implements Lk9/g;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lk9/c$a;
    }
.end annotation


# instance fields
.field private final o:Lk9/g;

.field private final p:Lk9/g$b;


# direct methods
.method public constructor <init>(Lk9/g;Lk9/g$b;)V
    .registers 4

    const-string v0, "left"

    invoke-static {p1, v0}, Lt9/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "element"

    invoke-static {p2, v0}, Lt9/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lk9/c;->o:Lk9/g;

    .line 3
    iput-object p2, p0, Lk9/c;->p:Lk9/g$b;

    return-void
.end method

.method private final a(Lk9/g$b;)Z
    .registers 3

    .line 1
    invoke-interface {p1}, Lk9/g$b;->getKey()Lk9/g$c;

    move-result-object v0

    invoke-virtual {p0, v0}, Lk9/c;->b(Lk9/g$c;)Lk9/g$b;

    move-result-object v0

    invoke-static {v0, p1}, Lt9/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method private final e(Lk9/c;)Z
    .registers 3

    .line 1
    :goto_0
    iget-object v0, p1, Lk9/c;->p:Lk9/g$b;

    invoke-direct {p0, v0}, Lk9/c;->a(Lk9/g$b;)Z

    move-result v0

    if-nez v0, :cond_a

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_a
    iget-object p1, p1, Lk9/c;->o:Lk9/g;

    .line 3
    instance-of v0, p1, Lk9/c;

    if-eqz v0, :cond_13

    .line 4
    check-cast p1, Lk9/c;

    goto :goto_0

    :cond_13
    const-string v0, "null cannot be cast to non-null type kotlin.coroutines.CoroutineContext.Element"

    .line 5
    invoke-static {p1, v0}, Lt9/m;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lk9/g$b;

    invoke-direct {p0, p1}, Lk9/c;->a(Lk9/g$b;)Z

    move-result p1

    return p1
.end method

.method private final g()I
    .registers 4

    const/4 v0, 0x2

    move-object v1, p0

    .line 1
    :goto_2
    iget-object v1, v1, Lk9/c;->o:Lk9/g;

    instance-of v2, v1, Lk9/c;

    if-eqz v2, :cond_b

    check-cast v1, Lk9/c;

    goto :goto_c

    :cond_b
    const/4 v1, 0x0

    :goto_c
    if-nez v1, :cond_f

    return v0

    :cond_f
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method private final writeReplace()Ljava/lang/Object;
    .registers 6

    .line 1
    invoke-direct {p0}, Lk9/c;->g()I

    move-result v0

    .line 2
    new-array v1, v0, [Lk9/g;

    .line 3
    new-instance v2, Lt9/x;

    invoke-direct {v2}, Lt9/x;-><init>()V

    .line 4
    sget-object v3, Lh9/t;->a:Lh9/t;

    new-instance v4, Lk9/c$c;

    invoke-direct {v4, v1, v2}, Lk9/c$c;-><init>([Lk9/g;Lt9/x;)V

    invoke-virtual {p0, v3, v4}, Lk9/c;->s(Ljava/lang/Object;Ls9/p;)Ljava/lang/Object;

    .line 5
    iget v2, v2, Lt9/x;->o:I

    if-ne v2, v0, :cond_1b

    const/4 v0, 0x1

    goto :goto_1c

    :cond_1b
    const/4 v0, 0x0

    :goto_1c
    if-eqz v0, :cond_24

    .line 6
    new-instance v0, Lk9/c$a;

    invoke-direct {v0, v1}, Lk9/c$a;-><init>([Lk9/g;)V

    return-object v0

    .line 7
    :cond_24
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Check failed."

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public b(Lk9/g$c;)Lk9/g$b;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lk9/g$b;",
            ">(",
            "Lk9/g$c<",
            "TE;>;)TE;"
        }
    .end annotation

    const-string v0, "key"

    invoke-static {p1, v0}, Lt9/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p0

    .line 1
    :goto_6
    iget-object v1, v0, Lk9/c;->p:Lk9/g$b;

    invoke-interface {v1, p1}, Lk9/g$b;->b(Lk9/g$c;)Lk9/g$b;

    move-result-object v1

    if-eqz v1, :cond_f

    return-object v1

    .line 2
    :cond_f
    iget-object v0, v0, Lk9/c;->o:Lk9/g;

    .line 3
    instance-of v1, v0, Lk9/c;

    if-eqz v1, :cond_18

    .line 4
    check-cast v0, Lk9/c;

    goto :goto_6

    .line 5
    :cond_18
    invoke-interface {v0, p1}, Lk9/g;->b(Lk9/g$c;)Lk9/g$b;

    move-result-object p1

    return-object p1
.end method

.method public d(Lk9/g;)Lk9/g;
    .registers 2

    .line 1
    invoke-static {p0, p1}, Lk9/g$a;->a(Lk9/g;Lk9/g;)Lk9/g;

    move-result-object p1

    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4

    if-eq p0, p1, :cond_1b

    .line 1
    instance-of v0, p1, Lk9/c;

    if-eqz v0, :cond_19

    check-cast p1, Lk9/c;

    invoke-direct {p1}, Lk9/c;->g()I

    move-result v0

    invoke-direct {p0}, Lk9/c;->g()I

    move-result v1

    if-ne v0, v1, :cond_19

    invoke-direct {p1, p0}, Lk9/c;->e(Lk9/c;)Z

    move-result p1

    if-eqz p1, :cond_19

    goto :goto_1b

    :cond_19
    const/4 p1, 0x0

    goto :goto_1c

    :cond_1b
    :goto_1b
    const/4 p1, 0x1

    :goto_1c
    return p1
.end method

.method public hashCode()I
    .registers 3

    .line 1
    iget-object v0, p0, Lk9/c;->o:Lk9/g;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-object v1, p0, Lk9/c;->p:Lk9/g$b;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public q(Lk9/g$c;)Lk9/g;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lk9/g$c<",
            "*>;)",
            "Lk9/g;"
        }
    .end annotation

    const-string v0, "key"

    .line 1
    invoke-static {p1, v0}, Lt9/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lk9/c;->p:Lk9/g$b;

    invoke-interface {v0, p1}, Lk9/g$b;->b(Lk9/g$c;)Lk9/g$b;

    move-result-object v0

    if-eqz v0, :cond_10

    iget-object p1, p0, Lk9/c;->o:Lk9/g;

    return-object p1

    .line 2
    :cond_10
    iget-object v0, p0, Lk9/c;->o:Lk9/g;

    invoke-interface {v0, p1}, Lk9/g;->q(Lk9/g$c;)Lk9/g;

    move-result-object p1

    .line 3
    iget-object v0, p0, Lk9/c;->o:Lk9/g;

    if-ne p1, v0, :cond_1c

    move-object p1, p0

    goto :goto_2b

    .line 4
    :cond_1c
    sget-object v0, Lk9/h;->o:Lk9/h;

    if-ne p1, v0, :cond_23

    iget-object p1, p0, Lk9/c;->p:Lk9/g$b;

    goto :goto_2b

    .line 5
    :cond_23
    new-instance v0, Lk9/c;

    iget-object v1, p0, Lk9/c;->p:Lk9/g$b;

    invoke-direct {v0, p1, v1}, Lk9/c;-><init>(Lk9/g;Lk9/g$b;)V

    move-object p1, v0

    :goto_2b
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

    const-string v0, "operation"

    invoke-static {p2, v0}, Lt9/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lk9/c;->o:Lk9/g;

    invoke-interface {v0, p1, p2}, Lk9/g;->s(Ljava/lang/Object;Ls9/p;)Ljava/lang/Object;

    move-result-object p1

    iget-object v0, p0, Lk9/c;->p:Lk9/g$b;

    invoke-interface {p2, p1, v0}, Ls9/p;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-object v1, Lk9/c$b;->o:Lk9/c$b;

    const-string v2, ""

    invoke-virtual {p0, v2, v1}, Lk9/c;->s(Ljava/lang/Object;Ls9/p;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class k9.c.a (k9.c$a)
.class final Lk9/c$a;
.super Ljava/lang/Object;
.source "CoroutineContextImpl.kt"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk9/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lk9/c$a$a;
    }
.end annotation


# static fields
.field public static final p:Lk9/c$a$a;

.field private static final serialVersionUID:J


# instance fields
.field private final o:[Lk9/g;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lk9/c$a$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lk9/c$a$a;-><init>(Lt9/g;)V

    sput-object v0, Lk9/c$a;->p:Lk9/c$a$a;

    return-void
.end method

.method public constructor <init>([Lk9/g;)V
    .registers 3

    const-string v0, "elements"

    invoke-static {p1, v0}, Lt9/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lk9/c$a;->o:[Lk9/g;

    return-void
.end method

.method private final readResolve()Ljava/lang/Object;
    .registers 6

    .line 1
    iget-object v0, p0, Lk9/c$a;->o:[Lk9/g;

    sget-object v1, Lk9/h;->o:Lk9/h;

    .line 2
    array-length v2, v0

    const/4 v3, 0x0

    :goto_6
    if-ge v3, v2, :cond_11

    aget-object v4, v0, v3

    .line 3
    invoke-interface {v1, v4}, Lk9/g;->d(Lk9/g;)Lk9/g;

    move-result-object v1

    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_11
    return-object v1
.end method

###### Class k9.c.a.C0189a (k9.c$a$a)
.class public final Lk9/c$a$a;
.super Ljava/lang/Object;
.source "CoroutineContextImpl.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk9/c$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lt9/g;)V
    .registers 2

    invoke-direct {p0}, Lk9/c$a$a;-><init>()V

    return-void
.end method

###### Class k9.c.b (k9.c$b)
.class final Lk9/c$b;
.super Lt9/n;
.source "CoroutineContextImpl.kt"

# interfaces
.implements Ls9/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lk9/c;->toString()Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lt9/n;",
        "Ls9/p<",
        "Ljava/lang/String;",
        "Lk9/g$b;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field public static final o:Lk9/c$b;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lk9/c$b;

    invoke-direct {v0}, Lk9/c$b;-><init>()V

    sput-object v0, Lk9/c$b;->o:Lk9/c$b;

    return-void
.end method

.method constructor <init>()V
    .registers 2

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lt9/n;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final c(Ljava/lang/String;Lk9/g$b;)Ljava/lang/String;
    .registers 4

    const-string v0, "acc"

    invoke-static {p1, v0}, Lt9/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "element"

    invoke-static {p2, v0}, Lt9/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    if-eqz v0, :cond_1a

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_2e

    :cond_1a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_2e
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 1
    check-cast p1, Ljava/lang/String;

    check-cast p2, Lk9/g$b;

    invoke-virtual {p0, p1, p2}, Lk9/c$b;->c(Ljava/lang/String;Lk9/g$b;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

###### Class k9.c.C0190c (k9.c$c)
.class final Lk9/c$c;
.super Lt9/n;
.source "CoroutineContextImpl.kt"

# interfaces
.implements Ls9/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lk9/c;->writeReplace()Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lt9/n;",
        "Ls9/p<",
        "Lh9/t;",
        "Lk9/g$b;",
        "Lh9/t;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic o:[Lk9/g;

.field final synthetic p:Lt9/x;


# direct methods
.method constructor <init>([Lk9/g;Lt9/x;)V
    .registers 3

    iput-object p1, p0, Lk9/c$c;->o:[Lk9/g;

    iput-object p2, p0, Lk9/c$c;->p:Lt9/x;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lt9/n;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final c(Lh9/t;Lk9/g$b;)V
    .registers 6

    const-string v0, "<anonymous parameter 0>"

    invoke-static {p1, v0}, Lt9/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "element"

    invoke-static {p2, p1}, Lt9/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Lk9/c$c;->o:[Lk9/g;

    iget-object v0, p0, Lk9/c$c;->p:Lt9/x;

    iget v1, v0, Lt9/x;->o:I

    add-int/lit8 v2, v1, 0x1

    iput v2, v0, Lt9/x;->o:I

    aput-object p2, p1, v1

    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 1
    check-cast p1, Lh9/t;

    check-cast p2, Lk9/g$b;

    invoke-virtual {p0, p1, p2}, Lk9/c$c;->c(Lh9/t;Lk9/g$b;)V

    sget-object p1, Lh9/t;->a:Lh9/t;

    return-object p1
.end method
