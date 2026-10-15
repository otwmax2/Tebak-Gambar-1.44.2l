###### Class androidx.datastore.preferences.protobuf.v0 (androidx.datastore.preferences.protobuf.v0)
.class final Landroidx/datastore/preferences/protobuf/v0;
.super Ljava/lang/Object;
.source "MessageSetSchema.java"

# interfaces
.implements Landroidx/datastore/preferences/protobuf/g1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroidx/datastore/preferences/protobuf/g1<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final a:Landroidx/datastore/preferences/protobuf/r0;

.field private final b:Landroidx/datastore/preferences/protobuf/n1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/datastore/preferences/protobuf/n1<",
            "**>;"
        }
    .end annotation
.end field

.field private final c:Z

.field private final d:Landroidx/datastore/preferences/protobuf/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/datastore/preferences/protobuf/q<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroidx/datastore/preferences/protobuf/n1;Landroidx/datastore/preferences/protobuf/q;Landroidx/datastore/preferences/protobuf/r0;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/datastore/preferences/protobuf/n1<",
            "**>;",
            "Landroidx/datastore/preferences/protobuf/q<",
            "*>;",
            "Landroidx/datastore/preferences/protobuf/r0;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroidx/datastore/preferences/protobuf/v0;->b:Landroidx/datastore/preferences/protobuf/n1;

    .line 3
    invoke-virtual {p2, p3}, Landroidx/datastore/preferences/protobuf/q;->e(Landroidx/datastore/preferences/protobuf/r0;)Z

    move-result p1

    iput-boolean p1, p0, Landroidx/datastore/preferences/protobuf/v0;->c:Z

    .line 4
    iput-object p2, p0, Landroidx/datastore/preferences/protobuf/v0;->d:Landroidx/datastore/preferences/protobuf/q;

    .line 5
    iput-object p3, p0, Landroidx/datastore/preferences/protobuf/v0;->a:Landroidx/datastore/preferences/protobuf/r0;

    return-void
.end method

