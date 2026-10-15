###### Class o.a (o.a)
.class public Lo/a;
.super Lo/g;
.source "ArrayMap.java"

# interfaces
.implements Ljava/util/Map;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lo/g<",
        "TK;TV;>;",
        "Ljava/util/Map<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field v:Lo/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/f<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lo/g;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .registers 2

    .line 2
    invoke-direct {p0, p1}, Lo/g;-><init>(I)V

    return-void
.end method

.method public constructor <init>(Lo/g;)V
    .registers 2

    .line 3
    invoke-direct {p0, p1}, Lo/g;-><init>(Lo/g;)V

    return-void
.end method

.method private p()Lo/f;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/f<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lo/a;->v:Lo/f;

    if-nez v0, :cond_b

    .line 2
    new-instance v0, Lo/a$a;

    invoke-direct {v0, p0}, Lo/a$a;-><init>(Lo/a;)V

    iput-object v0, p0, Lo/a;->v:Lo/f;

    .line 3
    :cond_b
    iget-object v0, p0, Lo/a;->v:Lo/f;

    return-object v0
.end method


# virtual methods
.method public entrySet()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lo/a;->p()Lo/f;

    move-result-object v0

    invoke-virtual {v0}, Lo/f;->l()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public keySet()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lo/a;->p()Lo/f;

    move-result-object v0

    invoke-virtual {v0}, Lo/f;->m()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public putAll(Ljava/util/Map;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+TK;+TV;>;)V"
        }
    .end annotation

    .line 1
    iget v0, p0, Lo/g;->q:I

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lo/g;->c(I)V

    .line 2
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_12
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 3
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lo/g;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_12

    :cond_2a
    return-void
.end method

.method public q(Ljava/util/Collection;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 1
    invoke-static {p0, p1}, Lo/f;->p(Ljava/util/Map;Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public values()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lo/a;->p()Lo/f;

    move-result-object v0

    invoke-virtual {v0}, Lo/f;->n()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

###### Class o.a.C0209a (o.a$a)
.class Lo/a$a;
.super Lo/f;
.source "ArrayMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/a;->p()Lo/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/f<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field final synthetic d:Lo/a;


# direct methods
.method constructor <init>(Lo/a;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lo/a$a;->d:Lo/a;

    invoke-direct {p0}, Lo/f;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()V
    .registers 2

    .line 1
    iget-object v0, p0, Lo/a$a;->d:Lo/a;

    invoke-virtual {v0}, Lo/g;->clear()V

    return-void
.end method

.method protected b(II)Ljava/lang/Object;
    .registers 4

    .line 1
    iget-object v0, p0, Lo/a$a;->d:Lo/a;

    iget-object v0, v0, Lo/g;->p:[Ljava/lang/Object;

    shl-int/lit8 p1, p1, 0x1

    add-int/2addr p1, p2

    aget-object p1, v0, p1

    return-object p1
.end method

.method protected c()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lo/a$a;->d:Lo/a;

    return-object v0
.end method

.method protected d()I
    .registers 2

    .line 1
    iget-object v0, p0, Lo/a$a;->d:Lo/a;

    iget v0, v0, Lo/g;->q:I

    return v0
.end method

.method protected e(Ljava/lang/Object;)I
    .registers 3

    .line 1
    iget-object v0, p0, Lo/a$a;->d:Lo/a;

    invoke-virtual {v0, p1}, Lo/g;->f(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method protected f(Ljava/lang/Object;)I
    .registers 3

    .line 1
    iget-object v0, p0, Lo/a$a;->d:Lo/a;

    invoke-virtual {v0, p1}, Lo/g;->j(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method protected g(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lo/a$a;->d:Lo/a;

    invoke-virtual {v0, p1, p2}, Lo/g;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected h(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Lo/a$a;->d:Lo/a;

    invoke-virtual {v0, p1}, Lo/g;->m(I)Ljava/lang/Object;

    return-void
.end method

.method protected i(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITV;)TV;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lo/a$a;->d:Lo/a;

    invoke-virtual {v0, p1, p2}, Lo/g;->n(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
