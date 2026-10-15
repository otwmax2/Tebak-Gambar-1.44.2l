###### Class d7.g (d7.g)
.class public final Ld7/g;
.super Ljava/lang/Object;
.source "MapTypeAdapterFactory.java"

# interfaces
.implements Lcom/google/gson/x;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ld7/g$a;
    }
.end annotation


# instance fields
.field private final o:Lc7/c;

.field final p:Z


# direct methods
.method public constructor <init>(Lc7/c;Z)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Ld7/g;->o:Lc7/c;

    .line 3
    iput-boolean p2, p0, Ld7/g;->p:Z

    return-void
.end method

.method private b(Lcom/google/gson/f;Ljava/lang/reflect/Type;)Lcom/google/gson/w;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/f;",
            "Ljava/lang/reflect/Type;",
            ")",
            "Lcom/google/gson/w<",
            "*>;"
        }
    .end annotation

    .line 1
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-eq p2, v0, :cond_12

    const-class v0, Ljava/lang/Boolean;

    if-ne p2, v0, :cond_9

    goto :goto_12

    .line 2
    :cond_9
    invoke-static {p2}, Lg7/a;->get(Ljava/lang/reflect/Type;)Lg7/a;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/gson/f;->m(Lg7/a;)Lcom/google/gson/w;

    move-result-object p1

    goto :goto_14

    .line 3
    :cond_12
    :goto_12
    sget-object p1, Ld7/n;->f:Lcom/google/gson/w;

    :goto_14
    return-object p1
.end method


# virtual methods
.method public a(Lcom/google/gson/f;Lg7/a;)Lcom/google/gson/w;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/gson/f;",
            "Lg7/a<",
            "TT;>;)",
            "Lcom/google/gson/w<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Lg7/a;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 2
    invoke-virtual {p2}, Lg7/a;->getRawType()Ljava/lang/Class;

    move-result-object v1

    .line 3
    const-class v2, Ljava/util/Map;

    invoke-virtual {v2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_12

    const/4 p1, 0x0

    return-object p1

    .line 4
    :cond_12
    invoke-static {v0}, Lc7/b;->k(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v1

    .line 5
    invoke-static {v0, v1}, Lc7/b;->j(Ljava/lang/reflect/Type;Ljava/lang/Class;)[Ljava/lang/reflect/Type;

    move-result-object v0

    const/4 v1, 0x0

    .line 6
    aget-object v2, v0, v1

    invoke-direct {p0, p1, v2}, Ld7/g;->b(Lcom/google/gson/f;Ljava/lang/reflect/Type;)Lcom/google/gson/w;

    move-result-object v7

    const/4 v2, 0x1

    .line 7
    aget-object v3, v0, v2

    invoke-static {v3}, Lg7/a;->get(Ljava/lang/reflect/Type;)Lg7/a;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/google/gson/f;->m(Lg7/a;)Lcom/google/gson/w;

    move-result-object v9

    .line 8
    iget-object v3, p0, Ld7/g;->o:Lc7/c;

    invoke-virtual {v3, p2}, Lc7/c;->a(Lg7/a;)Lc7/i;

    move-result-object v10

    .line 9
    new-instance p2, Ld7/g$a;

    aget-object v6, v0, v1

    aget-object v8, v0, v2

    move-object v3, p2

    move-object v4, p0

    move-object v5, p1

    invoke-direct/range {v3 .. v10}, Ld7/g$a;-><init>(Ld7/g;Lcom/google/gson/f;Ljava/lang/reflect/Type;Lcom/google/gson/w;Ljava/lang/reflect/Type;Lcom/google/gson/w;Lc7/i;)V

    return-object p2
.end method

###### Class d7.g.a (d7.g$a)
.class final Ld7/g$a;
.super Lcom/google/gson/w;
.source "MapTypeAdapterFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld7/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/gson/w<",
        "Ljava/util/Map<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/gson/w;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/w<",
            "TK;>;"
        }
    .end annotation
.end field

.field private final b:Lcom/google/gson/w;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/w<",
            "TV;>;"
        }
    .end annotation
.end field

.field private final c:Lc7/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc7/i<",
            "+",
            "Ljava/util/Map<",
            "TK;TV;>;>;"
        }
    .end annotation
.end field

.field final synthetic d:Ld7/g;