.method private b(Landroidx/datastore/preferences/protobuf/n1;Ljava/lang/Object;)I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<UT:",
            "Ljava/lang/Object;",
            "UB:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/datastore/preferences/protobuf/n1<",
            "TUT;TUB;>;TT;)I"
        }
    .end annotation

    .line 1
    invoke-virtual {p1, p2}, Landroidx/datastore/preferences/protobuf/n1;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 2
    invoke-virtual {p1, p2}, Landroidx/datastore/preferences/protobuf/n1;->i(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method private k(Landroidx/datastore/preferences/protobuf/n1;Landroidx/datastore/preferences/protobuf/q;Ljava/lang/Object;Landroidx/datastore/preferences/protobuf/f1;Landroidx/datastore/preferences/protobuf/p;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<UT:",
            "Ljava/lang/Object;",
            "UB:",
            "Ljava/lang/Object;",
            "ET::",
            "Landroidx/datastore/preferences/protobuf/u$b<",
            "TET;>;>(",
            "Landroidx/datastore/preferences/protobuf/n1<",
            "TUT;TUB;>;",
            "Landroidx/datastore/preferences/protobuf/q<",
            "TET;>;TT;",
            "Landroidx/datastore/preferences/protobuf/f1;",
            "Landroidx/datastore/preferences/protobuf/p;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1, p3}, Landroidx/datastore/preferences/protobuf/n1;->f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 2
    invoke-virtual {p2, p3}, Landroidx/datastore/preferences/protobuf/q;->d(Ljava/lang/Object;)Landroidx/datastore/preferences/protobuf/u;

    move-result-object v8

    .line 3
    :goto_8
    :try_start_8
    invoke-interface {p4}, Landroidx/datastore/preferences/protobuf/f1;->A()I

    move-result v0
    :try_end_c
    .catchall {:try_start_8 .. :try_end_c} :catchall_27

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_15

    .line 4
    invoke-virtual {p1, p3, v7}, Landroidx/datastore/preferences/protobuf/n1;->o(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_15
    move-object v0, p0

    move-object v1, p4

    move-object v2, p5

    move-object v3, p2

    move-object v4, v8

    move-object v5, p1

    move-object v6, v7

    .line 5
    :try_start_1c
    invoke-direct/range {v0 .. v6}, Landroidx/datastore/preferences/protobuf/v0;->m(Landroidx/datastore/preferences/protobuf/f1;Landroidx/datastore/preferences/protobuf/p;Landroidx/datastore/preferences/protobuf/q;Landroidx/datastore/preferences/protobuf/u;Landroidx/datastore/preferences/protobuf/n1;Ljava/lang/Object;)Z

    move-result v0
    :try_end_20
    .catchall {:try_start_1c .. :try_end_20} :catchall_27

    if-eqz v0, :cond_23

    goto :goto_8

    .line 6
    :cond_23
    invoke-virtual {p1, p3, v7}, Landroidx/datastore/preferences/protobuf/n1;->o(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :catchall_27
    move-exception p2

    invoke-virtual {p1, p3, v7}, Landroidx/datastore/preferences/protobuf/n1;->o(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 7
    goto :goto_2d

    :goto_2c
    throw p2

    :goto_2d
    goto :goto_2c
.end method

.method static l(Landroidx/datastore/preferences/protobuf/n1;Landroidx/datastore/preferences/protobuf/q;Landroidx/datastore/preferences/protobuf/r0;)Landroidx/datastore/preferences/protobuf/v0;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/datastore/preferences/protobuf/n1<",
            "**>;",
            "Landroidx/datastore/preferences/protobuf/q<",
            "*>;",
            "Landroidx/datastore/preferences/protobuf/r0;",
            ")",
            "Landroidx/datastore/preferences/protobuf/v0<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Landroidx/datastore/preferences/protobuf/v0;

    invoke-direct {v0, p0, p1, p2}, Landroidx/datastore/preferences/protobuf/v0;-><init>(Landroidx/datastore/preferences/protobuf/n1;Landroidx/datastore/preferences/protobuf/q;Landroidx/datastore/preferences/protobuf/r0;)V

    return-object v0
.end method

.method private m(Landroidx/datastore/preferences/protobuf/f1;Landroidx/datastore/preferences/protobuf/p;Landroidx/datastore/preferences/protobuf/q;Landroidx/datastore/preferences/protobuf/u;Landroidx/datastore/preferences/protobuf/n1;Ljava/lang/Object;)Z
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<UT:",
            "Ljava/lang/Object;",
            "UB:",
            "Ljava/lang/Object;",
            "ET::",
            "Landroidx/datastore/preferences/protobuf/u$b<",
            "TET;>;>(",
            "Landroidx/datastore/preferences/protobuf/f1;",
            "Landroidx/datastore/preferences/protobuf/p;",
            "Landroidx/datastore/preferences/protobuf/q<",
            "TET;>;",
            "Landroidx/datastore/preferences/protobuf/u<",
            "TET;>;",
            "Landroidx/datastore/preferences/protobuf/n1<",
            "TUT;TUB;>;TUB;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Landroidx/datastore/preferences/protobuf/f1;->u()I

    move-result v0

    .line 2
    sget v1, Landroidx/datastore/preferences/protobuf/t1;->a:I

    const/4 v2, 0x1

    if-eq v0, v1, :cond_2a

    .line 3
    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/t1;->b(I)I

    move-result v1

    const/4 v3, 0x2

    if-ne v1, v3, :cond_25

    .line 4
    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/v0;->a:Landroidx/datastore/preferences/protobuf/r0;

    .line 5
    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/t1;->a(I)I

    move-result v0

    .line 6
    invoke-virtual {p3, p2, v1, v0}, Landroidx/datastore/preferences/protobuf/q;->b(Landroidx/datastore/preferences/protobuf/p;Landroidx/datastore/preferences/protobuf/r0;I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_20

    .line 7
    invoke-virtual {p3, p1, v0, p2, p4}, Landroidx/datastore/preferences/protobuf/q;->h(Landroidx/datastore/preferences/protobuf/f1;Ljava/lang/Object;Landroidx/datastore/preferences/protobuf/p;Landroidx/datastore/preferences/protobuf/u;)V

    return v2

    .line 8
    :cond_20
    invoke-virtual {p5, p6, p1}, Landroidx/datastore/preferences/protobuf/n1;->m(Ljava/lang/Object;Landroidx/datastore/preferences/protobuf/f1;)Z

    move-result p1

    return p1

    .line 9
    :cond_25
    invoke-interface {p1}, Landroidx/datastore/preferences/protobuf/f1;->H()Z

    move-result p1

    return p1

    :cond_2a
    const/4 v0, 0x0

    const/4 v1, 0x0

    move-object v3, v1

    .line 10
    :cond_2d
    :goto_2d
    invoke-interface {p1}, Landroidx/datastore/preferences/protobuf/f1;->A()I

    move-result v4

    const v5, 0x7fffffff

    if-ne v4, v5, :cond_37

    goto :goto_5f

    .line 11
    :cond_37
    invoke-interface {p1}, Landroidx/datastore/preferences/protobuf/f1;->u()I

    move-result v4

    .line 12
    sget v5, Landroidx/datastore/preferences/protobuf/t1;->c:I

    if-ne v4, v5, :cond_4a

    .line 13
    invoke-interface {p1}, Landroidx/datastore/preferences/protobuf/f1;->n()I

    move-result v0

    .line 14
    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/v0;->a:Landroidx/datastore/preferences/protobuf/r0;

    .line 15
    invoke-virtual {p3, p2, v1, v0}, Landroidx/datastore/preferences/protobuf/q;->b(Landroidx/datastore/preferences/protobuf/p;Landroidx/datastore/preferences/protobuf/r0;I)Ljava/lang/Object;

    move-result-object v1

    goto :goto_2d

    .line 16
    :cond_4a
    sget v5, Landroidx/datastore/preferences/protobuf/t1;->d:I

    if-ne v4, v5, :cond_59

    if-eqz v1, :cond_54

    .line 17
    invoke-virtual {p3, p1, v1, p2, p4}, Landroidx/datastore/preferences/protobuf/q;->h(Landroidx/datastore/preferences/protobuf/f1;Ljava/lang/Object;Landroidx/datastore/preferences/protobuf/p;Landroidx/datastore/preferences/protobuf/u;)V

    goto :goto_2d

    .line 18
    :cond_54
    invoke-interface {p1}, Landroidx/datastore/preferences/protobuf/f1;->D()Landroidx/datastore/preferences/protobuf/h;

    move-result-object v3

    goto :goto_2d

    .line 19
    :cond_59
    invoke-interface {p1}, Landroidx/datastore/preferences/protobuf/f1;->H()Z

    move-result v4

    if-nez v4, :cond_2d

    .line 20
    :goto_5f
    invoke-interface {p1}, Landroidx/datastore/preferences/protobuf/f1;->u()I

    move-result p1

    sget v4, Landroidx/datastore/preferences/protobuf/t1;->b:I

    if-ne p1, v4, :cond_73

    if-eqz v3, :cond_72

    if-eqz v1, :cond_6f

    .line 21
    invoke-virtual {p3, v3, v1, p2, p4}, Landroidx/datastore/preferences/protobuf/q;->i(Landroidx/datastore/preferences/protobuf/h;Ljava/lang/Object;Landroidx/datastore/preferences/protobuf/p;Landroidx/datastore/preferences/protobuf/u;)V

    goto :goto_72

    .line 22
    :cond_6f
    invoke-virtual {p5, p6, v0, v3}, Landroidx/datastore/preferences/protobuf/n1;->d(Ljava/lang/Object;ILandroidx/datastore/preferences/protobuf/h;)V

    :cond_72
    :goto_72
    return v2

    .line 23
    :cond_73
    invoke-static {}, Landroidx/datastore/preferences/protobuf/b0;->a()Landroidx/datastore/preferences/protobuf/b0;

    move-result-object p1

    goto :goto_79

    :goto_78
    throw p1

    :goto_79
    goto :goto_78
.end method

.method private n(Landroidx/datastore/preferences/protobuf/n1;Ljava/lang/Object;Landroidx/datastore/preferences/protobuf/u1;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<UT:",
            "Ljava/lang/Object;",
            "UB:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/datastore/preferences/protobuf/n1<",
            "TUT;TUB;>;TT;",
            "Landroidx/datastore/preferences/protobuf/u1;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1, p2}, Landroidx/datastore/preferences/protobuf/n1;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, p2, p3}, Landroidx/datastore/preferences/protobuf/n1;->s(Ljava/lang/Object;Landroidx/datastore/preferences/protobuf/u1;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/v0;->b:Landroidx/datastore/preferences/protobuf/n1;

    invoke-static {v0, p1, p2}, Landroidx/datastore/preferences/protobuf/i1;->G(Landroidx/datastore/preferences/protobuf/n1;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2
    iget-boolean v0, p0, Landroidx/datastore/preferences/protobuf/v0;->c:Z

    if-eqz v0, :cond_e

    .line 3
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/v0;->d:Landroidx/datastore/preferences/protobuf/q;

    invoke-static {v0, p1, p2}, Landroidx/datastore/preferences/protobuf/i1;->E(Landroidx/datastore/preferences/protobuf/q;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_e
    return-void
.end method

.method public c(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)Z"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/v0;->b:Landroidx/datastore/preferences/protobuf/n1;

    invoke-virtual {v0, p1}, Landroidx/datastore/preferences/protobuf/n1;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 2
    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/v0;->b:Landroidx/datastore/preferences/protobuf/n1;

    invoke-virtual {v1, p2}, Landroidx/datastore/preferences/protobuf/n1;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    const/4 p1, 0x0

    return p1

    .line 4
    :cond_14
    iget-boolean v0, p0, Landroidx/datastore/preferences/protobuf/v0;->c:Z

    if-eqz v0, :cond_29

    .line 5
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/v0;->d:Landroidx/datastore/preferences/protobuf/q;

    invoke-virtual {v0, p1}, Landroidx/datastore/preferences/protobuf/q;->c(Ljava/lang/Object;)Landroidx/datastore/preferences/protobuf/u;

    move-result-object p1

    .line 6
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/v0;->d:Landroidx/datastore/preferences/protobuf/q;

    invoke-virtual {v0, p2}, Landroidx/datastore/preferences/protobuf/q;->c(Ljava/lang/Object;)Landroidx/datastore/preferences/protobuf/u;

    move-result-object p2

    .line 7
    invoke-virtual {p1, p2}, Landroidx/datastore/preferences/protobuf/u;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_29
    const/4 p1, 0x1

    return p1
.end method

.method public d(Ljava/lang/Object;)I
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/v0;->b:Landroidx/datastore/preferences/protobuf/n1;

    invoke-virtual {v0, p1}, Landroidx/datastore/preferences/protobuf/n1;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 2
    iget-boolean v1, p0, Landroidx/datastore/preferences/protobuf/v0;->c:Z

    if-eqz v1, :cond_1b

    .line 3
    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/v0;->d:Landroidx/datastore/preferences/protobuf/q;

    invoke-virtual {v1, p1}, Landroidx/datastore/preferences/protobuf/q;->c(Ljava/lang/Object;)Landroidx/datastore/preferences/protobuf/u;

    move-result-object p1

    mul-int/lit8 v0, v0, 0x35

    .line 4
    invoke-virtual {p1}, Landroidx/datastore/preferences/protobuf/u;->hashCode()I

    move-result p1

    add-int/2addr v0, p1

    :cond_1b
    return v0
.end method

.method public e(Ljava/lang/Object;Landroidx/datastore/preferences/protobuf/f1;Landroidx/datastore/preferences/protobuf/p;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroidx/datastore/preferences/protobuf/f1;",
            "Landroidx/datastore/preferences/protobuf/p;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/v0;->b:Landroidx/datastore/preferences/protobuf/n1;

    iget-object v2, p0, Landroidx/datastore/preferences/protobuf/v0;->d:Landroidx/datastore/preferences/protobuf/q;

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Landroidx/datastore/preferences/protobuf/v0;->k(Landroidx/datastore/preferences/protobuf/n1;Landroidx/datastore/preferences/protobuf/q;Ljava/lang/Object;Landroidx/datastore/preferences/protobuf/f1;Landroidx/datastore/preferences/protobuf/p;)V

    return-void
.end method

.method public f(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/v0;->b:Landroidx/datastore/preferences/protobuf/n1;

    invoke-virtual {v0, p1}, Landroidx/datastore/preferences/protobuf/n1;->j(Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/v0;->d:Landroidx/datastore/preferences/protobuf/q;

    invoke-virtual {v0, p1}, Landroidx/datastore/preferences/protobuf/q;->f(Ljava/lang/Object;)V

    return-void
.end method

.method public final g(Ljava/lang/Object;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/v0;->d:Landroidx/datastore/preferences/protobuf/q;

    invoke-virtual {v0, p1}, Landroidx/datastore/preferences/protobuf/q;->c(Ljava/lang/Object;)Landroidx/datastore/preferences/protobuf/u;

    move-result-object p1

    .line 2
    invoke-virtual {p1}, Landroidx/datastore/preferences/protobuf/u;->p()Z

    move-result p1

    return p1
.end method

.method public h(Ljava/lang/Object;Landroidx/datastore/preferences/protobuf/u1;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroidx/datastore/preferences/protobuf/u1;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/v0;->d:Landroidx/datastore/preferences/protobuf/q;

    invoke-virtual {v0, p1}, Landroidx/datastore/preferences/protobuf/q;->c(Ljava/lang/Object;)Landroidx/datastore/preferences/protobuf/u;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/u;->s()Ljava/util/Iterator;

    move-result-object v0

    .line 3
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5a

    .line 4
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 5
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/datastore/preferences/protobuf/u$b;

    .line 6
    invoke-interface {v2}, Landroidx/datastore/preferences/protobuf/u$b;->E()Landroidx/datastore/preferences/protobuf/t1$c;

    move-result-object v3

    sget-object v4, Landroidx/datastore/preferences/protobuf/t1$c;->x:Landroidx/datastore/preferences/protobuf/t1$c;

    if-ne v3, v4, :cond_52

    invoke-interface {v2}, Landroidx/datastore/preferences/protobuf/u$b;->w()Z

    move-result v3

    if-nez v3, :cond_52

    invoke-interface {v2}, Landroidx/datastore/preferences/protobuf/u$b;->F()Z

    move-result v3

    if-nez v3, :cond_52

    .line 7
    instance-of v3, v1, Landroidx/datastore/preferences/protobuf/d0$b;

    if-eqz v3, :cond_46

    .line 8
    invoke-interface {v2}, Landroidx/datastore/preferences/protobuf/u$b;->h()I

    move-result v2

    check-cast v1, Landroidx/datastore/preferences/protobuf/d0$b;

    invoke-virtual {v1}, Landroidx/datastore/preferences/protobuf/d0$b;->a()Landroidx/datastore/preferences/protobuf/d0;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/datastore/preferences/protobuf/e0;->e()Landroidx/datastore/preferences/protobuf/h;

    move-result-object v1

    .line 9
    invoke-interface {p2, v2, v1}, Landroidx/datastore/preferences/protobuf/u1;->c(ILjava/lang/Object;)V

    goto :goto_a

    .line 10
    :cond_46
    invoke-interface {v2}, Landroidx/datastore/preferences/protobuf/u$b;->h()I

    move-result v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p2, v2, v1}, Landroidx/datastore/preferences/protobuf/u1;->c(ILjava/lang/Object;)V

    goto :goto_a

    .line 11
    :cond_52
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Found invalid MessageSet item."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 12
    :cond_5a
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/v0;->b:Landroidx/datastore/preferences/protobuf/n1;

    invoke-direct {p0, v0, p1, p2}, Landroidx/datastore/preferences/protobuf/v0;->n(Landroidx/datastore/preferences/protobuf/n1;Ljava/lang/Object;Landroidx/datastore/preferences/protobuf/u1;)V

    return-void
.end method

.method public i(Ljava/lang/Object;)I
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/v0;->b:Landroidx/datastore/preferences/protobuf/n1;

    invoke-direct {p0, v0, p1}, Landroidx/datastore/preferences/protobuf/v0;->b(Landroidx/datastore/preferences/protobuf/n1;Ljava/lang/Object;)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 2
    iget-boolean v1, p0, Landroidx/datastore/preferences/protobuf/v0;->c:Z

    if-eqz v1, :cond_17

    .line 3
    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/v0;->d:Landroidx/datastore/preferences/protobuf/q;

    invoke-virtual {v1, p1}, Landroidx/datastore/preferences/protobuf/q;->c(Ljava/lang/Object;)Landroidx/datastore/preferences/protobuf/u;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/datastore/preferences/protobuf/u;->j()I

    move-result p1

    add-int/2addr v0, p1

    :cond_17
    return v0
.end method

.method public j()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/v0;->a:Landroidx/datastore/preferences/protobuf/r0;

    invoke-interface {v0}, Landroidx/datastore/preferences/protobuf/r0;->h()Landroidx/datastore/preferences/protobuf/r0$a;

    move-result-object v0

    invoke-interface {v0}, Landroidx/datastore/preferences/protobuf/r0$a;->A2()Landroidx/datastore/preferences/protobuf/r0;

    move-result-object v0

    return-object v0
.end method
