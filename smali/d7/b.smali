###### Class d7.b (d7.b)
.class public final Ld7/b;
.super Ljava/lang/Object;
.source "CollectionTypeAdapterFactory.java"

# interfaces
.implements Lcom/google/gson/x;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ld7/b$a;
    }
.end annotation


# instance fields
.field private final o:Lc7/c;


# direct methods
.method public constructor <init>(Lc7/c;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Ld7/b;->o:Lc7/c;

    return-void
.end method


# virtual methods
.method public a(Lcom/google/gson/f;Lg7/a;)Lcom/google/gson/w;
    .registers 6
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
    const-class v2, Ljava/util/Collection;

    invoke-virtual {v2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_12

    const/4 p1, 0x0

    return-object p1

    .line 4
    :cond_12
    invoke-static {v0, v1}, Lc7/b;->h(Ljava/lang/reflect/Type;Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object v0

    .line 5
    invoke-static {v0}, Lg7/a;->get(Ljava/lang/reflect/Type;)Lg7/a;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/gson/f;->m(Lg7/a;)Lcom/google/gson/w;

    move-result-object v1

    .line 6
    iget-object v2, p0, Ld7/b;->o:Lc7/c;

    invoke-virtual {v2, p2}, Lc7/c;->a(Lg7/a;)Lc7/i;

    move-result-object p2

    .line 7
    new-instance v2, Ld7/b$a;

    invoke-direct {v2, p1, v0, v1, p2}, Ld7/b$a;-><init>(Lcom/google/gson/f;Ljava/lang/reflect/Type;Lcom/google/gson/w;Lc7/i;)V

    return-object v2
.end method

###### Class d7.b.a (d7.b$a)
.class final Ld7/b$a;
.super Lcom/google/gson/w;
.source "CollectionTypeAdapterFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld7/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/gson/w<",
        "Ljava/util/Collection<",
        "TE;>;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/gson/w;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/w<",
            "TE;>;"
        }
    .end annotation
.end field

.field private final b:Lc7/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc7/i<",
            "+",
            "Ljava/util/Collection<",
            "TE;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/gson/f;Ljava/lang/reflect/Type;Lcom/google/gson/w;Lc7/i;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/f;",
            "Ljava/lang/reflect/Type;",
            "Lcom/google/gson/w<",
            "TE;>;",
            "Lc7/i<",
            "+",
            "Ljava/util/Collection<",
            "TE;>;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/gson/w;-><init>()V

    .line 2
    new-instance v0, Ld7/m;

    invoke-direct {v0, p1, p3, p2}, Ld7/m;-><init>(Lcom/google/gson/f;Lcom/google/gson/w;Ljava/lang/reflect/Type;)V

    iput-object v0, p0, Ld7/b$a;->a:Lcom/google/gson/w;

    .line 3
    iput-object p4, p0, Ld7/b$a;->b:Lc7/i;

    return-void
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
    invoke-virtual {p0, p1}, Ld7/b$a;->e(Lh7/a;)Ljava/util/Collection;

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
    check-cast p2, Ljava/util/Collection;

    invoke-virtual {p0, p1, p2}, Ld7/b$a;->f(Lh7/c;Ljava/util/Collection;)V

    return-void
.end method

.method public e(Lh7/a;)Ljava/util/Collection;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lh7/a;",
            ")",
            "Ljava/util/Collection<",
            "TE;>;"
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

    sget-object v1, Lh7/b;->w:Lh7/b;

    if-ne v0, v1, :cond_d

    .line 2
    invoke-virtual {p1}, Lh7/a;->t()V

    const/4 p1, 0x0

    return-object p1

    .line 3
    :cond_d
    iget-object v0, p0, Ld7/b$a;->b:Lc7/i;

    invoke-interface {v0}, Lc7/i;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 4
    invoke-virtual {p1}, Lh7/a;->b()V

    .line 5
    :goto_18
    invoke-virtual {p1}, Lh7/a;->j()Z

    move-result v1

    if-eqz v1, :cond_28

    .line 6
    iget-object v1, p0, Ld7/b$a;->a:Lcom/google/gson/w;

    invoke-virtual {v1, p1}, Lcom/google/gson/w;->b(Lh7/a;)Ljava/lang/Object;

    move-result-object v1

    .line 7
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_18

    .line 8
    :cond_28
    invoke-virtual {p1}, Lh7/a;->g()V

    return-object v0
.end method

.method public f(Lh7/c;Ljava/util/Collection;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lh7/c;",
            "Ljava/util/Collection<",
            "TE;>;)V"
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
    invoke-virtual {p1}, Lh7/c;->d()Lh7/c;

    .line 3
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_d
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 4
    iget-object v1, p0, Ld7/b$a;->a:Lcom/google/gson/w;

    invoke-virtual {v1, p1, v0}, Lcom/google/gson/w;->d(Lh7/c;Ljava/lang/Object;)V

    goto :goto_d

    .line 5
    :cond_1d
    invoke-virtual {p1}, Lh7/c;->g()Lh7/c;

    return-void
.end method
