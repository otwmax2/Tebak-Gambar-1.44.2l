###### Class c7.c (c7.c)
.class public final Lc7/c;
.super Ljava/lang/Object;
.source "ConstructorConstructor.java"


# instance fields
.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/reflect/Type;",
            "Lcom/google/gson/h<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final b:Lf7/b;


# direct methods
.method public constructor <init>(Ljava/util/Map;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/reflect/Type;",
            "Lcom/google/gson/h<",
            "*>;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Lf7/b;->a()Lf7/b;

    move-result-object v0

    iput-object v0, p0, Lc7/c;->b:Lf7/b;

    .line 3
    iput-object p1, p0, Lc7/c;->a:Ljava/util/Map;

    return-void
.end method

.method private b(Ljava/lang/Class;)Lc7/i;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "-TT;>;)",
            "Lc7/i<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_1
    new-array v0, v0, [Ljava/lang/Class;

    .line 1
    invoke-virtual {p1, v0}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p1

    .line 2
    invoke-virtual {p1}, Ljava/lang/reflect/Constructor;->isAccessible()Z

    move-result v0

    if-nez v0, :cond_12

    .line 3
    iget-object v0, p0, Lc7/c;->b:Lf7/b;

    invoke-virtual {v0, p1}, Lf7/b;->b(Ljava/lang/reflect/AccessibleObject;)V

    .line 4
    :cond_12
    new-instance v0, Lc7/c$h;

    invoke-direct {v0, p0, p1}, Lc7/c$h;-><init>(Lc7/c;Ljava/lang/reflect/Constructor;)V
    :try_end_17
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_17} :catch_18

    return-object v0

    :catch_18
    const/4 p1, 0x0

    return-object p1
.end method

.method private c(Ljava/lang/reflect/Type;Ljava/lang/Class;)Lc7/i;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Class<",
            "-TT;>;)",
            "Lc7/i<",
            "TT;>;"
        }
    .end annotation

    .line 1
    const-class v0, Ljava/util/Collection;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_46

    .line 2
    const-class v0, Ljava/util/SortedSet;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 3
    new-instance p1, Lc7/c$i;

    invoke-direct {p1, p0}, Lc7/c$i;-><init>(Lc7/c;)V

    return-object p1

    .line 4
    :cond_16
    const-class v0, Ljava/util/EnumSet;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 5
    new-instance p2, Lc7/c$j;

    invoke-direct {p2, p0, p1}, Lc7/c$j;-><init>(Lc7/c;Ljava/lang/reflect/Type;)V

    return-object p2

    .line 6
    :cond_24
    const-class p1, Ljava/util/Set;

    invoke-virtual {p1, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_32

    .line 7
    new-instance p1, Lc7/c$k;

    invoke-direct {p1, p0}, Lc7/c$k;-><init>(Lc7/c;)V

    return-object p1

    .line 8
    :cond_32
    const-class p1, Ljava/util/Queue;

    invoke-virtual {p1, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_40

    .line 9
    new-instance p1, Lc7/c$l;

    invoke-direct {p1, p0}, Lc7/c$l;-><init>(Lc7/c;)V

    return-object p1

    .line 10
    :cond_40
    new-instance p1, Lc7/c$m;

    invoke-direct {p1, p0}, Lc7/c$m;-><init>(Lc7/c;)V

    return-object p1

    .line 11
    :cond_46
    const-class v0, Ljava/util/Map;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_a1

    .line 12
    const-class v0, Ljava/util/concurrent/ConcurrentNavigableMap;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_5c

    .line 13
    new-instance p1, Lc7/c$n;

    invoke-direct {p1, p0}, Lc7/c$n;-><init>(Lc7/c;)V

    return-object p1

    .line 14
    :cond_5c
    const-class v0, Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_6a

    .line 15
    new-instance p1, Lc7/c$a;

    invoke-direct {p1, p0}, Lc7/c$a;-><init>(Lc7/c;)V

    return-object p1

    .line 16
    :cond_6a
    const-class v0, Ljava/util/SortedMap;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p2

    if-eqz p2, :cond_78

    .line 17
    new-instance p1, Lc7/c$b;

    invoke-direct {p1, p0}, Lc7/c$b;-><init>(Lc7/c;)V

    return-object p1

    .line 18
    :cond_78
    instance-of p2, p1, Ljava/lang/reflect/ParameterizedType;

    if-eqz p2, :cond_9b

    const-class p2, Ljava/lang/String;

    check-cast p1, Ljava/lang/reflect/ParameterizedType;

    .line 19
    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object p1

    const/4 v0, 0x0

    aget-object p1, p1, v0

    invoke-static {p1}, Lg7/a;->get(Ljava/lang/reflect/Type;)Lg7/a;

    move-result-object p1

    invoke-virtual {p1}, Lg7/a;->getRawType()Ljava/lang/Class;

    move-result-object p1

    .line 20
    invoke-virtual {p2, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    if-nez p1, :cond_9b

    .line 21
    new-instance p1, Lc7/c$c;

    invoke-direct {p1, p0}, Lc7/c$c;-><init>(Lc7/c;)V

    return-object p1

    .line 22
    :cond_9b
    new-instance p1, Lc7/c$d;

    invoke-direct {p1, p0}, Lc7/c$d;-><init>(Lc7/c;)V

    return-object p1

    :cond_a1
    const/4 p1, 0x0

    return-object p1
.end method

.method private d(Ljava/lang/reflect/Type;Ljava/lang/Class;)Lc7/i;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Class<",
            "-TT;>;)",
            "Lc7/i<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lc7/c$e;

    invoke-direct {v0, p0, p2, p1}, Lc7/c$e;-><init>(Lc7/c;Ljava/lang/Class;Ljava/lang/reflect/Type;)V

    return-object v0
.end method


# virtual methods
.method public a(Lg7/a;)Lc7/i;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lg7/a<",
            "TT;>;)",
            "Lc7/i<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lg7/a;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Lg7/a;->getRawType()Ljava/lang/Class;

    move-result-object p1

    .line 3
    iget-object v1, p0, Lc7/c;->a:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/gson/h;

    if-eqz v1, :cond_18

    .line 4
    new-instance p1, Lc7/c$f;

    invoke-direct {p1, p0, v1, v0}, Lc7/c$f;-><init>(Lc7/c;Lcom/google/gson/h;Ljava/lang/reflect/Type;)V

    return-object p1

    .line 5
    :cond_18
    iget-object v1, p0, Lc7/c;->a:Ljava/util/Map;

    .line 6
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/gson/h;

    if-eqz v1, :cond_28

    .line 7
    new-instance p1, Lc7/c$g;

    invoke-direct {p1, p0, v1, v0}, Lc7/c$g;-><init>(Lc7/c;Lcom/google/gson/h;Ljava/lang/reflect/Type;)V

    return-object p1

    .line 8
    :cond_28
    invoke-direct {p0, p1}, Lc7/c;->b(Ljava/lang/Class;)Lc7/i;

    move-result-object v1

    if-eqz v1, :cond_2f

    return-object v1

    .line 9
    :cond_2f
    invoke-direct {p0, v0, p1}, Lc7/c;->c(Ljava/lang/reflect/Type;Ljava/lang/Class;)Lc7/i;

    move-result-object v1

    if-eqz v1, :cond_36

    return-object v1

    .line 10
    :cond_36
    invoke-direct {p0, v0, p1}, Lc7/c;->d(Ljava/lang/reflect/Type;Ljava/lang/Class;)Lc7/i;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lc7/c;->a:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class c7.c.a (c7.c$a)
.class Lc7/c$a;
.super Ljava/lang/Object;
.source "ConstructorConstructor.java"

# interfaces
.implements Lc7/i;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc7/c;->c(Ljava/lang/reflect/Type;Ljava/lang/Class;)Lc7/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lc7/i<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lc7/c;


# direct methods
.method constructor <init>(Lc7/c;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lc7/c$a;->a:Lc7/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    return-object v0
.end method

###### Class c7.c.b (c7.c$b)
.class Lc7/c$b;
.super Ljava/lang/Object;
.source "ConstructorConstructor.java"

# interfaces
.implements Lc7/i;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc7/c;->c(Ljava/lang/reflect/Type;Ljava/lang/Class;)Lc7/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lc7/i<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lc7/c;


# direct methods
.method constructor <init>(Lc7/c;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lc7/c$b;->a:Lc7/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    return-object v0
.end method

###### Class c7.c.C0094c (c7.c$c)
.class Lc7/c$c;
.super Ljava/lang/Object;
.source "ConstructorConstructor.java"

# interfaces
.implements Lc7/i;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc7/c;->c(Ljava/lang/reflect/Type;Ljava/lang/Class;)Lc7/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lc7/i<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lc7/c;


# direct methods
.method constructor <init>(Lc7/c;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lc7/c$c;->a:Lc7/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    return-object v0
.end method

###### Class c7.c.d (c7.c$d)
.class Lc7/c$d;
.super Ljava/lang/Object;
.source "ConstructorConstructor.java"

# interfaces
.implements Lc7/i;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc7/c;->c(Ljava/lang/reflect/Type;Ljava/lang/Class;)Lc7/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lc7/i<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lc7/c;


# direct methods
.method constructor <init>(Lc7/c;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lc7/c$d;->a:Lc7/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    new-instance v0, Lc7/h;

    invoke-direct {v0}, Lc7/h;-><init>()V

    return-object v0
.end method

###### Class c7.c.e (c7.c$e)
.class Lc7/c$e;
.super Ljava/lang/Object;
.source "ConstructorConstructor.java"

# interfaces
.implements Lc7/i;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc7/c;->d(Ljava/lang/reflect/Type;Ljava/lang/Class;)Lc7/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lc7/i<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final a:Lc7/m;

.field final synthetic b:Ljava/lang/Class;

.field final synthetic c:Ljava/lang/reflect/Type;

.field final synthetic d:Lc7/c;


# direct methods
.method constructor <init>(Lc7/c;Ljava/lang/Class;Ljava/lang/reflect/Type;)V
    .registers 4

    .line 1
    iput-object p1, p0, Lc7/c$e;->d:Lc7/c;

    iput-object p2, p0, Lc7/c$e;->b:Ljava/lang/Class;

    iput-object p3, p0, Lc7/c$e;->c:Ljava/lang/reflect/Type;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Lc7/m;->b()Lc7/m;

    move-result-object p1

    iput-object p1, p0, Lc7/c$e;->a:Lc7/m;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lc7/c$e;->a:Lc7/m;

    iget-object v1, p0, Lc7/c$e;->b:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Lc7/m;->c(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_9

    return-object v0

    :catch_9
    move-exception v0

    .line 2
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to invoke no-args constructor for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lc7/c$e;->c:Ljava/lang/reflect/Type;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ". Registering an InstanceCreator with Gson for this type may fix this problem."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

###### Class c7.c.f (c7.c$f)
.class Lc7/c$f;
.super Ljava/lang/Object;
.source "ConstructorConstructor.java"

# interfaces
.implements Lc7/i;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc7/c;->a(Lg7/a;)Lc7/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lc7/i<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/gson/h;

.field final synthetic b:Ljava/lang/reflect/Type;

.field final synthetic c:Lc7/c;


# direct methods
.method constructor <init>(Lc7/c;Lcom/google/gson/h;Ljava/lang/reflect/Type;)V
    .registers 4

    .line 1
    iput-object p1, p0, Lc7/c$f;->c:Lc7/c;

    iput-object p2, p0, Lc7/c$f;->a:Lcom/google/gson/h;

    iput-object p3, p0, Lc7/c$f;->b:Ljava/lang/reflect/Type;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lc7/c$f;->a:Lcom/google/gson/h;

    iget-object v1, p0, Lc7/c$f;->b:Ljava/lang/reflect/Type;

    invoke-interface {v0, v1}, Lcom/google/gson/h;->a(Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

###### Class c7.c.g (c7.c$g)
.class Lc7/c$g;
.super Ljava/lang/Object;
.source "ConstructorConstructor.java"

# interfaces
.implements Lc7/i;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc7/c;->a(Lg7/a;)Lc7/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lc7/i<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/gson/h;

.field final synthetic b:Ljava/lang/reflect/Type;

.field final synthetic c:Lc7/c;


# direct methods
.method constructor <init>(Lc7/c;Lcom/google/gson/h;Ljava/lang/reflect/Type;)V
    .registers 4

    .line 1
    iput-object p1, p0, Lc7/c$g;->c:Lc7/c;

    iput-object p2, p0, Lc7/c$g;->a:Lcom/google/gson/h;

    iput-object p3, p0, Lc7/c$g;->b:Ljava/lang/reflect/Type;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lc7/c$g;->a:Lcom/google/gson/h;

    iget-object v1, p0, Lc7/c$g;->b:Ljava/lang/reflect/Type;

    invoke-interface {v0, v1}, Lcom/google/gson/h;->a(Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

###### Class c7.c.h (c7.c$h)
.class Lc7/c$h;
.super Ljava/lang/Object;
.source "ConstructorConstructor.java"

# interfaces
.implements Lc7/i;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc7/c;->b(Ljava/lang/Class;)Lc7/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lc7/i<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/reflect/Constructor;

.field final synthetic b:Lc7/c;


# direct methods
.method constructor <init>(Lc7/c;Ljava/lang/reflect/Constructor;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lc7/c$h;->b:Lc7/c;

    iput-object p2, p0, Lc7/c$h;->a:Ljava/lang/reflect/Constructor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    const-string v0, " with no args"

    const-string v1, "Failed to invoke "

    const/4 v2, 0x0

    .line 1
    :try_start_5
    iget-object v3, p0, Lc7/c$h;->a:Ljava/lang/reflect/Constructor;

    invoke-virtual {v3, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_b
    .catch Ljava/lang/InstantiationException; {:try_start_5 .. :try_end_b} :catch_32
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_5 .. :try_end_b} :catch_13
    .catch Ljava/lang/IllegalAccessException; {:try_start_5 .. :try_end_b} :catch_c

    return-object v0

    :catch_c
    move-exception v0

    .line 2
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    :catch_13
    move-exception v2

    .line 3
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lc7/c$h;->a:Ljava/lang/reflect/Constructor;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-virtual {v2}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v1

    invoke-direct {v3, v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    :catch_32
    move-exception v2

    .line 5
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lc7/c$h;->a:Ljava/lang/reflect/Constructor;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

###### Class c7.c.i (c7.c$i)
.class Lc7/c$i;
.super Ljava/lang/Object;
.source "ConstructorConstructor.java"

# interfaces
.implements Lc7/i;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc7/c;->c(Ljava/lang/reflect/Type;Ljava/lang/Class;)Lc7/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lc7/i<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lc7/c;


# direct methods
.method constructor <init>(Lc7/c;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lc7/c$i;->a:Lc7/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    return-object v0
.end method

###### Class c7.c.j (c7.c$j)
.class Lc7/c$j;
.super Ljava/lang/Object;
.source "ConstructorConstructor.java"

# interfaces
.implements Lc7/i;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc7/c;->c(Ljava/lang/reflect/Type;Ljava/lang/Class;)Lc7/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lc7/i<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/reflect/Type;

.field final synthetic b:Lc7/c;


# direct methods
.method constructor <init>(Lc7/c;Ljava/lang/reflect/Type;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lc7/c$j;->b:Lc7/c;

    iput-object p2, p0, Lc7/c$j;->a:Ljava/lang/reflect/Type;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lc7/c$j;->a:Ljava/lang/reflect/Type;

    instance-of v1, v0, Ljava/lang/reflect/ParameterizedType;

    const-string v2, "Invalid EnumSet type: "

    if-eqz v1, :cond_37

    .line 2
    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    .line 3
    instance-of v1, v0, Ljava/lang/Class;

    if-eqz v1, :cond_1c

    .line 4
    check-cast v0, Ljava/lang/Class;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    return-object v0

    .line 5
    :cond_1c
    new-instance v0, Lcom/google/gson/m;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lc7/c$j;->a:Ljava/lang/reflect/Type;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/gson/m;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6
    :cond_37
    new-instance v0, Lcom/google/gson/m;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lc7/c$j;->a:Ljava/lang/reflect/Type;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/gson/m;-><init>(Ljava/lang/String;)V

    throw v0
.end method

###### Class c7.c.k (c7.c$k)
.class Lc7/c$k;
.super Ljava/lang/Object;
.source "ConstructorConstructor.java"

# interfaces
.implements Lc7/i;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc7/c;->c(Ljava/lang/reflect/Type;Ljava/lang/Class;)Lc7/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lc7/i<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lc7/c;


# direct methods
.method constructor <init>(Lc7/c;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lc7/c$k;->a:Lc7/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    return-object v0
.end method

###### Class c7.c.l (c7.c$l)
.class Lc7/c$l;
.super Ljava/lang/Object;
.source "ConstructorConstructor.java"

# interfaces
.implements Lc7/i;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc7/c;->c(Ljava/lang/reflect/Type;Ljava/lang/Class;)Lc7/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lc7/i<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lc7/c;


# direct methods
.method constructor <init>(Lc7/c;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lc7/c$l;->a:Lc7/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    return-object v0
.end method

###### Class c7.c.m (c7.c$m)
.class Lc7/c$m;
.super Ljava/lang/Object;
.source "ConstructorConstructor.java"

# interfaces
.implements Lc7/i;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc7/c;->c(Ljava/lang/reflect/Type;Ljava/lang/Class;)Lc7/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lc7/i<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lc7/c;


# direct methods
.method constructor <init>(Lc7/c;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lc7/c$m;->a:Lc7/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

###### Class c7.c.n (c7.c$n)
.class Lc7/c$n;
.super Ljava/lang/Object;
.source "ConstructorConstructor.java"

# interfaces
.implements Lc7/i;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc7/c;->c(Ljava/lang/reflect/Type;Ljava/lang/Class;)Lc7/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lc7/i<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lc7/c;


# direct methods
.method constructor <init>(Lc7/c;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lc7/c$n;->a:Lc7/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/concurrent/ConcurrentSkipListMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentSkipListMap;-><init>()V

    return-object v0
.end method