# direct methods
.method public constructor <init>(Ld7/g;Lcom/google/gson/f;Ljava/lang/reflect/Type;Lcom/google/gson/w;Ljava/lang/reflect/Type;Lcom/google/gson/w;Lc7/i;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/f;",
            "Ljava/lang/reflect/Type;",
            "Lcom/google/gson/w<",
            "TK;>;",
            "Ljava/lang/reflect/Type;",
            "Lcom/google/gson/w<",
            "TV;>;",
            "Lc7/i<",
            "+",
            "Ljava/util/Map<",
            "TK;TV;>;>;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Ld7/g$a;->d:Ld7/g;

    invoke-direct {p0}, Lcom/google/gson/w;-><init>()V

    .line 2
    new-instance p1, Ld7/m;

    invoke-direct {p1, p2, p4, p3}, Ld7/m;-><init>(Lcom/google/gson/f;Lcom/google/gson/w;Ljava/lang/reflect/Type;)V

    iput-object p1, p0, Ld7/g$a;->a:Lcom/google/gson/w;

    .line 3
    new-instance p1, Ld7/m;

    invoke-direct {p1, p2, p6, p5}, Ld7/m;-><init>(Lcom/google/gson/f;Lcom/google/gson/w;Ljava/lang/reflect/Type;)V

    iput-object p1, p0, Ld7/g$a;->b:Lcom/google/gson/w;

    .line 4
    iput-object p7, p0, Ld7/g$a;->c:Lc7/i;

    return-void
.end method

.method private e(Lcom/google/gson/l;)Ljava/lang/String;
    .registers 3

    .line 1
    invoke-virtual {p1}, Lcom/google/gson/l;->s()Z

    move-result v0

    if-eqz v0, :cond_39

    .line 2
    invoke-virtual {p1}, Lcom/google/gson/l;->m()Lcom/google/gson/r;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Lcom/google/gson/r;->x()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 4
    invoke-virtual {p1}, Lcom/google/gson/r;->t()Ljava/lang/Number;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 5
    :cond_19
    invoke-virtual {p1}, Lcom/google/gson/r;->u()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 6
    invoke-virtual {p1}, Lcom/google/gson/r;->c()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 7
    :cond_28
    invoke-virtual {p1}, Lcom/google/gson/r;->y()Z

    move-result v0

    if-eqz v0, :cond_33

    .line 8
    invoke-virtual {p1}, Lcom/google/gson/r;->o()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 9
    :cond_33
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 10
    :cond_39
    invoke-virtual {p1}, Lcom/google/gson/l;->q()Z

    move-result p1

    if-eqz p1, :cond_42

    const-string p1, "null"

    return-object p1

    .line 11
    :cond_42
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1
.end method


# virtual methods
.method public bridge synthetic b(Lh7/a;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Ld7/g$a;->f(Lh7/a;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic d(Lh7/c;Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    check-cast p2, Ljava/util/Map;

    invoke-virtual {p0, p1, p2}, Ld7/g$a;->g(Lh7/c;Ljava/util/Map;)V

    return-void
.end method

.method public f(Lh7/a;)Ljava/util/Map;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lh7/a;",
            ")",
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lh7/a;->x()Lh7/b;

    move-result-object v0

    .line 2
    sget-object v1, Lh7/b;->w:Lh7/b;

    if-ne v0, v1, :cond_d

    .line 3
    invoke-virtual {p1}, Lh7/a;->t()V

    const/4 p1, 0x0

    return-object p1

    .line 4
    :cond_d
    iget-object v1, p0, Ld7/g$a;->c:Lc7/i;

    invoke-interface {v1}, Lc7/i;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 5
    sget-object v2, Lh7/b;->o:Lh7/b;

    const-string v3, "duplicate key: "

    if-ne v0, v2, :cond_56

    .line 6
    invoke-virtual {p1}, Lh7/a;->b()V

    .line 7
    :goto_1e
    invoke-virtual {p1}, Lh7/a;->j()Z

    move-result v0

    if-eqz v0, :cond_52

    .line 8
    invoke-virtual {p1}, Lh7/a;->b()V

    .line 9
    iget-object v0, p0, Ld7/g$a;->a:Lcom/google/gson/w;

    invoke-virtual {v0, p1}, Lcom/google/gson/w;->b(Lh7/a;)Ljava/lang/Object;

    move-result-object v0

    .line 10
    iget-object v2, p0, Ld7/g$a;->b:Lcom/google/gson/w;

    invoke-virtual {v2, p1}, Lcom/google/gson/w;->b(Lh7/a;)Ljava/lang/Object;

    move-result-object v2

    .line 11
    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_3d

    .line 12
    invoke-virtual {p1}, Lh7/a;->g()V

    goto :goto_1e

    .line 13
    :cond_3d
    new-instance p1, Lcom/google/gson/u;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/google/gson/u;-><init>(Ljava/lang/String;)V

    throw p1

    .line 14
    :cond_52
    invoke-virtual {p1}, Lh7/a;->g()V

    goto :goto_8f

    .line 15
    :cond_56
    invoke-virtual {p1}, Lh7/a;->c()V

    .line 16
    :goto_59
    invoke-virtual {p1}, Lh7/a;->j()Z

    move-result v0

    if-eqz v0, :cond_8c

    .line 17
    sget-object v0, Lc7/f;->a:Lc7/f;

    invoke-virtual {v0, p1}, Lc7/f;->a(Lh7/a;)V

    .line 18
    iget-object v0, p0, Ld7/g$a;->a:Lcom/google/gson/w;

    invoke-virtual {v0, p1}, Lcom/google/gson/w;->b(Lh7/a;)Ljava/lang/Object;

    move-result-object v0

    .line 19
    iget-object v2, p0, Ld7/g$a;->b:Lcom/google/gson/w;

    invoke-virtual {v2, p1}, Lcom/google/gson/w;->b(Lh7/a;)Ljava/lang/Object;

    move-result-object v2

    .line 20
    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_77

    goto :goto_59

    .line 21
    :cond_77
    new-instance p1, Lcom/google/gson/u;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/google/gson/u;-><init>(Ljava/lang/String;)V

    throw p1

    .line 22
    :cond_8c
    invoke-virtual {p1}, Lh7/a;->h()V

    :goto_8f
    return-object v1
.end method

.method public g(Lh7/c;Ljava/util/Map;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lh7/c;",
            "Ljava/util/Map<",
            "TK;TV;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p2, :cond_6

    .line 1
    invoke-virtual {p1}, Lh7/c;->n()Lh7/c;

    return-void

    .line 2
    :cond_6
    iget-object v0, p0, Ld7/g$a;->d:Ld7/g;

    iget-boolean v0, v0, Ld7/g;->p:Z

    if-nez v0, :cond_3c

    .line 3
    invoke-virtual {p1}, Lh7/c;->e()Lh7/c;

    .line 4
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_17
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_38

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 5
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lh7/c;->l(Ljava/lang/String;)Lh7/c;

    .line 6
    iget-object v1, p0, Ld7/g$a;->b:Lcom/google/gson/w;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, p1, v0}, Lcom/google/gson/w;->d(Lh7/c;Ljava/lang/Object;)V

    goto :goto_17

    .line 7
    :cond_38
    invoke-virtual {p1}, Lh7/c;->h()Lh7/c;

    return-void

    .line 8
    :cond_3c
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 9
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 10
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_58
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8a

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 11
    iget-object v5, p0, Ld7/g$a;->a:Lcom/google/gson/w;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/google/gson/w;->c(Ljava/lang/Object;)Lcom/google/gson/l;

    move-result-object v5

    .line 12
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 13
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 14
    invoke-virtual {v5}, Lcom/google/gson/l;->p()Z

    move-result v4

    if-nez v4, :cond_87

    invoke-virtual {v5}, Lcom/google/gson/l;->r()Z

    move-result v4

    if-eqz v4, :cond_85

    goto :goto_87

    :cond_85
    const/4 v4, 0x0

    goto :goto_88

    :cond_87
    :goto_87
    const/4 v4, 0x1

    :goto_88
    or-int/2addr v3, v4

    goto :goto_58

    :cond_8a
    if-eqz v3, :cond_b4

    .line 15
    invoke-virtual {p1}, Lh7/c;->d()Lh7/c;

    .line 16
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p2

    :goto_93
    if-ge v2, p2, :cond_b0

    .line 17
    invoke-virtual {p1}, Lh7/c;->d()Lh7/c;

    .line 18
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/gson/l;

    invoke-static {v3, p1}, Lc7/l;->b(Lcom/google/gson/l;Lh7/c;)V

    .line 19
    iget-object v3, p0, Ld7/g$a;->b:Lcom/google/gson/w;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, p1, v4}, Lcom/google/gson/w;->d(Lh7/c;Ljava/lang/Object;)V

    .line 20
    invoke-virtual {p1}, Lh7/c;->g()Lh7/c;

    add-int/lit8 v2, v2, 0x1

    goto :goto_93

    .line 21
    :cond_b0
    invoke-virtual {p1}, Lh7/c;->g()Lh7/c;

    goto :goto_d9

    .line 22
    :cond_b4
    invoke-virtual {p1}, Lh7/c;->e()Lh7/c;

    .line 23
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p2

    :goto_bb
    if-ge v2, p2, :cond_d6

    .line 24
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/gson/l;

    .line 25
    invoke-direct {p0, v3}, Ld7/g$a;->e(Lcom/google/gson/l;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lh7/c;->l(Ljava/lang/String;)Lh7/c;

    .line 26
    iget-object v3, p0, Ld7/g$a;->b:Lcom/google/gson/w;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, p1, v4}, Lcom/google/gson/w;->d(Lh7/c;Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_bb

    .line 27
    :cond_d6
    invoke-virtual {p1}, Lh7/c;->h()Lh7/c;

    :goto_d9
    return-void
.end method
