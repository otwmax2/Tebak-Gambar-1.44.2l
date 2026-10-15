###### Class k5.c (k5.c)
.class public final Lk5/c;
.super Ljava/lang/Object;
.source "Component.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lk5/c$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lk5/f0<",
            "-TT;>;>;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lk5/r;",
            ">;"
        }
    .end annotation
.end field

.field private final d:I

.field private final e:I

.field private final f:Lk5/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lk5/h<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final g:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/util/Set;Ljava/util/Set;IILk5/h;Ljava/util/Set;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Lk5/f0<",
            "-TT;>;>;",
            "Ljava/util/Set<",
            "Lk5/r;",
            ">;II",
            "Lk5/h<",
            "TT;>;",
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "*>;>;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lk5/c;->a:Ljava/lang/String;

    .line 4
    invoke-static {p2}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lk5/c;->b:Ljava/util/Set;

    .line 5
    invoke-static {p3}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lk5/c;->c:Ljava/util/Set;

    .line 6
    iput p4, p0, Lk5/c;->d:I

    .line 7
    iput p5, p0, Lk5/c;->e:I

    .line 8
    iput-object p6, p0, Lk5/c;->f:Lk5/h;

    .line 9
    invoke-static {p7}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lk5/c;->g:Ljava/util/Set;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/util/Set;Ljava/util/Set;IILk5/h;Ljava/util/Set;Lk5/c$a;)V
    .registers 9

    .line 1
    invoke-direct/range {p0 .. p7}, Lk5/c;-><init>(Ljava/lang/String;Ljava/util/Set;Ljava/util/Set;IILk5/h;Ljava/util/Set;)V

    return-void
.end method

