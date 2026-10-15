###### Class wa.n (wa.n)
.class final Lwa/n;
.super Ljava/lang/Object;
.source "ServiceMethod.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwa/n$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field static final m:Ljava/util/regex/Pattern;

.field static final n:Ljava/util/regex/Pattern;


# instance fields
.field private final a:Lja/e$a;

.field private final b:Lwa/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lwa/c<",
            "TR;TT;>;"
        }
    .end annotation
.end field

.field private final c:Lja/t;

.field private final d:Lwa/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lwa/e<",
            "Lja/d0;",
            "TR;>;"
        }
    .end annotation
.end field

.field private final e:Ljava/lang/String;

.field private final f:Ljava/lang/String;

.field private final g:Lja/s;

.field private final h:Lja/v;

.field private final i:Z

.field private final j:Z

.field private final k:Z

.field private final l:[Lwa/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lwa/i<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "\\{([a-zA-Z][a-zA-Z0-9_-]*)\\}"

    .line 1
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lwa/n;->m:Ljava/util/regex/Pattern;

    const-string v0, "[a-zA-Z][a-zA-Z0-9_-]*"

    .line 2
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lwa/n;->n:Ljava/util/regex/Pattern;

    return-void
.end method

.method constructor <init>(Lwa/n$a;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lwa/n$a<",
            "TR;TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iget-object v0, p1, Lwa/n$a;->a:Lwa/m;

    invoke-virtual {v0}, Lwa/m;->c()Lja/e$a;

    move-result-object v0

    iput-object v0, p0, Lwa/n;->a:Lja/e$a;

    .line 3
    iget-object v0, p1, Lwa/n$a;->w:Lwa/c;

    iput-object v0, p0, Lwa/n;->b:Lwa/c;

    .line 4
    iget-object v0, p1, Lwa/n$a;->a:Lwa/m;

    invoke-virtual {v0}, Lwa/m;->a()Lja/t;

    move-result-object v0

    iput-object v0, p0, Lwa/n;->c:Lja/t;

    .line 5
    iget-object v0, p1, Lwa/n$a;->v:Lwa/e;

    iput-object v0, p0, Lwa/n;->d:Lwa/e;

    .line 6
    iget-object v0, p1, Lwa/n$a;->m:Ljava/lang/String;

    iput-object v0, p0, Lwa/n;->e:Ljava/lang/String;

    .line 7
    iget-object v0, p1, Lwa/n$a;->q:Ljava/lang/String;

    iput-object v0, p0, Lwa/n;->f:Ljava/lang/String;

    .line 8
    iget-object v0, p1, Lwa/n$a;->r:Lja/s;

    iput-object v0, p0, Lwa/n;->g:Lja/s;

    .line 9
    iget-object v0, p1, Lwa/n$a;->s:Lja/v;

    iput-object v0, p0, Lwa/n;->h:Lja/v;

    .line 10
    iget-boolean v0, p1, Lwa/n$a;->n:Z

    iput-boolean v0, p0, Lwa/n;->i:Z

    .line 11
    iget-boolean v0, p1, Lwa/n$a;->o:Z

    iput-boolean v0, p0, Lwa/n;->j:Z

    .line 12
    iget-boolean v0, p1, Lwa/n$a;->p:Z

    iput-boolean v0, p0, Lwa/n;->k:Z

    .line 13
    iget-object p1, p1, Lwa/n$a;->u:[Lwa/i;

    iput-object p1, p0, Lwa/n;->l:[Lwa/i;

    return-void
.end method

.method static b(Ljava/lang/Class;)Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 1
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v0, p0, :cond_7

    const-class p0, Ljava/lang/Boolean;

    return-object p0

    .line 2
    :cond_7
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne v0, p0, :cond_e

    const-class p0, Ljava/lang/Byte;

    return-object p0

    .line 3
    :cond_e
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne v0, p0, :cond_15

    const-class p0, Ljava/lang/Character;

    return-object p0

    .line 4
    :cond_15
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne v0, p0, :cond_1c

    const-class p0, Ljava/lang/Double;

    return-object p0

    .line 5
    :cond_1c
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v0, p0, :cond_23

    const-class p0, Ljava/lang/Float;

    return-object p0

    .line 6
    :cond_23
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v0, p0, :cond_2a

    const-class p0, Ljava/lang/Integer;

    return-object p0

    .line 7
    :cond_2a
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v0, p0, :cond_31

    const-class p0, Ljava/lang/Long;

    return-object p0

    .line 8
    :cond_31
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne v0, p0, :cond_37

    const-class p0, Ljava/lang/Short;

    :cond_37
    return-object p0
.end method

.method static c(Ljava/lang/String;)Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lwa/n;->m:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 2
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 3
    :goto_b
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_1a

    const/4 v1, 0x1

    .line 4
    invoke-virtual {p0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_b

    :cond_1a
    return-object v0
.end method


# virtual methods
.method a(Lwa/b;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lwa/b<",
            "TR;>;)TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lwa/n;->b:Lwa/c;

    invoke-interface {v0, p1}, Lwa/c;->b(Lwa/b;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method varargs d([Ljava/lang/Object;)Lja/e;
    .registers 12
    .param p1    # [Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v9, Lwa/k;

    iget-object v1, p0, Lwa/n;->e:Ljava/lang/String;

    iget-object v2, p0, Lwa/n;->c:Lja/t;

    iget-object v3, p0, Lwa/n;->f:Ljava/lang/String;

    iget-object v4, p0, Lwa/n;->g:Lja/s;

    iget-object v5, p0, Lwa/n;->h:Lja/v;

    iget-boolean v6, p0, Lwa/n;->i:Z

    iget-boolean v7, p0, Lwa/n;->j:Z

    iget-boolean v8, p0, Lwa/n;->k:Z

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lwa/k;-><init>(Ljava/lang/String;Lja/t;Ljava/lang/String;Lja/s;Lja/v;ZZZ)V

    .line 2
    iget-object v0, p0, Lwa/n;->l:[Lwa/i;

    const/4 v1, 0x0

    if-eqz p1, :cond_1d

    .line 3
    array-length v2, p1

    goto :goto_1e

    :cond_1d
    const/4 v2, 0x0

    .line 4
    :goto_1e
    array-length v3, v0

    if-ne v2, v3, :cond_38

    :goto_21
    if-ge v1, v2, :cond_2d

    .line 5
    aget-object v3, v0, v1

    aget-object v4, p1, v1

    invoke-virtual {v3, v9, v4}, Lwa/i;->a(Lwa/k;Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_21

    .line 6
    :cond_2d
    iget-object p1, p0, Lwa/n;->a:Lja/e$a;

    invoke-virtual {v9}, Lwa/k;->g()Lja/a0;

    move-result-object v0

    invoke-interface {p1, v0}, Lja/e$a;->a(Lja/a0;)Lja/e;

    move-result-object p1

    return-object p1

    .line 7
    :cond_38
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Argument count ("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ") doesn\'t match expected count ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v0, v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_5e

    :goto_5d
    throw p1

    :goto_5e
    goto :goto_5d
.end method

.method e(Lja/d0;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lja/d0;",
            ")TR;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lwa/n;->d:Lwa/e;

    invoke-interface {v0, p1}, Lwa/e;->convert(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

###### Class wa.n.a (wa.n$a)
.class final Lwa/n$a;
.super Ljava/lang/Object;
.source "ServiceMethod.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwa/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final a:Lwa/m;

.field final b:Ljava/lang/reflect/Method;

.field final c:[Ljava/lang/annotation/Annotation;

.field final d:[[Ljava/lang/annotation/Annotation;

.field final e:[Ljava/lang/reflect/Type;

.field f:Ljava/lang/reflect/Type;

.field g:Z

.field h:Z

.field i:Z

.field j:Z

.field k:Z

.field l:Z

.field m:Ljava/lang/String;

.field n:Z

.field o:Z

.field p:Z

.field q:Ljava/lang/String;

.field r:Lja/s;

.field s:Lja/v;

.field t:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field u:[Lwa/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lwa/i<",
            "*>;"
        }
    .end annotation
.end field

.field v:Lwa/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lwa/e<",
            "Lja/d0;",
            "TT;>;"
        }
    .end annotation
.end field

.field w:Lwa/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lwa/c<",
            "TT;TR;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lwa/m;Ljava/lang/reflect/Method;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lwa/n$a;->a:Lwa/m;

    .line 3
    iput-object p2, p0, Lwa/n$a;->b:Ljava/lang/reflect/Method;

    .line 4
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object p1

    iput-object p1, p0, Lwa/n$a;->c:[Ljava/lang/annotation/Annotation;

    .line 5
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getGenericParameterTypes()[Ljava/lang/reflect/Type;

    move-result-object p1

    iput-object p1, p0, Lwa/n$a;->e:[Ljava/lang/reflect/Type;

    .line 6
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getParameterAnnotations()[[Ljava/lang/annotation/Annotation;

    move-result-object p1

    iput-object p1, p0, Lwa/n$a;->d:[[Ljava/lang/annotation/Annotation;

    return-void
.end method

.method private b()Lwa/c;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lwa/c<",
            "TT;TR;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lwa/n$a;->b:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getGenericReturnType()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lwa/o;->k(Ljava/lang/reflect/Type;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_34

    .line 3
    sget-object v1, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-eq v0, v1, :cond_2b

    .line 4
    iget-object v1, p0, Lwa/n$a;->b:Ljava/lang/reflect/Method;

    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v1

    .line 5
    :try_start_18
    iget-object v4, p0, Lwa/n$a;->a:Lwa/m;

    invoke-virtual {v4, v0, v1}, Lwa/m;->b(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lwa/c;

    move-result-object v0
    :try_end_1e
    .catch Ljava/lang/RuntimeException; {:try_start_18 .. :try_end_1e} :catch_1f

    return-object v0

    :catch_1f
    move-exception v1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v3

    const-string v0, "Unable to create call adapter for %s"

    .line 6
    invoke-direct {p0, v1, v0, v2}, Lwa/n$a;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_2b
    new-array v0, v3, [Ljava/lang/Object;

    const-string v1, "Service methods cannot return void."

    .line 7
    invoke-direct {p0, v1, v0}, Lwa/n$a;->d(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_34
    new-array v1, v2, [Ljava/lang/Object;

    aput-object v0, v1, v3

    const-string v0, "Method return type must not include a type variable or wildcard: %s"

    .line 8
    invoke-direct {p0, v0, v1}, Lwa/n$a;->d(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method private c()Lwa/e;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lwa/e<",
            "Lja/d0;",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lwa/n$a;->b:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v0

    .line 2
    :try_start_6
    iget-object v1, p0, Lwa/n$a;->a:Lwa/m;

    iget-object v2, p0, Lwa/n$a;->f:Ljava/lang/reflect/Type;

    invoke-virtual {v1, v2, v0}, Lwa/m;->k(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lwa/e;

    move-result-object v0
    :try_end_e
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_e} :catch_f

    return-object v0

    :catch_f
    move-exception v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 3
    iget-object v3, p0, Lwa/n$a;->f:Ljava/lang/reflect/Type;

    aput-object v3, v1, v2

    const-string v2, "Unable to create converter for %s"

    invoke-direct {p0, v0, v2, v1}, Lwa/n$a;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method private varargs d(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;
    .registers 4

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0, p1, p2}, Lwa/n$a;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    return-object p1
.end method

.method private varargs e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;
    .registers 5

    .line 1
    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 2
    new-instance p3, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\n    for method "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lwa/n$a;->b:Ljava/lang/reflect/Method;

    .line 3
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "."

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lwa/n$a;->b:Ljava/lang/reflect/Method;

    .line 4
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p3, p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object p3
.end method

.method private varargs f(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;
    .registers 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " (parameter #"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p3}, Lwa/n$a;->d(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    return-object p1
.end method

.method private varargs g(Ljava/lang/Throwable;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;
    .registers 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " (parameter #"

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 p2, p2, 0x1

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ")"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2, p4}, Lwa/n$a;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    return-object p1
.end method

.method private h([Ljava/lang/String;)Lja/s;
    .registers 10

    .line 1
    new-instance v0, Lja/s$a;

    invoke-direct {v0}, Lja/s$a;-><init>()V

    .line 2
    array-length v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_8
    if-ge v3, v1, :cond_5a

    aget-object v4, p1, v3

    const/16 v5, 0x3a

    .line 3
    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    const/4 v6, -0x1

    const/4 v7, 0x1

    if-eq v5, v6, :cond_4f

    if-eqz v5, :cond_4f

    .line 4
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    sub-int/2addr v6, v7

    if-eq v5, v6, :cond_4f

    .line 5
    invoke-virtual {v4, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    add-int/lit8 v5, v5, 0x1

    .line 6
    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Content-Type"

    .line 7
    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_49

    .line 8
    invoke-static {v4}, Lja/v;->d(Ljava/lang/String;)Lja/v;

    move-result-object v5

    if-eqz v5, :cond_3e

    .line 9
    iput-object v5, p0, Lwa/n$a;->s:Lja/v;

    goto :goto_4c

    :cond_3e
    new-array p1, v7, [Ljava/lang/Object;

    aput-object v4, p1, v2

    const-string v0, "Malformed content type: %s"

    .line 10
    invoke-direct {p0, v0, p1}, Lwa/n$a;->d(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 11
    :cond_49
    invoke-virtual {v0, v6, v4}, Lja/s$a;->a(Ljava/lang/String;Ljava/lang/String;)Lja/s$a;

    :goto_4c
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    :cond_4f
    new-array p1, v7, [Ljava/lang/Object;

    aput-object v4, p1, v2

    const-string v0, "@Headers value must be in the form \"Name: Value\". Found: \"%s\""

    .line 12
    invoke-direct {p0, v0, p1}, Lwa/n$a;->d(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 13
    :cond_5a
    invoke-virtual {v0}, Lja/s$a;->d()Lja/s;

    move-result-object p1

    return-object p1
.end method

.method private i(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 7

    .line 1
    iget-object v0, p0, Lwa/n$a;->m:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_47

    .line 2
    iput-object p1, p0, Lwa/n$a;->m:Ljava/lang/String;

    .line 3
    iput-boolean p3, p0, Lwa/n$a;->n:Z

    .line 4
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_11

    return-void

    :cond_11
    const/16 p1, 0x3f

    .line 5
    invoke-virtual {p2, p1}, Ljava/lang/String;->indexOf(I)I

    move-result p1

    const/4 p3, -0x1

    if-eq p1, p3, :cond_3e

    .line 6
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p3

    sub-int/2addr p3, v2

    if-ge p1, p3, :cond_3e

    add-int/2addr p1, v2

    .line 7
    invoke-virtual {p2, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 8
    sget-object p3, Lwa/n;->m:Ljava/util/regex/Pattern;

    invoke-virtual {p3, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p3

    .line 9
    invoke-virtual {p3}, Ljava/util/regex/Matcher;->find()Z

    move-result p3

    if-nez p3, :cond_33

    goto :goto_3e

    :cond_33
    new-array p2, v2, [Ljava/lang/Object;

    aput-object p1, p2, v1

    const-string p1, "URL query string \"%s\" must not have replace block. For dynamic query parameters use @Query."

    .line 10
    invoke-direct {p0, p1, p2}, Lwa/n$a;->d(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 11
    :cond_3e
    :goto_3e
    iput-object p2, p0, Lwa/n$a;->q:Ljava/lang/String;

    .line 12
    invoke-static {p2}, Lwa/n;->c(Ljava/lang/String;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lwa/n$a;->t:Ljava/util/Set;

    return-void

    :cond_47
    const/4 p2, 0x2

    new-array p2, p2, [Ljava/lang/Object;

    aput-object v0, p2, v1

    aput-object p1, p2, v2

    const-string p1, "Only one HTTP method is allowed. Found: %s and %s."

    .line 13
    invoke-direct {p0, p1, p2}, Lwa/n$a;->d(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method private j(Ljava/lang/annotation/Annotation;)V
    .registers 6

    .line 1
    instance-of v0, p1, Lya/b;

    const/4 v1, 0x0

    if-eqz v0, :cond_12

    .line 2
    check-cast p1, Lya/b;

    invoke-interface {p1}, Lya/b;->value()Ljava/lang/String;

    move-result-object p1

    const-string v0, "DELETE"

    invoke-direct {p0, v0, p1, v1}, Lwa/n$a;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_e3

    .line 3
    :cond_12
    instance-of v0, p1, Lya/f;

    if-eqz v0, :cond_23

    .line 4
    check-cast p1, Lya/f;

    invoke-interface {p1}, Lya/f;->value()Ljava/lang/String;

    move-result-object p1

    const-string v0, "GET"

    invoke-direct {p0, v0, p1, v1}, Lwa/n$a;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_e3

    .line 5
    :cond_23
    instance-of v0, p1, Lya/g;

    if-eqz v0, :cond_47

    .line 6
    check-cast p1, Lya/g;

    invoke-interface {p1}, Lya/g;->value()Ljava/lang/String;

    move-result-object p1

    const-string v0, "HEAD"

    invoke-direct {p0, v0, p1, v1}, Lwa/n$a;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 7
    const-class p1, Ljava/lang/Void;

    iget-object v0, p0, Lwa/n$a;->f:Ljava/lang/reflect/Type;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3e

    goto/16 :goto_e3

    :cond_3e
    new-array p1, v1, [Ljava/lang/Object;

    const-string v0, "HEAD method must use Void as response type."

    .line 8
    invoke-direct {p0, v0, p1}, Lwa/n$a;->d(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 9
    :cond_47
    instance-of v0, p1, Lya/n;

    const/4 v2, 0x1

    if-eqz v0, :cond_59

    .line 10
    check-cast p1, Lya/n;

    invoke-interface {p1}, Lya/n;->value()Ljava/lang/String;

    move-result-object p1

    const-string v0, "PATCH"

    invoke-direct {p0, v0, p1, v2}, Lwa/n$a;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_e3

    .line 11
    :cond_59
    instance-of v0, p1, Lya/o;

    if-eqz v0, :cond_6a

    .line 12
    check-cast p1, Lya/o;

    invoke-interface {p1}, Lya/o;->value()Ljava/lang/String;

    move-result-object p1

    const-string v0, "POST"

    invoke-direct {p0, v0, p1, v2}, Lwa/n$a;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_e3

    .line 13
    :cond_6a
    instance-of v0, p1, Lya/p;

    if-eqz v0, :cond_7a

    .line 14
    check-cast p1, Lya/p;

    invoke-interface {p1}, Lya/p;->value()Ljava/lang/String;

    move-result-object p1

    const-string v0, "PUT"

    invoke-direct {p0, v0, p1, v2}, Lwa/n$a;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_e3

    .line 15
    :cond_7a
    instance-of v0, p1, Lya/m;

    if-eqz v0, :cond_8a

    .line 16
    check-cast p1, Lya/m;

    invoke-interface {p1}, Lya/m;->value()Ljava/lang/String;

    move-result-object p1

    const-string v0, "OPTIONS"

    invoke-direct {p0, v0, p1, v1}, Lwa/n$a;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_e3

    .line 17
    :cond_8a
    instance-of v0, p1, Lya/h;

    if-eqz v0, :cond_a0

    .line 18
    check-cast p1, Lya/h;

    .line 19
    invoke-interface {p1}, Lya/h;->method()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lya/h;->path()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lya/h;->hasBody()Z

    move-result p1

    invoke-direct {p0, v0, v1, p1}, Lwa/n$a;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_e3

    .line 20
    :cond_a0
    instance-of v0, p1, Lya/k;

    if-eqz v0, :cond_bd

    .line 21
    check-cast p1, Lya/k;

    invoke-interface {p1}, Lya/k;->value()[Ljava/lang/String;

    move-result-object p1

    .line 22
    array-length v0, p1

    if-eqz v0, :cond_b4

    .line 23
    invoke-direct {p0, p1}, Lwa/n$a;->h([Ljava/lang/String;)Lja/s;

    move-result-object p1

    iput-object p1, p0, Lwa/n$a;->r:Lja/s;

    goto :goto_e3

    :cond_b4
    new-array p1, v1, [Ljava/lang/Object;

    const-string v0, "@Headers annotation is empty."

    .line 24
    invoke-direct {p0, v0, p1}, Lwa/n$a;->d(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 25
    :cond_bd
    instance-of v0, p1, Lya/l;

    const-string v3, "Only one encoding annotation is allowed."

    if-eqz v0, :cond_d1

    .line 26
    iget-boolean p1, p0, Lwa/n$a;->o:Z

    if-nez p1, :cond_ca

    .line 27
    iput-boolean v2, p0, Lwa/n$a;->p:Z

    goto :goto_e3

    :cond_ca
    new-array p1, v1, [Ljava/lang/Object;

    .line 28
    invoke-direct {p0, v3, p1}, Lwa/n$a;->d(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 29
    :cond_d1
    instance-of p1, p1, Lya/e;

    if-eqz p1, :cond_e3

    .line 30
    iget-boolean p1, p0, Lwa/n$a;->p:Z

    if-nez p1, :cond_dc

    .line 31
    iput-boolean v2, p0, Lwa/n$a;->o:Z

    goto :goto_e3

    :cond_dc
    new-array p1, v1, [Ljava/lang/Object;

    .line 32
    invoke-direct {p0, v3, p1}, Lwa/n$a;->d(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :cond_e3
    :goto_e3
    return-void
.end method

.method private k(ILjava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lwa/i;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/reflect/Type;",
            "[",
            "Ljava/lang/annotation/Annotation;",
            ")",
            "Lwa/i<",
            "*>;"
        }
    .end annotation

    .line 1
    array-length v0, p3

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_4
    if-ge v3, v0, :cond_1e

    aget-object v4, p3, v3

    .line 2
    invoke-direct {p0, p1, p2, p3, v4}, Lwa/n$a;->l(ILjava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;Ljava/lang/annotation/Annotation;)Lwa/i;

    move-result-object v4

    if-nez v4, :cond_f

    goto :goto_12

    :cond_f
    if-nez v2, :cond_15

    move-object v2, v4

    :goto_12
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_15
    new-array p2, v1, [Ljava/lang/Object;

    const-string p3, "Multiple Retrofit annotations found, only one allowed."

    .line 3
    invoke-direct {p0, p1, p3, p2}, Lwa/n$a;->f(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :cond_1e
    if-eqz v2, :cond_21

    return-object v2

    :cond_21
    new-array p2, v1, [Ljava/lang/Object;

    const-string p3, "No Retrofit annotation found."

    .line 4
    invoke-direct {p0, p1, p3, p2}, Lwa/n$a;->f(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    goto :goto_2b

    :goto_2a
    throw p1

    :goto_2b
    goto :goto_2a
.end method

.method private l(ILjava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;Ljava/lang/annotation/Annotation;)Lwa/i;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/reflect/Type;",
            "[",
            "Ljava/lang/annotation/Annotation;",
            "Ljava/lang/annotation/Annotation;",
            ")",
            "Lwa/i<",
            "*>;"
        }
    .end annotation

    .line 1
    const-class v0, Ljava/lang/String;

    const-class v1, Lja/w$b;

    instance-of v2, p4, Lya/x;

    const-string v3, "@Path parameters may not be used with @Url."

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_70

    .line 2
    iget-boolean p3, p0, Lwa/n$a;->l:Z

    if-nez p3, :cond_67

    .line 3
    iget-boolean p3, p0, Lwa/n$a;->j:Z

    if-nez p3, :cond_60

    .line 4
    iget-boolean p3, p0, Lwa/n$a;->k:Z

    if-nez p3, :cond_57

    .line 5
    iget-object p3, p0, Lwa/n$a;->q:Ljava/lang/String;

    if-nez p3, :cond_4a

    .line 6
    iput-boolean v4, p0, Lwa/n$a;->l:Z

    .line 7
    const-class p3, Lja/t;

    if-eq p2, p3, :cond_44

    if-eq p2, v0, :cond_44

    const-class p3, Ljava/net/URI;

    if-eq p2, p3, :cond_44

    instance-of p3, p2, Ljava/lang/Class;

    if-eqz p3, :cond_3b

    const-string p3, "android.net.Uri"

    check-cast p2, Ljava/lang/Class;

    .line 8
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3b

    goto :goto_44

    :cond_3b
    new-array p2, v5, [Ljava/lang/Object;

    const-string p3, "@Url must be okhttp3.HttpUrl, String, java.net.URI, or android.net.Uri type."

    .line 9
    invoke-direct {p0, p1, p3, p2}, Lwa/n$a;->f(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 10
    :cond_44
    :goto_44
    new-instance p1, Lwa/i$o;

    invoke-direct {p1}, Lwa/i$o;-><init>()V

    return-object p1

    :cond_4a
    new-array p2, v4, [Ljava/lang/Object;

    .line 11
    iget-object p3, p0, Lwa/n$a;->m:Ljava/lang/String;

    aput-object p3, p2, v5

    const-string p3, "@Url cannot be used with @%s URL"

    invoke-direct {p0, p1, p3, p2}, Lwa/n$a;->f(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :cond_57
    new-array p2, v5, [Ljava/lang/Object;

    const-string p3, "A @Url parameter must not come after a @Query"

    .line 12
    invoke-direct {p0, p1, p3, p2}, Lwa/n$a;->f(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :cond_60
    new-array p2, v5, [Ljava/lang/Object;

    .line 13
    invoke-direct {p0, p1, v3, p2}, Lwa/n$a;->f(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :cond_67
    new-array p2, v5, [Ljava/lang/Object;

    const-string p3, "Multiple @Url method annotations found."

    .line 14
    invoke-direct {p0, p1, p3, p2}, Lwa/n$a;->f(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 15
    :cond_70
    instance-of v2, p4, Lya/s;

    if-eqz v2, :cond_b8

    .line 16
    iget-boolean v0, p0, Lwa/n$a;->k:Z

    if-nez v0, :cond_af

    .line 17
    iget-boolean v0, p0, Lwa/n$a;->l:Z

    if-nez v0, :cond_a8

    .line 18
    iget-object v0, p0, Lwa/n$a;->q:Ljava/lang/String;

    if-eqz v0, :cond_9b

    .line 19
    iput-boolean v4, p0, Lwa/n$a;->j:Z

    .line 20
    check-cast p4, Lya/s;

    .line 21
    invoke-interface {p4}, Lya/s;->value()Ljava/lang/String;

    move-result-object v0

    .line 22
    invoke-direct {p0, p1, v0}, Lwa/n$a;->m(ILjava/lang/String;)V

    .line 23
    iget-object p1, p0, Lwa/n$a;->a:Lwa/m;

    invoke-virtual {p1, p2, p3}, Lwa/m;->l(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lwa/e;

    move-result-object p1

    .line 24
    new-instance p2, Lwa/i$j;

    invoke-interface {p4}, Lya/s;->encoded()Z

    move-result p3

    invoke-direct {p2, v0, p1, p3}, Lwa/i$j;-><init>(Ljava/lang/String;Lwa/e;Z)V

    return-object p2

    :cond_9b
    new-array p2, v4, [Ljava/lang/Object;

    .line 25
    iget-object p3, p0, Lwa/n$a;->m:Ljava/lang/String;

    aput-object p3, p2, v5

    const-string p3, "@Path can only be used with relative url on @%s"

    invoke-direct {p0, p1, p3, p2}, Lwa/n$a;->f(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :cond_a8
    new-array p2, v5, [Ljava/lang/Object;

    .line 26
    invoke-direct {p0, p1, v3, p2}, Lwa/n$a;->f(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :cond_af
    new-array p2, v5, [Ljava/lang/Object;

    const-string p3, "A @Path parameter must not come after a @Query."

    .line 27
    invoke-direct {p0, p1, p3, p2}, Lwa/n$a;->f(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 28
    :cond_b8
    instance-of v2, p4, Lya/t;

    const-string v3, "<String>)"

    const-string v6, " must include generic type (e.g., "

    if-eqz v2, :cond_140

    .line 29
    check-cast p4, Lya/t;

    .line 30
    invoke-interface {p4}, Lya/t;->value()Ljava/lang/String;

    move-result-object v0

    .line 31
    invoke-interface {p4}, Lya/t;->encoded()Z

    move-result p4

    .line 32
    invoke-static {p2}, Lwa/o;->i(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v1

    .line 33
    iput-boolean v4, p0, Lwa/n$a;->k:Z

    .line 34
    const-class v2, Ljava/lang/Iterable;

    invoke-virtual {v2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_116

    .line 35
    instance-of v2, p2, Ljava/lang/reflect/ParameterizedType;

    if-eqz v2, :cond_f2

    .line 36
    check-cast p2, Ljava/lang/reflect/ParameterizedType;

    .line 37
    invoke-static {v5, p2}, Lwa/o;->h(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object p1

    .line 38
    iget-object p2, p0, Lwa/n$a;->a:Lwa/m;

    .line 39
    invoke-virtual {p2, p1, p3}, Lwa/m;->l(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lwa/e;

    move-result-object p1

    .line 40
    new-instance p2, Lwa/i$k;

    invoke-direct {p2, v0, p1, p4}, Lwa/i$k;-><init>(Ljava/lang/String;Lwa/e;Z)V

    invoke-virtual {p2}, Lwa/i;->c()Lwa/i;

    move-result-object p1

    return-object p1

    .line 41
    :cond_f2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-array p3, v5, [Ljava/lang/Object;

    .line 43
    invoke-direct {p0, p1, p2, p3}, Lwa/n$a;->f(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 44
    :cond_116
    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    move-result p1

    if-eqz p1, :cond_134

    .line 45
    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1}, Lwa/n;->b(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p1

    .line 46
    iget-object p2, p0, Lwa/n$a;->a:Lwa/m;

    .line 47
    invoke-virtual {p2, p1, p3}, Lwa/m;->l(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lwa/e;

    move-result-object p1

    .line 48
    new-instance p2, Lwa/i$k;

    invoke-direct {p2, v0, p1, p4}, Lwa/i$k;-><init>(Ljava/lang/String;Lwa/e;Z)V

    invoke-virtual {p2}, Lwa/i;->b()Lwa/i;

    move-result-object p1

    return-object p1

    .line 49
    :cond_134
    iget-object p1, p0, Lwa/n$a;->a:Lwa/m;

    .line 50
    invoke-virtual {p1, p2, p3}, Lwa/m;->l(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lwa/e;

    move-result-object p1

    .line 51
    new-instance p2, Lwa/i$k;

    invoke-direct {p2, v0, p1, p4}, Lwa/i$k;-><init>(Ljava/lang/String;Lwa/e;Z)V

    return-object p2

    .line 52
    :cond_140
    instance-of v2, p4, Lya/v;

    if-eqz v2, :cond_1c0

    .line 53
    check-cast p4, Lya/v;

    .line 54
    invoke-interface {p4}, Lya/v;->encoded()Z

    move-result p4

    .line 55
    invoke-static {p2}, Lwa/o;->i(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v0

    .line 56
    iput-boolean v4, p0, Lwa/n$a;->k:Z

    .line 57
    const-class v1, Ljava/lang/Iterable;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_196

    .line 58
    instance-of v1, p2, Ljava/lang/reflect/ParameterizedType;

    if-eqz v1, :cond_172

    .line 59
    check-cast p2, Ljava/lang/reflect/ParameterizedType;

    .line 60
    invoke-static {v5, p2}, Lwa/o;->h(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object p1

    .line 61
    iget-object p2, p0, Lwa/n$a;->a:Lwa/m;

    .line 62
    invoke-virtual {p2, p1, p3}, Lwa/m;->l(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lwa/e;

    move-result-object p1

    .line 63
    new-instance p2, Lwa/i$m;

    invoke-direct {p2, p1, p4}, Lwa/i$m;-><init>(Lwa/e;Z)V

    invoke-virtual {p2}, Lwa/i;->c()Lwa/i;

    move-result-object p1

    return-object p1

    .line 64
    :cond_172
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-array p3, v5, [Ljava/lang/Object;

    .line 66
    invoke-direct {p0, p1, p2, p3}, Lwa/n$a;->f(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 67
    :cond_196
    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result p1

    if-eqz p1, :cond_1b4

    .line 68
    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1}, Lwa/n;->b(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p1

    .line 69
    iget-object p2, p0, Lwa/n$a;->a:Lwa/m;

    .line 70
    invoke-virtual {p2, p1, p3}, Lwa/m;->l(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lwa/e;

    move-result-object p1

    .line 71
    new-instance p2, Lwa/i$m;

    invoke-direct {p2, p1, p4}, Lwa/i$m;-><init>(Lwa/e;Z)V

    invoke-virtual {p2}, Lwa/i;->b()Lwa/i;

    move-result-object p1

    return-object p1

    .line 72
    :cond_1b4
    iget-object p1, p0, Lwa/n$a;->a:Lwa/m;

    .line 73
    invoke-virtual {p1, p2, p3}, Lwa/m;->l(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lwa/e;

    move-result-object p1

    .line 74
    new-instance p2, Lwa/i$m;

    invoke-direct {p2, p1, p4}, Lwa/i$m;-><init>(Lwa/e;Z)V

    return-object p2

    .line 75
    :cond_1c0
    instance-of v2, p4, Lya/u;

    const-string v7, "Map must include generic types (e.g., Map<String, String>)"

    if-eqz v2, :cond_222

    .line 76
    invoke-static {p2}, Lwa/o;->i(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v1

    .line 77
    const-class v2, Ljava/util/Map;

    invoke-virtual {v2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_219

    .line 78
    const-class v2, Ljava/util/Map;

    invoke-static {p2, v1, v2}, Lwa/o;->j(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object p2

    .line 79
    instance-of v1, p2, Ljava/lang/reflect/ParameterizedType;

    if-eqz v1, :cond_212

    .line 80
    check-cast p2, Ljava/lang/reflect/ParameterizedType;

    .line 81
    invoke-static {v5, p2}, Lwa/o;->h(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object v1

    if-ne v0, v1, :cond_1fa

    .line 82
    invoke-static {v4, p2}, Lwa/o;->h(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object p1

    .line 83
    iget-object p2, p0, Lwa/n$a;->a:Lwa/m;

    .line 84
    invoke-virtual {p2, p1, p3}, Lwa/m;->l(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lwa/e;

    move-result-object p1

    .line 85
    new-instance p2, Lwa/i$l;

    check-cast p4, Lya/u;

    invoke-interface {p4}, Lya/u;->encoded()Z

    move-result p3

    invoke-direct {p2, p1, p3}, Lwa/i$l;-><init>(Lwa/e;Z)V

    return-object p2

    .line 86
    :cond_1fa
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "@QueryMap keys must be of type String: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-array p3, v5, [Ljava/lang/Object;

    invoke-direct {p0, p1, p2, p3}, Lwa/n$a;->f(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :cond_212
    new-array p2, v5, [Ljava/lang/Object;

    .line 87
    invoke-direct {p0, p1, v7, p2}, Lwa/n$a;->f(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :cond_219
    new-array p2, v5, [Ljava/lang/Object;

    const-string p3, "@QueryMap parameter type must be Map."

    .line 88
    invoke-direct {p0, p1, p3, p2}, Lwa/n$a;->f(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 89
    :cond_222
    instance-of v2, p4, Lya/i;

    if-eqz v2, :cond_2a0

    .line 90
    check-cast p4, Lya/i;

    .line 91
    invoke-interface {p4}, Lya/i;->value()Ljava/lang/String;

    move-result-object p4

    .line 92
    invoke-static {p2}, Lwa/o;->i(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v0

    .line 93
    const-class v1, Ljava/lang/Iterable;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_276

    .line 94
    instance-of v1, p2, Ljava/lang/reflect/ParameterizedType;

    if-eqz v1, :cond_252

    .line 95
    check-cast p2, Ljava/lang/reflect/ParameterizedType;

    .line 96
    invoke-static {v5, p2}, Lwa/o;->h(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object p1

    .line 97
    iget-object p2, p0, Lwa/n$a;->a:Lwa/m;

    .line 98
    invoke-virtual {p2, p1, p3}, Lwa/m;->l(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lwa/e;

    move-result-object p1

    .line 99
    new-instance p2, Lwa/i$f;

    invoke-direct {p2, p4, p1}, Lwa/i$f;-><init>(Ljava/lang/String;Lwa/e;)V

    invoke-virtual {p2}, Lwa/i;->c()Lwa/i;

    move-result-object p1

    return-object p1

    .line 100
    :cond_252
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-array p3, v5, [Ljava/lang/Object;

    .line 102
    invoke-direct {p0, p1, p2, p3}, Lwa/n$a;->f(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 103
    :cond_276
    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result p1

    if-eqz p1, :cond_294

    .line 104
    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1}, Lwa/n;->b(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p1

    .line 105
    iget-object p2, p0, Lwa/n$a;->a:Lwa/m;

    .line 106
    invoke-virtual {p2, p1, p3}, Lwa/m;->l(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lwa/e;

    move-result-object p1

    .line 107
    new-instance p2, Lwa/i$f;

    invoke-direct {p2, p4, p1}, Lwa/i$f;-><init>(Ljava/lang/String;Lwa/e;)V

    invoke-virtual {p2}, Lwa/i;->b()Lwa/i;

    move-result-object p1

    return-object p1

    .line 108
    :cond_294
    iget-object p1, p0, Lwa/n$a;->a:Lwa/m;

    .line 109
    invoke-virtual {p1, p2, p3}, Lwa/m;->l(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lwa/e;

    move-result-object p1

    .line 110
    new-instance p2, Lwa/i$f;

    invoke-direct {p2, p4, p1}, Lwa/i$f;-><init>(Ljava/lang/String;Lwa/e;)V

    return-object p2

    .line 111
    :cond_2a0
    instance-of v2, p4, Lya/j;

    if-eqz v2, :cond_2fa

    .line 112
    invoke-static {p2}, Lwa/o;->i(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object p4

    .line 113
    const-class v1, Ljava/util/Map;

    invoke-virtual {v1, p4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_2f1

    .line 114
    const-class v1, Ljava/util/Map;

    invoke-static {p2, p4, v1}, Lwa/o;->j(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object p2

    .line 115
    instance-of p4, p2, Ljava/lang/reflect/ParameterizedType;

    if-eqz p4, :cond_2ea

    .line 116
    check-cast p2, Ljava/lang/reflect/ParameterizedType;

    .line 117
    invoke-static {v5, p2}, Lwa/o;->h(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object p4

    if-ne v0, p4, :cond_2d2

    .line 118
    invoke-static {v4, p2}, Lwa/o;->h(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object p1

    .line 119
    iget-object p2, p0, Lwa/n$a;->a:Lwa/m;

    .line 120
    invoke-virtual {p2, p1, p3}, Lwa/m;->l(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lwa/e;

    move-result-object p1

    .line 121
    new-instance p2, Lwa/i$g;

    invoke-direct {p2, p1}, Lwa/i$g;-><init>(Lwa/e;)V

    return-object p2

    .line 122
    :cond_2d2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "@HeaderMap keys must be of type String: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-array p3, v5, [Ljava/lang/Object;

    invoke-direct {p0, p1, p2, p3}, Lwa/n$a;->f(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :cond_2ea
    new-array p2, v5, [Ljava/lang/Object;

    .line 123
    invoke-direct {p0, p1, v7, p2}, Lwa/n$a;->f(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :cond_2f1
    new-array p2, v5, [Ljava/lang/Object;

    const-string p3, "@HeaderMap parameter type must be Map."

    .line 124
    invoke-direct {p0, p1, p3, p2}, Lwa/n$a;->f(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 125
    :cond_2fa
    instance-of v2, p4, Lya/c;

    if-eqz v2, :cond_38b

    .line 126
    iget-boolean v0, p0, Lwa/n$a;->o:Z

    if-eqz v0, :cond_382

    .line 127
    check-cast p4, Lya/c;

    .line 128
    invoke-interface {p4}, Lya/c;->value()Ljava/lang/String;

    move-result-object v0

    .line 129
    invoke-interface {p4}, Lya/c;->encoded()Z

    move-result p4

    .line 130
    iput-boolean v4, p0, Lwa/n$a;->g:Z

    .line 131
    invoke-static {p2}, Lwa/o;->i(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v1

    .line 132
    const-class v2, Ljava/lang/Iterable;

    invoke-virtual {v2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_358

    .line 133
    instance-of v2, p2, Ljava/lang/reflect/ParameterizedType;

    if-eqz v2, :cond_334

    .line 134
    check-cast p2, Ljava/lang/reflect/ParameterizedType;

    .line 135
    invoke-static {v5, p2}, Lwa/o;->h(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object p1

    .line 136
    iget-object p2, p0, Lwa/n$a;->a:Lwa/m;

    .line 137
    invoke-virtual {p2, p1, p3}, Lwa/m;->l(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lwa/e;

    move-result-object p1

    .line 138
    new-instance p2, Lwa/i$d;

    invoke-direct {p2, v0, p1, p4}, Lwa/i$d;-><init>(Ljava/lang/String;Lwa/e;Z)V

    invoke-virtual {p2}, Lwa/i;->c()Lwa/i;

    move-result-object p1

    return-object p1

    .line 139
    :cond_334
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-array p3, v5, [Ljava/lang/Object;

    .line 141
    invoke-direct {p0, p1, p2, p3}, Lwa/n$a;->f(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 142
    :cond_358
    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    move-result p1

    if-eqz p1, :cond_376

    .line 143
    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1}, Lwa/n;->b(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p1

    .line 144
    iget-object p2, p0, Lwa/n$a;->a:Lwa/m;

    .line 145
    invoke-virtual {p2, p1, p3}, Lwa/m;->l(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lwa/e;

    move-result-object p1

    .line 146
    new-instance p2, Lwa/i$d;

    invoke-direct {p2, v0, p1, p4}, Lwa/i$d;-><init>(Ljava/lang/String;Lwa/e;Z)V

    invoke-virtual {p2}, Lwa/i;->b()Lwa/i;

    move-result-object p1

    return-object p1

    .line 147
    :cond_376
    iget-object p1, p0, Lwa/n$a;->a:Lwa/m;

    .line 148
    invoke-virtual {p1, p2, p3}, Lwa/m;->l(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lwa/e;

    move-result-object p1

    .line 149
    new-instance p2, Lwa/i$d;

    invoke-direct {p2, v0, p1, p4}, Lwa/i$d;-><init>(Ljava/lang/String;Lwa/e;Z)V

    return-object p2

    :cond_382
    new-array p2, v5, [Ljava/lang/Object;

    const-string p3, "@Field parameters can only be used with form encoding."

    .line 150
    invoke-direct {p0, p1, p3, p2}, Lwa/n$a;->f(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 151
    :cond_38b
    instance-of v2, p4, Lya/d;

    if-eqz v2, :cond_3fa

    .line 152
    iget-boolean v1, p0, Lwa/n$a;->o:Z

    if-eqz v1, :cond_3f1

    .line 153
    invoke-static {p2}, Lwa/o;->i(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v1

    .line 154
    const-class v2, Ljava/util/Map;

    invoke-virtual {v2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_3e8

    .line 155
    const-class v2, Ljava/util/Map;

    invoke-static {p2, v1, v2}, Lwa/o;->j(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object p2

    .line 156
    instance-of v1, p2, Ljava/lang/reflect/ParameterizedType;

    if-eqz v1, :cond_3e1

    .line 157
    check-cast p2, Ljava/lang/reflect/ParameterizedType;

    .line 158
    invoke-static {v5, p2}, Lwa/o;->h(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object v1

    if-ne v0, v1, :cond_3c9

    .line 159
    invoke-static {v4, p2}, Lwa/o;->h(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object p1

    .line 160
    iget-object p2, p0, Lwa/n$a;->a:Lwa/m;

    .line 161
    invoke-virtual {p2, p1, p3}, Lwa/m;->l(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lwa/e;

    move-result-object p1

    .line 162
    iput-boolean v4, p0, Lwa/n$a;->g:Z

    .line 163
    new-instance p2, Lwa/i$e;

    check-cast p4, Lya/d;

    invoke-interface {p4}, Lya/d;->encoded()Z

    move-result p3

    invoke-direct {p2, p1, p3}, Lwa/i$e;-><init>(Lwa/e;Z)V

    return-object p2

    .line 164
    :cond_3c9
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "@FieldMap keys must be of type String: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-array p3, v5, [Ljava/lang/Object;

    invoke-direct {p0, p1, p2, p3}, Lwa/n$a;->f(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :cond_3e1
    new-array p2, v5, [Ljava/lang/Object;

    .line 165
    invoke-direct {p0, p1, v7, p2}, Lwa/n$a;->f(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :cond_3e8
    new-array p2, v5, [Ljava/lang/Object;

    const-string p3, "@FieldMap parameter type must be Map."

    .line 166
    invoke-direct {p0, p1, p3, p2}, Lwa/n$a;->f(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :cond_3f1
    new-array p2, v5, [Ljava/lang/Object;

    const-string p3, "@FieldMap parameters can only be used with form encoding."

    .line 167
    invoke-direct {p0, p1, p3, p2}, Lwa/n$a;->f(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 168
    :cond_3fa
    instance-of v2, p4, Lya/q;

    if-eqz v2, :cond_56d

    .line 169
    iget-boolean v0, p0, Lwa/n$a;->p:Z

    if-eqz v0, :cond_564

    .line 170
    check-cast p4, Lya/q;

    .line 171
    iput-boolean v4, p0, Lwa/n$a;->h:Z

    .line 172
    invoke-interface {p4}, Lya/q;->value()Ljava/lang/String;

    move-result-object v0

    .line 173
    invoke-static {p2}, Lwa/o;->i(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v2

    .line 174
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_492

    .line 175
    const-class p3, Ljava/lang/Iterable;

    invoke-virtual {p3, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p3

    const-string p4, "@Part annotation must supply a name or use MultipartBody.Part parameter type."

    if-eqz p3, :cond_464

    .line 176
    instance-of p3, p2, Ljava/lang/reflect/ParameterizedType;

    if-eqz p3, :cond_440

    .line 177
    check-cast p2, Ljava/lang/reflect/ParameterizedType;

    .line 178
    invoke-static {v5, p2}, Lwa/o;->h(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object p2

    .line 179
    invoke-static {p2}, Lwa/o;->i(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p2

    if-eqz p2, :cond_439

    .line 180
    sget-object p1, Lwa/i$n;->a:Lwa/i$n;

    invoke-virtual {p1}, Lwa/i;->c()Lwa/i;

    move-result-object p1

    return-object p1

    :cond_439
    new-array p2, v5, [Ljava/lang/Object;

    .line 181
    invoke-direct {p0, p1, p4, p2}, Lwa/n$a;->f(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 182
    :cond_440
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-array p3, v5, [Ljava/lang/Object;

    .line 184
    invoke-direct {p0, p1, p2, p3}, Lwa/n$a;->f(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 185
    :cond_464
    invoke-virtual {v2}, Ljava/lang/Class;->isArray()Z

    move-result p2

    if-eqz p2, :cond_482

    .line 186
    invoke-virtual {v2}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p2

    .line 187
    invoke-virtual {v1, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p2

    if-eqz p2, :cond_47b

    .line 188
    sget-object p1, Lwa/i$n;->a:Lwa/i$n;

    invoke-virtual {p1}, Lwa/i;->b()Lwa/i;

    move-result-object p1

    return-object p1

    :cond_47b
    new-array p2, v5, [Ljava/lang/Object;

    .line 189
    invoke-direct {p0, p1, p4, p2}, Lwa/n$a;->f(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 190
    :cond_482
    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p2

    if-eqz p2, :cond_48b

    .line 191
    sget-object p1, Lwa/i$n;->a:Lwa/i$n;

    return-object p1

    :cond_48b
    new-array p2, v5, [Ljava/lang/Object;

    .line 192
    invoke-direct {p0, p1, p4, p2}, Lwa/n$a;->f(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :cond_492
    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/String;

    const-string v8, "Content-Disposition"

    aput-object v8, v7, v5

    .line 193
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "form-data; name=\""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\""

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v7, v4

    const/4 v0, 0x2

    const-string v4, "Content-Transfer-Encoding"

    aput-object v4, v7, v0

    const/4 v0, 0x3

    .line 194
    invoke-interface {p4}, Lya/q;->encoding()Ljava/lang/String;

    move-result-object p4

    aput-object p4, v7, v0

    .line 195
    invoke-static {v7}, Lja/s;->g([Ljava/lang/String;)Lja/s;

    move-result-object p4

    .line 196
    const-class v0, Ljava/lang/Iterable;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    const-string v4, "@Part parameters using the MultipartBody.Part must not include a part name in the annotation."

    if-eqz v0, :cond_51c

    .line 197
    instance-of v0, p2, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_4f8

    .line 198
    check-cast p2, Ljava/lang/reflect/ParameterizedType;

    .line 199
    invoke-static {v5, p2}, Lwa/o;->h(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object p2

    .line 200
    invoke-static {p2}, Lwa/o;->i(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_4f1

    .line 201
    iget-object p1, p0, Lwa/n$a;->a:Lwa/m;

    iget-object v0, p0, Lwa/n$a;->c:[Ljava/lang/annotation/Annotation;

    .line 202
    invoke-virtual {p1, p2, p3, v0}, Lwa/m;->j(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;[Ljava/lang/annotation/Annotation;)Lwa/e;

    move-result-object p1

    .line 203
    new-instance p2, Lwa/i$h;

    invoke-direct {p2, p4, p1}, Lwa/i$h;-><init>(Lja/s;Lwa/e;)V

    invoke-virtual {p2}, Lwa/i;->c()Lwa/i;

    move-result-object p1

    return-object p1

    :cond_4f1
    new-array p2, v5, [Ljava/lang/Object;

    .line 204
    invoke-direct {p0, p1, v4, p2}, Lwa/n$a;->f(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 205
    :cond_4f8
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-array p3, v5, [Ljava/lang/Object;

    .line 207
    invoke-direct {p0, p1, p2, p3}, Lwa/n$a;->f(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 208
    :cond_51c
    invoke-virtual {v2}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_549

    .line 209
    invoke-virtual {v2}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p2

    invoke-static {p2}, Lwa/n;->b(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p2

    .line 210
    invoke-virtual {v1, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_542

    .line 211
    iget-object p1, p0, Lwa/n$a;->a:Lwa/m;

    iget-object v0, p0, Lwa/n$a;->c:[Ljava/lang/annotation/Annotation;

    .line 212
    invoke-virtual {p1, p2, p3, v0}, Lwa/m;->j(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;[Ljava/lang/annotation/Annotation;)Lwa/e;

    move-result-object p1

    .line 213
    new-instance p2, Lwa/i$h;

    invoke-direct {p2, p4, p1}, Lwa/i$h;-><init>(Lja/s;Lwa/e;)V

    invoke-virtual {p2}, Lwa/i;->b()Lwa/i;

    move-result-object p1

    return-object p1

    :cond_542
    new-array p2, v5, [Ljava/lang/Object;

    .line 214
    invoke-direct {p0, p1, v4, p2}, Lwa/n$a;->f(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 215
    :cond_549
    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_55d

    .line 216
    iget-object p1, p0, Lwa/n$a;->a:Lwa/m;

    iget-object v0, p0, Lwa/n$a;->c:[Ljava/lang/annotation/Annotation;

    .line 217
    invoke-virtual {p1, p2, p3, v0}, Lwa/m;->j(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;[Ljava/lang/annotation/Annotation;)Lwa/e;

    move-result-object p1

    .line 218
    new-instance p2, Lwa/i$h;

    invoke-direct {p2, p4, p1}, Lwa/i$h;-><init>(Lja/s;Lwa/e;)V

    return-object p2

    :cond_55d
    new-array p2, v5, [Ljava/lang/Object;

    .line 219
    invoke-direct {p0, p1, v4, p2}, Lwa/n$a;->f(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :cond_564
    new-array p2, v5, [Ljava/lang/Object;

    const-string p3, "@Part parameters can only be used with multipart encoding."

    .line 220
    invoke-direct {p0, p1, p3, p2}, Lwa/n$a;->f(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 221
    :cond_56d
    instance-of v2, p4, Lya/r;

    if-eqz v2, :cond_5f1

    .line 222
    iget-boolean v2, p0, Lwa/n$a;->p:Z

    if-eqz v2, :cond_5e8

    .line 223
    iput-boolean v4, p0, Lwa/n$a;->h:Z

    .line 224
    invoke-static {p2}, Lwa/o;->i(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v2

    .line 225
    const-class v3, Ljava/util/Map;

    invoke-virtual {v3, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_5df

    .line 226
    const-class v3, Ljava/util/Map;

    invoke-static {p2, v2, v3}, Lwa/o;->j(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object p2

    .line 227
    instance-of v2, p2, Ljava/lang/reflect/ParameterizedType;

    if-eqz v2, :cond_5d8

    .line 228
    check-cast p2, Ljava/lang/reflect/ParameterizedType;

    .line 229
    invoke-static {v5, p2}, Lwa/o;->h(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object v2

    if-ne v0, v2, :cond_5c0

    .line 230
    invoke-static {v4, p2}, Lwa/o;->h(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object p2

    .line 231
    invoke-static {p2}, Lwa/o;->i(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_5b7

    .line 232
    iget-object p1, p0, Lwa/n$a;->a:Lwa/m;

    iget-object v0, p0, Lwa/n$a;->c:[Ljava/lang/annotation/Annotation;

    .line 233
    invoke-virtual {p1, p2, p3, v0}, Lwa/m;->j(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;[Ljava/lang/annotation/Annotation;)Lwa/e;

    move-result-object p1

    .line 234
    check-cast p4, Lya/r;

    .line 235
    new-instance p2, Lwa/i$i;

    invoke-interface {p4}, Lya/r;->encoding()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p1, p3}, Lwa/i$i;-><init>(Lwa/e;Ljava/lang/String;)V

    return-object p2

    :cond_5b7
    new-array p2, v5, [Ljava/lang/Object;

    const-string p3, "@PartMap values cannot be MultipartBody.Part. Use @Part List<Part> or a different value type instead."

    .line 236
    invoke-direct {p0, p1, p3, p2}, Lwa/n$a;->f(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 237
    :cond_5c0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "@PartMap keys must be of type String: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-array p3, v5, [Ljava/lang/Object;

    invoke-direct {p0, p1, p2, p3}, Lwa/n$a;->f(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :cond_5d8
    new-array p2, v5, [Ljava/lang/Object;

    .line 238
    invoke-direct {p0, p1, v7, p2}, Lwa/n$a;->f(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :cond_5df
    new-array p2, v5, [Ljava/lang/Object;

    const-string p3, "@PartMap parameter type must be Map."

    .line 239
    invoke-direct {p0, p1, p3, p2}, Lwa/n$a;->f(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :cond_5e8
    new-array p2, v5, [Ljava/lang/Object;

    const-string p3, "@PartMap parameters can only be used with multipart encoding."

    .line 240
    invoke-direct {p0, p1, p3, p2}, Lwa/n$a;->f(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 241
    :cond_5f1
    instance-of p4, p4, Lya/a;

    if-eqz p4, :cond_62f

    .line 242
    iget-boolean p4, p0, Lwa/n$a;->o:Z

    if-nez p4, :cond_626

    iget-boolean p4, p0, Lwa/n$a;->p:Z

    if-nez p4, :cond_626

    .line 243
    iget-boolean p4, p0, Lwa/n$a;->i:Z

    if-nez p4, :cond_61d

    .line 244
    :try_start_601
    iget-object p4, p0, Lwa/n$a;->a:Lwa/m;

    iget-object v0, p0, Lwa/n$a;->c:[Ljava/lang/annotation/Annotation;

    invoke-virtual {p4, p2, p3, v0}, Lwa/m;->j(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;[Ljava/lang/annotation/Annotation;)Lwa/e;

    move-result-object p1
    :try_end_609
    .catch Ljava/lang/RuntimeException; {:try_start_601 .. :try_end_609} :catch_611

    .line 245
    iput-boolean v4, p0, Lwa/n$a;->i:Z

    .line 246
    new-instance p2, Lwa/i$c;

    invoke-direct {p2, p1}, Lwa/i$c;-><init>(Lwa/e;)V

    return-object p2

    :catch_611
    move-exception p3

    new-array p4, v4, [Ljava/lang/Object;

    aput-object p2, p4, v5

    const-string p2, "Unable to create @Body converter for %s"

    .line 247
    invoke-direct {p0, p3, p1, p2, p4}, Lwa/n$a;->g(Ljava/lang/Throwable;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :cond_61d
    new-array p2, v5, [Ljava/lang/Object;

    const-string p3, "Multiple @Body method annotations found."

    .line 248
    invoke-direct {p0, p1, p3, p2}, Lwa/n$a;->f(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :cond_626
    new-array p2, v5, [Ljava/lang/Object;

    const-string p3, "@Body parameters cannot be used with form or multi-part encoding."

    .line 249
    invoke-direct {p0, p1, p3, p2}, Lwa/n$a;->f(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :cond_62f
    const/4 p1, 0x0

    return-object p1
.end method

.method private m(ILjava/lang/String;)V
    .registers 7

    .line 1
    sget-object v0, Lwa/n;->n:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-eqz v0, :cond_27

    .line 2
    iget-object v0, p0, Lwa/n$a;->t:Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    return-void

    :cond_18
    new-array v0, v3, [Ljava/lang/Object;

    .line 3
    iget-object v3, p0, Lwa/n$a;->q:Ljava/lang/String;

    aput-object v3, v0, v2

    aput-object p2, v0, v1

    const-string p2, "URL \"%s\" does not contain \"{%s}\"."

    invoke-direct {p0, p1, p2, v0}, Lwa/n$a;->f(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :cond_27
    new-array v0, v3, [Ljava/lang/Object;

    .line 4
    sget-object v3, Lwa/n;->m:Ljava/util/regex/Pattern;

    .line 5
    invoke-virtual {v3}, Ljava/util/regex/Pattern;->pattern()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    aput-object p2, v0, v1

    const-string p2, "@Path parameter name must match %s. Found: %s"

    .line 6
    invoke-direct {p0, p1, p2, v0}, Lwa/n$a;->f(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method


# virtual methods
.method public a()Lwa/n;
    .registers 7

    .line 1
    invoke-direct {p0}, Lwa/n$a;->b()Lwa/c;

    move-result-object v0

    iput-object v0, p0, Lwa/n$a;->w:Lwa/c;

    .line 2
    invoke-interface {v0}, Lwa/c;->a()Ljava/lang/reflect/Type;

    move-result-object v0

    iput-object v0, p0, Lwa/n$a;->f:Ljava/lang/reflect/Type;

    .line 3
    const-class v1, Lwa/l;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_e7

    const-class v1, Lja/c0;

    if-eq v0, v1, :cond_e7

    .line 4
    invoke-direct {p0}, Lwa/n$a;->c()Lwa/e;

    move-result-object v0

    iput-object v0, p0, Lwa/n$a;->v:Lwa/e;

    .line 5
    iget-object v0, p0, Lwa/n$a;->c:[Ljava/lang/annotation/Annotation;

    array-length v1, v0

    const/4 v3, 0x0

    :goto_1f
    if-ge v3, v1, :cond_29

    aget-object v4, v0, v3

    .line 6
    invoke-direct {p0, v4}, Lwa/n$a;->j(Ljava/lang/annotation/Annotation;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1f

    .line 7
    :cond_29
    iget-object v0, p0, Lwa/n$a;->m:Ljava/lang/String;

    if-eqz v0, :cond_de

    .line 8
    iget-boolean v0, p0, Lwa/n$a;->n:Z

    if-nez v0, :cond_4c

    .line 9
    iget-boolean v0, p0, Lwa/n$a;->p:Z

    if-nez v0, :cond_43

    .line 10
    iget-boolean v0, p0, Lwa/n$a;->o:Z

    if-nez v0, :cond_3a

    goto :goto_4c

    :cond_3a
    new-array v0, v2, [Ljava/lang/Object;

    const-string v1, "FormUrlEncoded can only be specified on HTTP methods with request body (e.g., @POST)."

    .line 11
    invoke-direct {p0, v1, v0}, Lwa/n$a;->d(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_43
    new-array v0, v2, [Ljava/lang/Object;

    const-string v1, "Multipart can only be specified on HTTP methods with request body (e.g., @POST)."

    .line 12
    invoke-direct {p0, v1, v0}, Lwa/n$a;->d(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 13
    :cond_4c
    :goto_4c
    iget-object v0, p0, Lwa/n$a;->d:[[Ljava/lang/annotation/Annotation;

    array-length v0, v0

    .line 14
    new-array v1, v0, [Lwa/i;

    iput-object v1, p0, Lwa/n$a;->u:[Lwa/i;

    const/4 v1, 0x0

    :goto_54
    const/4 v3, 0x1

    if-ge v1, v0, :cond_86

    .line 15
    iget-object v4, p0, Lwa/n$a;->e:[Ljava/lang/reflect/Type;

    aget-object v4, v4, v1

    .line 16
    invoke-static {v4}, Lwa/o;->k(Ljava/lang/reflect/Type;)Z

    move-result v5

    if-nez v5, :cond_7b

    .line 17
    iget-object v3, p0, Lwa/n$a;->d:[[Ljava/lang/annotation/Annotation;

    aget-object v3, v3, v1

    if-eqz v3, :cond_72

    .line 18
    iget-object v5, p0, Lwa/n$a;->u:[Lwa/i;

    invoke-direct {p0, v1, v4, v3}, Lwa/n$a;->k(ILjava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lwa/i;

    move-result-object v3

    aput-object v3, v5, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_54

    :cond_72
    new-array v0, v2, [Ljava/lang/Object;

    const-string v2, "No Retrofit annotation found."

    .line 19
    invoke-direct {p0, v1, v2, v0}, Lwa/n$a;->f(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_7b
    new-array v0, v3, [Ljava/lang/Object;

    aput-object v4, v0, v2

    const-string v2, "Parameter type must not include a type variable or wildcard: %s"

    .line 20
    invoke-direct {p0, v1, v2, v0}, Lwa/n$a;->f(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 21
    :cond_86
    iget-object v0, p0, Lwa/n$a;->q:Ljava/lang/String;

    if-nez v0, :cond_9c

    iget-boolean v0, p0, Lwa/n$a;->l:Z

    if-eqz v0, :cond_8f

    goto :goto_9c

    :cond_8f
    new-array v0, v3, [Ljava/lang/Object;

    .line 22
    iget-object v1, p0, Lwa/n$a;->m:Ljava/lang/String;

    aput-object v1, v0, v2

    const-string v1, "Missing either @%s URL or @Url parameter."

    invoke-direct {p0, v1, v0}, Lwa/n$a;->d(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 23
    :cond_9c
    :goto_9c
    iget-boolean v0, p0, Lwa/n$a;->o:Z

    if-nez v0, :cond_b6

    iget-boolean v1, p0, Lwa/n$a;->p:Z

    if-nez v1, :cond_b6

    iget-boolean v1, p0, Lwa/n$a;->n:Z

    if-nez v1, :cond_b6

    iget-boolean v1, p0, Lwa/n$a;->i:Z

    if-nez v1, :cond_ad

    goto :goto_b6

    :cond_ad
    new-array v0, v2, [Ljava/lang/Object;

    const-string v1, "Non-body HTTP method cannot contain @Body."

    .line 24
    invoke-direct {p0, v1, v0}, Lwa/n$a;->d(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_b6
    :goto_b6
    if-eqz v0, :cond_c6

    .line 25
    iget-boolean v0, p0, Lwa/n$a;->g:Z

    if-eqz v0, :cond_bd

    goto :goto_c6

    :cond_bd
    new-array v0, v2, [Ljava/lang/Object;

    const-string v1, "Form-encoded method must contain at least one @Field."

    .line 26
    invoke-direct {p0, v1, v0}, Lwa/n$a;->d(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 27
    :cond_c6
    :goto_c6
    iget-boolean v0, p0, Lwa/n$a;->p:Z

    if-eqz v0, :cond_d8

    iget-boolean v0, p0, Lwa/n$a;->h:Z

    if-eqz v0, :cond_cf

    goto :goto_d8

    :cond_cf
    new-array v0, v2, [Ljava/lang/Object;

    const-string v1, "Multipart method must contain at least one @Part."

    .line 28
    invoke-direct {p0, v1, v0}, Lwa/n$a;->d(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 29
    :cond_d8
    :goto_d8
    new-instance v0, Lwa/n;

    invoke-direct {v0, p0}, Lwa/n;-><init>(Lwa/n$a;)V

    return-object v0

    :cond_de
    new-array v0, v2, [Ljava/lang/Object;

    const-string v1, "HTTP method annotation is required (e.g., @GET, @POST, etc.)."

    .line 30
    invoke-direct {p0, v1, v0}, Lwa/n$a;->d(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 31
    :cond_e7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lwa/n$a;->f:Ljava/lang/reflect/Type;

    .line 32
    invoke-static {v1}, Lwa/o;->i(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\' is not a valid response body type. Did you mean ResponseBody?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    .line 33
    invoke-direct {p0, v0, v1}, Lwa/n$a;->d(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    goto :goto_10f

    :goto_10e
    throw v0

    :goto_10f
    goto :goto_10e
.end method
