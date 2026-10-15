###### Class t6.c (t6.c)
.class public Lt6/c;
.super Ljava/lang/Object;
.source "DefaultUserAgentPublisher.java"

# interfaces
.implements Lt6/i;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lt6/d;


# direct methods
.method constructor <init>(Ljava/util/Set;Lt6/d;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lt6/f;",
            ">;",
            "Lt6/d;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Lt6/c;->e(Ljava/util/Set;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lt6/c;->a:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lt6/c;->b:Lt6/d;

    return-void
.end method

.method public static synthetic b(Lk5/e;)Lt6/i;
    .registers 1

    invoke-static {p0}, Lt6/c;->d(Lk5/e;)Lt6/i;

    move-result-object p0

    return-object p0
.end method

.method public static c()Lk5/c;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lk5/c<",
            "Lt6/i;",
            ">;"
        }
    .end annotation

    .line 1
    const-class v0, Lt6/i;

    invoke-static {v0}, Lk5/c;->c(Ljava/lang/Class;)Lk5/c$b;

    move-result-object v0

    const-class v1, Lt6/f;

    .line 2
    invoke-static {v1}, Lk5/r;->n(Ljava/lang/Class;)Lk5/r;

    move-result-object v1

    invoke-virtual {v0, v1}, Lk5/c$b;->b(Lk5/r;)Lk5/c$b;

    move-result-object v0

    sget-object v1, Lt6/b;->a:Lt6/b;

    .line 3
    invoke-virtual {v0, v1}, Lk5/c$b;->f(Lk5/h;)Lk5/c$b;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lk5/c$b;->d()Lk5/c;

    move-result-object v0

    return-object v0
.end method

.method private static synthetic d(Lk5/e;)Lt6/i;
    .registers 3

    .line 1
    new-instance v0, Lt6/c;

    const-class v1, Lt6/f;

    .line 2
    invoke-interface {p0, v1}, Lk5/e;->g(Ljava/lang/Class;)Ljava/util/Set;

    move-result-object p0

    invoke-static {}, Lt6/d;->a()Lt6/d;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lt6/c;-><init>(Ljava/util/Set;Lt6/d;)V

    return-object v0
.end method

.method private static e(Ljava/util/Set;)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lt6/f;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 3
    :cond_9
    :goto_9
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_34

    .line 4
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lt6/f;

    .line 5
    invoke-virtual {v1}, Lt6/f;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x2f

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lt6/f;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    const/16 v1, 0x20

    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_9

    .line 8
    :cond_34
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 3

    .line 1
    iget-object v0, p0, Lt6/c;->b:Lt6/d;

    invoke-virtual {v0}, Lt6/d;->b()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 2
    iget-object v0, p0, Lt6/c;->a:Ljava/lang/String;

    return-object v0

    .line 3
    :cond_f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lt6/c;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lt6/c;->b:Lt6/d;

    invoke-virtual {v1}, Lt6/d;->b()Ljava/util/Set;

    move-result-object v1

    invoke-static {v1}, Lt6/c;->e(Ljava/util/Set;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class t6.b (t6.b)
.class public final synthetic Lt6/b;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lk5/h;


# static fields
.field public static final synthetic a:Lt6/b;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lt6/b;

    invoke-direct {v0}, Lt6/b;-><init>()V

    sput-object v0, Lt6/b;->a:Lt6/b;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lk5/e;)Ljava/lang/Object;
    .registers 2

    invoke-static {p1}, Lt6/c;->b(Lk5/e;)Lt6/i;

    move-result-object p1

    return-object p1
.end method
