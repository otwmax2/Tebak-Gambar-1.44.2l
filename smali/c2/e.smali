###### Class c2.e (c2.e)
.class Lc2/e;
.super Ljava/lang/Object;
.source "GroupedLinkedMap.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc2/e$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K::",
        "Lc2/h;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:Lc2/e$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc2/e$a<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "TK;",
            "Lc2/e$a<",
            "TK;TV;>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lc2/e$a;

    invoke-direct {v0}, Lc2/e$a;-><init>()V

    iput-object v0, p0, Lc2/e;->a:Lc2/e$a;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lc2/e;->b:Ljava/util/Map;

    return-void
.end method

.method private b(Lc2/e$a;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc2/e$a<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lc2/e;->e(Lc2/e$a;)V

    .line 2
    iget-object v0, p0, Lc2/e;->a:Lc2/e$a;

    iput-object v0, p1, Lc2/e$a;->d:Lc2/e$a;

    .line 3
    iget-object v0, v0, Lc2/e$a;->c:Lc2/e$a;

    iput-object v0, p1, Lc2/e$a;->c:Lc2/e$a;

    .line 4
    invoke-static {p1}, Lc2/e;->g(Lc2/e$a;)V

    return-void
.end method

.method private c(Lc2/e$a;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc2/e$a<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lc2/e;->e(Lc2/e$a;)V

    .line 2
    iget-object v0, p0, Lc2/e;->a:Lc2/e$a;

    iget-object v1, v0, Lc2/e$a;->d:Lc2/e$a;

    iput-object v1, p1, Lc2/e$a;->d:Lc2/e$a;

    .line 3
    iput-object v0, p1, Lc2/e$a;->c:Lc2/e$a;

    .line 4
    invoke-static {p1}, Lc2/e;->g(Lc2/e$a;)V

    return-void
.end method

.method private static e(Lc2/e$a;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lc2/e$a<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lc2/e$a;->d:Lc2/e$a;

    iget-object v1, p0, Lc2/e$a;->c:Lc2/e$a;

    iput-object v1, v0, Lc2/e$a;->c:Lc2/e$a;

    .line 2
    iget-object p0, p0, Lc2/e$a;->c:Lc2/e$a;

    iput-object v0, p0, Lc2/e$a;->d:Lc2/e$a;

    return-void
.end method

.method private static g(Lc2/e$a;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lc2/e$a<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lc2/e$a;->c:Lc2/e$a;

    iput-object p0, v0, Lc2/e$a;->d:Lc2/e$a;

    .line 2
    iget-object v0, p0, Lc2/e$a;->d:Lc2/e$a;

    iput-object p0, v0, Lc2/e$a;->c:Lc2/e$a;

    return-void
.end method


# virtual methods
.method public a(Lc2/h;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lc2/e;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc2/e$a;

    if-nez v0, :cond_15

    .line 2
    new-instance v0, Lc2/e$a;

    invoke-direct {v0, p1}, Lc2/e$a;-><init>(Ljava/lang/Object;)V

    .line 3
    iget-object v1, p0, Lc2/e;->b:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_18

    .line 4
    :cond_15
    invoke-interface {p1}, Lc2/h;->a()V

    .line 5
    :goto_18
    invoke-direct {p0, v0}, Lc2/e;->b(Lc2/e$a;)V

    .line 6
    invoke-virtual {v0}, Lc2/e$a;->c()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public d(Lc2/h;Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lc2/e;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc2/e$a;

    if-nez v0, :cond_18

    .line 2
    new-instance v0, Lc2/e$a;

    invoke-direct {v0, p1}, Lc2/e$a;-><init>(Ljava/lang/Object;)V

    .line 3
    invoke-direct {p0, v0}, Lc2/e;->c(Lc2/e$a;)V

    .line 4
    iget-object v1, p0, Lc2/e;->b:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1b

    .line 5
    :cond_18
    invoke-interface {p1}, Lc2/h;->a()V

    .line 6
    :goto_1b
    invoke-virtual {v0, p2}, Lc2/e$a;->b(Ljava/lang/Object;)V

    return-void
.end method

.method public f()Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lc2/e;->a:Lc2/e$a;

    iget-object v0, v0, Lc2/e$a;->d:Lc2/e$a;

    .line 2
    :goto_4
    iget-object v1, p0, Lc2/e;->a:Lc2/e$a;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2b

    .line 3
    invoke-virtual {v0}, Lc2/e$a;->c()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_13

    return-object v1

    .line 4
    :cond_13
    invoke-static {v0}, Lc2/e;->e(Lc2/e$a;)V

    .line 5
    iget-object v1, p0, Lc2/e;->b:Ljava/util/Map;

    invoke-static {v0}, Lc2/e$a;->a(Lc2/e$a;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-static {v0}, Lc2/e$a;->a(Lc2/e$a;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc2/h;

    invoke-interface {v1}, Lc2/h;->a()V

    .line 7
    iget-object v0, v0, Lc2/e$a;->d:Lc2/e$a;

    goto :goto_4

    :cond_2b
    const/4 v0, 0x0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "GroupedLinkedMap( "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2
    iget-object v1, p0, Lc2/e;->a:Lc2/e$a;

    iget-object v1, v1, Lc2/e$a;->c:Lc2/e$a;

    const/4 v2, 0x0

    .line 3
    :goto_c
    iget-object v3, p0, Lc2/e;->a:Lc2/e$a;

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_35

    const/4 v2, 0x1

    const/16 v3, 0x7b

    .line 4
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lc2/e$a;->a(Lc2/e$a;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v3, 0x3a

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lc2/e$a;->d()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "}, "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    iget-object v1, v1, Lc2/e$a;->c:Lc2/e$a;

    goto :goto_c

    :cond_35
    if-eqz v2, :cond_44

    .line 6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    :cond_44
    const-string v1, " )"

    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class c2.e.a (c2.e$a)
.class Lc2/e$a;
.super Ljava/lang/Object;
.source "GroupedLinkedMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc2/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TV;>;"
        }
    .end annotation
.end field

.field c:Lc2/e$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc2/e$a<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field d:Lc2/e$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc2/e$a<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lc2/e$a;-><init>(Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p0, p0, Lc2/e$a;->d:Lc2/e$a;

    iput-object p0, p0, Lc2/e$a;->c:Lc2/e$a;

    .line 4
    iput-object p1, p0, Lc2/e$a;->a:Ljava/lang/Object;

    return-void
.end method

.method static synthetic a(Lc2/e$a;)Ljava/lang/Object;
    .registers 1

    .line 1
    iget-object p0, p0, Lc2/e$a;->a:Ljava/lang/Object;

    return-object p0
.end method


# virtual methods
.method public b(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lc2/e$a;->b:Ljava/util/List;

    if-nez v0, :cond_b

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lc2/e$a;->b:Ljava/util/List;

    .line 3
    :cond_b
    iget-object v0, p0, Lc2/e$a;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public c()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lc2/e$a;->d()I

    move-result v0

    if-lez v0, :cond_f

    .line 2
    iget-object v1, p0, Lc2/e$a;->b:Ljava/util/List;

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    return-object v0
.end method

.method public d()I
    .registers 2

    .line 1
    iget-object v0, p0, Lc2/e$a;->b:Ljava/util/List;

    if-eqz v0, :cond_9

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method
