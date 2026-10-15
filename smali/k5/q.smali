###### Class k5.q (k5.q)
.class Lk5/q;
.super Ljava/lang/Object;
.source "CycleDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lk5/q$b;,
        Lk5/q$c;
    }
.end annotation


# direct methods
.method static a(Ljava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lk5/c<",
            "*>;>;)V"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lk5/q;->c(Ljava/util/List;)Ljava/util/Set;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lk5/q;->b(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    const/4 v2, 0x0

    .line 3
    :cond_9
    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3f

    .line 4
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lk5/q$b;

    .line 5
    invoke-interface {v1, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    .line 6
    invoke-virtual {v3}, Lk5/q$b;->d()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_26
    :goto_26
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lk5/q$b;

    .line 7
    invoke-virtual {v5, v3}, Lk5/q$b;->g(Lk5/q$b;)V

    .line 8
    invoke-virtual {v5}, Lk5/q$b;->f()Z

    move-result v6

    if-eqz v6, :cond_26

    .line 9
    invoke-interface {v1, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_26

    .line 10
    :cond_3f
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-ne v2, p0, :cond_46

    return-void

    .line 11
    :cond_46
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 12
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4f
    :goto_4f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lk5/q$b;

    .line 13
    invoke-virtual {v1}, Lk5/q$b;->f()Z

    move-result v2

    if-nez v2, :cond_4f

    invoke-virtual {v1}, Lk5/q$b;->e()Z

    move-result v2

    if-nez v2, :cond_4f

    .line 14
    invoke-virtual {v1}, Lk5/q$b;->c()Lk5/c;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4f

    .line 15
    :cond_6f
    new-instance v0, Lk5/s;

    invoke-direct {v0, p0}, Lk5/s;-><init>(Ljava/util/List;)V

    goto :goto_76

    :goto_75
    throw v0

    :goto_76
    goto :goto_75
.end method

.method private static b(Ljava/util/Set;)Ljava/util/Set;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lk5/q$b;",
            ">;)",
            "Ljava/util/Set<",
            "Lk5/q$b;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 2
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_9
    :goto_9
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lk5/q$b;

    .line 3
    invoke-virtual {v1}, Lk5/q$b;->f()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 4
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_1f
    return-object v0
.end method

.method private static c(Ljava/util/List;)Ljava/util/Set;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lk5/c<",
            "*>;>;)",
            "Ljava/util/Set<",
            "Lk5/q$b;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 2
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_d
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_74

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lk5/c;

    .line 3
    new-instance v3, Lk5/q$b;

    invoke-direct {v3, v1}, Lk5/q$b;-><init>(Lk5/c;)V

    .line 4
    invoke-virtual {v1}, Lk5/c;->j()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_27
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_d

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lk5/f0;

    .line 5
    new-instance v6, Lk5/q$c;

    invoke-virtual {v1}, Lk5/c;->p()Z

    move-result v7

    const/4 v8, 0x1

    xor-int/2addr v7, v8

    invoke-direct {v6, v5, v7, v2}, Lk5/q$c;-><init>(Lk5/f0;ZLk5/q$a;)V

    .line 6
    invoke-interface {v0, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4c

    .line 7
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    :cond_4c
    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Set;

    .line 9
    invoke-interface {v7}, Ljava/util/Set;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_70

    invoke-static {v6}, Lk5/q$c;->a(Lk5/q$c;)Z

    move-result v6

    if-eqz v6, :cond_5f

    goto :goto_70

    .line 10
    :cond_5f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-array v0, v8, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object v5, v0, v1

    const-string v1, "Multiple components provide %s."

    .line 11
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 12
    :cond_70
    :goto_70
    invoke-interface {v7, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_27

    .line 13
    :cond_74
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_7c
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_e4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    .line 14
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_8c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lk5/q$b;

    .line 15
    invoke-virtual {v3}, Lk5/q$b;->c()Lk5/c;

    move-result-object v4

    invoke-virtual {v4}, Lk5/c;->g()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_a4
    :goto_a4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lk5/r;

    .line 16
    invoke-virtual {v5}, Lk5/r;->e()Z

    move-result v6

    if-nez v6, :cond_b7

    goto :goto_a4

    .line 17
    :cond_b7
    new-instance v6, Lk5/q$c;

    .line 18
    invoke-virtual {v5}, Lk5/r;->c()Lk5/f0;

    move-result-object v7

    invoke-virtual {v5}, Lk5/r;->g()Z

    move-result v5

    invoke-direct {v6, v7, v5, v2}, Lk5/q$c;-><init>(Lk5/f0;ZLk5/q$a;)V

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Set;

    if-nez v5, :cond_cd

    goto :goto_a4

    .line 19
    :cond_cd
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_d1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_a4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lk5/q$b;

    .line 20
    invoke-virtual {v3, v6}, Lk5/q$b;->a(Lk5/q$b;)V

    .line 21
    invoke-virtual {v6, v3}, Lk5/q$b;->b(Lk5/q$b;)V

    goto :goto_d1

    .line 22
    :cond_e4
    new-instance p0, Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    .line 23
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_f1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_101

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    .line 24
    invoke-virtual {p0, v1}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    goto :goto_f1

    :cond_101
    return-object p0
.end method

###### Class k5.q.a (k5.q$a)
.class synthetic Lk5/q$a;
.super Ljava/lang/Object;
.source "CycleDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk5/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation

###### Class k5.q.b (k5.q$b)
.class Lk5/q$b;
.super Ljava/lang/Object;
.source "CycleDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk5/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field private final a:Lk5/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lk5/c<",
            "*>;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lk5/q$b;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lk5/q$b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lk5/c;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lk5/c<",
            "*>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lk5/q$b;->b:Ljava/util/Set;

    .line 3
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lk5/q$b;->c:Ljava/util/Set;

    .line 4
    iput-object p1, p0, Lk5/q$b;->a:Lk5/c;

    return-void
.end method


# virtual methods
.method a(Lk5/q$b;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lk5/q$b;->b:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method b(Lk5/q$b;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lk5/q$b;->c:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method c()Lk5/c;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lk5/c<",
            "*>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lk5/q$b;->a:Lk5/c;

    return-object v0
.end method

.method d()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lk5/q$b;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lk5/q$b;->b:Ljava/util/Set;

    return-object v0
.end method

.method e()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lk5/q$b;->b:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    return v0
.end method

.method f()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lk5/q$b;->c:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    return v0
.end method

.method g(Lk5/q$b;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lk5/q$b;->c:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

###### Class k5.q.c (k5.q$c)
.class Lk5/q$c;
.super Ljava/lang/Object;
.source "CycleDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk5/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation


# instance fields
.field private final a:Lk5/f0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lk5/f0<",
            "*>;"
        }
    .end annotation
.end field

.field private final b:Z


# direct methods
.method private constructor <init>(Lk5/f0;Z)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lk5/f0<",
            "*>;Z)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lk5/q$c;->a:Lk5/f0;

    .line 4
    iput-boolean p2, p0, Lk5/q$c;->b:Z

    return-void
.end method

.method synthetic constructor <init>(Lk5/f0;ZLk5/q$a;)V
    .registers 4

    .line 1
    invoke-direct {p0, p1, p2}, Lk5/q$c;-><init>(Lk5/f0;Z)V

    return-void
.end method

.method static synthetic a(Lk5/q$c;)Z
    .registers 1

    .line 1
    iget-boolean p0, p0, Lk5/q$c;->b:Z

    return p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5

    .line 1
    instance-of v0, p1, Lk5/q$c;

    const/4 v1, 0x0

    if-eqz v0, :cond_18

    .line 2
    check-cast p1, Lk5/q$c;

    .line 3
    iget-object v0, p1, Lk5/q$c;->a:Lk5/f0;

    iget-object v2, p0, Lk5/q$c;->a:Lk5/f0;

    invoke-virtual {v0, v2}, Lk5/f0;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    iget-boolean p1, p1, Lk5/q$c;->b:Z

    iget-boolean v0, p0, Lk5/q$c;->b:Z

    if-ne p1, v0, :cond_18

    const/4 v1, 0x1

    :cond_18
    return v1
.end method

.method public hashCode()I
    .registers 3

    .line 1
    iget-object v0, p0, Lk5/q$c;->a:Lk5/f0;

    invoke-virtual {v0}, Lk5/f0;->hashCode()I

    move-result v0

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int v0, v0, v1

    .line 2
    iget-boolean v1, p0, Lk5/q$c;->b:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method