.method public static synthetic a(Ljava/lang/Object;Lk5/e;)Ljava/lang/Object;
    .registers 2

    invoke-static {p0, p1}, Lk5/c;->q(Ljava/lang/Object;Lk5/e;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Ljava/lang/Object;Lk5/e;)Ljava/lang/Object;
    .registers 2

    invoke-static {p0, p1}, Lk5/c;->r(Ljava/lang/Object;Lk5/e;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static c(Ljava/lang/Class;)Lk5/c$b;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lk5/c$b<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lk5/c$b;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lk5/c$b;-><init>(Ljava/lang/Class;[Ljava/lang/Class;Lk5/c$a;)V

    return-object v0
.end method

.method public static varargs d(Ljava/lang/Class;[Ljava/lang/Class;)Lk5/c$b;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;[",
            "Ljava/lang/Class<",
            "-TT;>;)",
            "Lk5/c$b<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 1
    new-instance v0, Lk5/c$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lk5/c$b;-><init>(Ljava/lang/Class;[Ljava/lang/Class;Lk5/c$a;)V

    return-object v0
.end method

.method public static e(Lk5/f0;)Lk5/c$b;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lk5/f0<",
            "TT;>;)",
            "Lk5/c$b<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lk5/c$b;

    const/4 v1, 0x0

    new-array v1, v1, [Lk5/f0;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lk5/c$b;-><init>(Lk5/f0;[Lk5/f0;Lk5/c$a;)V

    return-object v0
.end method

.method public static varargs f(Lk5/f0;[Lk5/f0;)Lk5/c$b;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lk5/f0<",
            "TT;>;[",
            "Lk5/f0<",
            "-TT;>;)",
            "Lk5/c$b<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 1
    new-instance v0, Lk5/c$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lk5/c$b;-><init>(Lk5/f0;[Lk5/f0;Lk5/c$a;)V

    return-object v0
.end method

.method public static l(Ljava/lang/Object;Ljava/lang/Class;)Lk5/c;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lk5/c<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lk5/c;->m(Ljava/lang/Class;)Lk5/c$b;

    move-result-object p1

    new-instance v0, Lk5/a;

    invoke-direct {v0, p0}, Lk5/a;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p1, v0}, Lk5/c$b;->f(Lk5/h;)Lk5/c$b;

    move-result-object p0

    invoke-virtual {p0}, Lk5/c$b;->d()Lk5/c;

    move-result-object p0

    return-object p0
.end method

.method public static m(Ljava/lang/Class;)Lk5/c$b;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lk5/c$b<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lk5/c;->c(Ljava/lang/Class;)Lk5/c$b;

    move-result-object p0

    invoke-static {p0}, Lk5/c$b;->a(Lk5/c$b;)Lk5/c$b;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic q(Ljava/lang/Object;Lk5/e;)Ljava/lang/Object;
    .registers 2

    return-object p0
.end method

.method private static synthetic r(Ljava/lang/Object;Lk5/e;)Ljava/lang/Object;
    .registers 2

    return-object p0
.end method

.method public static varargs s(Ljava/lang/Object;Ljava/lang/Class;[Ljava/lang/Class;)Lk5/c;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/lang/Class<",
            "TT;>;[",
            "Ljava/lang/Class<",
            "-TT;>;)",
            "Lk5/c<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 1
    invoke-static {p1, p2}, Lk5/c;->d(Ljava/lang/Class;[Ljava/lang/Class;)Lk5/c$b;

    move-result-object p1

    new-instance p2, Lk5/b;

    invoke-direct {p2, p0}, Lk5/b;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p1, p2}, Lk5/c$b;->f(Lk5/h;)Lk5/c$b;

    move-result-object p0

    invoke-virtual {p0}, Lk5/c$b;->d()Lk5/c;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public g()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lk5/r;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lk5/c;->c:Ljava/util/Set;

    return-object v0
.end method

.method public h()Lk5/h;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lk5/h<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lk5/c;->f:Lk5/h;

    return-object v0
.end method

.method public i()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lk5/c;->a:Ljava/lang/String;

    return-object v0
.end method

.method public j()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lk5/f0<",
            "-TT;>;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lk5/c;->b:Ljava/util/Set;

    return-object v0
.end method

.method public k()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lk5/c;->g:Ljava/util/Set;

    return-object v0
.end method

.method public n()Z
    .registers 3

    .line 1
    iget v0, p0, Lk5/c;->d:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    goto :goto_7

    :cond_6
    const/4 v1, 0x0

    :goto_7
    return v1
.end method

.method public o()Z
    .registers 3

    .line 1
    iget v0, p0, Lk5/c;->d:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public p()Z
    .registers 2

    .line 1
    iget v0, p0, Lk5/c;->e:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public t(Lk5/h;)Lk5/c;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lk5/h<",
            "TT;>;)",
            "Lk5/c<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v8, Lk5/c;

    iget-object v1, p0, Lk5/c;->a:Ljava/lang/String;

    iget-object v2, p0, Lk5/c;->b:Ljava/util/Set;

    iget-object v3, p0, Lk5/c;->c:Ljava/util/Set;

    iget v4, p0, Lk5/c;->d:I

    iget v5, p0, Lk5/c;->e:I

    iget-object v7, p0, Lk5/c;->g:Ljava/util/Set;

    move-object v0, v8

    move-object v6, p1

    invoke-direct/range {v0 .. v7}, Lk5/c;-><init>(Ljava/lang/String;Ljava/util/Set;Ljava/util/Set;IILk5/h;Ljava/util/Set;)V

    return-object v8
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Component<"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lk5/c;->b:Ljava/util/Set;

    .line 2
    invoke-interface {v1}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ">{"

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lk5/c;->d:I

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", type="

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lk5/c;->e:I

    .line 6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", deps="

    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lk5/c;->c:Ljava/util/Set;

    .line 8
    invoke-interface {v1}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class k5.c.a (k5.c$a)
.class synthetic Lk5/c$a;
.super Ljava/lang/Object;
.source "Component.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk5/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation

###### Class k5.c.b (k5.c$b)
.class public Lk5/c$b;
.super Ljava/lang/Object;
.source "Component.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk5/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private final b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lk5/f0<",
            "-TT;>;>;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lk5/r;",
            ">;"
        }
    .end annotation
.end field

.field private d:I

.field private e:I

.field private f:Lk5/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lk5/h<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final g:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method private varargs constructor <init>(Ljava/lang/Class;[Ljava/lang/Class;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TT;>;[",
            "Ljava/lang/Class<",
            "-TT;>;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lk5/c$b;->a:Ljava/lang/String;

    .line 5
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lk5/c$b;->b:Ljava/util/Set;

    .line 6
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lk5/c$b;->c:Ljava/util/Set;

    const/4 v1, 0x0

    .line 7
    iput v1, p0, Lk5/c$b;->d:I

    .line 8
    iput v1, p0, Lk5/c$b;->e:I

    .line 9
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lk5/c$b;->g:Ljava/util/Set;

    const-string v2, "Null interface"

    .line 10
    invoke-static {p1, v2}, Lk5/e0;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 11
    invoke-static {p1}, Lk5/f0;->b(Ljava/lang/Class;)Lk5/f0;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 12
    array-length p1, p2

    :goto_2d
    if-ge v1, p1, :cond_40

    aget-object v0, p2, v1

    .line 13
    invoke-static {v0, v2}, Lk5/e0;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 14
    iget-object v3, p0, Lk5/c$b;->b:Ljava/util/Set;

    invoke-static {v0}, Lk5/f0;->b(Ljava/lang/Class;)Lk5/f0;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_2d

    :cond_40
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/Class;[Ljava/lang/Class;Lk5/c$a;)V
    .registers 4

    .line 1
    invoke-direct {p0, p1, p2}, Lk5/c$b;-><init>(Ljava/lang/Class;[Ljava/lang/Class;)V

    return-void
.end method

.method private varargs constructor <init>(Lk5/f0;[Lk5/f0;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lk5/f0<",
            "TT;>;[",
            "Lk5/f0<",
            "-TT;>;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 16
    iput-object v0, p0, Lk5/c$b;->a:Ljava/lang/String;

    .line 17
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lk5/c$b;->b:Ljava/util/Set;

    .line 18
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lk5/c$b;->c:Ljava/util/Set;

    const/4 v1, 0x0

    .line 19
    iput v1, p0, Lk5/c$b;->d:I

    .line 20
    iput v1, p0, Lk5/c$b;->e:I

    .line 21
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lk5/c$b;->g:Ljava/util/Set;

    const-string v2, "Null interface"

    .line 22
    invoke-static {p1, v2}, Lk5/e0;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 23
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 24
    array-length p1, p2

    :goto_29
    if-ge v1, p1, :cond_33

    aget-object v0, p2, v1

    .line 25
    invoke-static {v0, v2}, Lk5/e0;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_29

    .line 26
    :cond_33
    iget-object p1, p0, Lk5/c$b;->b:Ljava/util/Set;

    invoke-static {p1, p2}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    return-void
.end method

.method synthetic constructor <init>(Lk5/f0;[Lk5/f0;Lk5/c$a;)V
    .registers 4

    .line 2
    invoke-direct {p0, p1, p2}, Lk5/c$b;-><init>(Lk5/f0;[Lk5/f0;)V

    return-void
.end method

.method static synthetic a(Lk5/c$b;)Lk5/c$b;
    .registers 1

    .line 1
    invoke-direct {p0}, Lk5/c$b;->g()Lk5/c$b;

    move-result-object p0

    return-object p0
.end method

.method private g()Lk5/c$b;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lk5/c$b<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    iput v0, p0, Lk5/c$b;->e:I

    return-object p0
.end method

.method private i(I)Lk5/c$b;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lk5/c$b<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget v0, p0, Lk5/c$b;->d:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    const-string v1, "Instantiation type has already been set."

    invoke-static {v0, v1}, Lk5/e0;->d(ZLjava/lang/String;)V

    .line 2
    iput p1, p0, Lk5/c$b;->d:I

    return-object p0
.end method

.method private j(Lk5/f0;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lk5/f0<",
            "*>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lk5/c$b;->b:Ljava/util/Set;

    .line 2
    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    const-string v0, "Components are not allowed to depend on interfaces they themselves provide."

    .line 3
    invoke-static {p1, v0}, Lk5/e0;->a(ZLjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public b(Lk5/r;)Lk5/c$b;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lk5/r;",
            ")",
            "Lk5/c$b<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "Null dependency"

    .line 1
    invoke-static {p1, v0}, Lk5/e0;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p1}, Lk5/r;->c()Lk5/f0;

    move-result-object v0

    invoke-direct {p0, v0}, Lk5/c$b;->j(Lk5/f0;)V

    .line 3
    iget-object v0, p0, Lk5/c$b;->c:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public c()Lk5/c$b;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lk5/c$b<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, v0}, Lk5/c$b;->i(I)Lk5/c$b;

    move-result-object v0

    return-object v0
.end method

.method public d()Lk5/c;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lk5/c<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lk5/c$b;->f:Lk5/h;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    const-string v1, "Missing required property: factory."

    invoke-static {v0, v1}, Lk5/e0;->d(ZLjava/lang/String;)V

    .line 2
    new-instance v0, Lk5/c;

    iget-object v3, p0, Lk5/c$b;->a:Ljava/lang/String;

    new-instance v4, Ljava/util/HashSet;

    iget-object v1, p0, Lk5/c$b;->b:Ljava/util/Set;

    invoke-direct {v4, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    new-instance v5, Ljava/util/HashSet;

    iget-object v1, p0, Lk5/c$b;->c:Ljava/util/Set;

    invoke-direct {v5, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iget v6, p0, Lk5/c$b;->d:I

    iget v7, p0, Lk5/c$b;->e:I

    iget-object v8, p0, Lk5/c$b;->f:Lk5/h;

    iget-object v9, p0, Lk5/c$b;->g:Ljava/util/Set;

    const/4 v10, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v10}, Lk5/c;-><init>(Ljava/lang/String;Ljava/util/Set;Ljava/util/Set;IILk5/h;Ljava/util/Set;Lk5/c$a;)V

    return-object v0
.end method

.method public e()Lk5/c$b;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lk5/c$b<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x2

    .line 1
    invoke-direct {p0, v0}, Lk5/c$b;->i(I)Lk5/c$b;

    move-result-object v0

    return-object v0
.end method

.method public f(Lk5/h;)Lk5/c$b;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lk5/h<",
            "TT;>;)",
            "Lk5/c$b<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "Null factory"

    .line 1
    invoke-static {p1, v0}, Lk5/e0;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lk5/h;

    iput-object p1, p0, Lk5/c$b;->f:Lk5/h;

    return-object p0
.end method

.method public h(Ljava/lang/String;)Lk5/c$b;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lk5/c$b<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lk5/c$b;->a:Ljava/lang/String;

    return-object p0
.end method

###### Class k5.a (k5.a)
.class public final synthetic Lk5/a;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lk5/h;


# instance fields
.field public final synthetic a:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lk5/a;->a:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a(Lk5/e;)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lk5/a;->a:Ljava/lang/Object;

    invoke-static {v0, p1}, Lk5/c;->a(Ljava/lang/Object;Lk5/e;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

###### Class k5.b (k5.b)
.class public final synthetic Lk5/b;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lk5/h;


# instance fields
.field public final synthetic a:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lk5/b;->a:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a(Lk5/e;)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lk5/b;->a:Ljava/lang/Object;

    invoke-static {v0, p1}, Lk5/c;->b(Ljava/lang/Object;Lk5/e;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
